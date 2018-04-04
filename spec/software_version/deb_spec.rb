require 'spec_helper'

module SoftwareVersion
  describe Version, type: :model do
    it 'check version 3' do
      a = Version.new('3.4.2-0ubuntu1.3.1')
      b = Version.new('3.4.2-0ubuntu1.3')
      expect(a > b).to be true
    end

    it 'check version 11' do
      a = Version.new('1.0.1e-2+deb7u7')
      b = Version.new('1.0.1e-2+deb7u17')
      expect(a < b).to be true
    end

    it 'check version 12' do
      a = Version.new('2.13-38+deb7u6')
      b = Version.new('2.13-38+deb7u8')
      expect(a < b).to be true
    end

    it 'check version 13' do
      a = Version.new('2.0.0~beta9+dfsg-2')
      b = Version.new('2.0.0~beta11+git20121024-1')
      expect(a < b).to be true
    end

    it 'check version 14' do
      a = Version.new('2:4.3.11+dfsg-0ubuntu0.14.04.13')
      b = Version.new('2:4.1.6+dfsg-1ubuntu2')
      expect(a > b).to be_truthy
    end

    it 'check debian packages version numbers' do
      a = Version.new('1.12.1+g01b65bf-4+deb8u1')
      b = Version.new('1.12.1+g01b65bf-4+deb8u2')
      expect(a < b).to be true
    end

    it 'check debian packages version numbers 2' do
      a = Version.new('1.2.44-1+squeeze3')
      b = Version.new('1.2.44-1+squeeze4')
      expect(a < b).to be true
    end

    it 'check debian packages version numbers 3' do
      a = Version.new('7.26.0-1+wheezy9')
      b = Version.new('7.26.0-1+wheezy13')
      expect(a < b).to be true
    end
  end
end