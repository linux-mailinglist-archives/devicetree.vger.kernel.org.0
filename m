Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id F2DBA54D622
	for <lists+devicetree@lfdr.de>; Thu, 16 Jun 2022 02:34:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S242913AbiFPAdf (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 15 Jun 2022 20:33:35 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40880 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1347674AbiFPAda (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 15 Jun 2022 20:33:30 -0400
Received: from esa2.hgst.iphmx.com (esa2.hgst.iphmx.com [68.232.143.124])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A2A4E101FE
        for <devicetree@vger.kernel.org>; Wed, 15 Jun 2022 17:33:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
  t=1655339609; x=1686875609;
  h=message-id:date:mime-version:subject:to:cc:references:
   from:in-reply-to:content-transfer-encoding;
  bh=MBRiA3OhDc8T/PLUdbazDe1hOAsO2DxX0LERaRgF55U=;
  b=O7wK858m6W7/6Hibg9cpf3cmbtbS/RijHenJP7nNB/DEvGaU/pDgsurF
   fj8ysyVDb8T6hlqZYJpilib/JVbM574LOx3FwA12ecz1qyMLafMZ8Rbpo
   k3aZi/d4zi7s2WtvLgFNnSnMHomKUCaj1hU3ZZa+58mtFIoouMyO2Acel
   VAC2mxCXeBK5hH7/JglRn6S0y5wEAjm06+moohC/LGP5RNOYF50vl6UoB
   4F9NRpmBai/53oCyxGcTi8MCVKPGAopiYUuoV2vsnBN0kkRAU2aAzx2vG
   uYQSAZL5CDgcZh3X29jSL5p4r7YnKwLZrbCbh7yVwCGYg0CBwpnWUjxl9
   Q==;
X-IronPort-AV: E=Sophos;i="5.91,302,1647273600"; 
   d="scan'208";a="307573867"
Received: from h199-255-45-15.hgst.com (HELO uls-op-cesaep02.wdc.com) ([199.255.45.15])
  by ob1.hgst.iphmx.com with ESMTP; 16 Jun 2022 08:33:26 +0800
IronPort-SDR: dako/yaGECsNeRb8ffDimfBe1lkjrwkWdM4iBysyTS0rKGkqxJKuGVkRk24ZQllWwIOs6l6rAK
 iW4l83/AReh3OB6Nc84dBecG9iZZtl75bMewgXodPxbMN7qy2+U3UT37nyqUpa630P7hPYdE4p
 9pg7br4aJsoFUQJE9ZZ3qav0jAYkqtk8Ajrb/EJmbq/tLpjHjqtEP7uHNJuRQeFn6BLFmx13rG
 kNNiGjE3Jel4Ge4g6cIuoM0XaoW0LGmlLoZ3WbfrUKiArDGSbIFeX64J70kXAmDRjS6XM/GO1P
 rH32LJtB99N2EBdzZwXcK2A6
Received: from uls-op-cesaip01.wdc.com ([10.248.3.36])
  by uls-op-cesaep02.wdc.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256; 15 Jun 2022 16:51:50 -0700
IronPort-SDR: VKLbPhV6pAHY7kg1wqy+yt5pTMDeDgG2316LpECtji3bWLpUIB1CbcmszrtzdiMnLD5KN40a6g
 y5+FkvweSDzwN3JUc13/nnOrNgUBNmvRA2JuqkRXzDjPNntAxsvXeUIzZacO3FzVHuj6Z9FbOv
 tZPnJTCUGeR9twx2C7ty70YTdCudU80ADC1egehHLW8hC0VDrdIp93ZsmygQH0IkFHFq1Yxex7
 1ctOfOk8vV6yqsp2wWchSKZKh6KKaeXHaLMmB/AUwOvieiher30SFkVzOwwn48IY4QPNqTqz2w
 joA=
WDCIronportException: Internal
Received: from usg-ed-osssrv.wdc.com ([10.3.10.180])
  by uls-op-cesaip01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256; 15 Jun 2022 17:33:27 -0700
Received: from usg-ed-osssrv.wdc.com (usg-ed-osssrv.wdc.com [127.0.0.1])
        by usg-ed-osssrv.wdc.com (Postfix) with ESMTP id 4LNjny1rL3z1SVp6
        for <devicetree@vger.kernel.org>; Wed, 15 Jun 2022 17:33:26 -0700 (PDT)
Authentication-Results: usg-ed-osssrv.wdc.com (amavisd-new); dkim=pass
        reason="pass (just generated, assumed good)"
        header.d=opensource.wdc.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=
        opensource.wdc.com; h=content-transfer-encoding:content-type
        :in-reply-to:organization:from:references:to:content-language
        :subject:user-agent:mime-version:date:message-id; s=dkim; t=
        1655339605; x=1657931606; bh=MBRiA3OhDc8T/PLUdbazDe1hOAsO2DxX0LE
        RaRgF55U=; b=NQ4xGNcQzg1Zyef+8rgqEIjYNd8niORzlDHXxrfykwqLeJ6C9SH
        kR/EIsOZCp0/vFPaby6+AkXO2nrb1Lt2Erk1IdVAHN2nsR5m0iNV7YbyCAlzk1tB
        cijbbxoH+HHjFtjqk/SF1ndzYzDIT0bpmzvoFWeZ3075/injaYqwUVnHLfdiJMY+
        qgP9fSaj4Yn6xMy+fmSe3F/zLalPsIBqlgucVxY728XynQg99Vf69JZXI+LIQ5EN
        gNzl/0f+TZj2nqReCr7mmbHMSGZyi6OB8eJfb0EONr+uLXBjloM6ORkQATO4OCTf
        EWsRGHC6spuSCTMORLwlwL7ZSAbYYWHaWrA==
X-Virus-Scanned: amavisd-new at usg-ed-osssrv.wdc.com
Received: from usg-ed-osssrv.wdc.com ([127.0.0.1])
        by usg-ed-osssrv.wdc.com (usg-ed-osssrv.wdc.com [127.0.0.1]) (amavisd-new, port 10026)
        with ESMTP id nkiqG4qjb9zP for <devicetree@vger.kernel.org>;
        Wed, 15 Jun 2022 17:33:25 -0700 (PDT)
Received: from [10.89.84.185] (c02drav6md6t.dhcp.fujisawa.hgst.com [10.89.84.185])
        by usg-ed-osssrv.wdc.com (Postfix) with ESMTPSA id 4LNjnv4BqNz1Rvlc;
        Wed, 15 Jun 2022 17:33:23 -0700 (PDT)
Message-ID: <5f1edbd8-018a-bcd0-10f2-94767f341b45@opensource.wdc.com>
Date:   Thu, 16 Jun 2022 09:33:22 +0900
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:91.0)
 Gecko/20100101 Thunderbird/91.10.0
Subject: Re: [PATCH v4 19/23] ata: ahci: Add DWC AHCI SATA controller support
Content-Language: en-US
To:     Serge Semin <fancer.lancer@gmail.com>
Cc:     Serge Semin <Sergey.Semin@baikalelectronics.ru>,
        Hans de Goede <hdegoede@redhat.com>,
        Jens Axboe <axboe@kernel.dk>, Hannes Reinecke <hare@suse.de>,
        Alexey Malahov <Alexey.Malahov@baikalelectronics.ru>,
        Pavel Parkhomenko <Pavel.Parkhomenko@baikalelectronics.ru>,
        Rob Herring <robh+dt@kernel.org>, linux-ide@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
References: <20220610081801.11854-1-Sergey.Semin@baikalelectronics.ru>
 <20220610081801.11854-20-Sergey.Semin@baikalelectronics.ru>
 <52c9ca79-769f-4426-db94-7aad05a68258@opensource.wdc.com>
 <20220615214802.ke6owp5cuv5l77hu@mobilestation>
From:   Damien Le Moal <damien.lemoal@opensource.wdc.com>
Organization: Western Digital Research
In-Reply-To: <20220615214802.ke6owp5cuv5l77hu@mobilestation>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-5.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_MED,
        SPF_HELO_PASS,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 2022/06/16 6:48, Serge Semin wrote:
[...]
>> MODULE_LICENSE("GPL v2");
>>
>> To match the file header SPDX.
> 
> No. Please see the commit bf7fbeeae6db ("module: Cure the
> MODULE_LICENSE "GPL" vs. "GPL v2" bogosity") and what checkpatch.pl
> says should the "GPL v2" string is used in the module license block.
> More info regarding this macro and the possible license values are
> described here:
> Documentation/process/license-rules.rst

ah ! OK. I was not 100% sure. Doing a quick grep, there is still a lot of (half
?) of "GPL v2" vs "GPL".

Ignore this then.

> 
> -Sergey
> 
>>
>>> diff --git a/drivers/ata/ahci_platform.c b/drivers/ata/ahci_platform.c
>>> index 9b56490ecbc3..8f5572a9f8f1 100644
>>> --- a/drivers/ata/ahci_platform.c
>>> +++ b/drivers/ata/ahci_platform.c
>>> @@ -80,9 +80,7 @@ static SIMPLE_DEV_PM_OPS(ahci_pm_ops, ahci_platform_suspend,
>>>  static const struct of_device_id ahci_of_match[] = {
>>>  	{ .compatible = "generic-ahci", },
>>>  	/* Keep the following compatibles for device tree compatibility */
>>> -	{ .compatible = "snps,spear-ahci", },
>>>  	{ .compatible = "ibm,476gtr-ahci", },
>>> -	{ .compatible = "snps,dwc-ahci", },
>>>  	{ .compatible = "hisilicon,hisi-ahci", },
>>>  	{ .compatible = "cavium,octeon-7130-ahci", },
>>>  	{ /* sentinel */ }
>>
>>
>> -- 
>> Damien Le Moal
>> Western Digital Research
> 


-- 
Damien Le Moal
Western Digital Research
