Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B965B77D4A8
	for <lists+devicetree@lfdr.de>; Tue, 15 Aug 2023 22:56:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239034AbjHOU4O (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 15 Aug 2023 16:56:14 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54304 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239437AbjHOUz7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 15 Aug 2023 16:55:59 -0400
Received: from mail-wm1-x334.google.com (mail-wm1-x334.google.com [IPv6:2a00:1450:4864:20::334])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CA5C9138
        for <devicetree@vger.kernel.org>; Tue, 15 Aug 2023 13:55:54 -0700 (PDT)
Received: by mail-wm1-x334.google.com with SMTP id 5b1f17b1804b1-3fe8a1591c8so43031075e9.3
        for <devicetree@vger.kernel.org>; Tue, 15 Aug 2023 13:55:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1692132953; x=1692737753;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=oTso9py58RINldM+SIS7ngpWFh8NlYBOMbAcQtvamPA=;
        b=lmGA7PuuEG9aaGiBonYMW+JOZUJXygKvGdocj7K+u5GUa4b1EpzkdpHCtbkvicIhcy
         FzawxjKPyyZNpFP2aO2+OZOOQwjGAWq7QqecbGdQymTQHd9EMKk4RYq0xJ6QisczXdLh
         doZeNxftrX/Me0LVCg84tjM6BiWntcIwLdxVcwSWxJRV3HdJJQwsu8nFFsZpSnKZFRFe
         HRUxOoF3PR1obbR+GrwMN2TILG5d0OnL9CseBI09TiQx+Wd6q5AxC2aMRTzNboc6X+mc
         18uLBoq7A1fK3v66qTP6PWQRUl6evF+nO+VJmAuBCzCSsq/1ILoola6gXttEqdYZhv7I
         dybw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692132953; x=1692737753;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=oTso9py58RINldM+SIS7ngpWFh8NlYBOMbAcQtvamPA=;
        b=XWa50wUgo7d3I8zPSIED3yv/FXLyR08sv9KPKhTVzHJXk7LVhxamwXqIBqUjc+dGxH
         2yHdJUSdXl958xCl6sRRFBwFb7mYdmN+06oW5F56ApN6IRJwhANrZ0Cl8E0GDdoItv0l
         E/RiVTA6/6osRCK7XjPdrk78S9Zkcb6pCJ5S3DFB4ej8wmtFvSfZtsoZ6R1QnN2RtlBe
         5pq2pZFBecICWX+K/CiqJtzvxNa9dDvgjHgKNsnTFVca9Fc6mRv8Fdf7K72PfEAHQ3qT
         6NSRMrz38pxM6Gr8ftBwzB6iTp+XqTFIdMVcoV0JJ0cAfPfO5P7P9bdlZ/157iUWHVsx
         Fh1A==
X-Gm-Message-State: AOJu0Yx81oVeeqEDpxa+6jOU4PgFnFrdt8Qy/RCB/5AiuTlBtpJk01/0
        p4vtkUo5CizlXyK4JpOGuEhuJw==
X-Google-Smtp-Source: AGHT+IEzt0cpRiZEK/9hkSxLL+DL/4wnaj3yc4vyAcBnz8fCg8WIHsULG9PFSJTSyIx2qrW5YMydHQ==
X-Received: by 2002:adf:dd85:0:b0:314:44c8:aa98 with SMTP id x5-20020adfdd85000000b0031444c8aa98mr10405035wrl.67.1692132953084;
        Tue, 15 Aug 2023 13:55:53 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.214.188])
        by smtp.gmail.com with ESMTPSA id y7-20020a5d6147000000b00317e77106dbsm18920031wrt.48.2023.08.15.13.55.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 15 Aug 2023 13:55:52 -0700 (PDT)
Message-ID: <bddcf3cb-2e9f-d210-430a-fd2cbd73bfd9@linaro.org>
Date:   Tue, 15 Aug 2023 22:55:50 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.14.0
Subject: Re: [PATCH V4 1/2] dt-bindings: opp: Convert ti-omap5-opp-supply to
 json schema
Content-Language: en-US
To:     Nishanth Menon <nm@ti.com>, Stephen Boyd <sboyd@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Viresh Kumar <viresh.kumar@linaro.org>,
        "Rafael J. Wysocki" <rafael@kernel.org>
