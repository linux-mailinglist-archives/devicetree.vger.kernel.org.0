Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A23A24EA944
	for <lists+devicetree@lfdr.de>; Tue, 29 Mar 2022 10:31:00 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233705AbiC2Icc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 29 Mar 2022 04:32:32 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44114 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233934AbiC2Ica (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 29 Mar 2022 04:32:30 -0400
Received: from esa6.hgst.iphmx.com (esa6.hgst.iphmx.com [216.71.154.45])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A6F0847048
        for <devicetree@vger.kernel.org>; Tue, 29 Mar 2022 01:30:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
  t=1648542648; x=1680078648;
  h=message-id:date:mime-version:subject:from:to:cc:
   references:in-reply-to:content-transfer-encoding;
  bh=BaDUl8VxYwcicm9Pev8gPBuET9V4K2/MWgWA64GvjsU=;
  b=HefjjwjtY7HWmS346ThT6qFT0AvQpo83gr+KxnXvpsnjNHPUqYGLX/ri
   Z2y80Emu7KvCAyzNU5K0o/39lymO6vEsHZrSSoSD6q+JMicef+sHsQQMh
   kYTOZVhoBNwUzazAyqlUsJiqnVs7TLg0cHN2xDo1G4G3Mcdm2XNd8ePol
   6camdcpRPS7mSsV6txLI/E7bunUmhw6dvfjtjS3h+psm/jjPZB8E1mBXH
   kck24lmYczGID8t9F96nzgHJyLAuyRaiQ+1Hfgc5AMnC2Cz7PijN6dheb
   to0OeigOxVN8SyCcoYCvLbhg0cPImixEcW2CWwBD0EMnxNR+jrMWg+OOR
   A==;
X-IronPort-AV: E=Sophos;i="5.90,219,1643644800"; 
   d="scan'208";a="197436247"
Received: from h199-255-45-15.hgst.com (HELO uls-op-cesaep02.wdc.com) ([199.255.45.15])
  by ob1.hgst.iphmx.com with ESMTP; 29 Mar 2022 16:30:48 +0800
IronPort-SDR: EPfxRTVi7PDS786PMb9ljC+kYshZzdwaSYYaklehhJhX3UdzRRhPcTrP/+TZFzfBfkG9Cn3Fjq
 pb98jmz4v7Jud12+evZtrqglcjAvN9Uveds8I6/yiniYssgt8Pl1yF6RWWeOoazJRTomKHrmmW
 Ug/KKOV/ByStTmB8g7KEsnjslidNma8X5kKJ+CO15d5p/KZ6dGMbbbVrinvwGomaHVXKBi2NKM
 8wHfol36dqC1swaJMsuQugQaIx0dcprflW9LkvgZJJhHWxCMzBkEfTh57Xrd4n+Omrlll6GHrO
 aattoqaEusbMy5jZF7AKvhBR
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
  by uls-op-cesaep02.wdc.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256; 29 Mar 2022 01:01:38 -0700
IronPort-SDR: 4Y1SY1IMfzLevV+qSgIPIPhkO7qOqIao4wUMBPqrqMsv2FBMRhbWBIiEezj04mf7OXNxEDPly1
 u8M9MCaqfqtBxpeiOcI+LMbrkfgPpShi2SpfuB6j/t8RD1lKvIgEnvrXpXfIiT+BTsiRo6lIGM
 IgAv7a9dBqoOb6ejkXqogSV5xOV8+iPzUBbvsxUMA9RYirhfy4ozscC4Vr3YILKFRI3TiRtfN3
 Wc3voPeTEIKYoL8wFxPtpEPC0EfXiTf8zd2O1GKHQnV+nHYqmGzgzWZ8fCmXIc218i4vK/g0s6
 8pk=
WDCIronportException: Internal
Received: from usg-ed-osssrv.wdc.com ([10.3.10.180])
  by uls-op-cesaip02.wdc.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256; 29 Mar 2022 01:30:47 -0700
Received: from usg-ed-osssrv.wdc.com (usg-ed-osssrv.wdc.com [127.0.0.1])
        by usg-ed-osssrv.wdc.com (Postfix) with ESMTP id 4KSN7B680Jz1Rwrw
        for <devicetree@vger.kernel.org>; Tue, 29 Mar 2022 01:30:46 -0700 (PDT)
Authentication-Results: usg-ed-osssrv.wdc.com (amavisd-new); dkim=pass
        reason="pass (just generated, assumed good)"
        header.d=opensource.wdc.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=
        opensource.wdc.com; h=content-transfer-encoding:content-type
        :in-reply-to:organization:references:to:from:content-language
        :subject:user-agent:mime-version:date:message-id; s=dkim; t=
        1648542645; x=1651134646; bh=BaDUl8VxYwcicm9Pev8gPBuET9V4K2/MWgW
        A64GvjsU=; b=dhbKVzqnEdyMI7XM52XbUMIw9KGlw/VOyY3459fGK5EbYiNmEcC
        OsxLUiPiHej2CsypZY4FtsuirDMMbk9ztD2lcGvn0sD2ttrvqfwX9+R0jxSSsaWk
        ReXnQvvSNWVgub3FWqIZxC4XG+PQ635JfIcR/9Tr88F3vkRkIKJlmRXQCc8m25hK
        orZ7uZe5v9wJlCCNuLptLizx8SBoewdt+rY5DucniNbIVibgcgVDMFyTxJ2Czw4Y
        MkPzQ1mL5Vew/ELV93q+aZE1SJXGiDXc+JV7g2f11f4ORJs2bebG1X1FaOj2jWik
        piFDRgsjGhubD6tfOV2XXQ96FWrkeRjvj0w==
X-Virus-Scanned: amavisd-new at usg-ed-osssrv.wdc.com
Received: from usg-ed-osssrv.wdc.com ([127.0.0.1])
        by usg-ed-osssrv.wdc.com (usg-ed-osssrv.wdc.com [127.0.0.1]) (amavisd-new, port 10026)
        with ESMTP id lUB-EOIUJuZc for <devicetree@vger.kernel.org>;
        Tue, 29 Mar 2022 01:30:45 -0700 (PDT)
Received: from [10.225.163.121] (unknown [10.225.163.121])
        by usg-ed-osssrv.wdc.com (Postfix) with ESMTPSA id 4KSN782wfRz1Rvlx;
        Tue, 29 Mar 2022 01:30:44 -0700 (PDT)
Message-ID: <1d6824b6-a2ef-e076-12ce-6c2fe3fda959@opensource.wdc.com>
Date:   Tue, 29 Mar 2022 17:30:43 +0900
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [PATCH 00/21] ata: ahci: Add DWC/Baikal-T1 AHCI SATA support
Content-Language: en-US
From:   Damien Le Moal <damien.lemoal@opensource.wdc.com>
To:     Serge Semin <Sergey.Semin@baikalelectronics.ru>,
        Hans de Goede <hdegoede@redhat.com>
Cc:     Serge Semin <fancer.lancer@gmail.com>,
        Alexey Malahov <Alexey.Malahov@baikalelectronics.ru>,
        Pavel Parkhomenko <Pavel.Parkhomenko@baikalelectronics.ru>,
        Rob Herring <robh+dt@kernel.org>, linux-ide@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
References: <20220324001628.13028-1-Sergey.Semin@baikalelectronics.ru>
 <382eecca-f225-5272-b9d7-134c7baae4ae@opensource.wdc.com>
Organization: Western Digital Research
In-Reply-To: <382eecca-f225-5272-b9d7-134c7baae4ae@opensource.wdc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_MED,
        SPF_HELO_PASS,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 3/29/22 05:06, Damien Le Moal wrote:
> On 3/24/22 09:16, Serge Semin wrote:
> [...]
>> After the denoted above functionality is added we can finally introduce
>> the Baikal-T1 AHCI SATA controller support into the DWC AHCI SATA driver.
>> The controller is based on the DWC AHCI SATA IP-core v4.10a and can work
>> well with the generic DWC AHCI driver. The only peculiarity of it is
>> connected with the SATA Ports reference clock source. It can be supplied
>> either from the internal SoC PLL or from the chip pads. Currently we have
>> to prefer selecting the signal coming from the pads if the corresponding
>> clock source is specified because the link doesn't get stably established
>> when the internal clock signal is activated. In addition the platform has
>> trigger-based reset signals so the corresponding flag must be passed to
>> the generic AHCI-resource getter.
>>
> 
> I am assuming this is "v2" of your patches. Please add this version number
> to your patch titles ("[PATCH v2]") and add a changelog here in the cover
> letter.

Sorry. It looks like I received again the same patch series. Not sure why.
I assumed it was a V2, but it is not.

> 
>> Signed-off-by: Serge Semin <Sergey.Semin@baikalelectronics.ru>
>> Cc: Alexey Malahov <Alexey.Malahov@baikalelectronics.ru>
>> Cc: Pavel Parkhomenko <Pavel.Parkhomenko@baikalelectronics.ru>
>> Cc: Rob Herring <robh+dt@kernel.org>
>> Cc: linux-ide@vger.kernel.org
>> Cc: linux-kernel@vger.kernel.org
>> Cc: devicetree@vger.kernel.org
>>
>> Serge Semin (21):
>>   dt-bindings: ata: sata: Extend number of SATA ports
>>   dt-bindings: ata: Convert AHCI-bindings to DT schema
>>   ata: libahci_platform: Explicitly set rc on devres_alloc failure
>>   ata: libahci_platform: Convert to using handy devm-ioremap methods
>>   ata: libahci_platform: Convert to using devm bulk clocks API
>>   ata: libahci_platform: Add function returning a clock-handle by id
>>   ata: libahci_platform: Sanity check the DT child nodes number
>>   ata: libahci_platform: Parse ports-implemented property in resources
>>     getter
>>   ata: libahci_platform: Introduce reset assertion/deassertion methods
>>   dt-bindings: ata: ahci: Add platform capability properties
>>   ata: libahci: Extend port-cmd flags set with port capabilities
>>   ata: libahci: Discard redundant force_port_map parameter
>>   ata: libahci: Don't read AHCI version twice in the save-config method
>>   ata: ahci: Convert __ahci_port_base to accepting hpriv as arguments
>>   ata: ahci: Introduce firmware-specific caps initialization
>>   dt-bindings: ata: ahci: Add DWC AHCI SATA controller DT schema
>>   ata: ahci: Add DWC AHCI SATA controller support
>>   dt-bindings: ata: ahci: Add Baikal-T1 AHCI SATA controller DT schema
>>   ata: ahci-dwc: Add platform-specific quirks support
>>   ata: ahci-dwc: Add Baikal-T1 AHCI SATA interface support
>>   MAINTAINERS: Add maintainers for DWC AHCI SATA driver
>>
>>  .../devicetree/bindings/ata/ahci-common.yaml  | 176 ++++++
>>  .../devicetree/bindings/ata/ahci-platform.txt |  79 ---
>>  .../bindings/ata/baikal,bt1-ahci.yaml         | 132 +++++
>>  .../devicetree/bindings/ata/generic-ahci.yaml |  98 ++++
>>  .../devicetree/bindings/ata/sata-common.yaml  |   7 +-
>>  .../bindings/ata/snps,dwc-ahci.yaml           | 121 ++++
>>  MAINTAINERS                                   |   9 +
>>  drivers/ata/Kconfig                           |  11 +
>>  drivers/ata/Makefile                          |   1 +
>>  drivers/ata/ahci.c                            |   4 +-
>>  drivers/ata/ahci.h                            |  21 +-
>>  drivers/ata/ahci_dwc.c                        | 525 ++++++++++++++++++
>>  drivers/ata/ahci_mtk.c                        |   2 -
>>  drivers/ata/ahci_platform.c                   |   5 -
>>  drivers/ata/ahci_st.c                         |   3 -
>>  drivers/ata/libahci.c                         |  63 ++-
>>  drivers/ata/libahci_platform.c                | 234 +++++---
>>  include/linux/ahci_platform.h                 |   8 +-
>>  18 files changed, 1321 insertions(+), 178 deletions(-)
>>  create mode 100644 Documentation/devicetree/bindings/ata/ahci-common.yaml
>>  delete mode 100644 Documentation/devicetree/bindings/ata/ahci-platform.txt
>>  create mode 100644 Documentation/devicetree/bindings/ata/baikal,bt1-ahci.yaml
>>  create mode 100644 Documentation/devicetree/bindings/ata/generic-ahci.yaml
>>  create mode 100644 Documentation/devicetree/bindings/ata/snps,dwc-ahci.yaml
>>  create mode 100644 drivers/ata/ahci_dwc.c
>>
> 
> 


-- 
Damien Le Moal
Western Digital Research
