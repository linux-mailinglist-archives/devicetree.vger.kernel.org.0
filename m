Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5EAAA6CFD8E
	for <lists+devicetree@lfdr.de>; Thu, 30 Mar 2023 10:00:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229972AbjC3IAp (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 30 Mar 2023 04:00:45 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37302 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229930AbjC3IAo (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 30 Mar 2023 04:00:44 -0400
Received: from mail-lj1-x230.google.com (mail-lj1-x230.google.com [IPv6:2a00:1450:4864:20::230])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7EC571708
        for <devicetree@vger.kernel.org>; Thu, 30 Mar 2023 01:00:43 -0700 (PDT)
Received: by mail-lj1-x230.google.com with SMTP id x20so18695398ljq.9
        for <devicetree@vger.kernel.org>; Thu, 30 Mar 2023 01:00:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1680163242;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=UCXqykby8X/tl5h21vtaDyXKQvYghY/9t0bakulrVps=;
        b=bgLKba6nlOaiPDuVTpaGm6/l+URd9XzaayQuh+SB7f4ZLhh6O2BqmKNncjYe9qsgJ+
         gXZjTLBW8O+nATp2AZo3Fcj4aoD7jEn6x2kzpt8kDnxif14FnjB3R7zB57SD1zYNqH/a
         Za78+teMToROYI1ESBFOv2I6AnqTEJR/xHDKkQT1xVTQadDNAK1sS9+5VwgM1FVZZn3X
         u7EkSfsh0Zh8djElwenEml8f+oh9t+RoblKAuYG2WROYSy/F520FrmU1IPeLW05B9nJb
         d88p6B7+QQyFQXWXu1OzFAkH2BU773qX+Gt6PGvczAHDsARC6/XFr3qVjIdvfBEU6UpM
         zjDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680163242;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=UCXqykby8X/tl5h21vtaDyXKQvYghY/9t0bakulrVps=;
        b=nDyuMDUKW/yaMSR/fEsRxjw0PlPIpMgkMeS1P5WWKwHAYlv7CdMuYyco+cdJHcZFR5
         HWCNLpQZ0DjQY4dQKxuiR9rQLeVZQx0lQ3+EXcr6K1maRcPc6vKggsfA/c3xDVpRZqME
         H9cNwOReq/2Yxsx8HiC9y3B7kKKZ4791CEWKSAlbH/uqqs17rv99hGOh+MxHP05gVoVq
         7J8alL0OIpHmqglALvswc5ML3zUSeTYB0DXzZV5RFYOTy/pbnFJZfnrD7uSggtSiDtsi
         q7i6xl11nDW2xZm+lHCeFNRKRzdGqU5PL5lm4Kl1/k2ifpHGfnYg1gPF93n9+oLDX/yw
         vAoQ==
X-Gm-Message-State: AAQBX9cfZ3/97ovkTUViG3DYlZc0ljCuhGGbDAJs6XwsJpNSDSsch0QO
        1bi4znj6A2KvjYU/SjBDmZSIDQ==
X-Google-Smtp-Source: AKy350YZXpl4ZSBECyvaIS1VGyO/P1SK3601QviNmQb4rz3HxRu6lXPhZLI5GSPCpUibhNe49dYz3g==
X-Received: by 2002:a2e:87ca:0:b0:2a1:8a96:d5c with SMTP id v10-20020a2e87ca000000b002a18a960d5cmr7516879ljj.9.1680163241728;
        Thu, 30 Mar 2023 01:00:41 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id l22-20020a2e8356000000b0029e967c1dfesm4236840ljh.8.2023.03.30.01.00.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 30 Mar 2023 01:00:41 -0700 (PDT)
Message-ID: <250dd9d8-7592-6ebd-e63f-98ae5aad542c@linaro.org>
Date:   Thu, 30 Mar 2023 10:00:40 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [PATCH v3 1/2] dt-bindings: nvmem: Add nxp,qoriq-efuse
Content-Language: en-US
To:     Richard Alpe <richard@bit42.se>, srinivas.kandagatla@linaro.org,
        robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org
Cc:     devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        niklas.soderlund+renesas@ragnatech.se
References: <20230328082701.2569114-1-richard@bit42.se>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230328082701.2569114-1-richard@bit42.se>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-0.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 28/03/2023 10:27, Richard Alpe wrote:
> Add a schema for the NVMEM eFuse (SFP) layout on the NXP QorIQ SOC.
> 
> Signed-off-by: Richard Alpe <richard@bit42.se>
> ---
>  .../bindings/nvmem/nxp,qoriq-efuse.yaml       | 40 +++++++++++++++++++
>  1 file changed, 40 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/nvmem/nxp,qoriq-efuse.yaml

Filename matching compatible.
> 
> diff --git a/Documentation/devicetree/bindings/nvmem/nxp,qoriq-efuse.yaml b/Documentation/devicetree/bindings/nvmem/nxp,qoriq-efuse.yaml
> new file mode 100644
> index 000000000000..e1d4d3849519
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/nvmem/nxp,qoriq-efuse.yaml
> @@ -0,0 +1,40 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/nvmem/nxp,qoriq-efuse.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: NXP QorIQ eFuse support
> +
> +maintainers:
> +  - Richard Alpe <richard@bit42.se>
> +
> +description: |

Do not need '|'.

> +  Read support for the eFuses (SFP) on NXP QorIQ series SoC's.
> +
> +allOf:
> +  - $ref: "nvmem.yaml#"

Drop quotes.

> +
> +properties:
> +  compatible:
> +    oneOf:

Drop oneOf, no need for it. You can put description as comment.

> +      - description: Trust architecture 2.0
> +        items:

One items, so no need for "items:"

> +          - const: fsl,t1023-sfp
> +
> +  reg:
> +    maxItems: 1
> +
> +required:
> +  - compatible
> +  - reg
> +
> +unevaluatedProperties: false
> +
> +examples:
> +  - |
> +    efuse@e8000 {
> +        compatible = "fsl,t1023-sfp";
> +        reg = <0xe8000 0x1000>;
> +    };
> +...

Best regards,
Krzysztof

