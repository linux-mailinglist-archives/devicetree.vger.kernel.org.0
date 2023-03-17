Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C5BA06BE2F4
	for <lists+devicetree@lfdr.de>; Fri, 17 Mar 2023 09:20:46 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230080AbjCQIUn (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 17 Mar 2023 04:20:43 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51726 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229967AbjCQITx (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 17 Mar 2023 04:19:53 -0400
Received: from mail-ed1-x52e.google.com (mail-ed1-x52e.google.com [IPv6:2a00:1450:4864:20::52e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F3EBE43475
        for <devicetree@vger.kernel.org>; Fri, 17 Mar 2023 01:19:18 -0700 (PDT)
Received: by mail-ed1-x52e.google.com with SMTP id eh3so17182691edb.11
        for <devicetree@vger.kernel.org>; Fri, 17 Mar 2023 01:19:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1679041152;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=5xqxJ/Errvh7wTgkyukFgXhpHkQvHOoUf0yySqdZXEc=;
        b=WuHwb10j4ZxrwbpDxJqZm1zFX4l3Ic3OXIYvg3IoG4vH8Dxg/a3knpSIJn2vjYdJ55
         zECsKris+3Wy4AosfG5m6uXFaWDmPjLH5cXynqreGAyEmy6Ho//IpEiICB3A4SgimERU
         33EHFCjKrpDzJMdgsMivryFfzJAlO8A84MfizU66pMLS/suklD8GJh3EoBI6dV9LsJEk
         9vJ9Io2Ymh0WHcHrGzzxB7QcgYshT+InI0GoIRG3ZYIREXDhiWOVKTKKyr8ikjFazVXl
         xKYJqGZp59mteUhzHTlo+73wZXERUsy/nwBvLT824vetfRU8nFFwW6NXq5ZHkcgGaEF8
         Ok4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679041152;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=5xqxJ/Errvh7wTgkyukFgXhpHkQvHOoUf0yySqdZXEc=;
        b=xFQ7cIaWbFTHeJ6oQM1xzlUrses3pnVEn6Z3ykQqiX6s45RPAoSQTj6dSUJgjf9yde
         pHpSm9rW7PHgM8BCML2/BcREGlP7/8pBRydIznAB/msP2ZnoBlISCkCl7zhYmABFd/Jr
         ePUs93vj4z1yEpD9bxEkWg/15eREbdJU8lhleHUntbH3a4njxg6/z4UjGfLnpjzqw0fY
         tyo3O7cbUVU8ahutzPgpkwWFrxnCMFwMt/4KPkpbWDhhgIAJJ45upHhmg4qVu3uOipwQ
         XUArL6Vh6duNEWt81rVGAx/hfMY5hKaIcvAhNmNM2eQalNcDZTtu85b9KHW3Yx9fekAO
         PVog==
X-Gm-Message-State: AO0yUKWy2SXP9TPu9NbXBFNR5hFgM+LAPpQH1oOMdUbBppCmAY1fyY1m
        LQvLPdcf+jLF5+Tw7n0AFWZ3yQ==
X-Google-Smtp-Source: AK7set+GY5sRcdwV9p/Ih5m6RTtaxAHA+cQleoUzhIWWZQ+nikjFfQYvaJcuYuAuJa25hiouXcahzw==
X-Received: by 2002:a17:906:8393:b0:8ae:f73e:233f with SMTP id p19-20020a170906839300b008aef73e233fmr14594869ejx.32.1679041152263;
        Fri, 17 Mar 2023 01:19:12 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:848a:1971:93e0:b465? ([2a02:810d:15c0:828:848a:1971:93e0:b465])
        by smtp.gmail.com with ESMTPSA id x23-20020a50d617000000b004fa268da13esm722779edi.56.2023.03.17.01.19.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 17 Mar 2023 01:19:10 -0700 (PDT)
Message-ID: <976e4d20-fa9a-bbdc-396a-62775eb347fc@linaro.org>
Date:   Fri, 17 Mar 2023 09:19:09 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [PATCH v3 2/2] ASoC: dt-bindings: renesas,rsnd.yaml: add R-Car
 Gen4 support
Content-Language: en-US
To:     Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>,
        =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Cc:     Rob Herring <robh@kernel.org>, Mark Brown <broonie@kernel.org>,
        Linux-DT <devicetree@vger.kernel.org>,
        Linux-ALSA <alsa-devel@alsa-project.org>,
        Geert Uytterhoeven <geert@linux-m68k.org>
References: <87ttzq8ga4.wl-kuninori.morimoto.gx@renesas.com>
 <87sffa8g99.wl-kuninori.morimoto.gx@renesas.com>
 <b2810924-169d-0bad-8f20-6ec2e683d170@gmail.com>
 <87a60c6z3w.wl-kuninori.morimoto.gx@renesas.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <87a60c6z3w.wl-kuninori.morimoto.gx@renesas.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 17/03/2023 00:44, Kuninori Morimoto wrote:
> 
> Hi Rafał
> 
>> Hi, this patch seems to add errors for me. Are my tools outdated or is
>> it a real issue? See below.
> (snip)
>>> +  #--------------------
>>> +  # reg/reg-names
>>> +  #--------------------
>>> +  # for Gen1
>>
>> This seems to cause:
>>
>> ./Documentation/devicetree/bindings/sound/renesas,rsnd.yaml:282:4: [error] missing starting space in comment (comments)
>> ./Documentation/devicetree/bindings/sound/renesas,rsnd.yaml:284:4: [error] missing starting space in comment (comments)
>> ./Documentation/devicetree/bindings/sound/renesas,rsnd.yaml:339:4: [error] missing starting space in comment (comments)
>> ./Documentation/devicetree/bindings/sound/renesas,rsnd.yaml:341:4: [error] missing starting space in comment (comments)
> 
> Hmm... I couldn't reproduce this
> 

It's visible on current next. I'll send a fix.

Best regards,
Krzysztof

