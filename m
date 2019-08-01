Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id E247D7DE6E
	for <lists+devicetree@lfdr.de>; Thu,  1 Aug 2019 17:07:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1731358AbfHAPHp (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 1 Aug 2019 11:07:45 -0400
Received: from mail.kernel.org ([198.145.29.99]:36028 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1732347AbfHAPHp (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Thu, 1 Aug 2019 11:07:45 -0400
Received: from mail-qt1-f180.google.com (mail-qt1-f180.google.com [209.85.160.180])
        (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
        (No client certificate requested)
        by mail.kernel.org (Postfix) with ESMTPSA id DB038206B8
        for <devicetree@vger.kernel.org>; Thu,  1 Aug 2019 15:07:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=default; t=1564672064;
        bh=iSl6ok6B2SROLYHTwlF9Rt9vwiSJ20o3/syGoRjvS4k=;
        h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
        b=gwPTDBqSBdwKa7yeRMuwVfg3mJvvuhisdPYP1JnpirCoSUXWvBLGj+YvmKnoOLAWO
         SEMLFTYKzvNxJ9AShvtkVCIEhmy/WLWSD9Y5OwRQX8fhhoaUyS0HorXz0AtNbmA1SQ
         zIzhJQ5lx2n8XBdwrhIk4iciJE4J11QnvRUPvoQY=
Received: by mail-qt1-f180.google.com with SMTP id 44so39514243qtg.11
        for <devicetree@vger.kernel.org>; Thu, 01 Aug 2019 08:07:43 -0700 (PDT)
X-Gm-Message-State: APjAAAVltNdouSOJxsmxegD0lS5EKTMJLsRn4HkQ/JtHAA8eb3qIDH16
        aF9aoVzIyfpomrnc1clTsrwIkQCCm8zwyOGx1Q==
X-Google-Smtp-Source: APXvYqy7Pqe/EM1KT5Xeue0nhWEZlvbnoGusFTQHCOXMTlxdphxp7CGKAsGtOykYhiSsvQo3hQWcwNukIZ5EHYeeHME=
X-Received: by 2002:a0c:b627:: with SMTP id f39mr94377748qve.72.1564672063061;
 Thu, 01 Aug 2019 08:07:43 -0700 (PDT)
MIME-Version: 1.0
References: <20190801135644.12843-1-narmstrong@baylibre.com> <20190801135644.12843-7-narmstrong@baylibre.com>
In-Reply-To: <20190801135644.12843-7-narmstrong@baylibre.com>
From:   Rob Herring <robh+dt@kernel.org>
Date:   Thu, 1 Aug 2019 09:07:31 -0600
X-Gmail-Original-Message-ID: <CAL_JsqJbt=rzDrD8+Py0EcGx8ZiaqEupv5Rq+tCMk1ZcxKaOcg@mail.gmail.com>
Message-ID: <CAL_JsqJbt=rzDrD8+Py0EcGx8ZiaqEupv5Rq+tCMk1ZcxKaOcg@mail.gmail.com>
Subject: Re: [RFC 6/9] dt-bindings: phy: meson-g12a-usb2-phy: convert to yaml
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
>  .../bindings/phy/meson-g12a-usb2-phy.txt      | 22 ------
>  .../bindings/phy/meson-g12a-usb2-phy.yaml     | 67 +++++++++++++++++++
>  2 files changed, 67 insertions(+), 22 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/phy/meson-g12a-usb2-phy.txt
>  create mode 100644 Documentation/devicetree/bindings/phy/meson-g12a-usb2-phy.yaml
>
> diff --git a/Documentation/devicetree/bindings/phy/meson-g12a-usb2-phy.txt b/Documentation/devicetree/bindings/phy/meson-g12a-usb2-phy.txt
> deleted file mode 100644
> index a6ebc3dea159..000000000000
> --- a/Documentation/devicetree/bindings/phy/meson-g12a-usb2-phy.txt
> +++ /dev/null
> @@ -1,22 +0,0 @@
> -* Amlogic G12A USB2 PHY binding
> -
> -Required properties:
> -- compatible:  Should be "amlogic,meson-g12a-usb2-phy"
> -- reg:         The base address and length of the registers
> -- #phys-cells: must be 0 (see phy-bindings.txt in this directory)
> -- clocks:      a phandle to the clock of this PHY
> -- clock-names: must be "xtal"
> -- resets:      a phandle to the reset line of this PHY
> -- reset-names: must be "phy"
> -- phy-supply:  see phy-bindings.txt in this directory
> -
> -Example:
> -       usb2_phy0: phy@36000 {
> -               compatible = "amlogic,g12a-usb2-phy";
> -               reg = <0x0 0x36000 0x0 0x2000>;
> -               clocks = <&xtal>;
> -               clock-names = "xtal";
> -               resets = <&reset RESET_USB_PHY21>;
> -               reset-names = "phy";
> -               #phy-cells = <0>;
> -       };
> diff --git a/Documentation/devicetree/bindings/phy/meson-g12a-usb2-phy.yaml b/Documentation/devicetree/bindings/phy/meson-g12a-usb2-phy.yaml
> new file mode 100644
> index 000000000000..4cd5ba97d469
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/phy/meson-g12a-usb2-phy.yaml
> @@ -0,0 +1,67 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> +# Copyright 2019 BayLibre, SAS
> +%YAML 1.2
> +---
> +$id: "http://devicetree.org/schemas/phy/meson-g12a-usb2-phy.yaml#"

For this and the filename, use the compatible string (i.e. add 'amlogic,').

> +$schema: "http://devicetree.org/meta-schemas/core.yaml#"
> +
> +title: Amlogic G12A USB2 PHY
> +
> +maintainers:
> +  - Neil Armstrong <narmstrong@baylibre.com>
> +
> +properties:
> +  compatible:
> +    enum:
> +      - amlogic,meson-g12a-usb2-phy
> +
> +  reg:
> +    maxItems: 1
> +
> +  clocks:
> +    maxItems: 1
> +    description:
> +      A phandle to the clock of this PHY

As mentioned elsewhere, this description can be dropped.

> +
> +  clock-names:
> +    items:
> +      - const: xtal
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
> +    const: 0
> +
> +  phy-supply:
> +     maxItems: 1
> +     description:
> +       Phandle to a regulator that provides power to the PHY. This
> +       regulator will be managed during the PHY power on/off sequence.
> +
> +required:
> +  - compatible
> +  - reg
> +  - clocks
> +  - clock-names
> +  - resets
> +  - reset-names
> +  - "#phy-cells"

phy-supply was required in the old doc though the example disagrees.
If dropping required is desired, just mention so in the commit
message.

> +
> +examples:
> +  - |
> +    phy@36000 {
> +          compatible = "amlogic,meson-g12a-usb2-phy";
> +          reg = <0x36000 0x2000>;
> +          clocks = <&xtal>;
> +          clock-names = "xtal";
> +          resets = <&phy_reset>;
> +          reset-names = "phy";
> +          #phy-cells = <0>;
> +    };
> --
> 2.22.0
>
