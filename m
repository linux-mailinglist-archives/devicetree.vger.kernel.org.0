Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B989B732D29
	for <lists+devicetree@lfdr.de>; Fri, 16 Jun 2023 12:15:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235200AbjFPKPM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 16 Jun 2023 06:15:12 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42144 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1343956AbjFPKPG (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 16 Jun 2023 06:15:06 -0400
Received: from mail-ed1-x529.google.com (mail-ed1-x529.google.com [IPv6:2a00:1450:4864:20::529])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0BE88296A
        for <devicetree@vger.kernel.org>; Fri, 16 Jun 2023 03:15:05 -0700 (PDT)
Received: by mail-ed1-x529.google.com with SMTP id 4fb4d7f45d1cf-51a21185130so682418a12.0
        for <devicetree@vger.kernel.org>; Fri, 16 Jun 2023 03:15:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1686910503; x=1689502503;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=zbtiTHYRUOXlyOIwcwOqEO6kZSSqK+WhcE/koScGumQ=;
        b=sMFNZoHSkQISvmubjflQBjQtoQonpjynnuVWS79rgfvB/iT8e/4Ovmm3e5yFdJr6Q0
         b4MzLlkFJBSoirPJAETYw4qsn1Mes0tZxAjScuk+6DRJG84cgfOKLRYaa7Qm/EEPxBi4
         LR9+pTzVkb70NE/VUP0Gj3kBA/9S6TfhFT8aXAzvYSeHEzid57L5Mq65IR4T3dYa0nXm
         tEboYk+saMxpdzoirtA071XfhWXr29MHq3Wf63ZXo2VAcM9/OwZUt0LMDBF4j/OucyJF
         zRgVj7EHJhdF+AvdbqSCECFujWR7i+3sa81S0rsk+nz01YKgKhoXhm5VngWWqmTj+KeT
         tt8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686910503; x=1689502503;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=zbtiTHYRUOXlyOIwcwOqEO6kZSSqK+WhcE/koScGumQ=;
        b=jhxAGxe584sXE1kdrChYtPtOEcAwXCZMWkVkdr+UOnvHbLyA5a7zEMB5P+WAe1reHK
         Z6MU8DxFQO1KIC/XXy2BABb2JAIMSu11HvqkSh55eT/75ASnXypIhl6Nt/HhNhMYMmdg
         3+XoENJ7UeX7xgSSfh/URPUmXKd+ixdKlVSqQf7EwcBspc/whe6uhjdnf4DySb7U3LhG
         1OmUal28UsUbon8DE0eN9dqKOb3s3QrrNuMhi8aKpUH6TGBI9XwHt9vtczKSR2bDTwSY
         Vn6enY8oVVRjaq1TvshD1zjZIEzF9TprDeuz/DkqTPk0KUBUb6jOKUjiK8rO17hT5pck
         KeNQ==
X-Gm-Message-State: AC+VfDzs+Dazw/iMmzkQR66KyePxESQFTkj4aV1bCZSzViNx6NtGdPPt
        F+QKc/4TulwpkLU7DVIYQ8gorA==
X-Google-Smtp-Source: ACHHUZ6nfLi3op6yKMoXPg3/r4yTHPsY7kRYiSgR4jseJKqgbXa7XTQ5mUayVTeCFH9xzbAGQr2szQ==
X-Received: by 2002:a17:907:a42:b0:96a:48ed:5333 with SMTP id be2-20020a1709070a4200b0096a48ed5333mr1651164ejc.50.1686910503506;
        Fri, 16 Jun 2023 03:15:03 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.219.26])
        by smtp.gmail.com with ESMTPSA id a13-20020a170906684d00b009828dac8425sm2590359ejs.105.2023.06.16.03.15.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 16 Jun 2023 03:15:03 -0700 (PDT)
Message-ID: <05c6aa93-68dc-f0e5-36ea-1ea73b9f4055@linaro.org>
Date:   Fri, 16 Jun 2023 12:15:01 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
Subject: Re: [PATCH] dt-bindings: arm: socionext: add bindings for the
 Synquacer platform
Content-Language: en-US
To:     jaswinder.singh@linaro.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     krzysztof.kozlowski+dt@linaro.org, robh@kernel.org,
        ilias.apalodimas@linaro.org, masahisa.kojima@linaro.org
References: <20230616035813.255062-1-jaswinder.singh@linaro.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230616035813.255062-1-jaswinder.singh@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 16/06/2023 05:58, jaswinder.singh@linaro.org wrote:
> From: Jassi Brar <jaswinder.singh@linaro.org>
> 
> Socionext's DeveloperBox is based on the SC2A11B SoC (Synquacer).
> Specify bindings for the platform and boards based on that.
> 
> Signed-off-by: Jassi Brar <jaswinder.singh@linaro.org>
> ---
>  .../bindings/arm/socionext/synquacer.yaml     | 28 +++++++++++++++++++
>  1 file changed, 28 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/arm/socionext/synquacer.yaml
> 
> diff --git a/Documentation/devicetree/bindings/arm/socionext/synquacer.yaml b/Documentation/devicetree/bindings/arm/socionext/synquacer.yaml
> new file mode 100644
> index 000000000000..72554a4f1c92
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/arm/socionext/synquacer.yaml
> @@ -0,0 +1,28 @@
> +# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/arm/socionext/synquacer.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Socionext Synquacer platform
> +
> +maintainers:
> +  - Masahisa Kojima <masahisa.kojima@linaro.org>
> +  - Jassi Brar <jaswinder.singh@linaro.org>
> +
> +description:
> +  Socionext SC2A11B (Synquacer) SoC based boards
> +
> +properties:
> +  $nodename:
> +    const: '/'
> +  compatible:
> +    oneOf:
> +      - items:
> +          - enum:
> +              - socionext,developer-box
> +          - const: socionext,synquacer

Last compatible looks very generic. Too generic. Are you sure it
uniquely identifies one specific SoC (not family, not generation, not
series)?

Best regards,
Krzysztof