Cc:     linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        linux-pm@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Vibhore Vardhan <vibhore@ti.com>, Dhruva Gole <d-gole@ti.com>
References: <20230811031458.957624-1-nm@ti.com>
 <20230811031458.957624-2-nm@ti.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230811031458.957624-2-nm@ti.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 11/08/2023 05:14, Nishanth Menon wrote:
> Rename ti-omap5-opp-supply to be bit more generic omap-opp-supply and
> convert the free text binding to json-schema.
> 
> Signed-off-by: Nishanth Menon <nm@ti.com>
> ---
> Changes since V3:
> * Rewrote the description of the binding to something more relevant to
>   current style of documentation.
> 
> V3: https://lore.kernel.org/all/20230809023045.1870410-2-nm@ti.com/
> V2: https://lore.kernel.org/all/20230801233341.1416552-2-nm@ti.com/
> V1: https://lore.kernel.org/all/20230724153911.1376830-5-nm@ti.com/
> 
>  .../bindings/opp/ti,omap-opp-supply.yaml      | 106 ++++++++++++++++++
>  .../bindings/opp/ti-omap5-opp-supply.txt      |  63 -----------
>  2 files changed, 106 insertions(+), 63 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/opp/ti,omap-opp-supply.yaml
>  delete mode 100644 Documentation/devicetree/bindings/opp/ti-omap5-opp-supply.txt
> 
> diff --git a/Documentation/devicetree/bindings/opp/ti,omap-opp-supply.yaml b/Documentation/devicetree/bindings/opp/ti,omap-opp-supply.yaml
> new file mode 100644
> index 000000000000..25a0cb5ec6ff
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/opp/ti,omap-opp-supply.yaml
> @@ -0,0 +1,106 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/opp/ti,omap-opp-supply.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Texas Instruments OMAP compatible OPP supply
> +
> +description:
> +  OMAP5, DRA7, and AM57 families of SoCs have Class 0 AVS eFuse
> +  registers, which contain OPP-specific voltage information tailored
> +  for the specific device. This binding provides the information
> +  needed to describe such a hardware values and relate them to program
> +  the primary regulator during an OPP transition.
> +
> +  Also, some supplies may have an associated vbb-supply, an Adaptive
> +  Body Bias regulator, which must transition in a specific sequence
> +  w.r.t the vdd-supply and clk when making an OPP transition. By
> +  supplying two regulators to the device that will undergo OPP
> +  transitions, we can use the multi-regulator support implemented by
> +  the OPP core to describe both regulators the platform needs. The
> +  OPP core binding Documentation/devicetree/bindings/opp/opp-v2.yaml
> +  provides further information (refer to Example 4 Handling multiple
> +  regulators).
> +
> +maintainers:
> +  - Nishanth Menon <nm@ti.com>
> +
> +properties:
> +  $nodename:
> +    pattern: '^opp-supply(@[0-9a-f]+)?$'
> +
> +  compatible:
> +    oneOf:
> +      - description: Basic OPP supply controlling VDD and VBB
> +        items:
> +          - const: ti,omap-opp-supply
> +      - description: OMAP5+ optimized voltages in efuse(Class 0) VDD along with
> +          VBB.
> +        items:
> +          - const: ti,omap5-opp-supply
> +      - description: OMAP5+ optimized voltages in efuse(class0) VDD but no VBB
> +        items:

This and previous cases should be just "const:", because you have only
one item.

> +          - const: ti,omap5-core-opp-supply
> +
> +  reg:
> +    maxItems: 1
> +
> +  ti,absolute-max-voltage-uv:
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    description: Absolute maximum voltage for the OPP supply in micro-volts.
> +    minimum: 750000
> +    maximum: 1500000
> +
> +  ti,efuse-settings:
> +    description: An array of u32 tuple items providing information about
> +      optimized efuse configuration.
> +    minItems: 1
> +    $ref: /schemas/types.yaml#/definitions/uint32-matrix
> +    items:
> +      items:
> +        -

Don't wrap (drop line break). It should be just like you have in compatible.

> +          description: Reference voltage in micro-volts (OPP Voltage)
> +          minimum: 750000
> +          maximum: 1500000
> +          multipleOf: 10000
> +        -
> +          description: efuse offset where the optimized voltage is located
> +          multipleOf: 4
> +          maximum: 256
> +

Rest looks good to me, so with above:

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

