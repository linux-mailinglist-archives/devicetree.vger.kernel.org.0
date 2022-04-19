Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4703D506B83
	for <lists+devicetree@lfdr.de>; Tue, 19 Apr 2022 13:55:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1349740AbiDSL6I (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 19 Apr 2022 07:58:08 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48102 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1351972AbiDSL5l (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 19 Apr 2022 07:57:41 -0400
Received: from mail-ed1-x536.google.com (mail-ed1-x536.google.com [IPv6:2a00:1450:4864:20::536])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1E0C03897
        for <devicetree@vger.kernel.org>; Tue, 19 Apr 2022 04:54:58 -0700 (PDT)
Received: by mail-ed1-x536.google.com with SMTP id 21so20973324edv.1
        for <devicetree@vger.kernel.org>; Tue, 19 Apr 2022 04:54:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=nfsMBJ2xALLgOjM4oOlK5BSYjJIFPGL8NAkh/N0/6yg=;
        b=ZyjMtC8vDpunrZ/RnPfYn6O9lMWHMhEmyFxdKg41YVJvyDuwtoxrmOfkHUt26wLrf0
         8Vra8yynqYlFbnTVedtpqXhG3EjBrNLGB0d4IE5S7o6A2XMii46/SNSAWK0yXDPm10up
         7CSFHusMxjfK2TCkeN6FCjVfhsJgIRRzP6n8gHvMuQZ8OcTpG2OHJft/fq1Cnw0gIVOr
         OwYI8aF1erqTvLAp3Urtm0zi7uAfXiutEQwIOjVKoyHnALBOzadlbILaB2ILvfYmzI4U
         M3lD7DO+wmXjYcJC83REAy8fnhkz/1nN5Q5gW8yGlB64nU3tnbXxpG4SUtR3hFvlovKD
         pfjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=nfsMBJ2xALLgOjM4oOlK5BSYjJIFPGL8NAkh/N0/6yg=;
        b=f5ehMoH7JGzmtu7B8lSPjOUC4uCOTUEr3jPn7yVJEeJ2MF1d0XrTcvbwRe5Ta6yC+C
         Hwgyx7D6D4n8DiNTfxzxOdiM9+BexqhXyB+wcVK/FcQ4UhmaGyr6qq5ld6/YjCZugP/w
         h3sOwTzpWOy2ffdEbfTq7K/bCKhyRwwHHSLQGI2yI6iA49BG8JBISW4AmBJYM2Ha5+Sv
         Nawsp+zbfFvxBbX7Vi3Vj3JqeVdNf3KD2vnFr9r2RYEn5zr+XQa1TCefYNhogwdjBdLT
         I6OCZ0JtfmivcHD7RcR4muwup9T5tETf8Is4vGUVpO7XDpr1gLpXT7aGKwgZATcN/6RG
         cXxg==
X-Gm-Message-State: AOAM533+j+DRcWrZNdP5dmvTSOdCdImVJbedBjXOWNfKBOFfNSkAzaBf
        jXKSIhHgvsDnIkwwuncXpbhLcg==
X-Google-Smtp-Source: ABdhPJwTmG5NGqJbQnGnpk+8S5HiLxzmh4OPgLZyw4Ghg8byqWFSS06JiSgvvJYqgbuxen9bp911BA==
X-Received: by 2002:a05:6402:3046:b0:420:120e:ef2c with SMTP id bs6-20020a056402304600b00420120eef2cmr17002877edb.160.1650369296744;
        Tue, 19 Apr 2022 04:54:56 -0700 (PDT)
Received: from [192.168.0.217] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id r24-20020aa7c158000000b00423fd948d56sm952196edp.3.2022.04.19.04.54.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 19 Apr 2022 04:54:56 -0700 (PDT)
Message-ID: <07d7fa69-dd2f-3e10-f959-474814105d3b@linaro.org>
Date:   Tue, 19 Apr 2022 13:54:55 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [PATCH v5 24/33] dt-bindings: crypto: convert rockchip-crypto to
 YAML
Content-Language: en-US
To:     LABBE Corentin <clabbe@baylibre.com>
Cc:     heiko@sntech.de, herbert@gondor.apana.org.au,
        krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-crypto@vger.kernel.org,
        linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20220413190713.1427956-1-clabbe@baylibre.com>
 <20220413190713.1427956-25-clabbe@baylibre.com>
 <44efe8b6-1712-5b87-f030-2f1328533ee8@linaro.org> <Yl6YV9nLVI4qYsPP@Red>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <Yl6YV9nLVI4qYsPP@Red>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-5.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 19/04/2022 13:09, LABBE Corentin wrote:
>> This is not needed and dt_bindings_check should complain.
>>
>>> +    items:
>>> +      const: aclk
>>> +      const: hclk
>>> +      const: sclk
>>> +      const: apb_pclk
>>> +
>>> +  resets:
>>> +    maxItems: 1
>>> +
>>> +  reset-names:
>>> +    maxItems: 1
>>
>> The same.
>>
> 
> I forgot to test the intermediate patch...
> Before I send a new version, does the final document is okay ?

Looks ok, if it works. :) I don't remember if dtschema likes the cases:
clock-names:
  minItems:3
  maxItems:4
if:
 ...
clock-names:
  items:
    - ...
     ...
  maxItems:3

This should work correctly, but dtschema has checks for unneeded
min/maxItems so be sure they are not complaining.

Best regards,
Krzysztof
