Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3120634E342
	for <lists+devicetree@lfdr.de>; Tue, 30 Mar 2021 10:37:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231154AbhC3Ih0 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 30 Mar 2021 04:37:26 -0400
Received: from youngberry.canonical.com ([91.189.89.112]:36588 "EHLO
        youngberry.canonical.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231522AbhC3IhG (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 30 Mar 2021 04:37:06 -0400
Received: from mail-wr1-f71.google.com ([209.85.221.71])
        by youngberry.canonical.com with esmtps (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
        (Exim 4.86_2)
        (envelope-from <krzysztof.kozlowski@canonical.com>)
        id 1lR9rz-0003un-Ov
        for devicetree@vger.kernel.org; Tue, 30 Mar 2021 08:37:03 +0000
Received: by mail-wr1-f71.google.com with SMTP id b6so10035095wrq.22
        for <devicetree@vger.kernel.org>; Tue, 30 Mar 2021 01:37:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=mbzbxPGwpvuvP4UbXmSZFEjYnhNykOHX306yaaFKfA4=;
        b=Xx6vfqF+drUMfN+h7wW7Y0swwHyveQm1UXZrN8tRuiSiofmBrTjnQs/xYJLFErqTWo
         BAeYJDF+hMAcClLLuDWy5xE3aAp/VEFSufz07vhJ2KOcAOaGE9pJQPD2UC30Y2tL0HC3
         lJko05ri6ZJTxejYxC3YIm7+BjzVXAEAT+iaoF2WkAlH0Dzj2h5BQbbYOgDLsr8EDeu/
         cCDH5N8Ic6ThM2uvoLjSV29/t61bLqX6goXh5aWzp+LPQevBySc5/7vh+LpKT83hiSlq
         UNvLlIEnDTx+cBkZh4LjLmZtObDgqfjgi1vZBB1LEgI1sLwzk5P1tYIsGJi8TclkI6MS
         6iyA==
X-Gm-Message-State: AOAM530sT6J7PX4XMnz7cCc/5ZXv5qAil0FvdDHSzUOGswu5/UULyeOi
        bRmfYB4daqR17zb/qN3OsxL/v3H2ppFqHAkmhKf9wxdsaQhrBfhCzBNn8pjpDMCC4XIOxzMAPdL
        gZOHBW/55yCXbCOHFmOXPjt6FRdPhSi5pmpbSIyw=
X-Received: by 2002:adf:e68e:: with SMTP id r14mr32348122wrm.273.1617093423447;
        Tue, 30 Mar 2021 01:37:03 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyAZMMI6WzUi8QFDYpplT0Bud6ED/RN4dY97HrmfWKNzQhLz2LDepdWY4RknnxfWr9wjEoVdw==
X-Received: by 2002:adf:e68e:: with SMTP id r14mr32348108wrm.273.1617093423295;
        Tue, 30 Mar 2021 01:37:03 -0700 (PDT)
Received: from [192.168.1.116] (adsl-84-226-167-205.adslplus.ch. [84.226.167.205])
        by smtp.gmail.com with ESMTPSA id f126sm2332146wmf.17.2021.03.30.01.37.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 30 Mar 2021 01:37:02 -0700 (PDT)
Subject: Re: [PATCH v1 4/6] dt-bindings: memory: tegra20: mc: Convert to
 schema
To:     Dmitry Osipenko <digetx@gmail.com>,
        Thierry Reding <thierry.reding@gmail.com>,
        Jonathan Hunter <jonathanh@nvidia.com>,
        Rob Herring <robh+dt@kernel.org>
Cc:     devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-tegra@vger.kernel.org
References: <20210329194602.17049-1-digetx@gmail.com>
 <20210329194602.17049-5-digetx@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Message-ID: <01daabba-9023-8d78-9386-99b974d46faf@canonical.com>
Date:   Tue, 30 Mar 2021 10:37:02 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.1
MIME-Version: 1.0
In-Reply-To: <20210329194602.17049-5-digetx@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 29/03/2021 21:46, Dmitry Osipenko wrote:
> Convert Tegra20 Memory Controller binding to schema.
> 
> Signed-off-by: Dmitry Osipenko <digetx@gmail.com>

Thanks for the patch! Please see a comment below.

> ---
>  .../memory-controllers/nvidia,tegra20-mc.txt  | 40 ----------
>  .../memory-controllers/nvidia,tegra20-mc.yaml | 78 +++++++++++++++++++
>  2 files changed, 78 insertions(+), 40 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/memory-controllers/nvidia,tegra20-mc.txt
>  create mode 100644 Documentation/devicetree/bindings/memory-controllers/nvidia,tegra20-mc.yaml
> 
> diff --git a/Documentation/devicetree/bindings/memory-controllers/nvidia,tegra20-mc.txt b/Documentation/devicetree/bindings/memory-controllers/nvidia,tegra20-mc.txt
> deleted file mode 100644
> index 739b7c6f2e26..000000000000
> --- a/Documentation/devicetree/bindings/memory-controllers/nvidia,tegra20-mc.txt
> +++ /dev/null
> @@ -1,40 +0,0 @@
> -NVIDIA Tegra20 MC(Memory Controller)
> -
> -Required properties:
> -- compatible : "nvidia,tegra20-mc-gart"
> -- reg : Should contain 2 register ranges: physical base address and length of
> -  the controller's registers and the GART aperture respectively.
> -- clocks: Must contain an entry for each entry in clock-names.
> -  See ../clocks/clock-bindings.txt for details.
> -- clock-names: Must include the following entries:
> -  - mc: the module's clock input
> -- interrupts : Should contain MC General interrupt.
> -- #reset-cells : Should be 1. This cell represents memory client module ID.
> -  The assignments may be found in header file <dt-bindings/memory/tegra20-mc.h>
> -  or in the TRM documentation.
> -- #iommu-cells: Should be 0. This cell represents the number of cells in an
> -  IOMMU specifier needed to encode an address. GART supports only a single
> -  address space that is shared by all devices, therefore no additional
> -  information needed for the address encoding.
> -- #interconnect-cells : Should be 1. This cell represents memory client.
> -  The assignments may be found in header file <dt-bindings/memory/tegra20-mc.h>.
> -
> -Example:
> -	mc: memory-controller@7000f000 {
> -		compatible = "nvidia,tegra20-mc-gart";
> -		reg = <0x7000f000 0x400		/* controller registers */
> -		       0x58000000 0x02000000>;	/* GART aperture */
> -		clocks = <&tegra_car TEGRA20_CLK_MC>;
> -		clock-names = "mc";
> -		interrupts = <GIC_SPI 77 0x04>;
> -		#reset-cells = <1>;
> -		#iommu-cells = <0>;
> -		#interconnect-cells = <1>;
> -	};
> -
> -	video-codec@6001a000 {
> -		compatible = "nvidia,tegra20-vde";
> -		...
> -		resets = <&mc TEGRA20_MC_RESET_VDE>;
> -		iommus = <&mc>;
> -	};
> diff --git a/Documentation/devicetree/bindings/memory-controllers/nvidia,tegra20-mc.yaml b/Documentation/devicetree/bindings/memory-controllers/nvidia,tegra20-mc.yaml
> new file mode 100644
> index 000000000000..c5731fa41e83
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/memory-controllers/nvidia,tegra20-mc.yaml
> @@ -0,0 +1,78 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/memory-controllers/nvidia,tegra20-mc.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: NVIDIA Tegra20 SoC Memory Controller
> +
> +maintainers:
> +  - Dmitry Osipenko <digetx@gmail.com>
> +  - Jon Hunter <jonathanh@nvidia.com>
> +  - Thierry Reding <thierry.reding@gmail.com>
> +
> +description: |
> +  The Tegra20 Memory Controller merges request streams from various client
> +  interfaces into request stream(s) for the various memory target devices,
> +  and returns response data to the various clients. The Memory Controller
> +  has a configurable arbitration algorithm to allow the user to fine-tune
> +  performance among the various clients.
> +
> +  Tegra20 Memory Controller includes the GART (Graphics Address Relocation
> +  Table) which allows Memory Controller to provide a linear view of a
> +  fragmented memory pages.
> +
> +properties:
> +  compatible:
> +    const: nvidia,tegra20-mc-gart
> +
> +  reg:
> +    minItems: 1
> +    maxItems: 2

I think you always need two regs, don't you? If so, then better to use
"description" like in
Documentation/devicetree/bindings/example-schema.yaml to describe which
set is for which range/purpose.


Best regards,
Krzysztof
