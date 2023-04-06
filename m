Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 48CB86D91BE
	for <lists+devicetree@lfdr.de>; Thu,  6 Apr 2023 10:35:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235280AbjDFIfM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 6 Apr 2023 04:35:12 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52846 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233450AbjDFIfL (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 6 Apr 2023 04:35:11 -0400
Received: from mail-wr1-x433.google.com (mail-wr1-x433.google.com [IPv6:2a00:1450:4864:20::433])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5B21F61A5
        for <devicetree@vger.kernel.org>; Thu,  6 Apr 2023 01:35:09 -0700 (PDT)
Received: by mail-wr1-x433.google.com with SMTP id l12so38673347wrm.10
        for <devicetree@vger.kernel.org>; Thu, 06 Apr 2023 01:35:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1680770108; x=1683362108;
        h=content-transfer-encoding:in-reply-to:organization:references:cc:to
         :content-language:subject:reply-to:from:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=1E6nhV/1C7m7qWqcAxvBB03qki7mAy12FW5qvtaGnt0=;
        b=Keok04y3jJEdtECC5VnqNala/CfoSo6j6BV0RRNXduQI3b/NOx/3wbqB0byUaetqvX
         8BBGZFcYkyCfvQnYhg9hC/5L+jpMgzxkmDc19I76JgFCDdVFCwLryUtVaBWLR5I1msWZ
         3EVpEa0yrES5722BVWysMy7rlSICMb7nkvM8wCp/J8AnOi9ZA128salCvDBakL41Co9w
         iFTKn876HGW3xRQGtGMwOEBVAN2h6UQH8xUjlYZPlQV4dLrb/tgYd35hV3kJRJQaGmE1
         B05h2XKCQOtYSWvr0CV1k08zoGJ/JK/priBmoS8/PheOi41yGUZzcqI91gK9DiMNTYaI
         GMFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680770108; x=1683362108;
        h=content-transfer-encoding:in-reply-to:organization:references:cc:to
         :content-language:subject:reply-to:from:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=1E6nhV/1C7m7qWqcAxvBB03qki7mAy12FW5qvtaGnt0=;
        b=IBAUaAfq0xY+OLhp7QUOTpalkdT7yzBK7J1LSvrQWO7RByahz+is6fpImSXDCz3L+O
         AlqPxOV4WszLE+J1VkORZx9YEkHhWDHgGnhVbeMxTNscZrpZ8LBe8y/I79GHn8Aj3i7m
         zfyjXTnIkbqlOwiegpBxK1tVcEjteIZCwZ7r361r3hyogf08UKhT/dHl+OsfTXa1VwXu
         htf827gHZLjvFHy5BxKATSqA7Z/PUzspXPNVaZRDT1fEIjmr/Fk66s2r6qQvyBTRpNnb
         XZ3C4Ekn2tR3GrofoDYg42izBP0QCn8YlPcjzlZhrYiU9CedcfFBYBte2QD/+KzPpdrR
         JOgA==
X-Gm-Message-State: AAQBX9dF24Hm//XgWV38z/n/natc6JljeXlghniWkiwdkWg1M2r5URKy
        E0vxvuAmyyKLTR4ItCAiaZLnNQ==
X-Google-Smtp-Source: AKy350YbxTqPfcY6qWpxiTYDAGBXcTVEq7g357r5Q7dgD1qN33wUq1udAtcWD9FUhmVjuKTElZEvaQ==
X-Received: by 2002:adf:f551:0:b0:2ce:98fc:f289 with SMTP id j17-20020adff551000000b002ce98fcf289mr6961627wrp.49.1680770107825;
        Thu, 06 Apr 2023 01:35:07 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:982:cbb0:8569:a62a:11bd:c344? ([2a01:e0a:982:cbb0:8569:a62a:11bd:c344])
        by smtp.gmail.com with ESMTPSA id m10-20020a5d56ca000000b002c54c92e125sm1093127wrw.46.2023.04.06.01.35.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 06 Apr 2023 01:35:07 -0700 (PDT)
Message-ID: <1115cc9a-630d-17c5-6e1e-fff192ba04f1@linaro.org>
Date:   Thu, 6 Apr 2023 10:35:06 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
From:   Neil Armstrong <neil.armstrong@linaro.org>
Reply-To: neil.armstrong@linaro.org
Subject: Re: [RFC PATCH] dt-bindings: arm: amlogic: add C3 bindings
Content-Language: en-US
To:     Kelvin Zhang <kelvin.zhang@amlogic.com>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Kevin Hilman <khilman@baylibre.com>
References: <20230406081627.4083103-1-kelvin.zhang@amlogic.com>
Organization: Linaro Developer Services
In-Reply-To: <20230406081627.4083103-1-kelvin.zhang@amlogic.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-1.6 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Kelvin.

On 06/04/2023 10:16, Kelvin Zhang wrote:
> Document the new C3 SoC/board device tree bindings.
> 
> C3 is an advanced edge AI processor designed for smart IP camera
> applications, which does not belong to Meson series.
> 
> Therefore, modify the title field accordingly.

Please CC linux-amlogic@lists.infradead.org and linux-arm-kernel@lists.infradead.org aswell.

> 
> Signed-off-by: Kelvin Zhang <kelvin.zhang@amlogic.com>
> ---
>   Documentation/devicetree/bindings/arm/amlogic.yaml | 9 ++++++++-
>   1 file changed, 8 insertions(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/arm/amlogic.yaml b/Documentation/devicetree/bindings/arm/amlogic.yaml
> index 274ee0890312..ade730f35519 100644
> --- a/Documentation/devicetree/bindings/arm/amlogic.yaml
> +++ b/Documentation/devicetree/bindings/arm/amlogic.yaml
> @@ -4,7 +4,7 @@
>   $id: http://devicetree.org/schemas/arm/amlogic.yaml#
>   $schema: http://devicetree.org/meta-schemas/core.yaml#
>   
> -title: Amlogic MesonX
> +title: Amlogic SoC based Platforms
>   
>   maintainers:
>     - Kevin Hilman <khilman@baylibre.com>
> @@ -211,6 +211,13 @@ properties:
>                 - amlogic,aq222
>             - const: amlogic,s4
>   
> +      - description: Boards with the Amlogic C3 C302X/C308L SoC
> +        items:
> +          - enum:
> +              - amlogic,aw409
> +              - amlogic,aw419
> +          - const: amlogic,c3
> +
>   additionalProperties: true
>   
>   ...
> 
> base-commit: e134c93f788fb93fd6a3ec3af9af850a2048c7e6

Thanks,
Neil
