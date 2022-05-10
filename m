Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 22F70521605
	for <lists+devicetree@lfdr.de>; Tue, 10 May 2022 14:54:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S242086AbiEJM6T (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 10 May 2022 08:58:19 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57014 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S242041AbiEJM6F (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 10 May 2022 08:58:05 -0400
Received: from mail-ed1-x533.google.com (mail-ed1-x533.google.com [IPv6:2a00:1450:4864:20::533])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9239B2AACD7
        for <devicetree@vger.kernel.org>; Tue, 10 May 2022 05:54:08 -0700 (PDT)
Received: by mail-ed1-x533.google.com with SMTP id a21so19893328edb.1
        for <devicetree@vger.kernel.org>; Tue, 10 May 2022 05:54:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=8ZXDhVwfP9b/t3UBf3NPpQNR6CAeGAVJW+qQkAZj5Ko=;
        b=euXwwMN+44LSnVe58GHN3cQNvSZzRsRMZMrWbY83XR04MkNKGe9KxfYl2XjOBQ2rAm
         NeGgFovJ7w80bRYLSul/3kupJl1LsM2BjyUFhOUi/HDx2QP1R8Esh4WUOAGEzKNXVWpk
         DBx3xHnvXB8eYG8dFU00iNwnDbRiATCA8TzNhFRf1kg5vdvS6SxKXjwaUX4a7T2WF6hL
         h0DTKR2ZqV94fbVJaUTzlNJ7QxFjSv7JdHmd6jCwGXm3rXKiXcy84vB7UDhT65N7O3B9
         ZzbQHCBhOmCF4blxyvHUJtcyi7t+VCUQAtpcTNDQUhPlZrIoLc2f2+0rW9TOZZ2pk8Sy
         G8MA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=8ZXDhVwfP9b/t3UBf3NPpQNR6CAeGAVJW+qQkAZj5Ko=;
        b=6tyiCPCX3HZKBRbdAwyl1dZG/rikRSbG10+Ic8mj6xof8xz2DWopJW6Kw7g/1otCn3
         u0YsiGJVeFvzmuuHq2CE1XXEjxbbIIDSQi6ZFM8MvpUArluk5DgfGINn5g/fTjPQeBim
         jC3qybNgZlykwOAPYrNam3k1XXhEywK1zdY098DEeHkPJ3+I+rWQ+5dzyPMZivOFyeSn
         hiCts9t6jtU87GR53prB6QT8UEPzNhWVCnwYOGjO69UrqmppQV9n5P26/ebFZsO7J8bj
         ny77mHAuYJCpTL9QPkmuw/5qg50AYdzCx3NyBRDiKQVLbQHW2WoYelkZirGkRlAVsgUo
         G9xg==
X-Gm-Message-State: AOAM532LhZzwVOq2Vj4FvJ8eEAJQA9IyzC1rcHNt2Fuuc0j391yUFL8O
        QrcqvweQs/fQaX0kUn95hMt3+g==
X-Google-Smtp-Source: ABdhPJwih/KHvqR7RfCUpPJRC7LqDV0GHHqs6+c7WhjgmhAopq8u7vTMOgYFocRdLALC7G7Iz1hMpA==
X-Received: by 2002:a05:6402:50a:b0:426:16c3:4283 with SMTP id m10-20020a056402050a00b0042616c34283mr23282269edv.371.1652187247138;
        Tue, 10 May 2022 05:54:07 -0700 (PDT)
Received: from [192.168.0.252] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id u17-20020a170906781100b006f3ef214dacsm6228554ejm.18.2022.05.10.05.54.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 May 2022 05:54:06 -0700 (PDT)
Message-ID: <9365247a-8aa0-bad5-c619-9d5a984b17de@linaro.org>
Date:   Tue, 10 May 2022 14:54:05 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.1
Subject: Re: [PATCH v5 1/2] arm64: dts: marvell: Add Armada 98DX2530 SoC and
 RD-AC5X board
Content-Language: en-US
To:     Andrew Lunn <andrew@lunn.ch>
Cc:     Chris Packham <Chris.Packham@alliedtelesis.co.nz>,
        "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
        "will@kernel.org" <will@kernel.org>,
        "robh+dt@kernel.org" <robh+dt@kernel.org>,
        "krzysztof.kozlowski+dt@linaro.org" 
        <krzysztof.kozlowski+dt@linaro.org>,
        "gregory.clement@bootlin.com" <gregory.clement@bootlin.com>,
        "sebastian.hesselbarth@gmail.com" <sebastian.hesselbarth@gmail.com>,
        "kostap@marvell.com" <kostap@marvell.com>,
        "robert.marko@sartura.hr" <robert.marko@sartura.hr>,
        "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>
References: <20220504044624.951841-1-chris.packham@alliedtelesis.co.nz>
 <20220504044624.951841-2-chris.packham@alliedtelesis.co.nz>
 <dcc80690-c159-99f8-4686-536b9e87eb69@linaro.org>
 <6770d320-b998-0c9d-3824-0d429834b289@alliedtelesis.co.nz>
 <3498643b-cb2e-5685-65e0-7efe1113783f@linaro.org> <Ynpclx4z5z1Emx+b@lunn.ch>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <Ynpclx4z5z1Emx+b@lunn.ch>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 10/05/2022 14:37, Andrew Lunn wrote:
> On Tue, May 10, 2022 at 09:08:08AM +0200, Krzysztof Kozlowski wrote:
>> On 10/05/2022 06:14, Chris Packham wrote:
>>>
>>> Based on the information I have (which isn't much) there is a ref_clk 
>>> input that is connected to a 25MHz oscillator and then I'm assuming 
>>> these are all generated from that with various dividers. 25MHz is the 
>>> only documented option.
>>>
>>> There doesn't appear to be any documented register where I can read out 
>>> the divider ratios. It might be nice I could have the fixed osc node and 
>>> have these 3 clocks derived with fixed divisors but I don't see any what 
>>> of achieving that.
>>
>>
>> OK, but where are the dividers? The ref_clk is outside of SoC, so should
>> be defined in board DTS (at least its rate). If the rest is in the SoC,
>> they are usually part of clock controller, because usually they belong
>> to some power domain or have some clock gating.
> 
> 25MHz is a 'magic value' in Ethernet, nearly everything is based
> around it. And remember this SoC is basically an Ethernet switch with
> a small CPU glued on one side. If you gated clocks derived from the
> 25MHz reference clock, probably part of your Ethernet switch stops
> working, which is the whole point of this SoC. So i doubt there are
> gates on the derived clocks. If there is any gating and power domains,
> it is generally at a different level. You can power down individual
> ports of the Ethernet switch. But generally, there is one bit in a
> register somewhere to do that, and you don't have direct control over
> clocks and regulators etc.

The 25 MHz input clock I understand, it was about other clocks, like
spi, axi and core. These clearly look like part of SoC, so defining them
with a "stubs" (uncontrollable fixed-clock) is not the best way of
modelling an SoC. Although maybe this SoC does not have a proper clock
controller and even SPI and AXI clocks are always on?


Best regards,
Krzysztof
