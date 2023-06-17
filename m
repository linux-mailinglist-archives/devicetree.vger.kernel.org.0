Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 26FD1733FC4
	for <lists+devicetree@lfdr.de>; Sat, 17 Jun 2023 10:55:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229667AbjFQIzo (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 17 Jun 2023 04:55:44 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40058 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229597AbjFQIzn (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 17 Jun 2023 04:55:43 -0400
Received: from mail-ed1-x52d.google.com (mail-ed1-x52d.google.com [IPv6:2a00:1450:4864:20::52d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5F5D5E76
        for <devicetree@vger.kernel.org>; Sat, 17 Jun 2023 01:55:42 -0700 (PDT)
Received: by mail-ed1-x52d.google.com with SMTP id 4fb4d7f45d1cf-51a270e4d57so2245486a12.3
        for <devicetree@vger.kernel.org>; Sat, 17 Jun 2023 01:55:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1686992141; x=1689584141;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=K6Tb4xMKEqxuJiYeqUW+S0/SqCS3tOAVF1bVLma2/Ik=;
        b=b1YwTFCsSodLvxgb0yw0je9hhTb90gvoxFBhmxTOohzodJcuChPDajtbgbJbLaCJSs
         4nWVR3oXd7TDnZF73a1oXz09nl0lsaa+THv4L7heYYsvp6G2RVaoVqiP7ftp+AMaEbCY
         lA4//Oc91uWQMMBWcAmp714YaoMrNFaIh0ukNeSevjTFZcRaztMqgKwFxyF0snYzjVJ+
         +AOu2hSes3Zr9oKiu/KQX6QXcSpSzWqlIkUUFi0Sj/x8qVF1OtfFME3IIp9bsv266+Sx
         UVxVpWdlFny2jLyNhO3bCxlggDTPE9WjGXr7pHbHXXPUy7O0z5Sa7xvz8NxBW16wc7a7
         601A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686992141; x=1689584141;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=K6Tb4xMKEqxuJiYeqUW+S0/SqCS3tOAVF1bVLma2/Ik=;
        b=UFMDi2oTjbPf01+kFsp8nAb/8iaxxMdc1GVM5fEBit8ZYVQNxUO4c8VS6Od6a12dnj
         0kjEnMGPzYOXQ0B5IvRsEvSLi1Ih/a9xroLBbmGj5U27xoR0Fz8CUdQluO3Uzu8B4Btr
         us57sbWCARx2CRq7dnsDFvuCvKooBpmJtSglIg9WSQ1p+WAR5y6qibbu1q5F250kuKJH
         pVy8I+MoitftsauNhck/d11+htFDZUMLd7m/f8bliJuEVpnWwDqVB+Or5jbQa42sh8yA
         6RBs3Frl28IfALnPmjAETU6QsoiaeGQ/knVSVgRSdBhRJYLGKG9xDJruJYLNotTDNfhk
         BRIw==
X-Gm-Message-State: AC+VfDy9r8PV8MUVfY5jrH5zpX2lNARbIABibq1mx1we477YL3IfJqmW
        zdYT1vXZJw8ecROb3jEHUqoubw==
X-Google-Smtp-Source: ACHHUZ4NHXk3vUGzfFX18LpDcHc9GnaVeQYe7p0SBFJjMbh/lXB/Dql47mUam0Fbl2vaQ8K1WG/B7g==
X-Received: by 2002:a05:6402:1501:b0:51a:42aa:e07e with SMTP id f1-20020a056402150100b0051a42aae07emr1532556edw.42.1686992140872;
        Sat, 17 Jun 2023 01:55:40 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.219.26])
        by smtp.gmail.com with ESMTPSA id b24-20020a056402139800b0051827a12b47sm8661829edv.15.2023.06.17.01.55.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 17 Jun 2023 01:55:40 -0700 (PDT)
Message-ID: <07a6766e-7e2b-22fa-6f20-3a8ab7019635@linaro.org>
Date:   Sat, 17 Jun 2023 10:55:38 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
Subject: Re: [PATCH 1/2] dt-bindings: iio: proximity: Add bindings for Murata
 IRS-D200
Content-Language: en-US
To:     Waqar Hameed <waqar.hameed@axis.com>,
        Jonathan Cameron <jic23@kernel.org>,
        Lars-Peter Clausen <lars@metafoo.de>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc:     linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, kernel@axis.com
References: <cover.1686926857.git.waqarh@axis.com>
 <9487391b0565434761055b39ba04900bd839580a.1686926857.git.waqarh@axis.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <9487391b0565434761055b39ba04900bd839580a.1686926857.git.waqarh@axis.com>
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

On 16/06/2023 17:10, Waqar Hameed wrote:
> Murata IRS-D200 is a PIR sensor for human detection. It uses the I2C bus
> for communication with interrupt support. Add devicetree bindings
> requiring the compatible string, I2C slave address (reg) and interrupts.

Thank you for your patch. There is something to discuss/improve. I have
actually only remark about DTS example, but since I expect resend two
more nits as well.


A nit, subject: drop second/last, redundant "bindings for". The
"dt-bindings" prefix is already stating that these are bindings.

> 
> Signed-off-by: Waqar Hameed <waqar.hameed@axis.com>
> ---
>  .../iio/proximity/murata,irsd200.yaml         | 54 +++++++++++++++++++
>  1 file changed, 54 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/iio/proximity/murata,irsd200.yaml
> 
> diff --git a/Documentation/devicetree/bindings/iio/proximity/murata,irsd200.yaml b/Documentation/devicetree/bindings/iio/proximity/murata,irsd200.yaml
> new file mode 100644
> index 000000000000..d317fbe7bd50
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/iio/proximity/murata,irsd200.yaml
> @@ -0,0 +1,54 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/iio/proximity/murata,irsd200.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Murata IRS-D200 PIR sensor
> +
> +maintainers:
> +  - Waqar Hameed <waqar.hameed@axis.com>
> +
> +description: |

Nit, do not need '|' unless you need to preserve formatting.

> +  PIR sensor for human detection.
> +
> +properties:
> +  compatible:
> +    const: murata,irsd200
> +
> +  reg:
> +    items:
> +      - enum:
> +          - 0x48
> +          - 0x49
> +        description: |
> +          When the AD pin is connected to GND, the slave address is 0x48.
> +          When the AD pin is connected to VDD, the slave address is 0x49.
> +
> +  interrupts:
> +    maxItems: 1
> +    description:
> +      Type should be IRQ_TYPE_EDGE_RISING.
> +
> +required:
> +  - compatible
> +  - reg
> +  - interrupts
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/interrupt-controller/irq.h>
> +
> +    i2c {
> +        #address-cells = <1>;
> +        #size-cells = <0>;
> +
> +        pir@48 {

Node names should be generic. See also explanation and list of examples
in DT specification:
https://devicetree-specification.readthedocs.io/en/latest/chapter2-devicetree-basics.html#generic-names-recommendation

so I guess: proximity@?


Best regards,
Krzysztof

