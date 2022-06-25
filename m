Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 669CD55AC8E
	for <lists+devicetree@lfdr.de>; Sat, 25 Jun 2022 22:25:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233278AbiFYUZc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 25 Jun 2022 16:25:32 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52854 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233189AbiFYUZb (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 25 Jun 2022 16:25:31 -0400
Received: from mail-ej1-x62c.google.com (mail-ej1-x62c.google.com [IPv6:2a00:1450:4864:20::62c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 25C9AD120
        for <devicetree@vger.kernel.org>; Sat, 25 Jun 2022 13:25:30 -0700 (PDT)
Received: by mail-ej1-x62c.google.com with SMTP id fi2so11258884ejb.9
        for <devicetree@vger.kernel.org>; Sat, 25 Jun 2022 13:25:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=3qgl5Ee8WKI0CrBADWH+qZ3W9EeMuc4SLtdmOrLuaW8=;
        b=GtOkY4mUHQlYdFYLxuHVp5pwd0VTWKNtDqNp3uAnxX+1yS/x0fDKLDA1Dv2kDF0zGg
         2di782eVEYxcoW7Gh9SmBojbL4EpQ3ZHHQfX4LjF+Wlvq5IHHjDNCJIqUALLZL77tHOn
         zwM5gXK6gzl0tmjwRQiwK2F8B/sExicu4sNNv01zVKhdYzUx7NJYLS8/UgDcBFYg285q
         MibmZQKBiT3J/0rlRz/9j5AGZg26Bv6REZAOJNVTjDWnYgnT8HcbN4DasG3KormouUrN
         z3OiIGlOSryBP6q7n78GTl1+OpnlIb6KGhCWkh1xvXSs7NCzhMP/DKPG71eNkt4Sz0KV
         ahTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=3qgl5Ee8WKI0CrBADWH+qZ3W9EeMuc4SLtdmOrLuaW8=;
        b=1IF6CBbJyLX+EpHJTjeF2CGhruEBXEWZE2AsOcyv1LLSY5bAKciHEWVfhdCqEyBUJA
         JjuhRM2EA1G4eecV718iFsm3ajBpFW6GGfuMEvfj5m88aBQWOjOenbxXivot9uxVL84w
         lEEZZ/MpwgmQ6pxcZlJmwAKQPdVdomnaA1i8El2IZmu3821z4ZFKq/AT6p9M6nNyX/AO
         65W5ZHqFLlXkprFwhW0FneDo5Tx3nvP0z4SbfpJgwAnYejA8NXKXYGlr/Xu/RZIvIp0K
         9IkJZSeymAexeweJp+z8y9s2IkLOGi1g0uhkgIcNlTZbDiXd7tSHCdI1/1oaPSgUJgXj
         DVmw==
X-Gm-Message-State: AJIora9QRHWpDcJMpZ0F1G9hqxfgU1kQwwIKElYHanQH+XimYzhtjrm3
        7g7qVBbn/GqpjXzdxht+W31rGQ==
X-Google-Smtp-Source: AGRyM1sgbqQFUKTOjqNo57WNDHvbGrzFxhvsjT9GEQyZOgnJCtoM3VtmTK5TdKslERBbwt6tCVgEnA==
X-Received: by 2002:a17:906:58cb:b0:722:fc1a:4fd with SMTP id e11-20020a17090658cb00b00722fc1a04fdmr5325000ejs.548.1656188728680;
        Sat, 25 Jun 2022 13:25:28 -0700 (PDT)
Received: from [192.168.0.239] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id b13-20020aa7c90d000000b0043564320274sm4571415edt.19.2022.06.25.13.25.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 25 Jun 2022 13:25:28 -0700 (PDT)
Message-ID: <cc81b6ae-c1c1-78ec-b4e2-e165dcd5015b@linaro.org>
Date:   Sat, 25 Jun 2022 22:25:27 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Subject: Re: [PATCH 1/2] MIPS: dts: correct gpio-keys names and properties
Content-Language: en-US
To:     Paul Cercueil <paul@crapouillou.net>
Cc:     Rahul Bedarkar <rahulbedarkar89@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        =?UTF-8?B?QXLEsW7DpyDDnE5BTA==?= <arinc.unal@arinc9.com>,
        Sergio Paracuellos <sergio.paracuellos@gmail.com>,
        linux-mips@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org
References: <20220624170740.66271-1-krzysztof.kozlowski@linaro.org>
 <ZVVZDR.R2QT2GMTT9WS1@crapouillou.net>
 <89b6a40b-eb6b-eba5-78c3-6b5f35bed717@linaro.org>
 <EXU1ER.FH53VZXY9EYP3@crapouillou.net>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <EXU1ER.FH53VZXY9EYP3@crapouillou.net>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 25/06/2022 22:15, Paul Cercueil wrote:
> Hi Krzysztof,
> 
> Le sam., juin 25 2022 at 21:58:08 +0200, Krzysztof Kozlowski 
> <krzysztof.kozlowski@linaro.org> a écrit :
>> On 24/06/2022 20:40, Paul Cercueil wrote:
>>>  Hi Krzysztof,
>>>
>>>  Le ven., juin 24 2022 at 19:07:39 +0200, Krzysztof Kozlowski
>>>  <krzysztof.kozlowski@linaro.org> a écrit :
>>>>  gpio-keys children do not use unit addresses.
>>>>
>>>>  Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
>>>>
>>>>  ---
>>>>
>>>>  See:
>>>>  
>>>> https://lore.kernel.org/all/20220616005224.18391-1-krzysztof.kozlowski@linaro.org/
>>>>  ---
>>>>   arch/mips/boot/dts/img/pistachio_marduk.dts   |  4 +--
>>>>   arch/mips/boot/dts/ingenic/gcw0.dts           | 31
>>>>  +++++++++----------
>>>>   arch/mips/boot/dts/ingenic/rs90.dts           | 18 +++++------
>>>>   arch/mips/boot/dts/pic32/pic32mzda_sk.dts     |  9 ++----
>>>>   .../boot/dts/qca/ar9132_tl_wr1043nd_v1.dts    |  6 ++--
>>>>   arch/mips/boot/dts/qca/ar9331_dpt_module.dts  |  4 +--
>>>>   .../mips/boot/dts/qca/ar9331_dragino_ms14.dts |  6 ++--
>>>>   arch/mips/boot/dts/qca/ar9331_omega.dts       |  4 +--
>>>>   .../qca/ar9331_openembed_som9331_board.dts    |  4 +--
>>>>   arch/mips/boot/dts/qca/ar9331_tl_mr3020.dts   |  8 ++---
>>>>   10 files changed, 37 insertions(+), 57 deletions(-)
>>>>
>>>>  diff --git a/arch/mips/boot/dts/img/pistachio_marduk.dts
>>>>  b/arch/mips/boot/dts/img/pistachio_marduk.dts
>>>>  index a8708783f04b..a8da2f992b1a 100644
>>>>  --- a/arch/mips/boot/dts/img/pistachio_marduk.dts
>>>>  +++ b/arch/mips/boot/dts/img/pistachio_marduk.dts
>>>>  @@ -59,12 +59,12 @@ led-1 {
>>>>
>>>>   	keys {
>>>>   		compatible = "gpio-keys";
>>>>  -		button@1 {
>>>>  +		button-1 {
>>>>   			label = "Button 1";
>>>>   			linux,code = <0x101>; /* BTN_1 */
>>>>   			gpios = <&gpio3 6 GPIO_ACTIVE_LOW>;
>>>>   		};
>>>>  -		button@2 {
>>>>  +		button-2 {
>>>>   			label = "Button 2";
>>>>   			linux,code = <0x102>; /* BTN_2 */
>>>>   			gpios = <&gpio2 14 GPIO_ACTIVE_LOW>;
>>>>  diff --git a/arch/mips/boot/dts/ingenic/gcw0.dts
>>>>  b/arch/mips/boot/dts/ingenic/gcw0.dts
>>>>  index 4abb0318416c..5d33f26fd28c 100644
>>>>  --- a/arch/mips/boot/dts/ingenic/gcw0.dts
>>>>  +++ b/arch/mips/boot/dts/ingenic/gcw0.dts
>>>>  @@ -130,89 +130,86 @@ backlight: backlight {
>>>>
>>>>   	gpio-keys {
>>>>   		compatible = "gpio-keys";
>>>>  -		#address-cells = <1>;
>>>>  -		#size-cells = <0>;
>>>
>>>  Are you sure you can remove these?
>>
>> Yes, from DT spec point of view, DT bindings and Linux implementation.
>> However this particular change was not tested, except building.
>>
>>>
>>>  Looking at paragraph 2.3.5 of the DT spec, I would think they have 
>>> to
>>>  stay (although with #address-cells = <0>).
>>
>> The paragraph 2.3.5 says nothing about regular properties (which can 
>> be
>> also child nodes). It says about children of a bus, right? It's not
>> related here, it's not a bus.
> 
> I quote:
> "A DTSpec-compliant boot program shall supply #address-cells and 
> #size-cells on all nodes that have children."

And paragraph 2.2.3 says:
"A unit address may be omitted if the full path to the node is unambiguous."

You have address/size cells for nodes with children having unit
addresses. If they don't unit addresses, you don't add address/size
cells (with some exceptions).

The paragraph 2.3.5 mentions "child device nodes" and these properties
are not devices, although I agree that DT spec here is actually confusing.

> 
> The gpio-keys node has children nodes, therefore it should have 
> #address-cells and #size-cells, there's no room for interpretation here.
> 
>> Second, why exactly this one gpio-keys node is different than all 
>> other
>> gpio-keys everywhere and than bindings? Why this one has to be
>> incompatible/wrong according to bindings (which do not allow
>> address-cells and nodes with unit addresses)?
> 
> Nothing is different. I'm just stating that your proposed fix is 
> invalid if we want to enforce compliance with the DT spec.

In such case, we rather enforce the compliance with the bindings.

Best regards,
Krzysztof
