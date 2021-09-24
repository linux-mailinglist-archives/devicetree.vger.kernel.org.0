Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 701344178C3
	for <lists+devicetree@lfdr.de>; Fri, 24 Sep 2021 18:33:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240917AbhIXQes (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 24 Sep 2021 12:34:48 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38462 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1347679AbhIXQeA (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 24 Sep 2021 12:34:00 -0400
Received: from mail-pl1-x62e.google.com (mail-pl1-x62e.google.com [IPv6:2607:f8b0:4864:20::62e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7A2D6C0613E7
        for <devicetree@vger.kernel.org>; Fri, 24 Sep 2021 09:32:16 -0700 (PDT)
Received: by mail-pl1-x62e.google.com with SMTP id j15so5421266plh.7
        for <devicetree@vger.kernel.org>; Fri, 24 Sep 2021 09:32:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=ooU/jJWFe3/6v4xrTo5YWaprT3XVZqJ+ZhUSaOnFf9w=;
        b=Lx/kZBME9h+pD1jmCIgUUos8CmRza0AHTLoSOY7ONzMcm6yfTgniHR99vQJaJ23+8a
         vAJwGDOGuAtBYfaRBn/1iO9QQRrjbs50jkYhVs2FkZerRkzJssOOyRVs90pZMYm5sViA
         s8vxLMAAPOIQoVbe5C6tN3uY+ImNj25rfz35eWhUjPbZ8fPlXODh6gYY5Scj/yCafInZ
         oZMetvwCbQTXuTLwoLp4NMIHYgNLCKmLIiOPP3Sy+rL+9gXfkQpYwM3ZlzF/9PJVhljw
         tBSDMuplMj6uGA+CI77HkTlvsfbM1oke69wOCdPZWPvm1Z+LB7bRaA3ZkF8qwp7Rj8zq
         el0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=ooU/jJWFe3/6v4xrTo5YWaprT3XVZqJ+ZhUSaOnFf9w=;
        b=mKr5g++CTHkjb3nZr8bDz8ioJ7kfULMOYY/vfLajZMPRZxZK1V5vzTPN/geu6/y3TU
         0k/ld484xlUgEwmFkU4eaiQTcjzl7I8dlOZ8YkJbDSKmIf0aYKywJVLw7QFtdfNNkOXl
         AKx4zfRrKqzQXt4G6thULalnzcv0zD7Pk1BLFait0dVQFvfv1oiEzQznJiSN8nF5U304
         58ifJU0sfIqIROJPnOuruuooXXCsIakLvY4QlkR0iQH+12kG4FMBYqU+TBSV7mDJ0dOe
         GgPrURF9ZVTJva4wWlFJxMexx0jnBVBt0ZcnOG9rJcHt2X8GK+2eqtr+LiPsgbRp1Pot
         NyJQ==
X-Gm-Message-State: AOAM530fdn/xIqTqf7bsmVyaO1V53HFH4eIEEqYuUxQn3lakDcRbYFkQ
        br+sGGjR8NJ9a5XtR6/r8vU=
X-Google-Smtp-Source: ABdhPJxT24pflcpRIRX6nFj6oL1ibiUdB/2mFp3sMYC1MXkRkiuQXwyaArbt3XAIQaDjJAZMPr8JYg==
X-Received: by 2002:a17:90b:1e11:: with SMTP id pg17mr3311256pjb.144.1632501135901;
        Fri, 24 Sep 2021 09:32:15 -0700 (PDT)
Received: from [10.67.48.245] ([192.19.223.252])
        by smtp.googlemail.com with ESMTPSA id u24sm10312835pfm.81.2021.09.24.09.32.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 24 Sep 2021 09:32:15 -0700 (PDT)
Subject: Re: [PATCH] ARM: dts: BCM5301X: Add DT for Asus RT-AC88U
To:     =?UTF-8?B?QXLEsW7DpyDDnE5BTA==?= <arinc.unal@arinc9.com>,
        Florian Fainelli <f.fainelli@gmail.com>
Cc:     =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>,
        Hauke Mehrtens <hauke@hauke-m.de>,
        Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        bcm-kernel-feedback-list@broadcom.com,
        =?UTF-8?Q?Alvin_=c5=a0ipraga?= <alsi@bang-olufsen.dk>
References: <20210921121901.24578-1-arinc.unal@arinc9.com>
 <b695c272-b718-f702-8890-e098eee7e093@gmail.com>
 <50b7d44c-614e-bf3a-00bc-bc8a1c5d353a@arinc9.com>
 <b26b86d9-a2d2-70b5-c06f-b4edba75de13@gmail.com>
 <36707d63-2aa7-4e08-5df9-abd9c398439a@arinc9.com>
From:   Florian Fainelli <f.fainelli@gmail.com>
Message-ID: <9ba1d9f6-354a-f8e6-7633-d629d7f9c62a@gmail.com>
Date:   Fri, 24 Sep 2021 09:32:10 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <36707d63-2aa7-4e08-5df9-abd9c398439a@arinc9.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 9/24/21 1:50 AM, Arınç ÜNAL wrote:
> On 23/09/2021 03:22, Florian Fainelli wrote:
>>
>>
>> On 9/22/2021 3:26 PM, Arınç ÜNAL wrote:
>>> On 22/09/2021 21:15, Florian Fainelli wrote:
>>>> On 9/21/21 5:19 AM, Arınç ÜNAL wrote:
>>>>> Hardware Info
>>>>> -------------
>>>>>
>>>>> Processor    - Broadcom BCM4709C0KFEBG dual-core @ 1.4 GHz
>>>>> Switch        - BCM53012 in BCM4709C0KFEBG & external RTL8365MB
>>>>
>>>> There is no Device Tree description of the RTL8365MB switch, can it be
>>>> driven/controlled via MDIO, SPI or GPIOs by any chance? This is not a
>>>> show stopper for accepting the patch, just wondering if you are somehow
>>>> trying to get that switch controlled by the rtl8366 DSA driver as well?
>>>>
>>> There's a v1 patch on net-next adding DSA support for RTL8365MB by
>>> Alvin Šipraga, CC'ing them. There's also a v2 patch coming.
>>> https://lore.kernel.org/netdev/20210822193145.1312668-1-alvin@pqrs.dk/
>>>
>>> I've been mailing Alvin to figure out how to define it on the device
>>> tree. They have provided very useful information. Quoting a few:
>>>
>>>  >> I'm trying to write the device tree to support this switch. I'm
>>> not sure
>>>  >> whether the default GPIO IDs of mdc-gpios, mdio-gpios, reset-gpios &
>>>  >> interrupts on realtek-smi.txt kernel documentation are correct.
>>>  >>
>>> https://elixir.bootlin.com/linux/latest/source/Documentation/devicetree/bindings/net/dsa/realtek-smi.txt
>>>
>>>  >
>>>  > These gpios are just an example. It really depends how your board is
>>>  > wired up. You have to figure out which SoC pad is wired to the MDC,
>>>  > MDIO, and RESET pins on the RTL8365MB. Then you have to make sure the
>>>  > pinmux is set up correctly so that these pads correspond to some GPIO
>>>  > with a given ID, and then pick the right GPIO controller
>>> (&chipcommon?)
>>>  > and put the ID after that. It will not necessarily be 21, 22, 14.
>>>
>>>  > In summary:
>>>  >
>>>  > - figure out which pads are wired to MDC, MDIO, RESET
>>>  > - figure out pinmux to make them into gpios
>>>  > - figure out gpio ID and describe that in the device tree
>>>  >
>>>
>>> I have backported the v1 patch to kernel 5.10 and tried an example
>>> definition on the device tree to test it out on RT-AC88U. It's on
>>> this branch:
>>> https://github.com/arinc9/openwrt/commits/realtek-work-asus_rt-ac88u
>>
>> Your dsa,member proper looks reversed, you would want it to be:
>>
>> dsa,member = <1 0>;
> 
> Thanks!
> 
>>
>> to indicate that these are indeed disjoint DSA trees with the tree
>> being 1 and the switch being member 0 (the one and only). This part of
>> the driver/binding looks a bit weird too:
>>
>>      switch@1 {
>> +        compatible = "realtek,rtl8365mb";
>> +        /* 22 = MDIO (has input reads), 21 = MDC (clock, output only) */
>> +        mdc-gpios = <&chipcommon 6 GPIO_ACTIVE_HIGH>;
>> +        mdio-gpios = <&chipcommon 7 GPIO_ACTIVE_HIGH>;
>> +        reset-gpios = <&chipcommon 14 GPIO_ACTIVE_LOW>;
>>
>> this is clearly a MDIO-attached switch, so it should be a children of
>> the GPIO controller node. There is a hardware MDIO controller on the
>> BCM5301X so you should be able to avoid using bit-banging here and
>> instead using the BCM5301X's MDIO controller proper.
> 
> I took linksys panamera device tree as an example, this device is very
> similar to Asus RT-AC88U.
> https://github.com/Broadcom/stblinux/blob/devicetree/next/arch/arm/boot/dts/bcm47094-linksys-panamera.dts
> 
> 
> I commented out the "reg" property on switch@1 so we can see if it finds
> the switch while scanning PHY addresses on mdio 200.
> 
> I don't know if the default "interrupt-controller" and "compatible =
> "realtek,smi-mdio", "dsa-mdio";" specification is correct, so I took
> them out for now.
> 
>     mdio-mux@18003000 {
> 
>         /* BIT(9) = 1 => external mdio */
>         mdio@200 {
>             reg = <0x200>;
>             #address-cells = <1>;
>             #size-cells = <0>;
> 
>             switch@1 {
>                 compatible = "realtek,rtl8365mb";
>                 #address-cells = <1>;
>                 #size-cells = <0>;
>                 reset-gpios = <&chipcommon 10 GPIO_ACTIVE_LOW>;
>                 reset-names = "robo_reset";
> /*                reg = <0>;*/
>                 dsa,member = <1 0>;
>                 pinctrl-names = "default";
>                 pinctrl-0 = <&pinmux_mdio>;
> 
>                 ports {
>                     #address-cells = <1>;
>                     #size-cells = <0>;
> 
>                     port@0 {
>                         reg = <0>;
>                         label = "lan8";
>                     };
> 
>                     port@1 {
>                         reg = <1>;
>                         label = "lan7";
>                     };
> 
>                     port@2 {
>                         reg = <2>;
>                         label = "lan6";
>                     };
> 
>                     port@3 {
>                         reg = <3>;
>                         label = "lan5";
>                     };
> 
>                     port@4 {
>                         reg = <4>;
>                         label = "cpu";
>                         ethernet = <&sw0_p5>;
>                         phy-mode = "rgmii";
> 
>                         fixed-link {
>                             speed = <1000>;
>                             full-duplex;
>                         };
>                     };
>                 };
>             };
>         };
>     };
> 
> Here's relevant part of the bootlog. Full bootlog is in the attachments.
> 
> [    2.027843] bcm_iproc 18029200.spi: using bspi-mspi mode
> [    2.034744] libphy: Fixed MDIO Bus: probed
> [    2.039638] libphy: iProc MDIO bus: probed
> [    2.043764] iproc-mdio 18003000.mdio: Broadcom iProc MDIO bus registered
> [    2.051215] libphy: mdio_mux: probed
> [    2.055587] libphy: mdio_mux: probed
> [    2.059196] mdio_bus 0.200: switch@1 has invalid PHY address
> [    2.064894] mdio_bus 0.200: scan phy switch at address 0
> [    2.070231] mdio_bus 0.200: scan phy switch at address 1
> [    2.075554] mdio_bus 0.200: scan phy switch at address 2
> [    2.080894] mdio_bus 0.200: scan phy switch at address 3
> [    2.086217] mdio_bus 0.200: scan phy switch at address 4
> [    2.091549] mdio_bus 0.200: scan phy switch at address 5
> [    2.096870] mdio_bus 0.200: scan phy switch at address 6
> [    2.102202] mdio_bus 0.200: scan phy switch at address 7
> [    2.107523] mdio_bus 0.200: scan phy switch at address 8
> [    2.112864] mdio_bus 0.200: scan phy switch at address 9
> [    2.118186] mdio_bus 0.200: scan phy switch at address 10
> [    2.123608] mdio_bus 0.200: scan phy switch at address 11
> [    2.129022] mdio_bus 0.200: scan phy switch at address 12
> [    2.134442] mdio_bus 0.200: scan phy switch at address 13
> [    2.139858] mdio_bus 0.200: scan phy switch at address 14
> [    2.145274] mdio_bus 0.200: scan phy switch at address 15
> [    2.150697] mdio_bus 0.200: scan phy switch at address 16
> [    2.156110] mdio_bus 0.200: scan phy switch at address 17
> [    2.161528] mdio_bus 0.200: scan phy switch at address 18
> [    2.166937] mdio_bus 0.200: scan phy switch at address 19
> [    2.172355] mdio_bus 0.200: scan phy switch at address 20
> [    2.177764] mdio_bus 0.200: scan phy switch at address 21
> [    2.183183] mdio_bus 0.200: scan phy switch at address 22
> [    2.188592] mdio_bus 0.200: scan phy switch at address 23
> [    2.194011] mdio_bus 0.200: scan phy switch at address 24
> [    2.199427] mdio_bus 0.200: scan phy switch at address 25
> [    2.204834] mdio_bus 0.200: scan phy switch at address 26
> [    2.210253] mdio_bus 0.200: scan phy switch at address 27
> [    2.215662] mdio_bus 0.200: scan phy switch at address 28
> [    2.221080] mdio_bus 0.200: scan phy switch at address 29
> [    2.226490] mdio_bus 0.200: scan phy switch at address 30
> [    2.231914] mdio_bus 0.200: scan phy switch at address 31
> [    2.237939] b53-srab-switch 18007000.ethernet-switch: found switch:
> BCM53012, rev 0
> [    2.245957] bgmac_bcma: Broadcom 47xx GBit MAC driver loaded
> 
> Looks like the switch is not on 0x200, what else can we try?

0x200 is not the address of the Realtek switch on the MDIO bus, 0x200 is
the offset with mdio mux that needs to be toggled (bit 9). You still
need to provide the Ethernet switch's address on the MDIO bus which
appears to be 0.

Auto-probing of devices only works for Ethernet PHYs, not for "pure"
MDIO devices such as Ethernet switches.
-- 
Florian
