Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DA3C3698E0A
	for <lists+devicetree@lfdr.de>; Thu, 16 Feb 2023 08:50:03 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229460AbjBPHuB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 16 Feb 2023 02:50:01 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52072 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229490AbjBPHuB (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 16 Feb 2023 02:50:01 -0500
Received: from mail-ej1-x62a.google.com (mail-ej1-x62a.google.com [IPv6:2a00:1450:4864:20::62a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E1EE941B5F
        for <devicetree@vger.kernel.org>; Wed, 15 Feb 2023 23:49:59 -0800 (PST)
Received: by mail-ej1-x62a.google.com with SMTP id b2so3064690ejz.9
        for <devicetree@vger.kernel.org>; Wed, 15 Feb 2023 23:49:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=KD9dKi3rj8RLYDdRMajBPNSYEk03xUbxX9rsJ1rYaZ8=;
        b=x0nUT4z0dVNgTRoeAYWDQGqapE/BIq1qs/b7uBgyJC/ctnRV6z0Bqb0b0DKJm3E1HG
         OgNGu74o7jZhuC8QboONAsa0l4GgRBzkasZ7dFB4+kX02asHCSRFI+YQVorelGADoSQB
         HfQoyAGgI/tepjUu2ydV9JJUq9jJ886ddp0OK3QiLnlQFaiAPEI84naAZnz4TJQ8MMsB
         65FzWSvXGNMYdp2sw0BpT31u8emkgR2O0dUF2x0EbUNO0TVky+HP8xqXtQBEnk95906I
         WAuAwg6VZDAdDb7kv+6QBgij2N9Z4weE9w7PPCFSNFMqEzn+GFNCCg0mCXCJx1PzVmVi
         ZHbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=KD9dKi3rj8RLYDdRMajBPNSYEk03xUbxX9rsJ1rYaZ8=;
        b=RXravE6obiZY2Gz1nmpq2Z7JBDg2f3mpiHBSwW2XKjDV3jA2v4mxtUndkiEGVKEB37
         S+m/VmemdtdS0VE07rlgdCSKvdgCjLNOPROoLyqxHCoyu3pGO31gAzzaUd74s8Bq3HUZ
         tmzpFxly77KV0m3XaKTHytaR8PLxXTLTGFE7unckwj50LUd0FmAkrcE4tTmHt0I++9Y7
         qaxc28OKUXxEJ/g3rWmH0zHfJcsHZDiqkMQ1Z0RistxE/M86mt/nUpB05dPOar8WoN3D
         zpJ27y0gbYSXralSsyWFDEH/ZZZgFOXlh+VCqvN/AznY+U7ZBg0fw+cGDyYJOENU7Zcc
         T9ow==
X-Gm-Message-State: AO0yUKUR3pSCJl8CxKcVP1q/UmtIC+3cxynVc8DBgqRnMZ7Zlsx3WE1A
        7K5MlIE7lhHLvbLL+aHAZMw2qg==
X-Google-Smtp-Source: AK7set9mjYyvMikODA+iXFUpJK7b+JCBVOC9KUseVYbV9TUdc8Qr1t9hthI8OSKalC0H0GGPJFkZ3w==
X-Received: by 2002:a17:906:f151:b0:8aa:c090:a9ef with SMTP id gw17-20020a170906f15100b008aac090a9efmr4534845ejb.55.1676533798381;
        Wed, 15 Feb 2023 23:49:58 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id h8-20020a17090634c800b007aece68483csm446448ejb.193.2023.02.15.23.49.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 15 Feb 2023 23:49:58 -0800 (PST)
Message-ID: <a9d5d375-697d-93c8-0bed-4d2475e6643e@linaro.org>
Date:   Thu, 16 Feb 2023 08:49:56 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Subject: Re: [PATCH v3 2/2] ASoC: dt-bindings: renesas,rsnd.yaml: add R-Car
 Gen4 support
Content-Language: en-US
To:     Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
Cc:     Mark Brown <broonie@kernel.org>, Rob Herring <robh@kernel.org>,
        Linux-DT <devicetree@vger.kernel.org>,
        Linux-ALSA <alsa-devel@alsa-project.org>,
        Geert Uytterhoeven <geert@linux-m68k.org>
References: <87ttzq8ga4.wl-kuninori.morimoto.gx@renesas.com>
 <87sffa8g99.wl-kuninori.morimoto.gx@renesas.com>
 <9aa09940-91cf-32ba-34f4-a57c9e9965bc@linaro.org>
 <Y+vKcGic3sC7+3I/@sirena.org.uk>
 <7b194041-4386-3b82-c65d-f0e3ad5cf015@linaro.org>
 <873576ju10.wl-kuninori.morimoto.gx@renesas.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <873576ju10.wl-kuninori.morimoto.gx@renesas.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 16/02/2023 02:09, Kuninori Morimoto wrote:
> 
> Hi Krzysztof
> 
>> If you leave the top-level definition without any constraints and you
>> forget to include all your compatibles in allOf:if:then, then you end up
>> without constraints. Consider:
> (snip)
>> -----
>> properties:
>>   compatible:
>>     enum:
>>       - foo
>>       - bar
>>
>> clock-names:
>>   description: anything
>>
>> if:
>>   prop:
>>     compat:
>>       enum:
>>         - foo
>> then:
>>   prop:
>>     clock-names:
>>       - ahb
>>       - sclk
>> -----
>>
>> What clocks are valid for bar?
>>
>> For simple cases this might be obvious, for more complex this is easy to
>> miss. So the recommended syntax is with constraints at the top.
> 
> I can understand we want to avoid the future miss.
> But I did it on v2 patch and you NACKed it.

No, you did not do it in v2. The top-level property is a must, we talk
now about constraints.

> Thus people confused. That is the reason why above strange style was created.
> And it is already using "else", your concern never happen ?

Yes, with else my concern will never happen. However you have there
multiple ifs, thus finding the one related to clocks is not obvious now
and won't be anyhow easier later. What's more, clocks have constraints
in top-level, thus seeing clock-names without the constraints also
raises reviewers question. Someone might bring a new compatible with
another set of clocks (quite likely), thus else won't be valid anymore
and you will have to define constraints per *each* variant (each
if:then:). When this happens, please move the widest constraints to
top-level, just like I was asking since some time. Will you remember to
do this? I might not because I assume we follow same pattern everywhere.

With a promise of above:

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof

