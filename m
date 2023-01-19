Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4206D673321
	for <lists+devicetree@lfdr.de>; Thu, 19 Jan 2023 08:58:46 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229957AbjASH6m (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 19 Jan 2023 02:58:42 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34094 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229991AbjASH6j (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 19 Jan 2023 02:58:39 -0500
Received: from mail-wr1-x42d.google.com (mail-wr1-x42d.google.com [IPv6:2a00:1450:4864:20::42d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DB684485B1
        for <devicetree@vger.kernel.org>; Wed, 18 Jan 2023 23:58:34 -0800 (PST)
Received: by mail-wr1-x42d.google.com with SMTP id i4so355470wrs.9
        for <devicetree@vger.kernel.org>; Wed, 18 Jan 2023 23:58:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=A87f+K2WTXdoCGceYD+AGSAQsZPXfl/8rp/UashgG5g=;
        b=by1JYrCEzb+SkL+NHJgJJhXT8ouDNyJoXeJezsN/J/O/QQBXAMmoQxAt/GMyOadOLR
         5AhLXz+SIqectds76zxXx40lNcHsySoQv3AdXXsUw/k+zIk0s8+hjfUNmC932Feo2k+F
         07zgqKmtSTU8nGJd0drOK7ho+En9d4PqCt0NvzkIbcDUpzmJRDxeMgjgl3qymbI+hUwc
         uoctMwTA3/c18LbJ4a0CqhT8JC7/eQfHHLN7sxdyyvwfhG1o9YIwWX9rWHOzsAXPy3w6
         0EXkgMUvmdoQ4qJDmtoxb/pWRyBVp3cBZhjVJgTGFfjIe+fDwXWb+471jZZVR54FY6NZ
         ZuLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=A87f+K2WTXdoCGceYD+AGSAQsZPXfl/8rp/UashgG5g=;
        b=iSuSz7aAm2YJX5k9/6Fa8kbAB5+Ugwz2jFmG2vUbxv+tGv7DLidiwCpDN/w1LA9EJc
         N00dwEJmq/R1napZnW85Z68f0KDIr1NLES7OQneQivu4FD8yvjpZUG5nr3s46zOUYQ4H
         0EaONJU5B/N0qitP+n/4aW0jZUrcQ5L0QxYzN3xK2xIRaEe8ddtyULaSAADOY9anzFFX
         wUX/epybVRsEWbHmHuF4QSLGWJBs7wWo8BF0Xjx1WgKrx160AZaFZaNvPU/KJXi2dxjD
         eVsl9Qy16ZMyj2P2YtSGevfz4Z89UkmCxZ0JknxjaB+hhNAASlvxSuGNLCo4/48XgSel
         nXcg==
X-Gm-Message-State: AFqh2ko2FF6246OmV19tE/owNhgKkRL2NI1667sBSuxEWwrigR1VphRj
        883IZETFhcUD/p1bSn029E2ZZg==
X-Google-Smtp-Source: AMrXdXtYyXNI2A4TAo+RnQGc+R4Oq+uuNR4IxX1jxGb8yGdFRYTyCEGKPbY/pXAejVIOOSaI4O7YrA==
X-Received: by 2002:adf:dc81:0:b0:2bc:7f99:f2a with SMTP id r1-20020adfdc81000000b002bc7f990f2amr8931253wrj.54.1674115113319;
        Wed, 18 Jan 2023 23:58:33 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id t17-20020a05600001d100b00241d21d4652sm32722039wrx.21.2023.01.18.23.58.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 18 Jan 2023 23:58:32 -0800 (PST)
Message-ID: <a3c4feaf-c98d-5507-11f1-3dd1129f7360@linaro.org>
Date:   Thu, 19 Jan 2023 08:58:29 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.0
Subject: Re: [PATCH v9 06/15] dt-bindings: mfd: amd,pensando-elbasr: Add AMD
 Pensando System Resource chip
Content-Language: en-US
To:     Brad Larson <blarson@amd.com>, linux-arm-kernel@lists.infradead.org
Cc:     linux-kernel@vger.kernel.org, linux-mmc@vger.kernel.org,
        linux-spi@vger.kernel.org, adrian.hunter@intel.com,
        alcooperx@gmail.com, andy.shevchenko@gmail.com, arnd@arndb.de,
        brad@pensando.io, brendan.higgins@linux.dev,
        briannorris@chromium.org, brijeshkumar.singh@amd.com,
        catalin.marinas@arm.com, davidgow@google.com, gsomlo@gmail.com,
        gerg@linux-m68k.org, krzk@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, lee@kernel.org,
        lee.jones@linaro.org, broonie@kernel.org,
        yamada.masahiro@socionext.com, p.zabel@pengutronix.de,
        piotrs@cadence.com, p.yadav@ti.com, rdunlap@infradead.org,
        robh+dt@kernel.org, samuel@sholland.org, fancer.lancer@gmail.com,
        skhan@linuxfoundation.org, suravee.suthikulpanit@amd.com,
        thomas.lendacky@amd.com, tonyhuang.sunplus@gmail.com,
        ulf.hansson@linaro.org, vaishnav.a@ti.com, will@kernel.org,
        devicetree@vger.kernel.org
References: <20230119035136.21603-1-blarson@amd.com>
 <20230119035136.21603-7-blarson@amd.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230119035136.21603-7-blarson@amd.com>
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

On 19/01/2023 04:51, Brad Larson wrote:
> Add support for the AMD Pensando SoC System Resource chip using the
> SPI interface.  The device functions are accessed using four
> chip-selects.  This device is present for all Pensando SoC designs.
> 
> Signed-off-by: Brad Larson <blarson@amd.com>
> ---
> 
> Changes since v6:
> - Instead of four nodes, one per chip-select, a single
>   node is used with reset-cells in the parent.
> - No MFD API is used anymore in the driver so it made
>   sense to move this to drivers/spi.
> - This driver is common for all Pensando SoC based designs
>   so changed the name to pensando-sr.c to not make it Elba
>   SoC specific.
> - Added property cs for the chip-select number which is used
>   by the driver to create /dev/pensr0.<cs> 
> 
> ---
>  .../bindings/spi/amd,pensando-sr.yaml         | 68 +++++++++++++++++++
>  1 file changed, 68 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/spi/amd,pensando-sr.yaml
> 
> diff --git a/Documentation/devicetree/bindings/spi/amd,pensando-sr.yaml b/Documentation/devicetree/bindings/spi/amd,pensando-sr.yaml
> new file mode 100644
> index 000000000000..8504652f6e19
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/spi/amd,pensando-sr.yaml
> @@ -0,0 +1,68 @@
> +# SPDX-License-Identifier: (GPL-2.0-only or BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/spi/amd,pensando-sr.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: AMD Pensando SoC Resource Controller
> +
> +description: |
> +  AMD Pensando SoC Resource Controller is a set of
> +  control/status registers accessed on four chip-selects.
> +  This device is present in all Pensando SoC based designs.
> +
> +maintainers:
> +  - Brad Larson <blarson@amd.com>
> +
> +properties:
> +  compatible:
> +    contains:

That's not correct syntax. Please start from existing schema or
example-schema. Drop contains.

> +      enum:
> +        - amd,pensando-sr
> +
> +  reg:
> +    minItems: 1

maxItems. Which example or existing schema pointed you to use minItems?

> +
> +  cs:
> +    minItems: 1
> +    maxItems: 4
> +    description:
> +      Device chip select

Drop entire property. Isn't reg for this on SPI bus?

> +
> +  '#reset-cells':
> +    const: 1
> +
> +  interrupts:
> +    maxItems: 1
> +
> +  spi-max-frequency: true

Drop. Missing reference to spi-peripheral-props.

> +
> +required:
> +  - compatible
> +  - cs
> +  - spi-max-frequency
> +  - '#reset-cells'
> +
> +unevaluatedProperties: false

This does not make sense on its own. It works with additional ref. When
you add ref to spi props, it will be fine. But without it you should use
additionalProperties: false.


Best regards,
Krzysztof

