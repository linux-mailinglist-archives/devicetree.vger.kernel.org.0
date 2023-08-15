Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id F259677D2EC
	for <lists+devicetree@lfdr.de>; Tue, 15 Aug 2023 21:05:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239711AbjHOTEy (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 15 Aug 2023 15:04:54 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49582 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240015AbjHOTEh (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 15 Aug 2023 15:04:37 -0400
Received: from mail-lj1-x230.google.com (mail-lj1-x230.google.com [IPv6:2a00:1450:4864:20::230])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4DFAB3A99
        for <devicetree@vger.kernel.org>; Tue, 15 Aug 2023 12:04:11 -0700 (PDT)
Received: by mail-lj1-x230.google.com with SMTP id 38308e7fff4ca-2b9ba3d6157so89342731fa.3
        for <devicetree@vger.kernel.org>; Tue, 15 Aug 2023 12:04:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1692126221; x=1692731021;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=xNf/vg0VHgK6MAJZ+4f3hn/wGev5cCXSUtoD0fHhHKg=;
        b=YL2Ho28HTU0VMkKopaQe1YQVne2FuShMJ8d5drwy4TFR6mBfyzM4mYE75iyS9rxjv7
         CNFEdvJgN4d+yvE81r8lclwQVlpdipcrNfqrsV/MXw8MukNknV1/yOtEyW3tyytkCoaf
         7/wBox5i/p2Y6EMm+YJfJUaiL2YnQsECfWRVc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692126221; x=1692731021;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=xNf/vg0VHgK6MAJZ+4f3hn/wGev5cCXSUtoD0fHhHKg=;
        b=Mdirw3Mku7jk8Gjc3rty+3PBmXtz6fkoRtgZSU9LpRp/lZMftTrUMs24InKs4vUF2w
         fmHF7ur4UQHpjYK0IkyJ7k3LWcrP1WIPYeTUDjL3sGKNLHwZP7VhbgBp+PIcD29K05eQ
         YyRL8w+/cYRNO4VSTQjFgQeSDG/wEYIw1blQku9RBjVYei3c/LPsKTRuk4FNHAkk+lyq
         bsai5eLL6LtNTrIQIybh1Cn2NS83Di0T/BMzquNkKj9Q8MEJiV6YyQXVkXlpVePr+pq/
         ++jDSA0XKV16skNHkdhjUaG2i8mNR0+NkZE24hMv4Sy0Phd1C1QgtO4IGciTCp/2EdhD
         PMvg==
X-Gm-Message-State: AOJu0YwKNBu9NhLbZqJdMeMiz8NATQ6i34t/VmgNYEMpyUXsgAyomf0t
        EYYvOohnQkauVQnRrr8Ue742pmNiZIy7v0I27udSbTzHEuMr38nsT6Dbpg==
X-Google-Smtp-Source: AGHT+IF+MSgmvtFzLKRmsmGwyzCr/GNhleam5Atw6PVSg5ipNeWXL2evwmeogJ/jFjhP/wgge5H4A/7rmcPuA0UVwDs=
X-Received: by 2002:a2e:8950:0:b0:2bb:8d96:6041 with SMTP id
 b16-20020a2e8950000000b002bb8d966041mr1825415ljk.45.1692126220858; Tue, 15
 Aug 2023 12:03:40 -0700 (PDT)
MIME-Version: 1.0
References: <20230811215743.3111594-1-sjg@chromium.org>
In-Reply-To: <20230811215743.3111594-1-sjg@chromium.org>
From:   Simon Glass <sjg@chromium.org>
Date:   Tue, 15 Aug 2023 13:03:29 -0600
Message-ID: <CAPnjgZ3O=iYnU1ghMNXxQOtnMR+DTs6jwaHN+KrYzjy_Z-mG0Q@mail.gmail.com>
Subject: Re: [PATCH] schemas: Add a schema for memory map
To:     Devicetree Discuss <devicetree@vger.kernel.org>
Cc:     Rob Herring <robh@kernel.org>,
        U-Boot Mailing List <u-boot@lists.denx.de>,
        Gua Guo <gua.guo@intel.com>,
        Lean Sheng Tan <sheng.tan@9elements.com>,
        Tom Rini <trini@konsulko.com>,
        Chiu Chasel <chasel.chiu@intel.com>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-9.3 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
        USER_IN_DEF_SPF_WL autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

+linux-acpi@vger.kernel.org
+lk

Since there was a related discussion here:
https://patches.linaro.org/project/linux-acpi/patch/20230426034001.16-1-cuiyunhui@bytedance.com/

On Fri, 11 Aug 2023 at 15:57, Simon Glass <sjg@chromium.org> wrote:
>
> The Devicespec specification skips over handling of a logical view of
> the memory map, pointing users to the UEFI specification.
>
> It is common to split firmware into 'Platform Init', which does the
> initial hardware setup and a "Payload" which selects the OS to be booted.
> Thus an handover interface is required between these two pieces.
>
> Where UEFI boot-time services are not available, but UEFI firmware is
> present on either side of this interface, information about memory usage
> and attributes must be presented to the "Payload" in some form.
>
> This aims to provide an initial schema for this mapping.
>
> Note that this is separate from the existing /memory and /reserved-memory
> nodes, since it is mostly concerned with what the memory is used for. It
> may cover only a small fraction of available memory, although it could be
> used to signal which area of memory has ECC.
>
> For now, no attempt is made to create an exhaustive binding, but this can
> be completed once this has passed initial review.
>
> Signed-off-by: Simon Glass <sjg@chromium.org>
> ---
>
>  dtschema/schemas/memory-map.yaml | 51 ++++++++++++++++++++++++++++++++
>  1 file changed, 51 insertions(+)
>  create mode 100644 dtschema/schemas/memory-map.yaml
>
> diff --git a/dtschema/schemas/memory-map.yaml b/dtschema/schemas/memory-map.yaml
> new file mode 100644
> index 0000000..97e531e
> --- /dev/null
> +++ b/dtschema/schemas/memory-map.yaml
> @@ -0,0 +1,51 @@
> +# SPDX-License-Identifier: BSD-2-Clause
> +# Copyright 2023 Google LLC
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/memory-map.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: /memory-map nodes
> +description: |
> +  Common properties always required in /memory-map nodes. These nodes are
> +  intended to resolve the nonchalant clause 3.4.1 ("/memory node and UEFI")
> +  in the Devicetree Specification.
> +
> +maintainers:
> +  - Simon Glass <sjg@chromium.org>
> +
> +properties:
> +  $nodename:
> +    const: '/'
> +  usage:
> +    $ref: /schemas/types.yaml#/definitions/string
> +    description: |
> +      Describes the usage of the memory region, e.g.:
> +
> +        "acpi-reclaim", "acpi-nvs", "bootcode", "bootdata", "bootdata",
> +        "runtime-code", "runtime-data"
> +  attr:
> +    $ref: /schemas/types.yaml#/definitions/string-array
> +    description: |
> +      Attributes possessed by this memory region:
> +
> +        "single-bit-ecc" - supports single-bit ECC
> +        "multi-bit-ecc" - supports multiple-bit ECC
> +        "no-ecc" - non-ECC memory
> +
> +patternProperties:
> +  "^([a-z][a-z0-9\\-]+@[0-9a-f]+)?$":
> +    type: object
> +    additionalProperties: false
> +
> +    properties:
> +      reg:
> +        minItems: 1
> +        maxItems: 1024
> +
> +    required:
> +      - reg
> +
> +additionalProperties: true
> +
> +...
> --
> 2.41.0.694.ge786442a9b-goog
>
