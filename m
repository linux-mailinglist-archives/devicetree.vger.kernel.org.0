Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DA65564EC0C
	for <lists+devicetree@lfdr.de>; Fri, 16 Dec 2022 14:24:26 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230389AbiLPNYX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 16 Dec 2022 08:24:23 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54800 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230371AbiLPNYU (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 16 Dec 2022 08:24:20 -0500
Received: from mail-lf1-x132.google.com (mail-lf1-x132.google.com [IPv6:2a00:1450:4864:20::132])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D031245ED4
        for <devicetree@vger.kernel.org>; Fri, 16 Dec 2022 05:24:18 -0800 (PST)
Received: by mail-lf1-x132.google.com with SMTP id j4so3533752lfk.0
        for <devicetree@vger.kernel.org>; Fri, 16 Dec 2022 05:24:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=/+mMxOdMAgLCeuwkaZmvxMZlpVOnxVzWHkvJPQHxnRI=;
        b=ujrJHZZ7vtUjOvUQAW81BfcvxHm/qIXYl8RqOCVYigjm+N2HO3xtQ08VyIyN8pHJ9R
         Md1d10dAusU9tWOY9DmsIYn9MUsBz1cdpP1u9zUWfuqGmztxmHpgHHAD2Sir3Bcb+Zbl
         RVUxYE3GdQIJTvGhh1P3zcTTg9ooz+tIZ2ITLHKfKuXcmg4oo7OdBKcPjBaldTtrlR28
         E+tvzcZaVyPXCLm6F10efIgO/gbnzk6riJr20tkPBk5X6vDkZCJFuf2CYd3uDs7gFrR/
         zTp+cGBxbAZVdV/Y0VIpiqOYJf5i+09sryUE1BSu7vG7IaNdWjf3DHyizxkBsZTMEeY9
         ourA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=/+mMxOdMAgLCeuwkaZmvxMZlpVOnxVzWHkvJPQHxnRI=;
        b=wNkoCD4PZhjKbVap3jpPEjH06NHHelLQKfNKqx0GDyoih0cefmBxtb+0nn05TCsfXh
         EWFIrPvD+1T6tdj6swaGNUAyiogHx7jJOSw81Pya+RteoXRISnC1dHMVMq1ZbxvDTXz4
         iv4TtsPdUeyRUdCCpvdO1qmWmjMJkNHO+lfFVpPZZ8hajPErqC5Ew1TBdfjKJeQBY8kX
         ENAMKG/S53CGJhxss5LH3uKNrMzN83E+2NNSi+tqcIfvTuS8OWmhtMJ784PhdE307etB
         l3cKbeeYy8g74gyVHD77kSS0cLXrPhB9aNX81t3/gilzWR62HqmhnAzoDDoflmY7c0LY
         S4hA==
X-Gm-Message-State: ANoB5pn9sYx/UCAUVDpnrydrlHG9bxiaJd6klJXHAYWRwGFliUF3aght
        /2gk8yn5w2VJC65TtReU2T88og==
X-Google-Smtp-Source: AA0mqf56qsEGhfRMqX+JEjXAuSmBjPtw3+8fmZRoUV93ZUk48rfYhC2KVQXthyFQhi41/i48fWGR7Q==
X-Received: by 2002:a05:6512:259e:b0:4ab:f3f1:8299 with SMTP id bf30-20020a056512259e00b004abf3f18299mr9923984lfb.6.1671197057217;
        Fri, 16 Dec 2022 05:24:17 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id a8-20020a056512200800b004a2c447598fsm220591lfb.159.2022.12.16.05.24.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 16 Dec 2022 05:24:16 -0800 (PST)
Message-ID: <07ab1c4d-2e59-6b0d-0d82-24b4772653ea@linaro.org>
Date:   Fri, 16 Dec 2022 14:24:15 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: [PATCH v3 14/14] dt-bindings: rtc: pcf2127: add PCF2131
Content-Language: en-US
To:     Hugo Villeneuve <hugo@hugovil.com>, a.zummo@towertech.it,
        alexandre.belloni@bootlin.com, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org
Cc:     linux-rtc@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Hugo Villeneuve <hvilleneuve@dimonoff.com>
References: <20221215150214.1109074-1-hugo@hugovil.com>
 <20221215150214.1109074-15-hugo@hugovil.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221215150214.1109074-15-hugo@hugovil.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 15/12/2022 16:02, Hugo Villeneuve wrote:
> From: Hugo Villeneuve <hvilleneuve@dimonoff.com>
> 
> Add support for new NXP RTC PCF2131.
> 
> Signed-off-by: Hugo Villeneuve <hvilleneuve@dimonoff.com>
> ---
>  Documentation/devicetree/bindings/rtc/nxp,pcf2127.yaml | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
> 


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

