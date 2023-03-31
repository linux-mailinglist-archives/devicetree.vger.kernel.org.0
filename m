Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 18EED6D19D7
	for <lists+devicetree@lfdr.de>; Fri, 31 Mar 2023 10:29:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230040AbjCaI32 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 31 Mar 2023 04:29:28 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50962 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229891AbjCaI31 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 31 Mar 2023 04:29:27 -0400
Received: from mail-lf1-x132.google.com (mail-lf1-x132.google.com [IPv6:2a00:1450:4864:20::132])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6A1932137
        for <devicetree@vger.kernel.org>; Fri, 31 Mar 2023 01:29:25 -0700 (PDT)
Received: by mail-lf1-x132.google.com with SMTP id y15so27902191lfa.7
        for <devicetree@vger.kernel.org>; Fri, 31 Mar 2023 01:29:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1680251363;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=QI8i911zkluPjG7gR6D8+TC8z24ZUgWH+gQ+vzLILEM=;
        b=FxyfXHMxQGIiRZXupqZzibgdmVixn07IsuE5zGouS8gkarnQUjGQ0iB2N3vnioMXa0
         obsQ4Zi0k3SAckKzK4WS46UznDuq8oiwHbT7qGxv88MjscqLdWMw4Ws66ZZGxkaTq3fh
         x1V4YaJakXalOWRfZ1vdHFcrV7TWMZu2W7CukUtMXzMc11Ey6oAjj/GoNW9iiJiDJjc8
         YJKBKUeYPi5/bbaCp6zT+xhVFIdMSJ03qvqNeEL4YD78o+0B7K37Z3x6RqF+xgRKZmvS
         c+ulppF3YckAMNzPgOxWSsj9XDEatUjG1vbKEp3Czv+eiMu7T0YTt6KMOaD+k98YLofd
         oPzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680251363;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=QI8i911zkluPjG7gR6D8+TC8z24ZUgWH+gQ+vzLILEM=;
        b=oTFEzbB3dF2/RaS0tvU5tniiYGeYIjXWu59Anpwm8v1IiSPsaRpQ3zr1akLTKvil7p
         RHLaieAISxdb3mUviNoE8WE+QYapQqBYBUWJuLJQBlcJAYu6BkOSSH9/QA9JQrxfxipD
         1/8u3TMl/uV7IPur9HFHrDj/wZa4SXG8aN3poqPNkL//TGJxvos3pQ5CSd/MNu1yccNj
         pjj73xnDLWUHYXRj5+2MlVHs+Ie018dw/dXtmHkHVpJIjY3PO8nY6F8Px5lufTMTyZy1
         SLMZzLK79kg/a+88WS4YOw8crC7vD1gG+rXQ9FGtlvIfqrm2nS3gEXDzw8uDfWsgbWpS
         JRUw==
X-Gm-Message-State: AAQBX9d1nHcvOxYwoap3uyE4TLx2I223u+p1sNyVmL63RThYYdI7yqCm
        ITrpu7+DbN/URDETyCWtQeY/9589WueMglsfmEA=
X-Google-Smtp-Source: AKy350auFf1XNiNnNjxo2X+5lePt88b3ZdygsYOwcEW8Ly1wcQZCaygkvwngEjsweE7bLMURoWqFNw==
X-Received: by 2002:a19:f619:0:b0:4d5:831a:1af8 with SMTP id x25-20020a19f619000000b004d5831a1af8mr7910634lfe.40.1680251363625;
        Fri, 31 Mar 2023 01:29:23 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id p18-20020a05651238d200b004e9aabe94a3sm284274lft.151.2023.03.31.01.29.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 31 Mar 2023 01:29:23 -0700 (PDT)
Message-ID: <8a1b2aeb-c89e-d8de-1784-e0cf9ec33aa3@linaro.org>
Date:   Fri, 31 Mar 2023 10:29:21 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [PATCH 1/6] dt-bindings: firmware: Add arm,errata-management
Content-Language: en-US
To:     James Morse <james.morse@arm.com>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Cc:     Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        Sudeep Holla <sudeep.holla@arm.com>,
        Marc Zyngier <maz@kernel.org>,
        Oliver Upton <oliver.upton@linux.dev>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Andre Przywara <andre.przywara@arm.com>
References: <20230330165128.3237939-1-james.morse@arm.com>
 <20230330165128.3237939-2-james.morse@arm.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230330165128.3237939-2-james.morse@arm.com>
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

