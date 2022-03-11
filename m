Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7625B4D5E7C
	for <lists+devicetree@lfdr.de>; Fri, 11 Mar 2022 10:34:21 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1347527AbiCKJfU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 11 Mar 2022 04:35:20 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50442 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1346776AbiCKJfU (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 11 Mar 2022 04:35:20 -0500
Received: from smtp-relay-internal-1.canonical.com (smtp-relay-internal-1.canonical.com [185.125.188.123])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5E9D19F3B2
        for <devicetree@vger.kernel.org>; Fri, 11 Mar 2022 01:34:17 -0800 (PST)
Received: from mail-ed1-f70.google.com (mail-ed1-f70.google.com [209.85.208.70])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 3CDCD3F323
        for <devicetree@vger.kernel.org>; Fri, 11 Mar 2022 09:34:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1646991256;
        bh=TipXjTJr6+EeQa1Bn0UjvOBERTURaDG374mBi9nTu7o=;
        h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
         In-Reply-To:Content-Type;
        b=V4/gbtmzDIONPdVEDQoSsWUXvPvmJ0P04JK+Eo5QcXYSTICqSMr1ULRVnB9WKrhge
         nXAydAadAeqys1yHroC+P/sj5lZoTc89nuRS2WD9UUNlG+3umAUJ1QAf168axMjkRY
         gPT7l/rEYzQE7KXgagx9nOtxoV9AsphKqwwkIAQY8XvXn4JAonpPtqDmLAJZHUttkr
         1hCIkfuyuHzUHPrCM3+H3v4sm/9shtSt7Mg9/vSoqRX6xz1ToIeI0wG3CaHemdM0rF
         fXVNfGnkh6kuSwKVNVCIfP4GWQKO+a/HJRfJ/AOeiSCPEdGaQH4AU63hWUzpbXXrTy
         G/u1l+ukpRFfg==
Received: by mail-ed1-f70.google.com with SMTP id bq19-20020a056402215300b0040f276105a4so4578678edb.2
        for <devicetree@vger.kernel.org>; Fri, 11 Mar 2022 01:34:16 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=TipXjTJr6+EeQa1Bn0UjvOBERTURaDG374mBi9nTu7o=;
        b=Ui3faT8uKzaH7Prb3VsCmxBbssjzRCiZlmvsV+NWAhOlz4fEnSvZtw42PLw2MSstu+
         lfKVO0B43sdkavL/n3hcFwpgOsGWCiM7OGBvCWzHEfaIYULYIae6SgpfgfiJCCo8rVJN
         cuLPJO0eNVLsF2CPHzcq9V26M1DCvVmHcfd2TAljdy6FLrZixM9+lrzhzKGwUWGXibpZ
         hWyickejSsDmobAstsGSGV/YrPpHrO/T84jYzNy8mRYNFRsE9+j4nYmF3ipVYRSa5cI5
         DbbsTmPVxmt67ck71h21FdKGztXqBuxhWlbQ9M7ICEUX3xa+dFwMEX0Et++N30fUCyFx
         wO5A==
X-Gm-Message-State: AOAM531M8LPLohrEjhKjYSiM5Bd3JQGeJ1/6mFYRIENwCd4QOtT+IVTX
        vNljZckWBWaQaTqctgsTs+mHLNQhuORr7FoWmKBC/nxLONuwP/fq8B3ADf+LMFRDy6Er5Jd0aLS
        /+BDmv6XJqz07AN1QEH4Ms+1pFw3VDkuinWUN53M=
X-Received: by 2002:a17:906:4cc7:b0:6d0:7efb:49f with SMTP id q7-20020a1709064cc700b006d07efb049fmr7590404ejt.639.1646991255641;
        Fri, 11 Mar 2022 01:34:15 -0800 (PST)
X-Google-Smtp-Source: ABdhPJwilYeVFSbzYfGvwO8uQk/e6hBMqrA9GTqbIJ9dpK4F5E1UIJiiyc95/4j9Z0RvNcy8yn3Q2A==
X-Received: by 2002:a17:906:4cc7:b0:6d0:7efb:49f with SMTP id q7-20020a1709064cc700b006d07efb049fmr7590387ejt.639.1646991255451;
        Fri, 11 Mar 2022 01:34:15 -0800 (PST)
Received: from [192.168.0.148] (xdsl-188-155-174-239.adslplus.ch. [188.155.174.239])
        by smtp.gmail.com with ESMTPSA id q11-20020a170906144b00b006cf61dfb03esm2718313ejc.62.2022.03.11.01.34.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 11 Mar 2022 01:34:14 -0800 (PST)
Message-ID: <c6309ed8-6e74-67d3-304a-f5399d16cc37@canonical.com>
Date:   Fri, 11 Mar 2022 10:34:14 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH v3 06/10] dt-bindings: watchdog: Add HPE GXP Watchdog
 timer binding
Content-Language: en-US
To:     nick.hawkins@hpe.com, verdun@hpe.com
Cc:     Wim Van Sebroeck <wim@linux-watchdog.org>,
        Guenter Roeck <linux@roeck-us.net>,
        Rob Herring <robh+dt@kernel.org>,
        linux-watchdog@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20220310195229.109477-1-nick.hawkins@hpe.com>
 <20220310195229.109477-6-nick.hawkins@hpe.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
In-Reply-To: <20220310195229.109477-6-nick.hawkins@hpe.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.9 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 10/03/2022 20:52, nick.hawkins@hpe.com wrote:
> From: Nick Hawkins <nick.hawkins@hpe.com>
> 
> Add the hpe gxp watchdog timer binding hpe,gxp-wdt.
> This will enable support for the HPE GXP Watchdog
> 
> Signed-off-by: Nick Hawkins <nick.hawkins@hpe.com>
> ---
>  .../bindings/watchdog/hpe,gxp-wdt.yaml        | 37 +++++++++++++++++++
>  1 file changed, 37 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/watchdog/hpe,gxp-wdt.yaml
> 
> diff --git a/Documentation/devicetree/bindings/watchdog/hpe,gxp-wdt.yaml b/Documentation/devicetree/bindings/watchdog/hpe,gxp-wdt.yaml
> new file mode 100644
> index 000000000000..6044496b4968
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/watchdog/hpe,gxp-wdt.yaml
> @@ -0,0 +1,37 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/watchdog/hpe,gxp-wdt.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: HPE GXP Controlled Watchdog
> +
> +allOf:
> +  - $ref: "watchdog.yaml#"
> +
> +maintainers:
> +  - Nick Hawkins <nick.hawkins@hpe.com>
> +  - Jean-Marie Verdun <verdun@hpe.com>
> +
> +properties:
> +  compatible:
> +    const: hpe,gxp-wdt
> +
> +  reg:
> +    items:
> +      - description: WDGRST register
> +      - description: WDGCS register

Why are you mapping each register instead of entire address space? It
won't scale if your new design comes with 10 registers...

> +
> +required:
> +  - compatible
> +  - reg
> +
> +unevaluatedProperties: false
> +
> +examples:
> +  - |
> +    watchdog0:  watchdog@c0000090 {

Skip the label. You also have there double space between label and node
name.

Best regards,
Krzysztof
