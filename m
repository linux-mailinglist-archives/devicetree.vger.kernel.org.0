Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3BA2C50D0FE
	for <lists+devicetree@lfdr.de>; Sun, 24 Apr 2022 12:04:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234201AbiDXKHr (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 24 Apr 2022 06:07:47 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48764 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239029AbiDXKHi (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 24 Apr 2022 06:07:38 -0400
Received: from mail-ej1-x635.google.com (mail-ej1-x635.google.com [IPv6:2a00:1450:4864:20::635])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F218F175302
        for <devicetree@vger.kernel.org>; Sun, 24 Apr 2022 03:04:37 -0700 (PDT)
Received: by mail-ej1-x635.google.com with SMTP id r13so24334238ejd.5
        for <devicetree@vger.kernel.org>; Sun, 24 Apr 2022 03:04:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=L5dr7yWbXwyRlC6MdJ5Y8r3K5XS2cVM2vMQLji0BqJ8=;
        b=HEtfDFWTFU2bpk1E62QPv8UquzPmVTEQi2O8t+E6xXU+JqCpau1zO3KTCk18OcGuCe
         TjQur7GMxFIGRKGZeYzxlFDRDurmRObpyq0ZQsgH0OnPoDhr8LOUZKfGc7ELSRtutEtp
         WgnM5vzc/AizhdGjqVvPZW38rNPq/tU5R3JXidEQfJHIgCz/HObPk98U2efbVaAkluSc
         ar6rXL7otKqxlspA+o2T/+G76mSKQsF5J5rvCJh0fuzphibJnMxErD6Rxan+jhDfUf4M
         rr1PW0NFujE8o/1DLQ25WJw/I2QB6V9rb4NEw/+K8Uw7dtNEQ3QWAVvbCMURxWZVX+Fk
         rc3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=L5dr7yWbXwyRlC6MdJ5Y8r3K5XS2cVM2vMQLji0BqJ8=;
        b=wN7BeQ5dk8nJWw7yL6Ql3vdkfiI/9CGkwJnUGvGQdVOmt5zh3njFtmgg0w9UN0K6MQ
         hDN3AhkCobFr9zofNCfxD5JglBtXS+BQeaz/ntyEj5H7qpMdzuu7JjjzUm0lHtO5MFYV
         u5WhGzkLabRskKAYqeN0nSVyO1Wuu7UdafIF9xbcsfJ4Rdrbpumju3bQcvnxhHigvjQo
         /KB0khmmdYBgPL87J/QwUDPjbINSwVb4aqveHKdzbNQ/X1ma5f70TRtfFuip8Hd/JMSF
         bZLwVImkf0yKspHy2ttzlp/368L/GAJQmYU04ZQxXGf2kk7E8ojIgaf6j54irz/jAbIq
         s78w==
X-Gm-Message-State: AOAM532/G9Sl0kb++QiBaICDn0bGS54hEXis7pLp+VLNiu5hjh5Ow7SJ
        L323hY2EZQHr1uDoqX4MXvRD+zLvY49LtQ==
X-Google-Smtp-Source: ABdhPJwMvIH10lNKGgK2iWtRahzDX53/QZpP6IgLChlEYKZjXSpYLWVQUnU09Mv8L30SAqwtDAiLnw==
X-Received: by 2002:a17:907:1b10:b0:6e4:bac5:f080 with SMTP id mp16-20020a1709071b1000b006e4bac5f080mr11751518ejc.24.1650794676498;
        Sun, 24 Apr 2022 03:04:36 -0700 (PDT)
Received: from [192.168.0.234] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id p16-20020a170906785000b006f2d8530459sm2299712ejm.112.2022.04.24.03.04.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 24 Apr 2022 03:04:36 -0700 (PDT)
Message-ID: <7bd2ae6d-c55f-4ab7-0c98-72da0d5d4050@linaro.org>
Date:   Sun, 24 Apr 2022 12:04:34 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [PATCH 1/2] arm64: dts: renesas: r9a07g044: Fix external clk node
 names
Content-Language: en-US
To:     Biju Das <biju.das.jz@bp.renesas.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Geert Uytterhoeven <geert+renesas@glider.be>,
        Magnus Damm <magnus.damm@gmail.com>,
        "linux-renesas-soc@vger.kernel.org" 
        <linux-renesas-soc@vger.kernel.org>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        Chris Paterson <Chris.Paterson2@renesas.com>,
        Biju Das <biju.das@bp.renesas.com>,
        Prabhakar Mahadev Lad <prabhakar.mahadev-lad.rj@bp.renesas.com>
References: <20220423140658.145000-1-biju.das.jz@bp.renesas.com>
 <f9c6e5e2-c819-d309-0c11-b87deb772858@linaro.org>
 <OS0PR01MB5922CFACC8FEC6D67E6BFC4986F99@OS0PR01MB5922.jpnprd01.prod.outlook.com>
 <OS0PR01MB59220968EBDF76A16F7E63A386F99@OS0PR01MB5922.jpnprd01.prod.outlook.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <OS0PR01MB59220968EBDF76A16F7E63A386F99@OS0PR01MB5922.jpnprd01.prod.outlook.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 24/04/2022 09:50, Biju Das wrote:
>> Subject: RE: [PATCH 1/2] arm64: dts: renesas: r9a07g044: Fix external clk
>> node names
>>
>> Hi Krzysztof Kozlowski,
>>
>> Thanks for the feedback.
>>
>>> Subject: Re: [PATCH 1/2] arm64: dts: renesas: r9a07g044: Fix external
>>> clk node names
>>>
>>> On 23/04/2022 16:06, Biju Das wrote:
>>>> Fix audio clk node names with "_" -> "-" and add suffix '-clk' for
>>>> can and extal clks.
>>>>
>>>> Signed-off-by: Biju Das <biju.das.jz@bp.renesas.com>
>>>> ---
>>>>  arch/arm64/boot/dts/renesas/r9a07g044.dtsi | 8 ++++----
>>>>  1 file changed, 4 insertions(+), 4 deletions(-)
>>>>
>>>> diff --git a/arch/arm64/boot/dts/renesas/r9a07g044.dtsi
>>>> b/arch/arm64/boot/dts/renesas/r9a07g044.dtsi
>>>> index 19287cccb1f0..4f9a84d7af08 100644
>>>> --- a/arch/arm64/boot/dts/renesas/r9a07g044.dtsi
>>>> +++ b/arch/arm64/boot/dts/renesas/r9a07g044.dtsi
>>>> @@ -13,14 +13,14 @@ / {
>>>>  	#address-cells = <2>;
>>>>  	#size-cells = <2>;
>>>>
>>>> -	audio_clk1: audio_clk1 {
>>>> +	audio_clk1: audio-clk1 {
>>>
>>> How about in such case keeping suffix "clk" everywhere and moving the
>>> index
>>> (1/2) to the first part? This way one day maybe schema will match the
>>> clocks.
>>
>> Just a question,
>>
>> Your suggestion is "audio_clk1: audio-clk1" -> "audio_clk1: audio-clk"
>>
>> In that case, If you plan to drop the label in future, how will you
>> differentiate between
>> audio-clk1 and audio-clk2 with just node names?
> 
> Or
> 
> Do you want me to do the change like this?
> 
> "audio_clk1: audio-clk1" -> "audio_clk_1: audio-clk-1"
> 
> And fix the phandle reference in other dtsi files??

My suggestion was to move the [12] part into the first part, so the
suffix "clk" stays consistent:
audio1-clk
audio2-clk


Best regards,
Krzysztof
