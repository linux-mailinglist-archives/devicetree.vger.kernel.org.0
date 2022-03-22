Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 57F174E461F
	for <lists+devicetree@lfdr.de>; Tue, 22 Mar 2022 19:37:18 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236990AbiCVSin (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 22 Mar 2022 14:38:43 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35704 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240765AbiCVSiE (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 22 Mar 2022 14:38:04 -0400
Received: from smtp-relay-internal-1.canonical.com (smtp-relay-internal-1.canonical.com [185.125.188.123])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E68EE49F1F
        for <devicetree@vger.kernel.org>; Tue, 22 Mar 2022 11:36:36 -0700 (PDT)
Received: from mail-wm1-f71.google.com (mail-wm1-f71.google.com [209.85.128.71])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 8E2223F1E0
        for <devicetree@vger.kernel.org>; Tue, 22 Mar 2022 18:36:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1647974194;
        bh=5jtpXxEom/a/jiH/sFwvBmFkIoAoceZfaQ8rDmnOzv8=;
        h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
         In-Reply-To:Content-Type;
        b=o79mDLORM2nA8Epl2qL9p2El4lPMXlCz0ngDd1wsJfuU9PkrtMXdV2mp7aMyBSvXB
         eFnOdt47JGKzN7TttxrefIuL49kZO3GD5OyX0glAqB+hHcTT9u/jUp9dRo5M0JKHnN
         /55EcfsQNWsUAWFWWtgdzqo2i0JKNKuyCl3f3yasYgCzea2PfUO0zGh/borlLeVG5b
         DKRLsAIDd0VRUS8/wgHLdcUw3gAoiFieoAiG/j29NPG1YrIQaubp/kV3g3B6KEyG7/
         8HsCDC85gUPF5FrmX8WjlSB1kiDXRF0PL305GbwSRogr1Ce53/u5HhrYdFWNtrdJq3
         3yiQfvK612dhQ==
Received: by mail-wm1-f71.google.com with SMTP id l1-20020a1c2501000000b00389c7b9254cso1353688wml.1
        for <devicetree@vger.kernel.org>; Tue, 22 Mar 2022 11:36:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=5jtpXxEom/a/jiH/sFwvBmFkIoAoceZfaQ8rDmnOzv8=;
        b=Z+zE4GqFsmHZesVghyEYjOsgCidCbwWyNgoReuG3FqNJWneeTGc2DJCi3mHV8tLFmK
         hW99lUOJ1OQKnBXyF1aEQ5N3uYXmLC5VzjM0zydMzfjJFQS/4760cV7Um3b8C/mtKKYU
         /rsTe62wKEpz0ZyoeRUfKdOZs4V6HiY+XMZkpxPjPi0yN7KCzWgWGvW+8tojTAx3DLcM
         sFExGTv/Cg/VBhrfJtfgRvN1xXnF6+viA64zGLy6yHsUBLsc0a8rd03WotUyHEUV3xI5
         +HJ/QQF018lVNjwytGgv6vypGcXyjDq5+TB7Jq7XRbnwrpZTWxYQtwDgMjqZwuRdjImU
         DJRg==
X-Gm-Message-State: AOAM533z03ESmTG8p9+4JBcnf/yC/E5tOpmREqWBcxuZUeJDOGUMV/pc
        bceKCy8/ETLPlJWiQf1CdndiorwAX0EzORxZUBvYELjGWt6IoBrudmICk3qendOsJ2CLD4QFNJY
        Avl8KHtc3E3C7GGze5qv67SpoLXq5QgI9afPZzRU=
X-Received: by 2002:a05:6402:1941:b0:413:2555:53e3 with SMTP id f1-20020a056402194100b00413255553e3mr30164507edz.164.1647974184196;
        Tue, 22 Mar 2022 11:36:24 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxXjJuzBLH9hbRDSjsXFrbLCVkaIICKYGv+IQ5EfXGkXfhv1U2vMFYP/O//lEDRT2Fv/Gfc1w==
X-Received: by 2002:a05:6402:1941:b0:413:2555:53e3 with SMTP id f1-20020a056402194100b00413255553e3mr30164440edz.164.1647974183906;
        Tue, 22 Mar 2022 11:36:23 -0700 (PDT)
Received: from [192.168.0.17] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id d4-20020a1709067a0400b006d6e3ca9f71sm8816466ejo.198.2022.03.22.11.36.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 22 Mar 2022 11:36:23 -0700 (PDT)
Message-ID: <ff8da126-8eac-7b72-c992-3b4223f2b077@canonical.com>
Date:   Tue, 22 Mar 2022 19:36:21 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH 00/18] dt-bindings: irqchip: include generic schema
Content-Language: en-US
To:     Rob Herring <robh@kernel.org>
Cc:     Thomas Gleixner <tglx@linutronix.de>,
        Marc Zyngier <maz@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        =?UTF-8?Q?Andreas_F=c3=a4rber?= <afaerber@suse.de>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Linus Walleij <linusw@kernel.org>,
        Imre Kaloz <kaloz@openwrt.org>,
        Krzysztof Halasa <khalasa@piap.pl>,
        Michael Walle <michael@walle.cc>,
        Mark-PK Tsai <mark-pk.tsai@mediatek.com>,
        Daniel Palmer <daniel@thingy.jp>,
        =?UTF-8?Q?Jonathan_Neusch=c3=a4fer?= <j.neuschaefer@gmx.net>,
        Palmer Dabbelt <palmer@dabbelt.com>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Nishanth Menon <nm@ti.com>, Tero Kristo <kristo@kernel.org>,
        Santosh Shilimkar <ssantosh@kernel.org>,
        Neil Armstrong <narmstrong@baylibre.com>,
        Dinh Nguyen <dinguyen@kernel.org>,
        Cristian Ciocaltea <cristian.ciocaltea@gmail.com>,
        Joakim Zhang <qiangqing.zhang@nxp.com>,
        Lucas Stach <l.stach@pengutronix.de>,
        Paul Cercueil <paul@crapouillou.net>,
        Jiaxun Yang <jiaxun.yang@flygoat.com>,
        Claudiu Beznea <claudiu.beznea@microchip.com>,
        Jason Cooper <jason@lakedaemon.net>,
        Paul Burton <paulburton@kernel.org>,
        Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
        Birger Koblitz <mail@birger-koblitz.de>,
        Bert Vermeulen <bert@biot.com>,
        John Crispin <john@phrozen.org>,
        Geert Uytterhoeven <geert+renesas@glider.be>,
        Sagar Kadam <sagar.kadam@sifive.com>,
        Suman Anna <s-anna@ti.com>, Lokesh Vutla <lokeshvutla@ti.com>,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-actions@lists.infradead.org, openbmc@lists.ozlabs.org,
        linux-riscv@lists.infradead.org, linux-oxnas@groups.io
References: <20220317115542.450032-1-krzysztof.kozlowski@canonical.com>
 <YjjJpxLWJ/YOe0OX@robh.at.kernel.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
In-Reply-To: <YjjJpxLWJ/YOe0OX@robh.at.kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-5.2 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 21/03/2022 19:53, Rob Herring wrote:
> On Thu, Mar 17, 2022 at 12:55:24PM +0100, Krzysztof Kozlowski wrote:
>> Hi,
>>
>> The DTS patches can be picked up independently.
>>
>> Best regards,
>> Krzysztof
>>
>> Krzysztof Kozlowski (18):
>>   ARM: dts: nspire: use lower case hex addresses in node unit addresses
>>   ARM: dts: ox820: align interrupt controller node name with dtschema
>>   ARM: dts: socfpga: align interrupt controller node name with dtschema
>>   dt-bindings: irqchip: actions,owl-sirq: include generic schema
>>   dt-bindings: irqchip: fsl: include generic schema
>>   dt-bindings: irqchip: ingenic: include generic schema
>>   dt-bindings: irqchip: intel,ixp4xx: include generic schema
>>   dt-bindings: irqchip: kontron,sl28cpld: include generic schema
>>   dt-bindings: irqchip: loongson: include generic schema
>>   dt-bindings: irqchip: microchip,eic: include generic schema
>>   dt-bindings: irqchip: mrvl,intc: include generic schema
>>   dt-bindings: irqchip: mstar,mst-intc: include generic schema
>>   dt-bindings: irqchip: mti,gic: include generic schema
>>   dt-bindings: irqchip: nuvoton,wpcm450-aic: include generic schema
>>   dt-bindings: irqchip: realtek,rtl-intc: include generic schema
>>   dt-bindings: irqchip: renesas: include generic schema
>>   dt-bindings: irqchip: sifive: include generic schema
>>   dt-bindings: irqchip: ti: include generic schema
> 
> I'm somewhat on the fence about these. Originally only devices with a 
> bus or child nodes included a common schema. For 'simple' providers 
> with mainly a '#<provider>-cells' property, we had to set the 
> constraints on the number of cells anyways, so referencing another 
> schema doesn't save anything. It is nice to declare the 'class' of the 
> device though.
> 
> It makes the schema be applied twice (if the node name matches). That's 
> not all bad because it finds cases of wrong node name. However, 
> sometimes we have devices which are multiple providers and can't set the 
> node name. So those can't reference interrupt-controller.yaml.

Indeed there were cases of MSI and interrupt controller.

> 
> It also means that 'interrupt-map' for example is now valid. That could 
> be fixed by splitting 'interrupt-map' related properties to its own 
> schema. 

Yes, that's a side effect. Maybe my series should be abandoned.

Best regards,
Krzysztof
