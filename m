Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D77676D4089
	for <lists+devicetree@lfdr.de>; Mon,  3 Apr 2023 11:27:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232023AbjDCJ1S (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 3 Apr 2023 05:27:18 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56284 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231706AbjDCJ1R (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 3 Apr 2023 05:27:17 -0400
Received: from mail-ed1-x52d.google.com (mail-ed1-x52d.google.com [IPv6:2a00:1450:4864:20::52d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C4D5619B4
        for <devicetree@vger.kernel.org>; Mon,  3 Apr 2023 02:27:13 -0700 (PDT)
Received: by mail-ed1-x52d.google.com with SMTP id eg48so114541971edb.13
        for <devicetree@vger.kernel.org>; Mon, 03 Apr 2023 02:27:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1680514032;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=F4b4SRkNTi7aA5RsxyjabtzrbkWgqLGc4UDFk49yWJY=;
        b=xpMiEKFLNWeVcJLmzCya3bu5xzEbzDHDzrNVV5vS8tFY9ajwv6cWY2A2UNVMjNkX7v
         GXlue/uNn7km52Ykla9DqAloLPmTZFa6ZqY5d45OGwmeXAwmIJ+omcBTcw0BHcAi+w1c
         CAMldgQIJ9FWw4xX+Kh+/dXRa3GlUmQDiSvSYUxsrx2pgjiGSIPkOCPrG8T/+U6Xyj63
         7owdBrrqg37u2wifAX6kZcch85VBEuk3SVKvE43l0N27TMiCgDOLLwErA4Erf9ep8Q3E
         gGchMXZp2n5f8knEkmXbdOuAyMAbkl7Rnnen2c7vRm9ihCMjD1l9CSPadBfctaJB71Tk
         dyGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680514032;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=F4b4SRkNTi7aA5RsxyjabtzrbkWgqLGc4UDFk49yWJY=;
        b=1a+NRjBJlBiB9GwC5jrZE2zbRPIB1HdPNIxXZuT+7gernIQKmAZsnOXisqwibVftTm
         C2i4IAJhE+Fz/nzKVsK9odu4JvRpV8JnMg3eUv2J1a0M7mHrtT+So4oAo7zVqAH1rzDk
         PDCU2tE7ItfAMCAD8wFalIfjRhh2B/z8qsaQLHc4OkSi19MYt+LDVILDToEwnwctN0Lb
         +qjZAN402jHY4qNBI5KUL6zY/Yl6AndUtWrhPfaBVkKwSGes5Zs3oU1kGK/aHs/Nq7aR
         hPQE+NhH7AJRhcOoOXKMzL4+vImZrEeTlSkPLj6PrsEHeIPnLoIsXsXyDuw8D7T+LKus
         Q2qA==
X-Gm-Message-State: AAQBX9fb4j5jd6O8qRAHVWIA28Pt02r976/PwPmW8dTrGKEPgStNTkKR
        DfJkxWTh+Uq7oogJF6DyTyMDiw==
X-Google-Smtp-Source: AKy350bwqQI0MXRnlC4S/ng3F4h1DZplWCGvZ3xcBVTSjsNaTfLgISLMjdnlhoXc2HzPAXCKvrD5fw==
X-Received: by 2002:a17:907:8d04:b0:947:d43f:8f06 with SMTP id tc4-20020a1709078d0400b00947d43f8f06mr8329489ejc.27.1680514032224;
        Mon, 03 Apr 2023 02:27:12 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:ae90:d80:1069:4805? ([2a02:810d:15c0:828:ae90:d80:1069:4805])
        by smtp.gmail.com with ESMTPSA id y18-20020a170906525200b0093f322187f0sm4253210ejm.189.2023.04.03.02.27.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 03 Apr 2023 02:27:11 -0700 (PDT)
Message-ID: <9acb38db-bdef-bfc0-5de0-c248d45714ae@linaro.org>
Date:   Mon, 3 Apr 2023 11:27:10 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [PATCH] ASoC: dt-bindings: wm8510: Convert to dtschema
Content-Language: en-US
To:     Saalim Quadri <danascape@gmail.com>, lgirdwood@gmail.com,
        broonie@kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org
Cc:     patches@opensource.cirrus.com, alsa-devel@alsa-project.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20230402205719.6728-1-danascape@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230402205719.6728-1-danascape@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-1.5 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 02/04/2023 22:57, Saalim Quadri wrote:
> Convert the WM8510 audio CODEC bindings to DT schema
> 
> Signed-off-by: Saalim Quadri <danascape@gmail.com>
> ---
>  .../devicetree/bindings/sound/wlf,wm8510.yaml | 39 +++++++++++++++++++
>  .../devicetree/bindings/sound/wm8510.txt      | 18 ---------
>  2 files changed, 39 insertions(+), 18 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/sound/wlf,wm8510.yaml
>  delete mode 100644 Documentation/devicetree/bindings/sound/wm8510.txt
> 
> diff --git a/Documentation/devicetree/bindings/sound/wlf,wm8510.yaml b/Documentation/devicetree/bindings/sound/wlf,wm8510.yaml
> new file mode 100644
> index 000000000000..f45dad0fbef3
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/sound/wlf,wm8510.yaml
> @@ -0,0 +1,39 @@
> +# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/sound/wlf,wm8510.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: WM8510 audio CODEC
> +
> +description: |
> +  These devices support both I2C and SPI (configured with pin strapping
> +  on the board).
> +
> +maintainers:
> +  - Mark Brown <broonie@kernel.org>

This should be rather someone from Cirrus or their regular contact -
patches@opensource.cirrus.com.

Also missing $ref to dai-common.yaml

> +
> +properties:
> +  compatible:
> +    const: wlf,wm8510
> +
> +  reg:
> +    description:
> +      The I2C address of the device for I2C, the chip select number for SPI

Drop description, it is obvious.

> +    maxItems: 1

sound-dai-cells with const:0

> +
> +additionalProperties: false

This goes after required. Look at example-schema. Anyway this should be
unevaluatedProperties: false, after adding the $ref.

> +
> +required:

Missing compatible.

> +  - reg
> +
> +examples:
> +  - |
> +    i2c {
> +        #address-cells = <1>;
> +        #size-cells = <0>;
> +        codec@1a {
> +            compatible = "wlf,wm8510";
> +            reg = <0x1a>;
> +        };
> +    };
> diff --git a/Documentation/devicetree/bindings/sound/wm8510.txt b/Documentation/devicetree/bindings/sound/wm8510.txt
> deleted file mode 100644
> index e6b6cc041f89..000000000000
> --- a/Documentation/devicetree/bindings/sound/wm8510.txt
> +++ /dev/null
> @@ -1,18 +0,0 @@
> -WM8510 audio CODEC
> -
> -This device supports both I2C and SPI (configured with pin strapping
> -on the board).
> -
> -Required properties:
> -
> -  - compatible : "wlf,wm8510"
> -
> -  - reg : the I2C address of the device for I2C, the chip select
> -          number for SPI.
> -
> -Example:
> -
> -wm8510: codec@1a {
> -	compatible = "wlf,wm8510";
> -	reg = <0x1a>;
> -};

Best regards,
Krzysztof

