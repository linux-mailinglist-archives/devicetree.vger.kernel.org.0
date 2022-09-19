Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6D3D25BD880
	for <lists+devicetree@lfdr.de>; Tue, 20 Sep 2022 01:56:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229995AbiISX4P (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 19 Sep 2022 19:56:15 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55780 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229839AbiISX4M (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 19 Sep 2022 19:56:12 -0400
Received: from esa1.hgst.iphmx.com (esa1.hgst.iphmx.com [68.232.141.245])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CF1774E600
        for <devicetree@vger.kernel.org>; Mon, 19 Sep 2022 16:56:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
  t=1663631770; x=1695167770;
  h=message-id:date:mime-version:subject:to:cc:references:
   from:in-reply-to:content-transfer-encoding;
  bh=++5axOCldtTWM+izrbSQWpROwyvWlmGRPLJdA2yng0M=;
  b=W6HV/w7O2WXDHc0GUJOJ43P0Z/5n+qBflc4l4Pn8XSIC0/cea+RljGwI
   7CDA+5QpVK/W55NIuuic+RoFcj2WxPBU2esRUSnKYjBKxlpV+p7NXFdmz
   VW3eaJkS0q7yw6rxqzaKY2dV7TO+z/8reVdRvSq9hg3eO0ZFHbRxc/zu6
   6pkrOEviNu2ASKq2Z0SMxNF2iwUXisTKgdM+yfD4xdCpkhoHGxziAwB7d
   zYD6fZqXQgYDEBQILngYpp/w0Oa2P6W2anEEk5vSFTnxx6lCQJzQVDG53
   ToR3swkl6bbAPjaZpN2HIjjW5YzYg7+tE4l2ufknPCctXlHi0YBo/jgxx
   Q==;
X-IronPort-AV: E=Sophos;i="5.93,329,1654531200"; 
   d="scan'208";a="323859292"
Received: from h199-255-45-15.hgst.com (HELO uls-op-cesaep02.wdc.com) ([199.255.45.15])
  by ob1.hgst.iphmx.com with ESMTP; 20 Sep 2022 07:56:10 +0800
IronPort-SDR: 7Im5GoaiXh4IByTwrBWDWE++T7l7JngDPqqhLm8ZP+Q6Pd+93NzPomQt26LvtNdwyQl8XSA9SY
 jiBVDiE7WGy1zGEfR8Dx32lpRjWbw9sGconivryYD/XnAQJlZYy/TxPCi4f550eaPDPKB085oy
 DT3e9IuTd6i9YtrdWg5wBC6zmM54ccrujI6x4PB2KiPKpfMJhbL05dNwrlKvqThNONa6ZeJ1Hm
 TzD9zFIGvGJ9+NxDdPyENjiPgXMdefkYCq5tXBnl4B8EOin8gKFauNV2j3aLfZu9rBYiXs1AI5
 TnxHrdLqOI66COerowZShJvI
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
  by uls-op-cesaep02.wdc.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256; 19 Sep 2022 16:10:47 -0700
IronPort-SDR: qnPS/LWl03jMMGZ8wcSzlpR6EelKQmCf+VkcghLelxY29m12nXfFBq/OKHD5RERGxxet1VcyxF
 9T8CKme2bU43yK2oIrDkcW9EmZj3tv9Wy/eJRFPOUwTUWBvlmgyrep4hEowPXtR0ZtvPKOf5Ro
 cbEJl0bwthhpwmTkv7a2SgAR6gb+itE+XlymGAdowDmEd8QO8VvFHZEjirTbgIyF1hrdUdzn8z
 VF0jdN8f+ubJuQOloCB1faRx4KeAiQFP0/wiSnO2552/L6byY4pb19XvwhssKxr3v/dsDQr9yD
 c84=
WDCIronportException: Internal
Received: from usg-ed-osssrv.wdc.com ([10.3.10.180])
  by uls-op-cesaip02.wdc.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256; 19 Sep 2022 16:56:10 -0700
Received: from usg-ed-osssrv.wdc.com (usg-ed-osssrv.wdc.com [127.0.0.1])
        by usg-ed-osssrv.wdc.com (Postfix) with ESMTP id 4MWhQd3jjvz1Rwtl
        for <devicetree@vger.kernel.org>; Mon, 19 Sep 2022 16:56:09 -0700 (PDT)
Authentication-Results: usg-ed-osssrv.wdc.com (amavisd-new); dkim=pass
        reason="pass (just generated, assumed good)"
        header.d=opensource.wdc.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=
        opensource.wdc.com; h=content-transfer-encoding:content-type
        :in-reply-to:organization:from:content-language:references:to
        :subject:user-agent:mime-version:date:message-id; s=dkim; t=
        1663631767; x=1666223768; bh=++5axOCldtTWM+izrbSQWpROwyvWlmGRPLJ
        dA2yng0M=; b=MoTJFUC00XkJApj32+1VX1PfEtIr/OpcZ3bHpWi/QyvI1WkBjt3
        yzDDld65zVgBC0+UkAjBj213rGnBC14nNtJYM/fVmJJQy9Y0vJVem6ghb9v/m9QX
        kfpV4M3B7HSAGuQSv1EzEI8pABks2i/qqbPn1os0SEMJX1B4hg3nkS98mShdGwYs
        8u1xf4hsJf19k1K2vZnH53l5sly3FWhwgTNE6ar6GZMfqsfWxXffHHCxVwOnr4c0
        +n/fsJZ27+K/lRoBC5ir4GKdV+rempo+e0avZEazQm8CBh78D4q4BHxTugiBrP01
        /l/u6vtvCbGtoszvXmpu5M2eu9Y+yFQ4C/A==
X-Virus-Scanned: amavisd-new at usg-ed-osssrv.wdc.com
Received: from usg-ed-osssrv.wdc.com ([127.0.0.1])
        by usg-ed-osssrv.wdc.com (usg-ed-osssrv.wdc.com [127.0.0.1]) (amavisd-new, port 10026)
        with ESMTP id nlJn7t2xwCe5 for <devicetree@vger.kernel.org>;
        Mon, 19 Sep 2022 16:56:07 -0700 (PDT)
Received: from [10.225.163.81] (unknown [10.225.163.81])
        by usg-ed-osssrv.wdc.com (Postfix) with ESMTPSA id 4MWhQV5lcDz1RvLy;
        Mon, 19 Sep 2022 16:56:02 -0700 (PDT)
Message-ID: <7872df9d-db4e-0617-84eb-e47394774322@opensource.wdc.com>
Date:   Tue, 20 Sep 2022 08:55:59 +0900
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.1
Subject: Re: [PATCH v8 09/23] ata: libahci_platform: Parse ports-implemented
 property in resources getter
To:     Guenter Roeck <linux@roeck-us.net>,
        Serge Semin <Sergey.Semin@baikalelectronics.ru>
Cc:     Hans de Goede <hdegoede@redhat.com>, Jens Axboe <axboe@kernel.dk>,
        Hannes Reinecke <hare@suse.de>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Patrice Chotard <patrice.chotard@foss.st.com>,
        Serge Semin <fancer.lancer@gmail.com>,
        Alexey Malahov <Alexey.Malahov@baikalelectronics.ru>,
        Pavel Parkhomenko <Pavel.Parkhomenko@baikalelectronics.ru>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-ide@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org
References: <20220909193621.17380-1-Sergey.Semin@baikalelectronics.ru>
 <20220909193621.17380-10-Sergey.Semin@baikalelectronics.ru>
 <20220919215014.GA336081@roeck-us.net>
Content-Language: en-US
From:   Damien Le Moal <damien.lemoal@opensource.wdc.com>
Organization: Western Digital Research
In-Reply-To: <20220919215014.GA336081@roeck-us.net>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-5.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_MED,
        SPF_HELO_PASS,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 9/20/22 06:50, Guenter Roeck wrote:
> On Fri, Sep 09, 2022 at 10:36:07PM +0300, Serge Semin wrote:
>> The ports-implemented property is mainly used on the OF-based platforms
>> with no ports mapping initialized by a bootloader/BIOS firmware. Seeing
>> the same of_property_read_u32()-based pattern has already been implemented
>> in the generic AHCI LLDD (glue) driver and in the Mediatek, St AHCI
>> drivers let's move the property read procedure to the generic
>> ahci_platform_get_resources() method. Thus we'll have the forced ports
>> mapping feature supported for each OF-based platform which requires that,
>> and stop re-implementing the same pattern in there a bit simplifying the
>> code.
>>
>> Signed-off-by: Serge Semin <Sergey.Semin@baikalelectronics.ru>
>> ---
>>  drivers/ata/ahci_mtk.c         | 2 --
>>  drivers/ata/ahci_platform.c    | 3 ---
>>  drivers/ata/ahci_st.c          | 3 ---
>>  drivers/ata/libahci_platform.c | 3 +++
>>  4 files changed, 3 insertions(+), 8 deletions(-)
>>
>> diff --git a/drivers/ata/ahci_mtk.c b/drivers/ata/ahci_mtk.c
>> index 1f6c85fde983..c056378e3e72 100644
>> --- a/drivers/ata/ahci_mtk.c
>> +++ b/drivers/ata/ahci_mtk.c
>> @@ -118,8 +118,6 @@ static int mtk_ahci_parse_property(struct ahci_host_priv *hpriv,
>>  				   SYS_CFG_SATA_EN);
>>  	}
>>  
>> -	of_property_read_u32(np, "ports-implemented", &hpriv->force_port_map);
>> -
>>  	return 0;
>>  }
>>  
>> diff --git a/drivers/ata/ahci_platform.c b/drivers/ata/ahci_platform.c
>> index 28a8de5b48b9..9b56490ecbc3 100644
>> --- a/drivers/ata/ahci_platform.c
>> +++ b/drivers/ata/ahci_platform.c
>> @@ -56,9 +56,6 @@ static int ahci_probe(struct platform_device *pdev)
>>  	if (rc)
>>  		return rc;
>>  
>> -	of_property_read_u32(dev->of_node,
>> -			     "ports-implemented", &hpriv->force_port_map);
>> -
>>  	if (of_device_is_compatible(dev->of_node, "hisilicon,hisi-ahci"))
>>  		hpriv->flags |= AHCI_HFLAG_NO_FBS | AHCI_HFLAG_NO_NCQ;
>>  
>> diff --git a/drivers/ata/ahci_st.c b/drivers/ata/ahci_st.c
>> index 7526653c843b..068621099c00 100644
>> --- a/drivers/ata/ahci_st.c
>> +++ b/drivers/ata/ahci_st.c
>> @@ -168,9 +168,6 @@ static int st_ahci_probe(struct platform_device *pdev)
>>  
>>  	st_ahci_configure_oob(hpriv->mmio);
>>  
>> -	of_property_read_u32(dev->of_node,
>> -			     "ports-implemented", &hpriv->force_port_map);
>> -
> 
> With arm:allmodconfig, this results in:
> 
>   CC [M]  drivers/ata/ahci_st.o
> drivers/ata/ahci_st.c: In function 'st_ahci_probe':
> drivers/ata/ahci_st.c:147:24: error: unused variable 'dev' [-Werror=unused-variable]
>   147 |         struct device *dev = &pdev->dev;
> 
> Guenter

Just pushed a fix for this in ata tree for-next and for-6.1 branches. The
problem should be resolved with the next linux-next merge.

-- 
Damien Le Moal
Western Digital Research

