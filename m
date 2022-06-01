Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8C34F539EB7
	for <lists+devicetree@lfdr.de>; Wed,  1 Jun 2022 09:49:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1350369AbiFAHtq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 1 Jun 2022 03:49:46 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33476 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235867AbiFAHtp (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 1 Jun 2022 03:49:45 -0400
Received: from mail-ej1-x635.google.com (mail-ej1-x635.google.com [IPv6:2a00:1450:4864:20::635])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9235B9CC88
        for <devicetree@vger.kernel.org>; Wed,  1 Jun 2022 00:49:44 -0700 (PDT)
Received: by mail-ej1-x635.google.com with SMTP id me5so1472006ejb.2
        for <devicetree@vger.kernel.org>; Wed, 01 Jun 2022 00:49:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=Sm++4DrzLTUG9tiCKNeXhjWxZd3ZyuWj0+VaaIO2niE=;
        b=AlhVW3/4AZpS+4A5mn2asiqsGH5B9GKGts+SgUbQhgG2g2gRqeB/phmXsUEiMut/0l
         D/bxWzkivGd/qgJhlef19SWv/8ksgYIiEoaKIKrBNyJ0EuwYOE/i5vcZFYCCPF0ioL+H
         3i4XxaboY/HACuxmNRzH7BFkH67KRvTzQzc6p6L/vdW1BP0WKA9ZSuVlmmIV+XIi1fG0
         XS6uR+D9SrjF7jtBmNDBa/cI7BcZBlvP5zwOdJhG4KsPDtRMvuDzDC/UE/KE3Ba48dPc
         cto03EKypG6CeWwFfIDLpS+XSnfuIACThgZGOSIv9d1zvcV7xv/weL9TrumYmCOwqDTQ
         mxJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=Sm++4DrzLTUG9tiCKNeXhjWxZd3ZyuWj0+VaaIO2niE=;
        b=CcAToWcaaIR8LIY3b1zG2I2ktcCQ8t0R0oEcJsUGaX83166KyQJ4QsgNVDpvi3MEJs
         rWAjopTfnuUUZn7B4d5KZdFOVwMkh0U8dfPRYfzFpuZ89n5yVquf3A4rDGvsKST1jHF4
         cqlge5fbR/W/9nRFB5G1Nc7aYK5xeewdE1ANVxzgju3FSmNGk0jLSHKmQ5A5wqPXSjBb
         ac8DgextKR7Hj1A2H+eQKl4Fx+lHU2vxhbhiVL8XznRDXLQuGMQ2s1LcDUUnBAtmOhAY
         rPxjxNZalw9c0pf+2oxnQkLaw2ZIgBa4wi2t4Y93yoIECJQDBcKl9OAYkEG2YesbTaI2
         B49A==
X-Gm-Message-State: AOAM530LfRCEgBd0Yj+b8P50T5aK0wbdNJgTWcagfHPSEgOkvdvg7jEe
        KGpX+bvBFCBmU5XtzvQO2ozzOQ==
X-Google-Smtp-Source: ABdhPJz7UFukrm2jvPWd/lGUDw/WsujyoWdPvF7XRSXo1gYSXArgywz05H3nKoE1XWX/K0U0YOt4pg==
X-Received: by 2002:a17:906:9c82:b0:6df:baa2:9f75 with SMTP id fj2-20020a1709069c8200b006dfbaa29f75mr56556870ejc.762.1654069783167;
        Wed, 01 Jun 2022 00:49:43 -0700 (PDT)
Received: from [192.168.0.179] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id d21-20020a056402001500b0042aa23fa93bsm537869edu.20.2022.06.01.00.49.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 01 Jun 2022 00:49:42 -0700 (PDT)
Message-ID: <33319cd8-b300-27de-1871-f12bc860330d@linaro.org>
Date:   Wed, 1 Jun 2022 09:49:41 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Subject: Re: [PATCH 2/3] dt-bindings: display: Add bindings for ClockworkPi
 CWD686
Content-Language: en-US
To:     Max Fierke <max@maxfierke.com>, thierry.reding@gmail.com,
        sam@ravnborg.org, airlied@linux.ie, daniel@ffwll.ch,
        robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org
Cc:     dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20220601051748.1305450-1-max@maxfierke.com>
 <20220601051748.1305450-3-max@maxfierke.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220601051748.1305450-3-max@maxfierke.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 01/06/2022 07:17, Max Fierke wrote:

Subject: remove word "bindings" because you duplicate prefix, so
"dt-bindings: display: Add ClockworkPi CWD686 panel".


> +required:
> +  - compatible
> +  - reg
> +  - backlight
> +  - reset-gpios
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/gpio/gpio.h>
> +
> +    backlight: backlight {
> +        compatible = "gpio-backlight";
> +        gpios = <&gpio4 30 GPIO_ACTIVE_HIGH>;
> +    };

No need for backlight example, it is trivial/same for everyone.

With that removed:

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

> +
> +    dsi {
> +        #address-cells = <1>;
> +        #size-cells = <0>;
> +
> +        panel@0 {
> +            compatible = "clockworkpi,cwd686";
> +            reg = <0>;
> +            backlight = <&backlight>;
> +            reset-gpios = <&gpio2 28 GPIO_ACTIVE_HIGH>;
> +            rotation = <90>;
> +        };
> +    };


Best regards,
Krzysztof
