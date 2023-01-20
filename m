Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E4976674F3E
	for <lists+devicetree@lfdr.de>; Fri, 20 Jan 2023 09:16:37 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230380AbjATIQg (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 20 Jan 2023 03:16:36 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43082 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230196AbjATIQe (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 20 Jan 2023 03:16:34 -0500
Received: from mail-wm1-x333.google.com (mail-wm1-x333.google.com [IPv6:2a00:1450:4864:20::333])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 76092518DE
        for <devicetree@vger.kernel.org>; Fri, 20 Jan 2023 00:16:33 -0800 (PST)
Received: by mail-wm1-x333.google.com with SMTP id q8so3356820wmo.5
        for <devicetree@vger.kernel.org>; Fri, 20 Jan 2023 00:16:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=UjgOIKSmON8k0Z3S8qIZXmD8C2ogN7srfubgCdVAcH4=;
        b=FX9kTmTJdG108k60ND24glanePm9jDSat1f4xwBixoN/BV8GbnOAfpX7NPqD9SJCxl
         tGh//eOrPBiAGuaC4Ct5Vi0kE8CH01x+z+APvMgVeKUq6e5hkftHokBeDN5HovrlSZzo
         vhrn97ZnhPwaKpkw4hRfDz2VH1AMu7HyPYTpUwkDrPQhFDTPt5AV25bGQ18BGH4SqUqt
         80UKeVgwEEUEd62SoQngG4LyBv0zkkH676cXG0+91GkqUvce+7jl41bb8HHR22PkTcSm
         ROm1GEswnwuuYOnL3uOLpQwCD7pPp/5APmrcntVnj/Qp4f6srZmt1zg6ieb3vI+90wh5
         xTJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=UjgOIKSmON8k0Z3S8qIZXmD8C2ogN7srfubgCdVAcH4=;
        b=rU4NTMRSZWz4ZDnub2f9Pv1iujaaiGLFtpsYgtsMR/nkTNc8bH7etYJsD9VpCyKdrl
         rPtTSfJSUgSYODK/nqfB78RFKFASOlXUWcy+F4t/fp0mRO9HfK/trbL1w6q6zBuOpnWL
         1GlblMaWAFFl6j/L+aS0A0HWo4HrbSNiWVxxYlRXeKXc6Z1tIimKmSKXw6E/4cF+yjp0
         ApwHKrKaEkpYPFAWASd9TwisuoBuKM1n51E4Rsgp/wHMkGyiAqRAdDmljiGisssk9wLU
         e6SVbNB/ho0w9mr/Va+4V5GDfo0PaZnvhOQQhDvrp8kCiE/pplnXZHB3gKzz1j77rUaE
         9pTQ==
X-Gm-Message-State: AFqh2ko0jgcTAksGanNc4Pa6KRsBgrtAvkDAyrPQ457J+xSbPvIoO8Tu
        wfI0FQJDz0n/LjkK15IXvZ+oOg==
X-Google-Smtp-Source: AMrXdXuymrY4aYEWrXrMdmpFwiWFEp4uI0Gr5G1Ihqlzm/C+yFtWRGglo3QDhixqHXJlcctqjVguXQ==
X-Received: by 2002:a05:600c:3556:b0:3db:331b:bd2d with SMTP id i22-20020a05600c355600b003db331bbd2dmr1141721wmq.18.1674202592008;
        Fri, 20 Jan 2023 00:16:32 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id m37-20020a05600c3b2500b003daf681d05dsm1587829wms.26.2023.01.20.00.16.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 20 Jan 2023 00:16:31 -0800 (PST)
Message-ID: <9dccdc5b-9447-247f-a3f8-1dedb17822ec@linaro.org>
Date:   Fri, 20 Jan 2023 09:16:28 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.0
Subject: Re: [PATCH 1/2] dt-bindings: fsi: Document the IBM I2C Responder
 virtual FSI master
Content-Language: en-US
To:     Eddie James <eajames@linux.ibm.com>, linux-fsi@lists.ozlabs.org
Cc:     linux-kernel@vger.kernel.org, jk@ozlabs.org, joel@jms.id.au,
        alistair@popple.id.au, devicetree@vger.kernel.org,
        robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org
References: <20230119174714.1486042-1-eajames@linux.ibm.com>
 <20230119174714.1486042-2-eajames@linux.ibm.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230119174714.1486042-2-eajames@linux.ibm.com>
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

On 19/01/2023 18:47, Eddie James wrote:
> The I2C Responder translates I2C commands to CFAM or SCOM operations,
> effectively implementing an FSI master.
> 
> Signed-off-by: Eddie James <eajames@linux.ibm.com>
> ---
>  .../devicetree/bindings/fsi/ibm,i2cr.yaml     | 42 +++++++++++++++++++
>  1 file changed, 42 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/fsi/ibm,i2cr.yaml
> 
> diff --git a/Documentation/devicetree/bindings/fsi/ibm,i2cr.yaml b/Documentation/devicetree/bindings/fsi/ibm,i2cr.yaml
> new file mode 100644
> index 000000000000..929ca10988f9
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/fsi/ibm,i2cr.yaml
> @@ -0,0 +1,42 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/fsi/ibm,i2cr.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: IBM I2C Responder virtual FSI master
> +
> +maintainers:
> +  - Eddie James <eajames@linux.ibm.com>
> +
> +description: |
> +  This binding describes an I2C device called the I2C Responder (I2CR). The

In the binding, don't write description of the binding. In the binding,
write about the hardware. Rephrase it so the hardware is the subject.

> +  I2CR translates commands sent over I2C bus to FSI CFAM reads and writes or
> +  SCOM operations. The CFAM access means that the I2CR can act as an FSI
> +  master.
> +
> +properties:
> +  compatible:
> +    enum:
> +      - ibm,i2cr
> +
> +   reg:
> +    maxItems: 1

Does not look like you tested the bindings. Please run `make
dt_binding_check` (see
Documentation/devicetree/bindings/writing-schema.rst for instructions).

> +
> +required:
> +  - compatible
> +  - reg
> +
> +additionalProperties: false
> +
> +examples:
> + - |
> +    i2c {

Use 4 spaces for example indentation.

> +      #address-cells = <1>;
> +      #size-cells = <0>;
> +
> +      i2cr@20 {
> +        compatible = "ibm,i2cr";
> +        reg = <0x20>;
> +      };
> +    };

Best regards,
Krzysztof

