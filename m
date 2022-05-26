Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 89928535558
	for <lists+devicetree@lfdr.de>; Thu, 26 May 2022 23:10:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1345109AbiEZVKr (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 26 May 2022 17:10:47 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44004 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236259AbiEZVKr (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 26 May 2022 17:10:47 -0400
Received: from mail-ej1-x62c.google.com (mail-ej1-x62c.google.com [IPv6:2a00:1450:4864:20::62c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DA80BA8892
        for <devicetree@vger.kernel.org>; Thu, 26 May 2022 14:10:44 -0700 (PDT)
Received: by mail-ej1-x62c.google.com with SMTP id m20so5167231ejj.10
        for <devicetree@vger.kernel.org>; Thu, 26 May 2022 14:10:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=n5ISJ9yLZ548Mz4jCd/68AcqRvOzgjUn9wXGD+ASjI4=;
        b=lZVmHfF6LYBzFMaqjGMVB2ZPV+hPOKUic6CjH+XhRrRzKSyO43nCBJPvX05Nyk6k4Z
         OdiUk/r7NaOsPqwT9VJG3jgoNjCBThtKaCQuyOkBv8Vi7eqN0eoTgN9ncK6bkGZcKeyC
         bsoL/H3dLQIWCQfPyEHsnzG4UGGThjGdhCyn9djsqxIL8GWoLBr5U+0C9TU5YJvtn2XJ
         niDhVthqOEERTZoQjUTgCkyEYs2WmQ8uU8pSswjn9UeW6Xd7qvg567LHcltuktw5tImZ
         798/3PEQm5cQFgmBuj4ndBuBAp8jRAjdcvNVCUmzJiRqnvefQy1rm3HsUyR8/7BdpDhv
         oKmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=n5ISJ9yLZ548Mz4jCd/68AcqRvOzgjUn9wXGD+ASjI4=;
        b=VR4ExCG74e1rxwW/ji6Wwu8W4ByKUOBf6b8N/r8zT4aqQfY8eztS4EnhXzYW2OqoDo
         0MDB5JSPUzLGf8c51St1LVACP06i0b6aNx8mWERhG+Rw58+S7X6TgdjkAQSOfPREZ3oS
         40DsKYbFsKhCUY//iFrP2cgSJOSoEKS3eVF2Z6blZ2jkwLlSQl0YJ+XLIY+ytUiAMDdo
         tM1DKvHhuPAg4gly2ut1Hy9vQutVFn33Fy8Off1M4lWnwMMoUns9Wzxd2Wbc1uR0VFNR
         lRvdI4fzTolhW5oqKP557ej5Lv+BjclJK3PZGyJy41E0dirEYpgtgqWcjX75RGnB5fkC
         Eeyw==
X-Gm-Message-State: AOAM533SfAAljAr5YRMe2cQ3fbBwfNndJAUEHcPQknMnuRYHU8JaN+4J
        OAmYKTBJTsOkfPknuzWnOYTiFw==
X-Google-Smtp-Source: ABdhPJzH2AYsc87sKJTEJvKhEp90igqSe7vZ4SuRlgUhjJrY2/j5+u/fAOVedF+0min99G5EjJX2IA==
X-Received: by 2002:a17:906:6985:b0:6fe:988b:d248 with SMTP id i5-20020a170906698500b006fe988bd248mr34031598ejr.226.1653599443354;
        Thu, 26 May 2022 14:10:43 -0700 (PDT)
Received: from [192.168.0.177] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id s23-20020a1709064d9700b006fe8b3d8cb6sm851155eju.62.2022.05.26.14.10.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 26 May 2022 14:10:42 -0700 (PDT)
Message-ID: <9ad3b26e-5d71-72f4-1a16-9ab3164141de@linaro.org>
Date:   Thu, 26 May 2022 23:10:41 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Subject: Re: [PATCH] arm64: dts: renesas: adjust whitespace around '='
Content-Language: en-US
To:     Geert Uytterhoeven <geert@linux-m68k.org>
Cc:     Arnd Bergmann <arnd@arndb.de>, Olof Johansson <olof@lixom.net>,
        arm-soc <arm@kernel.org>, arm-soc <soc@kernel.org>,
        Geert Uytterhoeven <geert+renesas@glider.be>,
        Magnus Damm <magnus.damm@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Linux-Renesas <linux-renesas-soc@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
References: <20220526204231.832090-1-krzysztof.kozlowski@linaro.org>
 <CAMuHMdWvfbbB3578aFAx6twdKNCkB1T-Uihf3OzGLHmcZG047g@mail.gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <CAMuHMdWvfbbB3578aFAx6twdKNCkB1T-Uihf3OzGLHmcZG047g@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 26/05/2022 23:05, Geert Uytterhoeven wrote:
> Hi Krzysztof,
> 
> On Thu, May 26, 2022 at 10:42 PM Krzysztof Kozlowski
> <krzysztof.kozlowski@linaro.org> wrote:
>> Fix whitespace coding style: use single space instead of tabs or
>> multiple spaces around '=' sign in property assignment.  No functional
>> changes (same DTB).
>>
>> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> 
> Thanks for your patch!
> 
>> --- a/arch/arm64/boot/dts/renesas/draak.dtsi
>> +++ b/arch/arm64/boot/dts/renesas/draak.dtsi
>> @@ -630,7 +630,7 @@ rsnd_for_ak4613: endpoint {
>>                                 bitclock-master = <&rsnd_for_ak4613>;
>>                                 frame-master = <&rsnd_for_ak4613>;
>>                                 playback = <&ssi3>, <&src5>, <&dvc0>;
>> -                               capture  = <&ssi4>, <&src6>, <&dvc1>;
>> +                               capture = <&ssi4>, <&src6>, <&dvc1>;
> 
> I think the idea was to align the playback and capture properties,
> for easier comparison.
> Hence I'm a bit undecided if this needs to be fixed or not...

yeah, but then one should align "frame-master" to "bitclock-master" and
several other properties.

> 
>>                         };
>>                 };
>>         };
> 
>> --- a/arch/arm64/boot/dts/renesas/ulcb-kf.dtsi
>> +++ b/arch/arm64/boot/dts/renesas/ulcb-kf.dtsi
>> @@ -206,12 +206,12 @@ pcm3168a: audio-codec@44 {
>>                                 clocks = <&clksndsel>;
>>                                 clock-names = "scki";

like here ^^^ - clocks with clock-names...

>>
>> -                               VDD1-supply     = <&snd_3p3v>;
>> -                               VDD2-supply     = <&snd_3p3v>;
>> -                               VCCAD1-supply   = <&snd_vcc5v>;
>> -                               VCCAD2-supply   = <&snd_vcc5v>;
>> -                               VCCDA1-supply   = <&snd_vcc5v>;
>> -                               VCCDA2-supply   = <&snd_vcc5v>;
>> +                               VDD1-supply = <&snd_3p3v>;
>> +                               VDD2-supply = <&snd_3p3v>;
>> +                               VCCAD1-supply = <&snd_vcc5v>;
>> +                               VCCAD2-supply = <&snd_vcc5v>;
>> +                               VCCDA1-supply = <&snd_vcc5v>;
>> +                               VCCDA2-supply = <&snd_vcc5v>;
> 
> Same for the various supplies.

I don't think there is benefit to order few single entries, while entire
file does not follow that convention. It would be different for some
multiple-line entries, but that's not the case here.

Anyway that's only my opinion, so I am happy to trim the patch to the
last part (although then it is a bit churn :) ).

> 
>>
>>                                 ports {
>>                                         #address-cells = <1>;
>> @@ -438,7 +438,7 @@ rsnd_for_pcm3168a_capture: endpoint {
>>                                 bitclock-master;
>>                                 frame-master;
>>                                 dai-tdm-slot-num = <6>;
>> -                               capture  = <&ssi4>;
>> +                               capture = <&ssi4>;
> 
> Right, there's nothing to align here.



Best regards,
Krzysztof