On 30/03/2023 18:51, James Morse wrote:
> The Errata Management SMCCC interface allows firmware to advertise whether
> the OS is affected by an erratum, or if a higher exception level has
> mitigated the issue. This allows properties of the device that are not
> discoverable by the OS to be described. e.g. some errata depend on the
> behaviour of the interconnect, which is not visible to the OS.
> 
> Deployed devices may find it significantly harder to update EL3
> firmware than the device tree. Erratum workarounds typically have to
> fail safe, and assume the platform is affected putting correctness
> above performance.
> 
> Instead of adding a device-tree entry for any CPU errata that is
> relevant (or not) to the platform, allow the device-tree to describe
> firmware's responses for the SMCCC interface. This could be used as
> the data source for the firmware interface, or be parsed by the OS if
> the firmware interface is missing.
> 
> Most errata can be detected from CPU id registers. These mechanisms
> are only needed for the rare cases that external knowledge is needed.
> 
> Suggested-by: Andre Przywara <andre.przywara@arm.com>
> Signed-off-by: James Morse <james.morse@arm.com>
> ---
>  .../devicetree/bindings/arm/cpus.yaml         |  5 ++
>  .../firmware/arm,errata-management.yaml       | 77 +++++++++++++++++++
>  2 files changed, 82 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/firmware/arm,errata-management.yaml
> 
> diff --git a/Documentation/devicetree/bindings/arm/cpus.yaml b/Documentation/devicetree/bindings/arm/cpus.yaml
> index c145f6a035ee..47b12761f305 100644
> --- a/Documentation/devicetree/bindings/arm/cpus.yaml
> +++ b/Documentation/devicetree/bindings/arm/cpus.yaml
> @@ -257,6 +257,11 @@ properties:
>        List of phandles to idle state nodes supported
>        by this cpu (see ./idle-states.yaml).
>  
> +  arm,erratum-list:
> +    $ref: '/schemas/types.yaml#/definitions/phandle'
> +    description:
> +      Specifies the firmware cpu-erratum-list node associated with this CPU.
> +
>    capacity-dmips-mhz:
>      description:
>        u32 value representing CPU capacity (see ../cpu/cpu-capacity.txt) in
> diff --git a/Documentation/devicetree/bindings/firmware/arm,errata-management.yaml b/Documentation/devicetree/bindings/firmware/arm,errata-management.yaml
> new file mode 100644
> index 000000000000..9baeb3d35213
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/firmware/arm,errata-management.yaml
> @@ -0,0 +1,77 @@
> +# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/firmware/arm,errata-management.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#

Except missing testing...

> +
> +title: Errata Management Firmware Interface
> +
> +maintainers:
> +  - James Morse <james.morse@arm.com>
> +
> +description: |+

Do not need '|+'.

> +  The SMC-CC has an erratum discovery interface that allows the OS to discover
> +  whether a particular CPU is affected by a specific erratum when the
> +  configurations affected is only known by firmware. See the specification of
> +  the same title on developer.arm.com, document DEN0100.
> +  Provide the values that should be used by the interface, either to supplement
> +  firmware, or override the values firmware provides.

Why? If you have the discovery interface, don't add stuff to the DT, but
use that interface.

> +  Most errata can be detected from CPU id registers. These mechanisms are only
> +  needed for the rare cases that external knowledge is needed.
> +  The CPU node should hold a phandle that points to the cpu-erratum-list node.
> +
> +properties:
> +  compatible:
> +    items:

One item, so drop "items".

> +      - const: arm,cpu-erratum-list
> +
> +  arm,erratum-affected:
> +    description: Erratum numbers that this CPU is affected by.

Isn't this explicit from CPU compatible?

> +    $ref: /schemas/types.yaml#/definitions/uint32-array
> +    minItems: 1

What do the numbers mean?

maxItems?

> +
> +  arm,erratum-not-affected:
> +    description: Erratum numbers that this CPU is not affected by.
> +    $ref: /schemas/types.yaml#/definitions/uint32-array
> +    minItems: 1
> +
> +  arm,erratum-higher-el-mitigation:
> +    description: Erratum numbers that have been mitigated by a higher level
> +      of firmware
> +    $ref: /schemas/types.yaml#/definitions/uint32-array
> +    minItems: 1
> +
> +required:
> +  - compatible

Missing blank line

> +anyOf:
> +  - required:
> +    - 'arm,erratum-affected'
> +  - required:
> +    - 'arm,erratum-not-affected'
> +  - required:
> +    - 'arm,erratum-higher-el-mitigation'

Drop quotes

> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    firmware {
> +      CL1_ERRATA: cluster1-errata {
> +          compatible = "arm,cpu-erratum-list";
> +          arm,erratum-not-affected = <2701952>;
> +      };
> +    };
> +
> +    cpus {
> +      #size-cells = <0>;
> +      #address-cells = <1>;
> +
> +      cpu@0 {
> +        device_type = "cpu";
> +        compatible = "arm,cortex-x2";
> +        reg = <0x0>;
> +        arm,erratum-list = <&CL1_ERRATA>;
> +      };
> +    };
> +
> +...

Best regards,
Krzysztof

