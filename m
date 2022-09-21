Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 044865BF6B5
	for <lists+devicetree@lfdr.de>; Wed, 21 Sep 2022 08:52:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230062AbiIUGv6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 21 Sep 2022 02:51:58 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49712 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230081AbiIUGvi (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 21 Sep 2022 02:51:38 -0400
Received: from mail-lj1-x231.google.com (mail-lj1-x231.google.com [IPv6:2a00:1450:4864:20::231])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 519F63205B
        for <devicetree@vger.kernel.org>; Tue, 20 Sep 2022 23:51:37 -0700 (PDT)
Received: by mail-lj1-x231.google.com with SMTP id b6so5770602ljr.10
        for <devicetree@vger.kernel.org>; Tue, 20 Sep 2022 23:51:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=hziJiWlbeCYWICaodrhq4f1lj++HNSjMPQsWEPa+eOA=;
        b=kCTf1MMrAex61yobwXGslBHLvi4vBqUY2QE00zM5Xy3EYYxMOL8lHR4g1zP3I6npCW
         g5QnhB6EhLSJ6i9lvgTblYAMduwNTPKAcKYXti6awGegiHNFZKkGHVnaUrxUj+zPXs8f
         rrlfyclVRC9+mJXhy1LH0K7BS+Y3xqXipHOIL3zyV+Tj/cy3bEKBmdpXRoYlA1+3y+2d
         h5vt+2hSVfxZZtXibKiPP6rKc/Ez5yw+pNqF8y3uayhTR/5BJwIcNoLiNJBSSq5KZUbu
         9TS3TZai9GS+sDsHBnQ2EjDbSdQ5UBF4C8Ga2mbZFV1Xr3rPW0h7elvydnB0zIji8zYx
         tL9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=hziJiWlbeCYWICaodrhq4f1lj++HNSjMPQsWEPa+eOA=;
        b=xoplF1visguQKj9DVwzTGb4e3OZMCPTVqqzYKRpzw8hle3TgC8T490IsU7t4O4MTrJ
         3nGOJsAkX0X2upjyROuqAfcov2yDeOJD1uGPmyR7q896PLQEm5uiaddz2VLehrTzGk+X
         1CpYH6Fjp5L1SUgsARnBvF4x34mlKpA77thQS2DqX9AbWUCQszW2T/GPycDyIeBYg7Qp
         5yfblP7wJGCjOtdF37VSWnwDk9lFxOYuo0ViyQk9yXLJUIwTsKPoXrVEqI1FmKlj+KwX
         Nstrnz6YAcniaEJQw8IB3mnD9fO83TkzGTDT9CWKUZ+WPwqVUrW+ARPqBnYpXlKW3Nik
         GxBQ==
X-Gm-Message-State: ACrzQf1o31zI1DYQ9oIViUPGPmOfTZNJIfOyTNvDRX3e0+j7TIdja2Fd
        DXwQjTEqZray3umKDLyVVn4U2A==
X-Google-Smtp-Source: AMsMyM4uSKYhrpYEdfKtFGQ4I85DvMwMEBxdptePTBLc/Ii+9JxJmgBnJrz7bOduw3W2oKr80pQjGQ==
X-Received: by 2002:a05:651c:33a:b0:26a:a0de:d6e3 with SMTP id b26-20020a05651c033a00b0026aa0ded6e3mr8437660ljp.397.1663743095471;
        Tue, 20 Sep 2022 23:51:35 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id z12-20020a056512370c00b0048a8c907fe9sm304865lfr.167.2022.09.20.23.51.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 20 Sep 2022 23:51:34 -0700 (PDT)
Message-ID: <e5de0c74-3ece-56c6-6c31-042e1117c10a@linaro.org>
Date:   Wed, 21 Sep 2022 08:51:34 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Subject: Re: [PATCH V2 2/3] dt-bindings: display: panel: Add NewVision NV3051D
 bindings
Content-Language: en-US
To:     Chris Morgan <macroalpha82@gmail.com>,
        dri-devel@lists.freedesktop.org
Cc:     devicetree@vger.kernel.org, krzysztof.kozlowski+dt@linaro.org,
        robh+dt@kernel.org, daniel@ffwll.ch, airlied@linux.ie,
        sam@ravnborg.org, thierry.reding@gmail.com,
        Chris Morgan <macromorgan@hotmail.com>
References: <20220920145905.20595-1-macroalpha82@gmail.com>
 <20220920145905.20595-3-macroalpha82@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220920145905.20595-3-macroalpha82@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 20/09/2022 16:59, Chris Morgan wrote:
> From: Chris Morgan <macromorgan@hotmail.com>
> 
> Add documentation for the NewVision NV3051D panel bindings.
> Note that for the two expected consumers of this panel binding
> the underlying LCD model is unknown. Name "anbernic,rg353p-panel"
> is used because the hardware itself is known as "anbernic,rg353p".
> 
> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
> ---
>  .../display/panel/newvision,nv3051d.yaml      | 55 +++++++++++++++++++
>  1 file changed, 55 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/display/panel/newvision,nv3051d.yaml
> 
> diff --git a/Documentation/devicetree/bindings/display/panel/newvision,nv3051d.yaml b/Documentation/devicetree/bindings/display/panel/newvision,nv3051d.yaml
> new file mode 100644
> index 000000000000..d90bca4171c2
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/display/panel/newvision,nv3051d.yaml
> @@ -0,0 +1,55 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/display/panel/newvision,nv3051d.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: NewVision NV3051D based LCD panel
> +
> +description: |
> +  The NewVision NV3051D is a driver chip used to drive DSI panels. For now,
> +  this driver only supports the 640x480 panels found in the Anbernic RG353
> +  based devices.
> +
> +maintainers:
> +  - Chris Morgan <macromorgan@hotmail.com>
> +
> +allOf:
> +  - $ref: panel-common.yaml#
> +
> +properties:
> +  compatible:
> +    items:
> +      - enum:
> +          - anbernic,rg353p-panel

Are these vendor prefixs documented?

> +          - anbernic,rg353v-panel
> +      - const: newvision,nv3051d

Blank line.

> +  reg: true
> +  backlight: true
> +  port: true
> +  reset-gpios: true
> +  vdd-supply:
> +    description: regulator that supplies the vdd voltage

Skip description and make it just "true". It's kind of obvious.

> +
> +required:
> +  - compatible
> +  - reg
> +  - backlight
> +  - vdd-supply

Best regards,
Krzysztof
