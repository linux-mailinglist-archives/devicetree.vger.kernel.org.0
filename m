Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6A1B56868CB
	for <lists+devicetree@lfdr.de>; Wed,  1 Feb 2023 15:46:44 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231893AbjBAOqn (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 1 Feb 2023 09:46:43 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48978 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232203AbjBAOqe (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 1 Feb 2023 09:46:34 -0500
Received: from mail-wr1-x42f.google.com (mail-wr1-x42f.google.com [IPv6:2a00:1450:4864:20::42f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3FC9465EE1
        for <devicetree@vger.kernel.org>; Wed,  1 Feb 2023 06:46:32 -0800 (PST)
Received: by mail-wr1-x42f.google.com with SMTP id h16so17512433wrz.12
        for <devicetree@vger.kernel.org>; Wed, 01 Feb 2023 06:46:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=vFO6Menks76/PjVM2v0FfpZTwomJcaT6TEjwJv8UGZQ=;
        b=Goi5q4N49AnrkFf7gHYniaDCl2Xlxnok0hTT6DCJ3o9v3j2h18Fx3RgC6i6w0QQn6l
         IHzM/KY+3/OMbzOe0+WH23E/gRrSpzRwcAWK8Egc7p36YRSsuqqjFutHT2QurY2CIhdP
         yOv9ULuXlAIfcqGEEixthSh1aGlPay6JM73R5GM+bc+xJg6Oj3wB6yG2tQZKz+0zEoMt
         90B1W9id5e6I6c/ds5edEQXLr13rFm5bfTzXMAaf+TsupT6xQxa1XvZFbRG4pWarsTVJ
         H4sZD4HRUWCOYL78gE4IXkiC4xefBbtWT7xtMCutagH8ywTgEBfFGvOqlTeYzwBWSrCX
         U2BA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=vFO6Menks76/PjVM2v0FfpZTwomJcaT6TEjwJv8UGZQ=;
        b=7lznxKn9RHCFQVgC5SYVCUxJoW4Scv1XxbrHInIfyh0P+GQofJdvMhuaVw+/UcuA41
         z5ZtlL2YvCdl6GnMkOFoW3kQQrkD+1JAAw+LNBgY7NOk0ONnepk8FpF56qPHpQbdzsjf
         Hif7Iy/xfVnRiSv/uEPmyDGyCbyKhQb9DPAvXgS2eKBlDpj4St5cvtOJmGGSN9tKaIsw
         whHN/vDr07DiGKOdHRezoAp1RqIb0WqYvHpRUH2RDp+0C7gFTpWBFYCkMvrNvuRyd9V7
         wo1LmggyiRErc8bR9Q0wSCrphuJfF6+BUrQ0nUhmej6pCsaSfViarWUeaEBNE+cBIop9
         fnag==
X-Gm-Message-State: AO0yUKV7BlJVIVjPOg22RHZoklE06uiIsYPX0h2dLfsYta63WkgdJavI
        GZBP5cnBJ9w2yzwJUHlRMQdXJg==
X-Google-Smtp-Source: AK7set+WJkY9Mi0KIQARoaUpO6AUsjE8m693dOPJRiIIX0qtHAB7nf9RwF9/xCEeIMPNxd/yeigXWw==
X-Received: by 2002:a5d:6b89:0:b0:2bf:ae2f:c6ff with SMTP id n9-20020a5d6b89000000b002bfae2fc6ffmr2607870wrx.31.1675262790727;
        Wed, 01 Feb 2023 06:46:30 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id f12-20020adfdb4c000000b002bfb1de74absm17460688wrj.114.2023.02.01.06.46.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 01 Feb 2023 06:46:30 -0800 (PST)
Message-ID: <530a96ba-d820-4970-17e6-94aa696bef5e@linaro.org>
Date:   Wed, 1 Feb 2023 15:46:28 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Subject: Re: [PATCH v4 1/5] dt-bindings: regulator: Add ADI MAX77541/MAX77540
 Regulator
Content-Language: en-US
To:     Okan Sahin <okan.sahin@analog.com>
Cc:     Lee Jones <lee@kernel.org>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>,
        Jonathan Cameron <jic23@kernel.org>,
        Lars-Peter Clausen <lars@metafoo.de>,
        Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
        Ramona Bolboaca <ramona.bolboaca@analog.com>,
        Marcelo Schmitt <marcelo.schmitt1@gmail.com>,
        Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>,
        Marcus Folkesson <marcus.folkesson@gmail.com>,
        Caleb Connolly <caleb.connolly@linaro.org>,
        William Breathitt Gray <william.gray@linaro.org>,
        ChiYuan Huang <cy_huang@richtek.com>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-iio@vger.kernel.org
References: <20230201103534.108136-1-okan.sahin@analog.com>
 <20230201103534.108136-2-okan.sahin@analog.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230201103534.108136-2-okan.sahin@analog.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 01/02/2023 11:35, Okan Sahin wrote:
> Add ADI MAX77541/MAX77540 Regulator devicetree document.
> 
> Signed-off-by: Okan Sahin <okan.sahin@analog.com>
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---
>  .../regulator/adi,max77541-regulator.yaml     | 44 +++++++++++++++++++
>  1 file changed, 44 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/regulator/adi,max77541-regulator.yaml
> 
> diff --git a/Documentation/devicetree/bindings/regulator/adi,max77541-regulator.yaml b/Documentation/devicetree/bindings/regulator/adi,max77541-regulator.yaml
> new file mode 100644
> index 000000000000..fff463d5e79d
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/regulator/adi,max77541-regulator.yaml
> @@ -0,0 +1,44 @@
> +# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/regulator/adi,max77541-regulator.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Buck Converter for MAX77540/MAX77541
> +
> +maintainers:
> +  - Okan Sahin <okan.sahin@analog.com>
> +
> +description: |
> +  This is a part of device tree bindings for ADI MAX77540/MAX77541
> +
> +  The buck converter is represented as a sub-node of the PMIC node on the device tree.
> +
> +  The device has two buck regulators.
> +  See also Documentation/devicetree/bindings/mfd/adi,max77541.yaml for
> +  additional information and example.
> +
> +properties:
> +  compatible:
> +    enum:
> +      - adi,max77540-regulator
> +      - adi,max77541-regulator

Why do need the compatible? I don't see any usage of it in the driver
(empty driver data).

Best regards,
Krzysztof

