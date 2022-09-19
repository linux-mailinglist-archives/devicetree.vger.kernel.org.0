Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 71C445BCA92
	for <lists+devicetree@lfdr.de>; Mon, 19 Sep 2022 13:20:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229800AbiISLU3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 19 Sep 2022 07:20:29 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36038 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229757AbiISLU2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 19 Sep 2022 07:20:28 -0400
Received: from mail-lj1-x232.google.com (mail-lj1-x232.google.com [IPv6:2a00:1450:4864:20::232])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D548B1707F
        for <devicetree@vger.kernel.org>; Mon, 19 Sep 2022 04:20:26 -0700 (PDT)
Received: by mail-lj1-x232.google.com with SMTP id x29so1207303ljq.2
        for <devicetree@vger.kernel.org>; Mon, 19 Sep 2022 04:20:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=n/0W8c1q8J/cih76l1ug8uifUR8LUzMkeNOIWoXxOrI=;
        b=Rx/bY/LIzNrHeN2/5NjlnfK22+VpyMmM/qPwOG7DBTRKUlnM4zUZYgK8ndJbrO+/7t
         g8lbsPvmotIWuYW4f9W5ixL+MiUIuFtUEGebH6ix4JllMDPECrk3xa0iNK6jaFv944Kv
         mHZSJ9DCfuA1njUZ/oh2D5PV4ph2NKtKomhXTQrAsX8yoXvhNoerxc3rClIplESdLbVA
         ulnSi1wZ5nyszDSCPQhslFVtR6yRTdzskv5OpSLjKCIorVL/TKXCEhmYYE3mClGKvift
         81kLelW0+8e/mJd0bn+DTamlOsgxfCCMJDx/yo6nSj3aeC2oy5PM+z7d6+BOeK9TJXg+
         eBcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=n/0W8c1q8J/cih76l1ug8uifUR8LUzMkeNOIWoXxOrI=;
        b=EVydwmvuwsO1PoSV9vxhaLDwOT8j6mO54bqf4b0o/0ifly/aACFk4foti0d4kiuKES
         lH9wHW+CpZuOms1dOYdn9PIgiAcxG9ZWEKlha+ZasRNBmV++paPaEnW2nb7NQVFBqcaN
         Csp73i7MKEsy/j7UqsP6GHnfOJREH6V6ngto9SrUbeB3ogQVEd/qd34TGkqZeLnm+0M1
         M3AltaGKvtfNT24EH7+scNE19i8T/sVblhnCPKQgjKvVHbXsZ4GHi/WcGb61wrQL3bOc
         kdB4iL1fkc3VPsATNo0L4ZUueYFd4vQ0J3wt9Kl8g42n4p+rlIffu+cV6pGS/Gz9JJEj
         uoMQ==
X-Gm-Message-State: ACrzQf2622GgbJ3x+Qw5Dbh4tKwZiwL+et+bOrudbmoYHs+BKE9VPp0c
        4NFqwcAB+4VYe+hQEsUL8SNDCdQFn/idMg==
X-Google-Smtp-Source: AMsMyM53yH+hacggEo5+9ijNO0NBCIwTCwsGU5NuueRwdX66f+T+r5Vt2xD/pc+lD8J7FOx6zeDVPw==
X-Received: by 2002:a2e:ba08:0:b0:26c:14d6:9b97 with SMTP id p8-20020a2eba08000000b0026c14d69b97mr5001352lja.222.1663586425210;
        Mon, 19 Sep 2022 04:20:25 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id x1-20020a056512078100b0049876c1bb24sm4796153lfr.225.2022.09.19.04.20.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 19 Sep 2022 04:20:24 -0700 (PDT)
Message-ID: <41c7a2a1-86b2-289b-8507-6f3d462aa1ed@linaro.org>
Date:   Mon, 19 Sep 2022 13:20:24 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Subject: Re: [PATCH v2 1/2] dt-bindings: i2c: migrate mt7621 text bindings to
 YAML
