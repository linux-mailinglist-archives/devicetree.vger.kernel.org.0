Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 89191341F12
	for <lists+devicetree@lfdr.de>; Fri, 19 Mar 2021 15:13:31 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230025AbhCSOM4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 19 Mar 2021 10:12:56 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51594 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230090AbhCSOMz (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 19 Mar 2021 10:12:55 -0400
Received: from mail-vs1-xe2b.google.com (mail-vs1-xe2b.google.com [IPv6:2607:f8b0:4864:20::e2b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BBD26C06174A
        for <devicetree@vger.kernel.org>; Fri, 19 Mar 2021 07:12:54 -0700 (PDT)
Received: by mail-vs1-xe2b.google.com with SMTP id a15so3552535vsi.0
        for <devicetree@vger.kernel.org>; Fri, 19 Mar 2021 07:12:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=rhtJ+/KMkr9j4F5l7xToUE92auUuaZKXFXYtoFbzKi8=;
        b=p7spQuRg1ZgSy6xXjHIhASGtcj5pHDWKmuEjqbTuyd2ab5B1LRC1hI5nshuiyBxvzP
         2KjnykBqVgutT9bhh/25h8ldA8uUsvxNRDkpQOIRmX5+QdfgAVFEMJ9eefG4ow2IN/KU
         oK4teq7scaPduKErOQRSk9HffPNZanPkoNlWxeC6nDW1PriQLgu/fSPrA+xNc0uBpN6/
         Ar2IS7WI+Cnl0pCSaJOSmVriUT6Pi0UpVB8TH73IdWqLOcJgHATliBlXxLIIgSRl1CiS
         S+PM9GC+W+KafUfrXglYpTtlBDSoOoYuew0/3xPTw/engvhuCr2n3rSoFuQhMtAvl4nc
         sK+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=rhtJ+/KMkr9j4F5l7xToUE92auUuaZKXFXYtoFbzKi8=;
        b=QXjIpjbZ9ZEhmSKLsN6gg5ws6J8UQMoM0i6JE9xgOrMkbZSZ/ZAsrax3qgKpLLFTLD
         8qi1vNEA1J1nVfuoZnx1Nq8b40qWNZVZJO04f6Y2Cb77tm6XxDtwioQQdLVE8T34mZNU
         r5Y4YggA8VTWqT7thBHbaApIKFCGjSpmTLHKqK3tUNyJ007PWw84kB8HzbqnRNJ4nA33
         6gbDwY2uRgqEJQF1SjWbQc0ZejI6pAaRia5DeH5vUeM7Sc3+54RzL+7oAPTgE29FmTzZ
         jsQ/qTN/3y432uMRuLsSepYhqbH2pZo3wcURyWx+pumxWTvCSrkryxU48m2bwkohx35o
         M+6Q==
X-Gm-Message-State: AOAM5328m8qP2/PRNlo3XOjNgOIFdisVOBwMOFKWTnsjkfuS2H2KhfIb
        bRVXaQZKtpt4695mKpZFV0iBRDKXvpVxd8kp+E79OQ==
X-Google-Smtp-Source: ABdhPJzis8HlXL3zAqtJ2aBs7zLA8bDwN8cVmClyr3n/W4dECta2ibESJFO+yC/KmKAcg6A4t8jqptidBW25Oo2rPO4=
X-Received: by 2002:a67:77c1:: with SMTP id s184mr2813086vsc.55.1616163173959;
 Fri, 19 Mar 2021 07:12:53 -0700 (PDT)
MIME-Version: 1.0
References: <1615879102-45919-1-git-send-email-shawn.lin@rock-chips.com>
In-Reply-To: <1615879102-45919-1-git-send-email-shawn.lin@rock-chips.com>
From:   Ulf Hansson <ulf.hansson@linaro.org>
Date:   Fri, 19 Mar 2021 15:12:16 +0100
Message-ID: <CAPDyKFou+0=zh-sqOa3DwhQr-iWLjPoP7tjVHDFp87+wVhCr8Q@mail.gmail.com>
Subject: Re: [PATCH v6 1/3] dt-bindings: mmc: sdhci-of-dwcmhsc: Convert to
 yaml file
To:     Shawn Lin <shawn.lin@rock-chips.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        linux-mmc <linux-mmc@vger.kernel.org>,
        Adrian Hunter <adrian.hunter@intel.com>,
        DTML <devicetree@vger.kernel.org>,
        "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, 16 Mar 2021 at 08:18, Shawn Lin <shawn.lin@rock-chips.com> wrote:
>
> This patch converts sdhci-of-dwcmshc.txt to sdhci-of-dwcmshc.yaml
>
> Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>
> Reviewed-by: Rob Herring <robh@kernel.org>

Applied for next, thanks!

Kind regards
Uffe


> ---
>
> Changes in v6: None
> Changes in v5: None
> Changes in v4:
> - add tag from Rob
> Series-changes: 3
> - fix filename and other improvments suggested by Rob
>
>  .../devicetree/bindings/mmc/sdhci-of-dwcmshc.txt   | 20 -------
>  .../bindings/mmc/snps,dwcmshc-sdhci.yaml           | 63 ++++++++++++++++++++++
>  2 files changed, 63 insertions(+), 20 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/mmc/sdhci-of-dwcmshc.txt
>  create mode 100644 Documentation/devicetree/bindings/mmc/snps,dwcmshc-sdhci.yaml
>
> diff --git a/Documentation/devicetree/bindings/mmc/sdhci-of-dwcmshc.txt b/Documentation/devicetree/bindings/mmc/sdhci-of-dwcmshc.txt
> deleted file mode 100644
> index ee4253b..0000000
> --- a/Documentation/devicetree/bindings/mmc/sdhci-of-dwcmshc.txt
> +++ /dev/null
> @@ -1,20 +0,0 @@
> -* Synopsys DesignWare Cores Mobile Storage Host Controller
> -
> -Required properties:
> -- compatible: should be one of the following:
> -    "snps,dwcmshc-sdhci"
> -- reg: offset and length of the register set for the device.
> -- interrupts: a single interrupt specifier.
> -- clocks: Array of clocks required for SDHCI; requires at least one for
> -    core clock.
> -- clock-names: Array of names corresponding to clocks property; shall be
> -    "core" for core clock and "bus" for optional bus clock.
> -
> -Example:
> -       sdhci2: sdhci@aa0000 {
> -               compatible = "snps,dwcmshc-sdhci";
> -               reg = <0xaa0000 0x1000>;
> -               interrupts = <GIC_SPI 21 IRQ_TYPE_LEVEL_HIGH>;
> -               clocks = <&emmcclk>;
> -               bus-width = <8>;
> -       }
> diff --git a/Documentation/devicetree/bindings/mmc/snps,dwcmshc-sdhci.yaml b/Documentation/devicetree/bindings/mmc/snps,dwcmshc-sdhci.yaml
> new file mode 100644
> index 0000000..f99fb9f
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/mmc/snps,dwcmshc-sdhci.yaml
> @@ -0,0 +1,63 @@
> +# SPDX-License-Identifier: GPL-2.0-only
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/mmc/snps,dwcmshc-sdhci.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Synopsys Designware Mobile Storage Host Controller Binding
> +
> +maintainers:
> +  - Ulf Hansson <ulf.hansson@linaro.org>
> +  - Jisheng Zhang <Jisheng.Zhang@synaptics.com>
> +
> +allOf:
> +  - $ref: mmc-controller.yaml#
> +
> +properties:
> +  compatible:
> +    enum:
> +      - snps,dwcmshc-sdhci
> +
> +  reg:
> +    minItems: 1
> +    items:
> +      - description: Offset and length of the register set for the device
> +
> +  interrupts:
> +    maxItems: 1
> +
> +  clocks:
> +    minItems: 1
> +    items:
> +      - description: core clock
> +      - description: bus clock for optional
> +
> +  clock-names:
> +    minItems: 1
> +    items:
> +      - const: core
> +      - const: bus
> +
> +required:
> +  - compatible
> +  - reg
> +  - interrupts
> +  - clocks
> +  - clock-names
> +
> +unevaluatedProperties: false
> +
> +examples:
> +  - |
> +    mmc@aa0000 {
> +      compatible = "snps,dwcmshc-sdhci";
> +      reg = <0xaa000 0x1000>;
> +      interrupts = <0 25 0x4>;
> +      clocks = <&cru 17>, <&cru 18>;
> +      clock-names = "core", "bus";
> +      bus-width = <8>;
> +      #address-cells = <1>;
> +      #size-cells = <0>;
> +    };
> +
> +...
> --
> 2.7.4
>
>
>
