Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 69C3E5B0467
	for <lists+devicetree@lfdr.de>; Wed,  7 Sep 2022 14:54:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229595AbiIGMy1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 7 Sep 2022 08:54:27 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56534 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229896AbiIGMyE (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 7 Sep 2022 08:54:04 -0400
Received: from mail-lf1-x12f.google.com (mail-lf1-x12f.google.com [IPv6:2a00:1450:4864:20::12f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 011687D1FD
        for <devicetree@vger.kernel.org>; Wed,  7 Sep 2022 05:53:59 -0700 (PDT)
Received: by mail-lf1-x12f.google.com with SMTP id m15so2608819lfl.9
        for <devicetree@vger.kernel.org>; Wed, 07 Sep 2022 05:53:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=QdfsKhvFKhFoGHzsk/BoyO/Tmgkam11t7YqMDdkDMvA=;
        b=cfabybZRUHSTAN4CYZIqf5lWbwbUv80aicTWbp1K/+qlLzOg80739TUsdt/K1Kzv9/
         Tk2EZ671p89mbJ7bdrPoTDBsXrdFbYGzcpbmGJGw/wA+H3Y1WC1eZAXezu6AU8beLRN1
         6vsmAlxgwFjRn+HFmRxPGGFHA8FhaMp9XuB2NdJ6yeKV/c70Pt8J2EyDxvM6WUxOKD/v
         YNyxqSM7mKzzxVcr6R5hGR5XOVWO6CYFnO5PzLE5wlPdXoZq9Y9c4kqSg74N66BSnnwH
         5rsoQfOGR9N7PMsRrJbJ/yyqSQlSRWyzRZ9LWJIyvXqNrJ801ywCuAnanXRsILWQ+J2c
         1J1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=QdfsKhvFKhFoGHzsk/BoyO/Tmgkam11t7YqMDdkDMvA=;
        b=nC2bxeecnMBJuALZOkCoXHLrtieFRrUri9gCMr+N6JnCk7Iw0YVEX6UNjzm/lw9zEh
         OnEx1D9zAUEuuqPK4/wfKyeTM2BWsq+ImLgJHoOi9cFnE80pQQzwFiRM5cXrb79EDKN9
         axKT0KZfeiqtzPNzCf6CIASp8k82FksZzukXEl9VvvY+ymnCwFsDuPN9Z5MEtrQVYiVr
         qT+o7+s5JMURgdaCWy8bv7F3X/MR5Nuh/Q6Whp8/ho5dxwN9EZcdDmcNmgCl+m0Y9a4Y
         ciIiaL1/F1lGzzDM31lSRSHgmCLs7u6Z+Df7HO/HoL9HOew58ZBkHrfux+FxcIYywBgm
         p2og==
X-Gm-Message-State: ACgBeo2WrHIxjvE2sCzfekMya6hk4oBNZJlnp/dskfIbroFw2ypEbWco
        CUOY4u5EykhZwLHFHb1RkKumW++y9NTRUg==
X-Google-Smtp-Source: AA6agR4BwFb6nsuEJdos9OnnfDEhzv5czyPoYnsaY6U4L9wyIe5/4sEYDJrmkZX+UZi6V/friXgSQw==
X-Received: by 2002:a05:6512:159c:b0:48a:efee:6f84 with SMTP id bp28-20020a056512159c00b0048aefee6f84mr978713lfb.627.1662555237699;
        Wed, 07 Sep 2022 05:53:57 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id l18-20020a2e7012000000b00261ca0f940esm2532315ljc.62.2022.09.07.05.53.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 07 Sep 2022 05:53:57 -0700 (PDT)
Message-ID: <cbdbc7d8-a3b9-d960-68c7-457c947e4285@linaro.org>
Date:   Wed, 7 Sep 2022 14:53:56 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Subject: Re: [PATCH 1/2] dt-bindings: display: panel: Add NewVision NV3051D
 panel bindings
Content-Language: en-US
To:     Chris Morgan <macroalpha82@gmail.com>,
        dri-devel@lists.freedesktop.org
Cc:     devicetree@vger.kernel.org, krzysztof.kozlowski+dt@linaro.org,
        robh+dt@kernel.org, daniel@ffwll.ch, airlied@linux.ie,
        sam@ravnborg.org, thierry.reding@gmail.com,
        Chris Morgan <macromorgan@hotmail.com>
References: <20220906185208.13395-1-macroalpha82@gmail.com>
 <20220906185208.13395-2-macroalpha82@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220906185208.13395-2-macroalpha82@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-6.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 06/09/2022 20:52, Chris Morgan wrote:
> From: Chris Morgan <macromorgan@hotmail.com>
> 
> Add documentation for the NewVision NV3051D panel bindings.
> Note that for the two expected consumers of this panel binding
> the underlying LCD model is unknown.
> 
> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
> ---
>  .../display/panel/newvision,nv3051d.yaml      | 48 +++++++++++++++++++
>  1 file changed, 48 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/display/panel/newvision,nv3051d.yaml
> 
> diff --git a/Documentation/devicetree/bindings/display/panel/newvision,nv3051d.yaml b/Documentation/devicetree/bindings/display/panel/newvision,nv3051d.yaml
> new file mode 100644
> index 000000000000..016168d8d7b2
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/display/panel/newvision,nv3051d.yaml
> @@ -0,0 +1,48 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/display/panel/newvision,nv3051d.yaml#

You need to document vendor prefix... but the filename does not match
compatible.

> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: NewVision NV3051D based DSI panel driver

This is confusing - compatibles say something else.

> +
> +maintainers:
> +  - Chris Morgan <macromorgan@hotmail.com>
> +
> +allOf:
> +  - $ref: panel-common.yaml#
> +
> +properties:
> +  compatible:
> +    enum:
> +      - anbernic,rg353p-panel
> +      - anbernic,rg353v-panel

Missing space, missing documentation for vendor prefix.

Strip "panel" suffix unless device is multifunctional.

> +  reg: true
> +  backlight: true


Best regards,
Krzysztof
