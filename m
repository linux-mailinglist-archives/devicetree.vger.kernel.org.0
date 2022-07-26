Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 97A8E5818C8
	for <lists+devicetree@lfdr.de>; Tue, 26 Jul 2022 19:45:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239531AbiGZRpz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 26 Jul 2022 13:45:55 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40740 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230358AbiGZRpx (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 26 Jul 2022 13:45:53 -0400
Received: from mail-lf1-x12b.google.com (mail-lf1-x12b.google.com [IPv6:2a00:1450:4864:20::12b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AFE6E5F6A
        for <devicetree@vger.kernel.org>; Tue, 26 Jul 2022 10:45:52 -0700 (PDT)
Received: by mail-lf1-x12b.google.com with SMTP id t22so17334344lfg.1
        for <devicetree@vger.kernel.org>; Tue, 26 Jul 2022 10:45:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=QECYKSzYkuea/3Pfb/dpXBhCrMlp6nrF9yAysWXv3o0=;
        b=N6l6lfOZzY0B0seKfySNA/0g76EpG/bBRz2ZKQwRKIFjuPns7esbQ+Eet1D1mH6g28
         2jMZfnTmQMDUW+nO+wT+VCnrSyBydWHQYZ4GV75UoDtuMxe0fwmqgma1z4CGHl5g0pvu
         ODdlNNECeHFAYpl4QjDhZtgafzNxIo4F+y8z7v/PGWjS3sCPsa2Ys0QP4SD1f1hDUp1U
         AYc7y4TMNBqptdJzv71jBKnkXeckbtFefjY4LqPxN7NoFbueJ3KxxwDDMjB9qiwo0Cwp
         EaH5AtOpbyvGAUjSju60F20o/39Aw4BYlDWTNsWKDaJwiYJYa3nfhIoCOtYs/7Pc3+vY
         qmcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=QECYKSzYkuea/3Pfb/dpXBhCrMlp6nrF9yAysWXv3o0=;
        b=XnxSlBnmfNDgfUlM8k/QWmt0HCV/KwNyFMAT0xwejvLro/8+Jjc+GuwSaNvOFvxqOq
         q5MFaGdx2Z8ZqRqReZSNeQAxS+ejULGc+7uX7ao8EL1dLYefp21sdtPPpdul3wNOOejD
         0vVBmYnV4Zg1A85Nz/WqJ6hmz5EsorSFKxrsuVin3dlk15hlNruJtiPqv09WzqdSrnjN
         vUHEDz/w2dgcO9CflHHipHQovmWw+CmIYkLB0g/qqDdIdKq3SbnaSRAOXxOtY3AChbet
         ePl4TJyQlcD5UjPXfO7r66Rwufkv5dLA5Durfu7Y9Tyf7BFoFIk0aY/ExOPCGJbJBuxd
         rtEg==
X-Gm-Message-State: AJIora+JSmoROqOqiMe2tmb79NMUGE6xTNdtkTlUwgW57wkC6g/2P5Iu
        yYsJOZPUBjQWKolOmdHNuUI+NQ==
X-Google-Smtp-Source: AGRyM1uXM92/frn4dVKn0cvI5GHPAohzcV6vr/60+/ssbW+4tHt+/S7KwWmvHPAK4WlmLBf7n726jA==
X-Received: by 2002:a05:6512:12d5:b0:48a:1cd7:127a with SMTP id p21-20020a05651212d500b0048a1cd7127amr7042951lfg.577.1658857551058;
        Tue, 26 Jul 2022 10:45:51 -0700 (PDT)
Received: from [192.168.3.197] (78-26-46-173.network.trollfjord.no. [78.26.46.173])
        by smtp.gmail.com with ESMTPSA id t17-20020a19dc11000000b00489d7fec4f5sm3314456lfg.122.2022.07.26.10.45.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 26 Jul 2022 10:45:50 -0700 (PDT)
Message-ID: <63aa88a9-323b-20c0-5349-1b1011c566f8@linaro.org>
Date:   Tue, 26 Jul 2022 19:45:49 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Subject: Re: [PATCH V6 1/2] dt-bindings: mfd: sprd: Add bindings for ums512
 global registers
Content-Language: en-US
To:     Cixi Geng <gengcixi@gmail.com>, lee.jones@linaro.org,
        robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        orsonzhai@gmail.com, baolin.wang7@gmail.com, zhang.lyra@gmail.com,
        mturquette@baylibre.com, sboyd@kernel.org
Cc:     devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-clk@vger.kernel.org
References: <20220726102404.564498-1-gengcixi@gmail.com>
 <20220726102404.564498-2-gengcixi@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220726102404.564498-2-gengcixi@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 26/07/2022 12:24, Cixi Geng wrote:
> From: Chunyan Zhang <chunyan.zhang@unisoc.com>
> 
> Add bindings for Unisoc system global register which provide register map
> for clocks.
> 
> Signed-off-by: Chunyan Zhang <chunyan.zhang@unisoc.com>
> Signed-off-by: Cixi Geng <cixi.geng1@unisoc.com>
> Reviewed-by: Rob Herring <robh@kernel.org>
> ---
>  .../bindings/mfd/sprd,ums512-glbreg.yaml      | 68 +++++++++++++++++++
>  1 file changed, 68 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/mfd/sprd,ums512-glbreg.yaml
> 
> diff --git a/Documentation/devicetree/bindings/mfd/sprd,ums512-glbreg.yaml b/Documentation/devicetree/bindings/mfd/sprd,ums512-glbreg.yaml
> new file mode 100644
> index 000000000000..416f94a09c27
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/mfd/sprd,ums512-glbreg.yaml
> @@ -0,0 +1,68 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +# Copyright 2022 Unisoc Inc.
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/mfd/sprd,ums512-glbreg.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Unisoc System Global Register
> +
> +maintainers:
> +  - Orson Zhai <orsonzhai@gmail.com>
> +  - Baolin Wang <baolin.wang7@gmail.com>
> +  - Chunyan Zhang <zhang.lyra@gmail.com>
> +
> +description:
> +  Unisoc system global registers provide register map
> +  for clocks and some multimedia modules of the SoC.
> +
> +properties:
> +  compatible:
> +    items:
> +      - const: sprd,ums512-glbregs
> +      - const: syscon
> +      - const: simple-mfd
> +
> +  "#address-cells": true
> +  "#size-cells": true
> +
> +  ranges:
> +    maxItems: 1
> +
> +  reg:
> +    maxItems: 1
> +
> +patternProperties:
> +  "^clock-controller@[0-9a-f]+$":
> +    type: object
> +    $ref: "../clock/sprd,ums512-clk.yaml"

Absolute path (without quotes):
/schemas/clock/sprd,ums512-clk.yaml


Best regards,
Krzysztof
