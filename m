Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 24DCD415496
	for <lists+devicetree@lfdr.de>; Thu, 23 Sep 2021 02:22:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238517AbhIWAYL (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 22 Sep 2021 20:24:11 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53462 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238643AbhIWAYL (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 22 Sep 2021 20:24:11 -0400
Received: from mail-pl1-x636.google.com (mail-pl1-x636.google.com [IPv6:2607:f8b0:4864:20::636])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7DC93C061574
        for <devicetree@vger.kernel.org>; Wed, 22 Sep 2021 17:22:40 -0700 (PDT)
Received: by mail-pl1-x636.google.com with SMTP id l6so2866844plh.9
        for <devicetree@vger.kernel.org>; Wed, 22 Sep 2021 17:22:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=/nM0ccd4oIiuHu92ThKX7Ha25WVUUAu1oFwavden4U8=;
        b=LnJEzyH7HfK8IXEd2HaIUtJlMkdblYXau8uHGoB4Bou8bzDCh1CTrKTVyw6S0QEROT
         WFlNYlpjcuqtUZuBtIq9buLRSKJUO9I/X4diVzJfnNpagNOfYDI3xLI445Ewj1epFWPO
         NnWrn0NA/Tb2rBQ5/l7M18AQJ5EHObikTI1gQkoZqLdAd8aVl2mHiZPzI8bTBibh550z
         8H3jhcwCS7UeKPIiEuX5u5jGwQPhdMGkDiWRJF2/eWDk4z9sD3sGIIFBkIEOuIeJdPrF
         A6t1QGOjUi/IWzNkL9Nk54EDNcyJiBY5DahXOpDA2HSlGpXGQkxLJPRaoBH04zA5IV2v
         s+zw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=/nM0ccd4oIiuHu92ThKX7Ha25WVUUAu1oFwavden4U8=;
        b=xrC8hvGVlPZCKJz6xVISMSKZEpuNgGpyIBGcs0LOYbl+brpKEkovw585A2+8Ebz5uJ
         t9YBdNMWpxUoxDSx11Q3o9yOhXtcLfkQrtY+MvTXl1VXxY/7O+34rAGDOl6hGC2IB4lo
         3moQCPsgmISqQ+JAa2UwLKfzxIJqJVanftupFBc9IGcOfxMWuZBbCvtZU9mOu+X5WhMr
         g0eBUIk53XUy3WzAHjDwGsv2F1ixkdkCFfJsnebmj5PJOxIguVlIvhinh70CQiCEyTOE
         RemWD/4iji9/fDhfd1GQeBjpUWNONRTGOrMGVwLtEwb1rpbT0F+Gj+dspZgd9/MUTe2N
         JrDA==
X-Gm-Message-State: AOAM530lqzWlt5TYyykL+V76KHkLhEx8jJ6C/+9HszSvyCKZA6a07wZR
        z8aqDAUPnO5El2zm+3PeA8Q=
X-Google-Smtp-Source: ABdhPJyG3VwIDGXBMagVurNyHUzaGhjtoUKM/N9h0A8OZ4o7r8iMTaNQYPoQC4rNf+HqoJMkbONmMg==
X-Received: by 2002:a17:90a:e514:: with SMTP id t20mr14677105pjy.16.1632356559859;
        Wed, 22 Sep 2021 17:22:39 -0700 (PDT)
Received: from [192.168.1.121] (99-44-17-11.lightspeed.irvnca.sbcglobal.net. [99.44.17.11])
        by smtp.gmail.com with ESMTPSA id c3sm3917857pgn.76.2021.09.22.17.22.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 22 Sep 2021 17:22:39 -0700 (PDT)
Message-ID: <b26b86d9-a2d2-70b5-c06f-b4edba75de13@gmail.com>
Date:   Wed, 22 Sep 2021 17:22:37 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.1.1
Subject: Re: [PATCH] ARM: dts: BCM5301X: Add DT for Asus RT-AC88U
Content-Language: en-US
To:     =?UTF-8?B?QXLEsW7DpyDDnE5BTA==?= <arinc.unal@arinc9.com>
Cc:     =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>,
        Hauke Mehrtens <hauke@hauke-m.de>,
        Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        bcm-kernel-feedback-list@broadcom.com,
        =?UTF-8?Q?Alvin_=c5=a0ipraga?= <alsi@bang-olufsen.dk>
References: <20210921121901.24578-1-arinc.unal@arinc9.com>
 <b695c272-b718-f702-8890-e098eee7e093@gmail.com>
 <50b7d44c-614e-bf3a-00bc-bc8a1c5d353a@arinc9.com>
From:   Florian Fainelli <f.fainelli@gmail.com>
In-Reply-To: <50b7d44c-614e-bf3a-00bc-bc8a1c5d353a@arinc9.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 9/22/2021 3:26 PM, Arınç ÜNAL wrote:
> On 22/09/2021 21:15, Florian Fainelli wrote:
>> On 9/21/21 5:19 AM, Arınç ÜNAL wrote:
>>> Hardware Info
>>> -------------
>>>
>>> Processor    - Broadcom BCM4709C0KFEBG dual-core @ 1.4 GHz
>>> Switch        - BCM53012 in BCM4709C0KFEBG & external RTL8365MB
>>
>> There is no Device Tree description of the RTL8365MB switch, can it be
>> driven/controlled via MDIO, SPI or GPIOs by any chance? This is not a
>> show stopper for accepting the patch, just wondering if you are somehow
>> trying to get that switch controlled by the rtl8366 DSA driver as well?
>>
> There's a v1 patch on net-next adding DSA support for RTL8365MB by Alvin 
> Šipraga, CC'ing them. There's also a v2 patch coming.
> https://lore.kernel.org/netdev/20210822193145.1312668-1-alvin@pqrs.dk/
> 
> I've been mailing Alvin to figure out how to define it on the device 
> tree. They have provided very useful information. Quoting a few:
> 
>  >> I'm trying to write the device tree to support this switch. I'm not 
> sure
>  >> whether the default GPIO IDs of mdc-gpios, mdio-gpios, reset-gpios &
>  >> interrupts on realtek-smi.txt kernel documentation are correct.
>  >> 
> https://elixir.bootlin.com/linux/latest/source/Documentation/devicetree/bindings/net/dsa/realtek-smi.txt 
> 
>  >
>  > These gpios are just an example. It really depends how your board is
>  > wired up. You have to figure out which SoC pad is wired to the MDC,
>  > MDIO, and RESET pins on the RTL8365MB. Then you have to make sure the
>  > pinmux is set up correctly so that these pads correspond to some GPIO
>  > with a given ID, and then pick the right GPIO controller (&chipcommon?)
>  > and put the ID after that. It will not necessarily be 21, 22, 14.
> 
>  > In summary:
>  >
>  > - figure out which pads are wired to MDC, MDIO, RESET
>  > - figure out pinmux to make them into gpios
>  > - figure out gpio ID and describe that in the device tree
>  >
> 
> I have backported the v1 patch to kernel 5.10 and tried an example 
> definition on the device tree to test it out on RT-AC88U. It's on this 
> branch:
> https://github.com/arinc9/openwrt/commits/realtek-work-asus_rt-ac88u

Your dsa,member proper looks reversed, you would want it to be:

dsa,member = <1 0>;

to indicate that these are indeed disjoint DSA trees with the tree being 
1 and the switch being member 0 (the one and only). This part of the 
driver/binding looks a bit weird too:

	switch@1 {
+		compatible = "realtek,rtl8365mb";
+		/* 22 = MDIO (has input reads), 21 = MDC (clock, output only) */
+		mdc-gpios = <&chipcommon 6 GPIO_ACTIVE_HIGH>;
+		mdio-gpios = <&chipcommon 7 GPIO_ACTIVE_HIGH>;
+		reset-gpios = <&chipcommon 14 GPIO_ACTIVE_LOW>;

this is clearly a MDIO-attached switch, so it should be a children of 
the GPIO controller node. There is a hardware MDIO controller on the 
BCM5301X so you should be able to avoid using bit-banging here and 
instead using the BCM5301X's MDIO controller proper.

> 
> It doesn't work as is, likely missing further configuration, which I'm 
> clueless to figure out myself. I'd very appreciate it if you could weigh 
> in.
> 
> [    1.598858] realtek-smi switch@1: failed to get RESET GPIO
> ---
> [    3.015528] realtek-smi switch@1: deasserted RESET
> [    3.021171] realtek-smi switch@1: found an RTL8365MB-VC switch 
> (ver=0x0040)
> [    3.028193] realtek-smi switch@1: unable to register switch ret = -517
> ---
> [    3.405527] realtek-smi switch@1: deasserted RESET
> [    3.411165] realtek-smi switch@1: found an RTL8365MB-VC switch 
> (ver=0x0040)
> [    3.418449] DSA: tree 0 already setup! Disjoint trees?
> [    3.423607] realtek-smi switch@1: unable to register switch ret = -17
> [    3.430137] realtek-smi: probe of switch@1 failed with error -17
> 
> ---
> 
> I was thinking, we figure out how to define it properly on the device 
> tree and make the driver work whilst the v2 patch is applied to 
> net-next. Then we could send another patch defining the switch on the 
> device tree.
> There's the "compatible = "realtek,rtl8365mb";" property, which would be 
> undefined until the driver is added.

That works for me, which is why I already applied your patch.
-- 
Florian
