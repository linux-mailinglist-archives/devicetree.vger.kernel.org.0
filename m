Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 29F475714E9
	for <lists+devicetree@lfdr.de>; Tue, 12 Jul 2022 10:42:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232263AbiGLIm4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 12 Jul 2022 04:42:56 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44344 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232254AbiGLImv (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 12 Jul 2022 04:42:51 -0400
Received: from mail-lf1-x134.google.com (mail-lf1-x134.google.com [IPv6:2a00:1450:4864:20::134])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 71FDDA5E77
        for <devicetree@vger.kernel.org>; Tue, 12 Jul 2022 01:42:50 -0700 (PDT)
Received: by mail-lf1-x134.google.com with SMTP id u13so12772424lfn.5
        for <devicetree@vger.kernel.org>; Tue, 12 Jul 2022 01:42:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=beH/rg/vfB+Yd9R/ZZN+HNd6fMmwTTRKCdj3qxzIlfw=;
        b=GUOcZRDeJq7SuRAbLTR5dTQL/L2f6miqFoSHCX4KDoodgtL270sNff1V+yvO8IFApl
         kMEovUjRNw4KZlCPuZbB5MercZlupfI4VW1u4loKgkm5TbgtqGIanbocEVmeRZeD1mtH
         jShb0iJnYSOpmCHoSP0cgmO2yAbZaL2Glza21F2siIzojGJvgxdFw7q7bEWsSA34DKFK
         Dtg9j5IzA8BPN4NaLFhwuvr7JXmSnX6MDFJPSQz35ncezYeTnPSIH60Xvk5d4mMquaRc
         lwGuY6dnKmMvA1Wxh1eAuMo2Oezs2YtjVnBdedA6Bp8dKxbw0CqfsHWZdO7N2CacS+nS
         TavQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=beH/rg/vfB+Yd9R/ZZN+HNd6fMmwTTRKCdj3qxzIlfw=;
        b=JS9aJIPVjzSvV7taBMDoA+p9wYRBz/IuaSKD6NyeSmlOeCe1R8wQJFAgl98CsZ6Ggi
         jum8+0cAnguP1SLgje8gbXuKePOQMOqNgUznWUruI4LgXBp1VH7BnD4bD9BwNjZcUpt6
         CMVA8+K7JadNQ5RlFpwqdaV7s+dnmy9aFMESdFqn3uSNHMhoycLAher8v/AfRfm4xnWZ
         Qqcv58lgPC1h26XD+bkR6k5DqF21EhPr2NtbeAa+JrM/dm0Kea6DZYtdzLipUG0Mkw9Y
         YR74WDNtc83hhUbODAW0GIkXiis2Nazt5P6/37y6uHc6Db6h49avGZnkGUBY6c0i/Bff
         /QrA==
X-Gm-Message-State: AJIora8lO68oZTA7Mco5/zBZYneRUk0gvqjW25S67GddhwDy4UDnC0+X
        xlj3XcVJgZPAkTXjIwtFymEScQ==
X-Google-Smtp-Source: AGRyM1sI2eIEo4Bwc0oYhOPsU94ZRQCA0G+Z66pXFLubJDzxUZkVGSP9W+OSBkXqr6pURGtafmmu0Q==
X-Received: by 2002:a05:6512:2823:b0:485:6312:2a07 with SMTP id cf35-20020a056512282300b0048563122a07mr14123734lfb.525.1657615368769;
        Tue, 12 Jul 2022 01:42:48 -0700 (PDT)
Received: from [10.0.0.8] (fwa5cab-55.bb.online.no. [88.92.171.55])
        by smtp.gmail.com with ESMTPSA id g18-20020a2eb5d2000000b0025c068f123dsm2287413ljn.30.2022.07.12.01.42.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 12 Jul 2022 01:42:48 -0700 (PDT)
Message-ID: <403ba7a3-7e3d-4daa-6c14-d8bb4a3d6087@linaro.org>
Date:   Tue, 12 Jul 2022 10:42:45 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [PATCH v2 1/4] dt-bindings: usb: typec: add bindings for stm32g0
 controller
Content-Language: en-US
To:     Fabrice Gasnier <fabrice.gasnier@foss.st.com>,
        krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org,
        heikki.krogerus@linux.intel.com, gregkh@linuxfoundation.org
Cc:     christophe.jaillet@wanadoo.fr, devicetree@vger.kernel.org,
        linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-stm32@st-md-mailman.stormreply.com,
        amelie.delaunay@foss.st.com, alexandre.torgue@foss.st.com
References: <20220711120122.25804-1-fabrice.gasnier@foss.st.com>
 <20220711120122.25804-2-fabrice.gasnier@foss.st.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220711120122.25804-2-fabrice.gasnier@foss.st.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 11/07/2022 14:01, Fabrice Gasnier wrote:
> Add DT schema documentation for the STM32G0 Type-C PD (Power Delivery)
> controller.
> STM32G0 provides an integrated USB Type-C and power delivery interface.
> It can be programmed with a firmware to handle UCSI protocol over I2C
> interface. A GPIO is used as an interrupt line.
> It may be used as a wakeup source, so use optional "wakeup-source" and
> "power-domains" properties to support wakeup.
> 
> Signed-off-by: Fabrice Gasnier <fabrice.gasnier@foss.st.com>

Thank you for your patch. There is something to discuss/improve.

> ---
> Changes in v2:
> - Krzysztof's review comments: update commit message, use ports, use
>   unevaluatedProperties: false for usb-connector schema, define maxItems
>   for power-domains, adopt generic node names, remove quotes
> ---
>  .../bindings/usb/st,typec-stm32g0.yaml        | 90 +++++++++++++++++++
>  1 file changed, 90 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/usb/st,typec-stm32g0.yaml
> 
> diff --git a/Documentation/devicetree/bindings/usb/st,typec-stm32g0.yaml b/Documentation/devicetree/bindings/usb/st,typec-stm32g0.yaml
> new file mode 100644
> index 0000000000000..7b3a2c2124e38
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/usb/st,typec-stm32g0.yaml
> @@ -0,0 +1,90 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/usb/st,typec-stm32g0.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: STMicroelectronics STM32G0 USB Type-C PD controller
> +
> +description: |
> +  The STM32G0 MCU can be programmed to control Type-C connector(s) through I2C
> +  typically using the UCSI protocol over I2C, with a dedicated alert
> +  (interrupt) pin.
> +
> +maintainers:
> +  - Fabrice Gasnier <fabrice.gasnier@foss.st.com>
> +
> +properties:
> +  compatible:
> +    const: st,stm32g0-typec
> +
> +  reg:
> +    maxItems: 1
> +
> +  interrupts:
> +    maxItems: 1
> +
> +  connector:
> +    type: object
> +    $ref: /schemas/connector/usb-connector.yaml#
> +    unevaluatedProperties: false
> +
> +  firmware-name:
> +    description: |
> +      Should contain the name of the default firmware image
> +      file located on the firmware search path
> +
> +  wakeup-source: true
> +
> +  power-domains:
> +    maxItems: 1
> +
> +required:
> +  - compatible
> +  - reg
> +  - interrupts

Isn't connector a required property? I would assume the device does not
make much sense to operate without it.

What about firmware-name? Do you expect hardware to work fine without it
(default firmware?)?


Best regards,
Krzysztof
