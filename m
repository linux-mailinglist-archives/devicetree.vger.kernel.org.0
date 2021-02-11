Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A898C31874A
	for <lists+devicetree@lfdr.de>; Thu, 11 Feb 2021 10:49:12 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229988AbhBKJpU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 11 Feb 2021 04:45:20 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34184 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229991AbhBKJi3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 11 Feb 2021 04:38:29 -0500
Received: from mail-ed1-x52c.google.com (mail-ed1-x52c.google.com [IPv6:2a00:1450:4864:20::52c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0B9FFC061756
        for <devicetree@vger.kernel.org>; Thu, 11 Feb 2021 01:37:43 -0800 (PST)
Received: by mail-ed1-x52c.google.com with SMTP id q2so6205179eds.11
        for <devicetree@vger.kernel.org>; Thu, 11 Feb 2021 01:37:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=monstr-eu.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=6hY1ZjZ+/9Got/zDgBihzh+T9youbOEaeflEdA/GJho=;
        b=oXHC3jLpRQUz/X+J47YQo23xALpa0lHDKrTX7ZNS4VT0G4vk/pqoV77J0Pee3BTbAO
         oT3bg6HJlvNJtPwNes4CJPWQeDEvVnXCLIRjJqRb+INln+6f3GOJD2hQVydXCS6b5eW4
         oh2GnQ+hvWkbK3kHSaykbdhWbGntzEq34jXTtEEn8viXSqE5MQaqc8eM8PoeRWdO1KIg
         +wAPRh0y/PtW4IbgyxlW3AwU+BjK/3RRV7JVM+I2Hw+E2nyIjHKERvyp2ETLMkHO7M/F
         +ueSwLs6Xsp09a7dwFiMKFn9JFWP/5OmHchfYBOk/Xx7Af9sDvPomh7BjhIrzYzTn6lD
         ljCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=6hY1ZjZ+/9Got/zDgBihzh+T9youbOEaeflEdA/GJho=;
        b=jmsW8jTf0bYgUAEm6zg24YwcoS3uTq5a/0MkM9GYId2S8CiVc3eQdiQNeGtmNQZ3Kt
         Mm2WioQOQK4YuvhZJpbo/K6cWvW4af5m/BfeOM4hf6cCEkIBiokKjNjuy7XipIRFCE8l
         Ui1GX/W2IkArQPhnNkeCXy0u15+0PhOy31ZdzkEejY43h4KHe9b5eKVIxtKsbdgc1y0Z
         nlo+33VHLeJkoittQy89gi0TtHFZO0g8RUdNptuKB9apySEpLiQXOYhgwZG73BUdilC6
         o20edn5BI1lVdw8wFSZuBAbdWDFlaDpf4oL4F8QHzeIAndYkFtjkmcr9TpasWJaIV64j
         prFA==
X-Gm-Message-State: AOAM530b/Lx8nt68YlScztPgHCTKVkPfcNghZl4KO0uAuouxhYzh81ph
        MX9nf3dIK1fMGBOTZNDX/sn/s2dHlfR/HLSnb9wFe2c4bIE=
X-Google-Smtp-Source: ABdhPJy7EKT8hi84IG7yCpFEKbAockBKvJsxODy2meMI23Us60rkiTSsSWBQRycQSXG/x8XyVSE147QC8KfOAa/0KLU=
X-Received: by 2002:a05:6402:3590:: with SMTP id y16mr7625655edc.21.1613036261643;
 Thu, 11 Feb 2021 01:37:41 -0800 (PST)
MIME-Version: 1.0
References: <4ece21a7e9691ed1e775fd6b0b4046b1562e44bd.1612951821.git.michal.simek@xilinx.com>
In-Reply-To: <4ece21a7e9691ed1e775fd6b0b4046b1562e44bd.1612951821.git.michal.simek@xilinx.com>
From:   Michal Simek <monstr@monstr.eu>
Date:   Thu, 11 Feb 2021 10:37:30 +0100
Message-ID: <CAHTX3dKPTC1+awBADMCcgX+=PXsHPw2Bz3Po5=CocdKzVy3bRg@mail.gmail.com>
Subject: Re: [PATCH v2] dt-bindings: spi: zynq: Convert Zynq QSPI binding to yaml
To:     LKML <linux-kernel@vger.kernel.org>,
        Michal Simek <monstr@monstr.eu>, git <git@xilinx.com>
Cc:     Mark Brown <broonie@kernel.org>, Rob Herring <robh+dt@kernel.org>,
        DTML <devicetree@vger.kernel.org>,
        linux-arm <linux-arm-kernel@lists.infradead.org>,
        linux-spi@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

st 10. 2. 2021 v 11:10 odes=C3=ADlatel Michal Simek <michal.simek@xilinx.co=
m> napsal:
>
> Convert spi-zynq-qspi.txt to yaml.
>
> Signed-off-by: Michal Simek <michal.simek@xilinx.com>
> ---
>
> Changes in v2:
> - s/additionalProperties: true/unevaluatedProperties: false/
>
>  .../devicetree/bindings/spi/spi-zynq-qspi.txt | 25 --------
>  .../bindings/spi/xlnx,zynq-qspi.yaml          | 59 +++++++++++++++++++
>  MAINTAINERS                                   |  1 +
>  3 files changed, 60 insertions(+), 25 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/spi/spi-zynq-qspi.t=
xt
>  create mode 100644 Documentation/devicetree/bindings/spi/xlnx,zynq-qspi.=
yaml
>
> diff --git a/Documentation/devicetree/bindings/spi/spi-zynq-qspi.txt b/Do=
cumentation/devicetree/bindings/spi/spi-zynq-qspi.txt
> deleted file mode 100644
> index 16b734ad3102..000000000000
> --- a/Documentation/devicetree/bindings/spi/spi-zynq-qspi.txt
> +++ /dev/null
> @@ -1,25 +0,0 @@
> -Xilinx Zynq QSPI controller Device Tree Bindings
> --------------------------------------------------------------------
> -
> -Required properties:
> -- compatible           : Should be "xlnx,zynq-qspi-1.0".
> -- reg                  : Physical base address and size of QSPI register=
s map.
> -- interrupts           : Property with a value describing the interrupt
> -                         number.
> -- clock-names          : List of input clock names - "ref_clk", "pclk"
> -                         (See clock bindings for details).
> -- clocks               : Clock phandles (see clock bindings for details)=
.
> -
> -Optional properties:
> -- num-cs               : Number of chip selects used.
> -
> -Example:
> -       qspi: spi@e000d000 {
> -               compatible =3D "xlnx,zynq-qspi-1.0";
> -               reg =3D <0xe000d000 0x1000>;
> -               interrupt-parent =3D <&intc>;
> -               interrupts =3D <0 19 4>;
> -               clock-names =3D "ref_clk", "pclk";
> -               clocks =3D <&clkc 10>, <&clkc 43>;
> -               num-cs =3D <1>;
> -       };
> diff --git a/Documentation/devicetree/bindings/spi/xlnx,zynq-qspi.yaml b/=
Documentation/devicetree/bindings/spi/xlnx,zynq-qspi.yaml
> new file mode 100644
> index 000000000000..1f1c40a9f320
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/spi/xlnx,zynq-qspi.yaml
> @@ -0,0 +1,59 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/spi/xlnx,zynq-qspi.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Xilinx Zynq QSPI controller
> +
> +description:
> +  The Xilinx Zynq QSPI controller is used to access multi-bit serial fla=
sh
> +  memory devices.
> +
> +allOf:
> +  - $ref: "spi-controller.yaml#"
> +
> +maintainers:
> +  - Michal Simek <michal.simek@xilinx.com>
> +
> +# Everything else is described in the common file
> +properties:
> +  compatible:
> +    const: xlnx,zynq-qspi-1.0
> +
> +  reg:
> +    maxItems: 1
> +
> +  interrupts:
> +    maxItems: 1
> +
> +  clocks:
> +    items:
> +      - description: reference clock
> +      - description: peripheral clock
> +
> +  clock-names:
> +    items:
> +      - const: ref_clk
> +      - const: pclk
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
> +    spi@e000d000 {
> +        compatible =3D "xlnx,zynq-qspi-1.0";
> +        reg =3D <0xe000d000 0x1000>;
> +        interrupt-parent =3D <&intc>;
> +        interrupts =3D <0 19 4>;
> +        clock-names =3D "ref_clk", "pclk";
> +        clocks =3D <&clkc 10>, <&clkc 43>;
> +        num-cs =3D <1>;
> +    };
> diff --git a/MAINTAINERS b/MAINTAINERS
> index 546aa66428c9..e494b061dcd1 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -2766,6 +2766,7 @@ W:        http://wiki.xilinx.com
>  T:     git https://github.com/Xilinx/linux-xlnx.git
>  F:     Documentation/devicetree/bindings/i2c/cdns,i2c-r1p10.yaml
>  F:     Documentation/devicetree/bindings/i2c/xlnx,xps-iic-2.00.a.yaml
> +F:     Documentation/devicetree/bindings/spi/xlnx,zynq-qspi.yaml
>  F:     arch/arm/mach-zynq/
>  F:     drivers/block/xsysace.c
>  F:     drivers/clocksource/timer-cadence-ttc.c
> --
> 2.30.0
>

Applied.
M

--=20
Michal Simek, Ing. (M.Eng), OpenPGP -> KeyID: FE3D1F91
w: www.monstr.eu p: +42-0-721842854
Maintainer of Linux kernel - Xilinx Microblaze
Maintainer of Linux kernel - Xilinx Zynq ARM and ZynqMP ARM64 SoCs
U-Boot custodian - Xilinx Microblaze/Zynq/ZynqMP/Versal SoCs
