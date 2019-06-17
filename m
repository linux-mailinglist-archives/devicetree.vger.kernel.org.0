Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 4B34948853
	for <lists+devicetree@lfdr.de>; Mon, 17 Jun 2019 18:06:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726599AbfFQQGB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 17 Jun 2019 12:06:01 -0400
Received: from mail-lf1-f67.google.com ([209.85.167.67]:36400 "EHLO
        mail-lf1-f67.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725863AbfFQQGA (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 17 Jun 2019 12:06:00 -0400
Received: by mail-lf1-f67.google.com with SMTP id q26so6941361lfc.3
        for <devicetree@vger.kernel.org>; Mon, 17 Jun 2019 09:05:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=cogentembedded-com.20150623.gappssmtp.com; s=20150623;
        h=subject:to:cc:references:from:organization:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=Ftr3IF6tEhAQtJEYORdg+72gK/8WB7Tuv1StM+dZuAk=;
        b=GorSRaYuzb+DQmhSgz3nUmepUzz51+Lyv6smpuuHnpoQIPtwZSpBVP4zk3LrUrQXlO
         Isd8K4u6O11izNx3bNmHdCC8GtUcTTiSGew6dvzyvns3ODFQ993EppLXwbnyOGhS81lN
         x0Brxfw7ipJf1iktkzM0o+LpQRAxEcHbDnn/Zlgk4vpkLCWNLWYZlOiXgM2onbNmBgQ8
         DvoksYUQL0DBgWqQQnS6v4s555bHT1eDk79ZK10zrefEzd7BUxBdPMl7K8iCb5y98vFe
         9IISN4PaKDRAckmOUQhTBAd+hYv9DydnF7Jlm9TYY9czpM/B8OqxcRj6tvjbcg5PV/Mc
         B9yA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:organization
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language:content-transfer-encoding;
        bh=Ftr3IF6tEhAQtJEYORdg+72gK/8WB7Tuv1StM+dZuAk=;
        b=KJejNpetg4NFH8nRY/l5seNendmCYIP7CVfO3pw+JBEn0nB00IG/eeE9I1i6Kdov94
         GlX9+DOHcmaPPmot41h5eksROjXtVy20HuBksoaJ+bc8NjSOeF7Rk36qtULKsatsywIo
         2zDp2un0w5vIWOsfKJBaedd4L3si+avxVtumR8I5JA4Jvu5G2z1MdTFSP2RD5ELIojJ4
         TF8NHgtj86YKW8hm+Xnh7TyjICc+Vhn5v6kOnEalYu5VJ1NE3YD0e6klc0ieH9KCywbb
         bW9AmPKBc5BaY4HOM9EJjhZEAxaO+leAMP5c0sWXEm8TzROnZpx1KbDigmLwB0uRfo44
         vf7w==
X-Gm-Message-State: APjAAAXPTUPYqnXSPEt0t/j+1LTTyFG9DHmYj1V/aw+OWxkFKMZRwVZI
        xJDT8zg8++u5ZJXquE+529CV3w==
X-Google-Smtp-Source: APXvYqxy91RpuobIYehP+3aOoQHmmQtMCXRPP5GVPK8YNQWAOFzrL+2r+mJVUmXGGCJGyYDS5xdg4w==
X-Received: by 2002:a19:7905:: with SMTP id u5mr55463097lfc.117.1560787559152;
        Mon, 17 Jun 2019 09:05:59 -0700 (PDT)
Received: from wasted.cogentembedded.com ([31.173.84.129])
        by smtp.gmail.com with ESMTPSA id m17sm2174140lji.16.2019.06.17.09.05.57
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 17 Jun 2019 09:05:58 -0700 (PDT)
Subject: Re: [PATCH v4 6/8] ARM: dts: imx7ulp: add imx7ulp USBOTG1 support
To:     Peter Chen <peter.chen@nxp.com>,
        "balbi@kernel.org" <balbi@kernel.org>,
        "shawnguo@kernel.org" <shawnguo@kernel.org>
Cc:     "robh+dt@kernel.org" <robh+dt@kernel.org>,
        Fabio Estevam <fabio.estevam@nxp.com>,
        "kernel@pengutronix.de" <kernel@pengutronix.de>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        Aisheng Dong <aisheng.dong@nxp.com>,
        dl-linux-imx <linux-imx@nxp.com>,
        "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>,
        "linux-usb@vger.kernel.org" <linux-usb@vger.kernel.org>,
        "chunfeng.yun@mediatek.com" <chunfeng.yun@mediatek.com>
References: <20190614093544.11730-1-peter.chen@nxp.com>
 <20190614093544.11730-7-peter.chen@nxp.com>
 <0dbf01f9-7c5c-ce0b-4feb-378c9147f15a@cogentembedded.com>
 <VI1PR04MB5327B9EF844F9C7505D337298BEB0@VI1PR04MB5327.eurprd04.prod.outlook.com>
From:   Sergei Shtylyov <sergei.shtylyov@cogentembedded.com>
Organization: Cogent Embedded
Message-ID: <7d50357c-64b4-f504-e1b8-0e4542b59d12@cogentembedded.com>
Date:   Mon, 17 Jun 2019 19:05:57 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.2.1
MIME-Version: 1.0
In-Reply-To: <VI1PR04MB5327B9EF844F9C7505D337298BEB0@VI1PR04MB5327.eurprd04.prod.outlook.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-MW
Content-Transfer-Encoding: 7bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hello!

On 06/17/2019 04:13 AM, Peter Chen wrote:

[...]
>>> Signed-off-by: Peter Chen <peter.chen@nxp.com>
>>> ---
>>>   arch/arm/boot/dts/imx7ulp.dtsi | 28 ++++++++++++++++++++++++++++
>>>   1 file changed, 28 insertions(+)
>>>
>>> diff --git a/arch/arm/boot/dts/imx7ulp.dtsi
>>> b/arch/arm/boot/dts/imx7ulp.dtsi index fca6e50f37c8..5115e47715c3
>>> 100644
>>> --- a/arch/arm/boot/dts/imx7ulp.dtsi
>>> +++ b/arch/arm/boot/dts/imx7ulp.dtsi
>>> @@ -30,6 +30,7 @@
>>>   		serial1 = &lpuart5;
>>>   		serial2 = &lpuart6;
>>>   		serial3 = &lpuart7;
>>> +		usbphy0 = &usbphy1;
>>
>>     Is that really needed?

> Yes, since the driver code uses aligned id, and the controller number is from 0 at the code.
> I commented it here: [1]

   Fair enough...

>> [...]
>>> @@ -133,6 +134,33 @@
>> [...]
>>> +		usbphy1: usbphy@0x40350000 {
>>
>>     Name it "usb-phy@40350000" please.
>>
> 
> Would you please list binding doc for your suggestion?

   The DT spec v0.2, section 2.2.2:

https://github.com/devicetree-org/devicetree-specification/releases/download/v0.2/devicetree-specification-v0.2.pdf

> 
> Thanks,
> Peter
> 
> [1] https://patchwork.kernel.org/patch/10920599/

MBR, Sergei
