Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BC21A51E581
	for <lists+devicetree@lfdr.de>; Sat,  7 May 2022 10:16:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1354598AbiEGIUE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 7 May 2022 04:20:04 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45074 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239283AbiEGIUE (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 7 May 2022 04:20:04 -0400
Received: from mail-wm1-x331.google.com (mail-wm1-x331.google.com [IPv6:2a00:1450:4864:20::331])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3D0DD2C66A
        for <devicetree@vger.kernel.org>; Sat,  7 May 2022 01:16:18 -0700 (PDT)
Received: by mail-wm1-x331.google.com with SMTP id i20-20020a05600c355400b0039456976dcaso4537415wmq.1
        for <devicetree@vger.kernel.org>; Sat, 07 May 2022 01:16:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20210112;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=ocuJE0gAGEqaqKxUV4jvj8obtrJ431aiQbMs9D9K8C4=;
        b=Rt3p2REQwsRDFGcxc3f5ldBLgHOLUPQjis5BAVkVrGD/bwgBomG2SR2kPYmDlt7bto
         rRatI1I614wEHxyZ2Gc4oCwOWThnJQ2EB4EHYxJNi3adcUjk51D8SQGS3B3hTtPtCFKA
         /Af1ET/T3OXRbb8k5QL0+QmJiuPRAMWrDEhBJztaydK4d3KIvldLJmh4sEMYvQqZNQet
         eWZd4YXeSHU/6y64khr+LUBIAUZ1/ItXV7hgg/DW9yWYI8PbFt4kUOH/rCwbgghgENHN
         N+RpSTEhkHVc/lPsGrDzPSZLOn8o+MnHAi8cfsVZaLAUQdom3OCdM6O2cmOO07+QQHFI
         BM7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=ocuJE0gAGEqaqKxUV4jvj8obtrJ431aiQbMs9D9K8C4=;
        b=B7g54jmWO1/jlFyMFQVB4XcL/kHPrjeBYitA1b41XuDtotaOIowCkWMojE20uAilrO
         MFtvDAPyNqFNHxS1inLM3S2XLVZIRQkRqVNsRAx1M9A772pt2+2U7pDgY7FMlWed4M5p
         3U7P1ZAZqlW8sRqYndasHO9haWLDN0Z/yr9hplO/v1d5Gx1LQx1lZ/ih1kkzZrV2u8LJ
         KbYOyatjB3PehlAaVb6UkfaeRvU+X+yzQdMZmpOriSgaSNFp8uADcOjQ7AkxVVvjFykn
         9+gUOn4zRtjuD8RAriNQFy4o8yaoyiRWFympi5EajzGrBarTZfeBoEpPam+0Gs38259x
         4/pQ==
X-Gm-Message-State: AOAM530sQLFfkVlFcWckoYBc58S/WHVWgSBcEQ7ypyYqqOpcyWpruUBo
        u8ICxq6xF5+6Ug2c+/jycKlWIw==
X-Google-Smtp-Source: ABdhPJx9s5perey3uFNE4Jbpnstue3qwJxcFldfSIn/vkY0AMcMDK8ljm5rKJAhbcQdtDc/3xKmlcw==
X-Received: by 2002:a05:600c:281:b0:394:1075:fe3e with SMTP id 1-20020a05600c028100b003941075fe3emr13513613wmk.155.1651911376473;
        Sat, 07 May 2022 01:16:16 -0700 (PDT)
Received: from google.com (49.222.77.34.bc.googleusercontent.com. [34.77.222.49])
        by smtp.gmail.com with ESMTPSA id v128-20020a1cac86000000b003942a244f56sm10957782wme.47.2022.05.07.01.16.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 07 May 2022 01:16:16 -0700 (PDT)
Date:   Sat, 7 May 2022 08:16:14 +0000
From:   Sebastian Ene <sebastianene@google.com>
To:     Sebastian Ene <sebastianene@google.com>
Cc:     linux-kernel@vger.kernel.org,
        Derek Kiernan <derek.kiernan@xilinx.com>,
        Dragan Cvetic <dragan.cvetic@xilinx.com>,
        Arnd Bergmann <arnd@arndb.de>, devicetree@vger.kernel.org,
        qperret@google.com, will@kernel.org, maz@kernel.org,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Rob Herring <robh+dt@kernel.org>,
        Guenter Roeck <linux@roeck-us.net>
Subject: Re: [PATCH v4 1/2] dt-bindings: vm-wdt: Add qemu,vm-watchdog
 compatible
Message-ID: <YnYqzkK0JLlCYOw5@google.com>
References: <20220429083030.3241640-1-sebastianene@google.com>
 <20220429083030.3241640-2-sebastianene@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220429083030.3241640-2-sebastianene@google.com>
X-Spam-Status: No, score=-17.6 required=5.0 tests=BAYES_00,DKIMWL_WL_MED,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
        ENV_AND_HDR_SPF_MATCH,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE,USER_IN_DEF_DKIM_WL,USER_IN_DEF_SPF_WL
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Apr 29, 2022 at 08:30:31AM +0000, Sebastian Ene wrote:
> The stall detection mechanism allows to configure the expiration
> duration and the internal counter clock frequency measured in Hz.
> Add these properties in the schema.
> 
> Signed-off-by: Sebastian Ene <sebastianene@google.com>
> ---
>  .../devicetree/bindings/misc/vm-watchdog.yaml | 45 +++++++++++++++++++
>  1 file changed, 45 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/misc/vm-watchdog.yaml
> 
> diff --git a/Documentation/devicetree/bindings/misc/vm-watchdog.yaml b/Documentation/devicetree/bindings/misc/vm-watchdog.yaml
> new file mode 100644
> index 000000000000..d7cca23357ab
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/misc/vm-watchdog.yaml
> @@ -0,0 +1,45 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/misc/vm-watchdog.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: VM watchdog
> +
> +description: |
> +  This binding describes a CPU stall detector mechanism for virtual cpus
> +  which is accessed through MMIO.
> +
> +maintainers:
> +  - Sebastian Ene <sebastianene@google.com>
> +
> +properties:
> +  compatible:
> +    enum:
> +      - qemu,vm-watchdog
> +  clock-frequency:
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    description: |
> +      The watchdog internal clock measure in Hz used to decrement the
> +      watchdog counter register on each tick.
> +      Defaults to 10 if unset.
> +  timeout-sec:
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    description: |
> +      The watchdog expiration timeout measured in seconds.
> +      Defaults to 8 if unset.
> +
> +required:
> +  - compatible
> +
> +additionalProperties: false

Hi,

> +
> +examples:
> +  - |
> +    watchdog {
> +      compatible = "qemu,vm-watchdog";
> +      clock-frequency = <10>;
> +      timeout-sec = <8>;
> +    };
> +
> +...
> -- 
> 2.36.0.464.gb9c8b46e94-goog
>

I was thinking to move the properties clock-frequency and timeout-sec as
part of the emulated watchdog registers and keep only the registers
property in the DT.

Thanks,
Seb