Content-Language: en-US
To:     Sergio Paracuellos <sergio.paracuellos@gmail.com>,
        devicetree@vger.kernel.org
Cc:     tsbogend@alpha.franken.de, robh+dt@kernel.org, krzk+dt@kernel.org,
        arinc.unal@arinc9.com, sr@denx.de
References: <20220917042721.527345-1-sergio.paracuellos@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220917042721.527345-1-sergio.paracuellos@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 17/09/2022 06:27, Sergio Paracuellos wrote:
> SoC MT7621 I2C bindings used text format, so migrate them to YAML.
> 
> Signed-off-by: Sergio Paracuellos <sergio.paracuellos@gmail.com>
> ---

Again, do not base your patches on something old.

> Changes in v2:
> - Maintain current maintainer Stefan Rose as listed in kernel MAINTAINERS file.
> 
>  .../devicetree/bindings/i2c/i2c-mt7621.txt    | 25 -------
>  .../bindings/i2c/mediatek,mt7621-i2c.yaml     | 68 +++++++++++++++++++
>  2 files changed, 68 insertions(+), 25 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/i2c/i2c-mt7621.txt
>  create mode 100644 Documentation/devicetree/bindings/i2c/mediatek,mt7621-i2c.yaml
> 
> diff --git a/Documentation/devicetree/bindings/i2c/i2c-mt7621.txt b/Documentation/devicetree/bindings/i2c/i2c-mt7621.txt
> deleted file mode 100644
> index bc36f0eb94cd..000000000000
> --- a/Documentation/devicetree/bindings/i2c/i2c-mt7621.txt
> +++ /dev/null
> @@ -1,25 +0,0 @@
> -MediaTek MT7621/MT7628 I2C master controller
> -
> -Required properties:
> -
> -- compatible: Should be one of the following:
> -  - "mediatek,mt7621-i2c": for MT7621/MT7628/MT7688 platforms
> -- #address-cells: should be 1.
> -- #size-cells: should be 0.
> -- reg: Address and length of the register set for the device
> -- resets: phandle to the reset controller asserting this device in
> -          reset
> -  See ../reset/reset.txt for details.
> -
> -Optional properties :
> -
> -Example:
> -
> -i2c: i2c@900 {
> -	compatible = "mediatek,mt7621-i2c";
> -	reg = <0x900 0x100>;
> -	#address-cells = <1>;
> -	#size-cells = <0>;
> -	resets = <&rstctrl 16>;
> -	reset-names = "i2c";
> -};
> diff --git a/Documentation/devicetree/bindings/i2c/mediatek,mt7621-i2c.yaml b/Documentation/devicetree/bindings/i2c/mediatek,mt7621-i2c.yaml
> new file mode 100644
> index 000000000000..8234f770f529
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/i2c/mediatek,mt7621-i2c.yaml
> @@ -0,0 +1,68 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/i2c/mediatek,mt7621-i2c.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +maintainers:
> +  - Stefan Roese <sr@denx.de>
> +
> +title: Mediatek MT7621/MT7628 I2C master controller
> +
> +allOf:
> +  - $ref: /schemas/i2c/i2c-controller.yaml#
> +
> +properties:
> +  compatible:
> +    const: mediatek,mt7621-i2c
> +
> +  reg:
> +    maxItems: 1
> +
> +  '#address-cells':
> +    const: 1

No need, comes from core schema.

> +
> +  '#size-cells':
> +    const: 0

No need

> +
> +  clocks:
> +    maxItems: 1
> +
> +  clock-names:
> +    const: i2c

Why adding this?

You need to describe in commit msg all deviations from pure conversion.

> +
> +  resets:
> +    maxItems: 1
> +
> +  reset-names:
> +    const: i2c


Why adding this?

> +
> +required:
> +  - compatible
> +  - reg
> +  - resets
> +  - reset-names

Why?

> +  - "#address-cells"
> +  - "#size-cells"

Use the same type of quote as in other places.

> +
> +unevaluatedProperties: false
> +

Best regards,
Krzysztof
