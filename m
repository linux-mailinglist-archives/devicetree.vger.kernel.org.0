Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 26A627DE74
	for <lists+devicetree@lfdr.de>; Thu,  1 Aug 2019 17:09:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729021AbfHAPJK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 1 Aug 2019 11:09:10 -0400
Received: from mail.kernel.org ([198.145.29.99]:36446 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1728691AbfHAPJK (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Thu, 1 Aug 2019 11:09:10 -0400
Received: from mail-qt1-f173.google.com (mail-qt1-f173.google.com [209.85.160.173])
        (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
        (No client certificate requested)
        by mail.kernel.org (Postfix) with ESMTPSA id 665D12087E
        for <devicetree@vger.kernel.org>; Thu,  1 Aug 2019 15:09:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=default; t=1564672149;
        bh=40shE2rxVBiMNf4Kx7yDibqVDgp6W/MOUvF5pi9dMyQ=;
        h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
        b=esx7VY/uwA+q8kHQbxlgeiEwUURr+QZhKig1eK6LJJCwbDUnB2MJVAyoRTvan4wxq
         uVFL5Go6Ayar9EDTWSW1+mgp34leoE1XRLuUmFnL3I7gc2p0Ogj9G2DALK6VPqAFEZ
         qdHAONcfRrVhD1Of2UzivUmJcd4tffAD+MAIo5zM=
Received: by mail-qt1-f173.google.com with SMTP id h18so70577056qtm.9
        for <devicetree@vger.kernel.org>; Thu, 01 Aug 2019 08:09:09 -0700 (PDT)
X-Gm-Message-State: APjAAAUJn5uoN4646xq8QQ1b2er3j4KpH8X3emIDf98D3yanMe9Kifid
        68/F69NCBurG90gFhYZ/4gvo4IqDyiur0FdmLA==
X-Google-Smtp-Source: APXvYqyRObrfCmNAGzN9pkiA5a5qQVLF5gsIcGMCjX9aTatSwQ0ZlLuAnFMBqKA+PE6jbgbW1wX5Wq/pY/fADF3k6sI=
X-Received: by 2002:ac8:36b9:: with SMTP id a54mr92696475qtc.300.1564672148616;
 Thu, 01 Aug 2019 08:09:08 -0700 (PDT)
MIME-Version: 1.0
References: <20190801135644.12843-1-narmstrong@baylibre.com> <20190801135644.12843-8-narmstrong@baylibre.com>
In-Reply-To: <20190801135644.12843-8-narmstrong@baylibre.com>
From:   Rob Herring <robh+dt@kernel.org>
Date:   Thu, 1 Aug 2019 09:08:54 -0600
X-Gmail-Original-Message-ID: <CAL_Jsq+Ytb2eJ4g_BMaCwyjM=taB6Yc8qM=U-==vFJ3LqDqV6Q@mail.gmail.com>
Message-ID: <CAL_Jsq+Ytb2eJ4g_BMaCwyjM=taB6Yc8qM=U-==vFJ3LqDqV6Q@mail.gmail.com>
Subject: Re: [RFC 7/9] dt-bindings: phy: meson-g12a-usb3-pcie-phy: convert to yaml
To:     Neil Armstrong <narmstrong@baylibre.com>
Cc:     linux-amlogic@lists.infradead.org,
        "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE" 
        <linux-arm-kernel@lists.infradead.org>, devicetree@vger.kernel.org,
        Kishon Vijay Abraham I <kishon@ti.com>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Aug 1, 2019 at 7:56 AM Neil Armstrong <narmstrong@baylibre.com> wrote:
>
> Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
> ---
>  .../bindings/phy/meson-g12a-usb3-pcie-phy.txt | 22 -------
>  .../phy/meson-g12a-usb3-pcie-phy.yaml         | 61 +++++++++++++++++++
>  2 files changed, 61 insertions(+), 22 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/phy/meson-g12a-usb3-pcie-phy.txt
>  create mode 100644 Documentation/devicetree/bindings/phy/meson-g12a-usb3-pcie-phy.yaml
>
> diff --git a/Documentation/devicetree/bindings/phy/meson-g12a-usb3-pcie-phy.txt b/Documentation/devicetree/bindings/phy/meson-g12a-usb3-pcie-phy.txt
> deleted file mode 100644
> index 7cfc17e2df31..000000000000
> --- a/Documentation/devicetree/bindings/phy/meson-g12a-usb3-pcie-phy.txt
> +++ /dev/null
> @@ -1,22 +0,0 @@
> -* Amlogic G12A USB3 + PCIE Combo PHY binding
> -
> -Required properties:
> -- compatible:  Should be "amlogic,meson-g12a-usb3-pcie-phy"
> -- #phys-cells: must be 1. The cell number is used to select the phy mode
> -  as defined in <dt-bindings/phy/phy.h> between PHY_TYPE_USB3 and PHY_TYPE_PCIE
> -- reg:         The base address and length of the registers
> -- clocks:      a phandle to the 100MHz reference clock of this PHY
> -- clock-names: must be "ref_clk"
> -- resets:      phandle to the reset lines for the PHY control
> -- reset-names: must be "phy"
> -
> -Example:
> -       usb3_pcie_phy: phy@46000 {
> -               compatible = "amlogic,g12a-usb3-pcie-phy";
> -               reg = <0x0 0x46000 0x0 0x2000>;
> -               clocks = <&clkc CLKID_PCIE_PLL>;
> -               clock-names = "ref_clk";
> -               resets = <&reset RESET_PCIE_PHY>;
> -               reset-names = "phy";
> -               #phy-cells = <1>;
> -       };
> diff --git a/Documentation/devicetree/bindings/phy/meson-g12a-usb3-pcie-phy.yaml b/Documentation/devicetree/bindings/phy/meson-g12a-usb3-pcie-phy.yaml
> new file mode 100644
> index 000000000000..fe4df6bd51b2
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/phy/meson-g12a-usb3-pcie-phy.yaml
> @@ -0,0 +1,61 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> +# Copyright 2019 BayLibre, SAS
> +%YAML 1.2
> +---
> +$id: "http://devicetree.org/schemas/phy/meson-g12a-usb3-pcie-phy.yaml#"
> +$schema: "http://devicetree.org/meta-schemas/core.yaml#"
> +
> +title: Amlogic G12A USB3 + PCIE Combo PHY
> +
> +maintainers:
> +  - Neil Armstrong <narmstrong@baylibre.com>
> +
> +properties:
> +  compatible:
> +    enum:
> +      - amlogic,g12a-usb3-pcie-phy

Wrong compatible string.

> +
> +  reg:
> +    maxItems: 1
> +
> +  clocks:
> +    maxItems: 1
> +    description:
> +      A phandle to the clock of this PHY
> +
> +  clock-names:
> +    items:
> +      - const: ref_clk
> +
> +  resets:
> +    maxItems: 1
> +    description:
> +      A phandle to the reset line of this PHY
> +
> +  reset-names:
> +    items:
> +      - const: phy
> +
> +  "#phy-cells":
> +    const: 1
> +
> +required:
> +  - compatible
> +  - reg
> +  - clocks
> +  - clock-names
> +  - resets
> +  - reset-names
> +  - "#phy-cells"
> +
> +examples:
> +  - |
> +    phy@46000 {
> +          compatible = "amlogic,meson-g12a-usb3-pcie-phy";
> +          reg = <0x46000 0x2000>;
> +          clocks = <&ref_clk>;
> +          clock-names = "ref_clk";
> +          resets = <&phy_reset>;
> +          reset-names = "phy";
> +          #phy-cells = <1>;
> +    };
> --
> 2.22.0
>
