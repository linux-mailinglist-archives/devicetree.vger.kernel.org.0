Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B0EAF7189AC
	for <lists+devicetree@lfdr.de>; Wed, 31 May 2023 20:56:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229556AbjEaS4t (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 31 May 2023 14:56:49 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41586 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229563AbjEaS4s (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 31 May 2023 14:56:48 -0400
Received: from mail-ed1-x532.google.com (mail-ed1-x532.google.com [IPv6:2a00:1450:4864:20::532])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3EE9712F
        for <devicetree@vger.kernel.org>; Wed, 31 May 2023 11:56:47 -0700 (PDT)
Received: by mail-ed1-x532.google.com with SMTP id 4fb4d7f45d1cf-51475e981f0so138312a12.1
        for <devicetree@vger.kernel.org>; Wed, 31 May 2023 11:56:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1685559406; x=1688151406;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=cSea+jHv5VzJ7O3URdOQ0RMo8b1SAY8L+HjdsXboNjs=;
        b=zUz6zuSoUXHVZpNijhpGWuMPKejgv3LQ14v2aQ8Q1jbPzp8MSz+OgK0VR5xbgpMtev
         wWl5fLewhQy5nW4MXD5LuaODzO5vA+EnPv1THVkE5AF/W6Ilczxu4FCB7rck6azDoCCi
         W8Bhn2nfoO1A+vBsK0QKM54BxL+k03CyJA6UKNpxM1/Q+7OgokQ0a56W+JpRiAL2MpGg
         45nVgXfC9VwfjN8cobXKIKVzPGRK4jP0L1OjQchQ8P53qAKT2MASLK1VkPDg7tyso4bl
         cCK+nyLZw0vaytDyqQ6i9rmp+jylUOYtReYEH77mML05zjMpL4mX9jyp4VCnmqxuMgR+
         REcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685559406; x=1688151406;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=cSea+jHv5VzJ7O3URdOQ0RMo8b1SAY8L+HjdsXboNjs=;
        b=hSQ3F+H52y/0UQ5IGnGZ9fhNV6v60308oPsG66zFXPBdE2lWCbr7JK5+oHnG0kxJnG
         jFm35U4jSumJMF44tVR1oZLnjM6DL2F4/U5XLdhkr7TPZPwssu2vB1Zp+KelNvXTRJBZ
         ApSe+gjVX+BAOT6Yhzl8X5MXmpjUrpggIOl7T0jiNU1qndTCtmu06WBpyTo6z0b/TUbA
         y5Fv5cyxFrbEe5CufzjlvAvzUcK//uJny5prMsPxxX5yEltx2RNluKU3bS5tyjulymeh
         Fyu/+7ORAXIgmqGwKplpNgoA8dPmFP85P1/fewMkF3pmCQQApHHh+tZIDd8Fbas/Y+k7
         7Vlw==
X-Gm-Message-State: AC+VfDx944liP2TogQL1TBJ53xZzrEPjL+gwlfwa3/7LqqqK/ssLWqrw
        li8W2v+PcvP2YZ0ZFXPC8R0Sww==
X-Google-Smtp-Source: ACHHUZ69HfZ0Sn5W1/MEF6Evu6R3NVMg+JqIgVvA5SVX7ScjPSXbbN5+f8VRRJ4+I9DiOjO/1ADvDA==
X-Received: by 2002:a17:907:9455:b0:966:2123:e0ca with SMTP id dl21-20020a170907945500b009662123e0camr6473689ejc.34.1685559405777;
        Wed, 31 May 2023 11:56:45 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.199.204])
        by smtp.gmail.com with ESMTPSA id gr10-20020a170906e2ca00b0096ace550467sm9560627ejb.176.2023.05.31.11.56.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 31 May 2023 11:56:45 -0700 (PDT)
Message-ID: <eb2b71df-6767-40f3-afc1-ef1552aeaee6@linaro.org>
Date:   Wed, 31 May 2023 20:56:43 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH] dt-bindings: samsung,mipi-dsim: Use port-base reference
Content-Language: en-US
To:     Fabio Estevam <festevam@gmail.com>, neil.armstrong@linaro.org
Cc:     marex@denx.de, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        Fabio Estevam <festevam@denx.de>
References: <20230531014315.1198880-1-festevam@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230531014315.1198880-1-festevam@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 31/05/2023 03:43, Fabio Estevam wrote:
> From: Fabio Estevam <festevam@denx.de>
> 
> Use port-base reference for port@0 and port@1.
> 
> This fixes the following schema warning:
> 
> imx8mm-evk.dtb: dsi@32e10000: ports:port@1:endpoint: Unevaluated properties are not allowed ('data-lanes' was unexpected)
> From schema: Documentation/devicetree/bindings/display/bridge/samsung,mipi-dsim.yaml
> 
> Fixes: 1f0d40d88f7a ("dt-bindings: bridge: Convert Samsung MIPI DSIM bridge to yaml")

No, you change correct binding into incorrect to hide warning, instead
of fixing root cause.

> Signed-off-by: Fabio Estevam <festevam@denx.de>
> ---
>  .../devicetree/bindings/display/bridge/samsung,mipi-dsim.yaml | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/display/bridge/samsung,mipi-dsim.yaml b/Documentation/devicetree/bindings/display/bridge/samsung,mipi-dsim.yaml
> index 9f61ebdfefa8..51879030dd6d 100644
> --- a/Documentation/devicetree/bindings/display/bridge/samsung,mipi-dsim.yaml
> +++ b/Documentation/devicetree/bindings/display/bridge/samsung,mipi-dsim.yaml
> @@ -93,14 +93,14 @@ properties:
>  
>      properties:
>        port@0:
> -        $ref: /schemas/graph.yaml#/properties/port
> +        $ref: /schemas/graph.yaml#/$defs/port-base

No, because you allow now anything here.

>          description:
>            Input port node to receive pixel data from the
>            display controller. Exactly one endpoint must be
>            specified.
>  
>        port@1:
> -        $ref: /schemas/graph.yaml#/properties/port
> +        $ref: /schemas/graph.yaml#/$defs/port-base

This would have sense if you kept original intention, so
additionalProperties: false

Without it - you just break bindings to hide warning.



Best regards,
Krzysztof

