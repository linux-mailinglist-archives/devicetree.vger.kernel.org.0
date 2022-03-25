Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5EF6C4E6C3F
	for <lists+devicetree@lfdr.de>; Fri, 25 Mar 2022 02:56:40 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1353891AbiCYB6K (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 24 Mar 2022 21:58:10 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50378 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1347436AbiCYB6J (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 24 Mar 2022 21:58:09 -0400
Received: from esa3.hgst.iphmx.com (esa3.hgst.iphmx.com [216.71.153.141])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0A5AD9E9D3
        for <devicetree@vger.kernel.org>; Thu, 24 Mar 2022 18:56:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
  t=1648173395; x=1679709395;
  h=message-id:date:mime-version:subject:to:cc:references:
   from:in-reply-to:content-transfer-encoding;
  bh=ybkKAnKKo+UbkJZjb3yXKNlLPRslLGdd7/WxedkE/qg=;
  b=cWupsQx4MIjxPkGfQwFXA3hhR8QWzpU9EpqbaEQ5Z4emUsswgpGT9G9F
   zxSo9C814biFz7+0TTv+cWAtS3FnnnDsJEnr2n0FiIg8EvJgoPHq+UCdQ
   cMTsSzdcqmiQjV5VkLY/mSfq055AG8ITHAydDxC0Q/Ik5DcbQuaV+63YO
   X16e62VFEBPjygyJD9y0dAWYgTwdA9dCquLKMeEKrr9iH06WPp5R77dmD
   iyUVelvKOLgnvHcC1yzknSmWSusf2qn0pgJwzYU7v6trbHc8mHS5OoS5v
   ugCiGgDWrC7185KkqWVk20FM2S3vdwRr+T7nJbHefuslb1WZKZNidLO3i
   w==;
X-IronPort-AV: E=Sophos;i="5.90,209,1643644800"; 
   d="scan'208";a="201069546"
Received: from h199-255-45-15.hgst.com (HELO uls-op-cesaep02.wdc.com) ([199.255.45.15])
  by ob1.hgst.iphmx.com with ESMTP; 25 Mar 2022 09:56:33 +0800
IronPort-SDR: zMdaIz+dRnAVUKll5Lk8pQXrFic4n6H/hBvCBQEVgWiwcbeUpVED8s86r8DXtl0subqkqTGtF5
 wCXFHUbf6uJPRcpSPSqOKcst2NJ+NZpJsuGeNLoRw19Xxm06kQWhmmwQAEpfU3HY5eH0/VTQZq
 T17gw5sgK3FEKks93+xKtlS+PbFHVBB53lqvyHUfQJq4yVEtWWGlae7EO1q6HbGoJmNLB6t7A5
 C4viRoHEScCcdC5UXTW6eEBzMePmWtVbjiewVmyaW+CQ/WDwaYGovxMv/yK/Tyb8GexW6VZqVt
 WzfjIqNhbSRVnKrEk9twRoFy
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
  by uls-op-cesaep02.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 24 Mar 2022 18:27:30 -0700
IronPort-SDR: DWL12Z03qwCWEbhfolqXoExr1LiM2BW++4ovvcsaEOxyaeSoVd04ocUulqdOfxUhpRFeFnc+4q
 zXKlim4CmN0NZoeKhYTx4INxjS/yiFO6IaCWXd82z5jhC1jcTnTJEkJ2qxSqygfsJPtL+fkove
 WJK7OIWjmpPLXszl1DsIrYJW3gG+8oCCTwb2dv7NNsOqtHItIUIkp2XZFzB/f0Kss3mDRENvOp
 OeFhR/MYQuUEqzarVV9jc7oBomAMfaSrTg+GF4xs56UJavaTM/UQJvU93UraJwcr3SbwHQ+siv
 M6E=
WDCIronportException: Internal
Received: from usg-ed-osssrv.wdc.com ([10.3.10.180])
  by uls-op-cesaip02.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 24 Mar 2022 18:56:36 -0700
Received: from usg-ed-osssrv.wdc.com (usg-ed-osssrv.wdc.com [127.0.0.1])
        by usg-ed-osssrv.wdc.com (Postfix) with ESMTP id 4KPlZB3trHz1SVp4
        for <devicetree@vger.kernel.org>; Thu, 24 Mar 2022 18:56:34 -0700 (PDT)
Authentication-Results: usg-ed-osssrv.wdc.com (amavisd-new); dkim=pass
        reason="pass (just generated, assumed good)"
        header.d=opensource.wdc.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=
        opensource.wdc.com; h=content-transfer-encoding:content-type
        :in-reply-to:organization:from:references:to:content-language
        :subject:user-agent:mime-version:date:message-id; s=dkim; t=
        1648173392; x=1650765393; bh=ybkKAnKKo+UbkJZjb3yXKNlLPRslLGdd7/W
        xedkE/qg=; b=tXSWktRJ2EDHH9q2igPwWbSb5SVm2yCRFugrI4gz/ciyKWGYTxT
        z1h0I7wF8G3LvEquXDBI96QRSGvec8LFfLsZ6tkgB6/sWiLqRJVdSfVGcC0irmAO
        ZxCghXrJ3wkZMYHLqiNdp9aaN67ZFneU4uc0x4z+L4sfhvlJmCkI9oa35jQb/lYw
        Fi3Seh/DLiONfr4DVQeRvv3q2wMW79CACysekUrDsE6nZnbx4lP/Nmyj9DgezjId
        pBVLGiyZhuSBA9OmlHfu65VkF14udOiupunp8RXi63ueGSGWs3q1NJxUmHJrTjCt
        tI/fyMy5EmXydKB0eJCFnpLZ+YFU3yRRBPg==
X-Virus-Scanned: amavisd-new at usg-ed-osssrv.wdc.com
Received: from usg-ed-osssrv.wdc.com ([127.0.0.1])
        by usg-ed-osssrv.wdc.com (usg-ed-osssrv.wdc.com [127.0.0.1]) (amavisd-new, port 10026)
        with ESMTP id hlkSpK7SHaE5 for <devicetree@vger.kernel.org>;
        Thu, 24 Mar 2022 18:56:32 -0700 (PDT)
Received: from [10.89.85.67] (c02drav6md6t.dhcp.fujisawa.hgst.com [10.89.85.67])
        by usg-ed-osssrv.wdc.com (Postfix) with ESMTPSA id 4KPlZ72n0wz1Rvlx;
        Thu, 24 Mar 2022 18:56:31 -0700 (PDT)
Message-ID: <f163f982-852f-027f-8d24-e624e45fbbf1@opensource.wdc.com>
Date:   Fri, 25 Mar 2022 10:56:29 +0900
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:91.0)
 Gecko/20100101 Thunderbird/91.7.0
Subject: Re: [PATCH 03/21] ata: libahci_platform: Explicitly set rc on
 devres_alloc failure
Content-Language: en-US
To:     Serge Semin <fancer.lancer@gmail.com>
Cc:     Serge Semin <Sergey.Semin@baikalelectronics.ru>,
        Hans de Goede <hdegoede@redhat.com>,
        Jens Axboe <axboe@kernel.dk>,
        Alexey Malahov <Alexey.Malahov@baikalelectronics.ru>,
        Pavel Parkhomenko <Pavel.Parkhomenko@baikalelectronics.ru>,
        Rob Herring <robh+dt@kernel.org>, linux-ide@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
References: <20220324001628.13028-1-Sergey.Semin@baikalelectronics.ru>
 <20220324001628.13028-4-Sergey.Semin@baikalelectronics.ru>
 <9128f850-fcc1-811e-b781-b7fbcb2403ba@opensource.wdc.com>
 <20220324213758.vihvh5z2pg3skr6i@mobilestation>
From:   Damien Le Moal <damien.lemoal@opensource.wdc.com>
Organization: Western Digital Research
In-Reply-To: <20220324213758.vihvh5z2pg3skr6i@mobilestation>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_MED,
        SPF_HELO_PASS,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 2022/03/25 6:37, Serge Semin wrote:
> Hello Damien
> 
> On Thu, Mar 24, 2022 at 09:58:34AM +0900, Damien Le Moal wrote:
>> On 3/24/22 09:16, Serge Semin wrote:
>>> It's better for readability and maintainability to explicitly assign an
>>> error number to the variable used then as a return value from the method
>>> on the cleanup-on-error path. So adding new code in the method we won't
>>
> 
>> No it is not. On-stack variable initialization is not free. So if
>> initializing the variable is not needed, do not do it.
> 
> This patch isn't about on-stack initialization, but about bringing an
> order to the error-handling procedure of the
> ahci_platform_get_resources() method. Explicitly setting the rc variable
> with an error value closer to the place caused the error much easier
> to perceive than keeping in mind that the variable has been set with
> some default value. That turns to be even more justified seeing the
> rest of the method does it that way.

I agree with that change. Setting "rc = -ENOMEM" under the "if" checking for
error is fine.

> 
> See my next comment regarding the initialization.
> 
>>
>>> have to think whether the overridden rc-variable is set afterward in case
>>> of an error. Saving one line of code doesn't worth it especially seeing
>>> the rest of the ahci_platform_get_resources() function errors handling
>>> blocks do explicitly write errno to rc.
>>>
>>> Signed-off-by: Serge Semin <Sergey.Semin@baikalelectronics.ru>
>>> ---
>>>  drivers/ata/libahci_platform.c | 6 ++++--
>>>  1 file changed, 4 insertions(+), 2 deletions(-)
>>>
>>> diff --git a/drivers/ata/libahci_platform.c b/drivers/ata/libahci_platform.c
>>> index 18296443ccba..1bd2f1686239 100644
>>> --- a/drivers/ata/libahci_platform.c
>>> +++ b/drivers/ata/libahci_platform.c
>>> @@ -389,7 +389,7 @@ struct ahci_host_priv *ahci_platform_get_resources(struct platform_device *pdev,
>>>  	struct ahci_host_priv *hpriv;
>>>  	struct clk *clk;
>>>  	struct device_node *child;
>>> -	int i, enabled_ports = 0, rc = -ENOMEM, child_nodes;
>>> +	int i, enabled_ports = 0, rc = 0, child_nodes;
>>>  	u32 mask_port_map = 0;
>>>  
>>>  	if (!devres_open_group(dev, NULL, GFP_KERNEL))
>>> @@ -397,8 +397,10 @@ struct ahci_host_priv *ahci_platform_get_resources(struct platform_device *pdev,
>>>  
>>>  	hpriv = devres_alloc(ahci_platform_put_resources, sizeof(*hpriv),
>>>  			     GFP_KERNEL);
>>> -	if (!hpriv)
>>> +	if (!hpriv) {
>>> +		rc = -ENOMEM;
>>>  		goto err_out;
>>> +	}
>>
> 
>> If you set rc to -ENOMEM here, then the 0 initialization of rc is not needed.
> 
> Normally you are right. But the case of the rc/ret/etc variables is
> special. I'd stick with having it defaulted to 0 here. Here is why.
> 
> When it comes to using the rc/ret/etc variables the maintainability
> gets to be more important than some small optimization (especially
> here seeing the ahci_platform_get_resources() is called once per
> device life-time) because in case of the method alteration these
> variables very often get to be involved in one way or another. If due
> to a mistake the rc/ret/etc variable isn't updated in case of an
> erroneous situation but the method is terminated with the goto-pattern
> and rc/ret/etc isn't initialized with any default value then we will
> end up with having a garbage pointer returned. We'd be lucky if it was
> a null pointer, but in general it can be a reference to some random
> memory region. In the later case the kernel may experience random
> crashes with hard-to-find cause of the problem. In the former case the
> problem would have been tracked right away on the testing stage by
> getting the system invalid-pointer de-reference crash. That's why
> defaulting the variable to zero here is still useful.

No it is not. We have code reviews and testing to catch mistakes. If we start
thinking along these lines, any useless local variable initialization can be
justified. So let's not go there please.


-- 
Damien Le Moal
Western Digital Research
