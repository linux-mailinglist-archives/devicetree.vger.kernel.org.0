Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 4F32D82CF7
	for <lists+devicetree@lfdr.de>; Tue,  6 Aug 2019 09:41:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728798AbfHFHlJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 6 Aug 2019 03:41:09 -0400
Received: from metis.ext.pengutronix.de ([85.220.165.71]:41603 "EHLO
        metis.ext.pengutronix.de" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728056AbfHFHlI (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 6 Aug 2019 03:41:08 -0400
Received: from lupine.hi.pengutronix.de ([2001:67c:670:100:3ad5:47ff:feaf:1a17] helo=lupine)
        by metis.ext.pengutronix.de with esmtp (Exim 4.92)
        (envelope-from <p.zabel@pengutronix.de>)
        id 1huu5g-0003fC-7P; Tue, 06 Aug 2019 09:41:04 +0200
Message-ID: <1565077264.4951.4.camel@pengutronix.de>
Subject: Re: [RFCv2 4/9] dt-bindings: reset: amlogic,meson-reset: convert to
 yaml
From:   Philipp Zabel <p.zabel@pengutronix.de>
To:     Neil Armstrong <narmstrong@baylibre.com>, robh+dt@kernel.org
Cc:     linux-amlogic@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Date:   Tue, 06 Aug 2019 09:41:04 +0200
In-Reply-To: <20190805120320.32282-5-narmstrong@baylibre.com>
References: <20190805120320.32282-1-narmstrong@baylibre.com>
         <20190805120320.32282-5-narmstrong@baylibre.com>
Content-Type: text/plain; charset="UTF-8"
X-Mailer: Evolution 3.22.6-1+deb9u2 
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
X-SA-Exim-Connect-IP: 2001:67c:670:100:3ad5:47ff:feaf:1a17
X-SA-Exim-Mail-From: p.zabel@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, 2019-08-05 at 14:03 +0200, Neil Armstrong wrote:
> Now that we have the DT validation in place, let's convert the device tree
> bindings for the Amlogic Reset controller over to a YAML schemas.
> 
> Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>

Let me know if you want me to pick up this patch, otherwise

Acked-by: Philipp Zabel <p.zabel@pengutronix.de>

to merge with the rest of the series.

regards
Philipp

> ---
>  .../bindings/reset/amlogic,meson-reset.txt    | 19 ----------
>  .../bindings/reset/amlogic,meson-reset.yaml   | 37 +++++++++++++++++++
>  2 files changed, 37 insertions(+), 19 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/reset/amlogic,meson-reset.txt
>  create mode 100644 Documentation/devicetree/bindings/reset/amlogic,meson-reset.yaml
> 
> diff --git a/Documentation/devicetree/bindings/reset/amlogic,meson-reset.txt b/Documentation/devicetree/bindings/reset/amlogic,meson-reset.txt
> deleted file mode 100644
> index 28ef6c295c76..000000000000
> --- a/Documentation/devicetree/bindings/reset/amlogic,meson-reset.txt
> +++ /dev/null
> @@ -1,19 +0,0 @@
> -Amlogic Meson SoC Reset Controller
> -=======================================
> -
> -Please also refer to reset.txt in this directory for common reset
> -controller binding usage.
> -
> -Required properties:
> -- compatible: Should be "amlogic,meson8b-reset", "amlogic,meson-gxbb-reset" or
> -	"amlogic,meson-axg-reset".
> -- reg: should contain the register address base
> -- #reset-cells: 1, see below
> -
> -example:
> -
> -reset: reset-controller {
> -	compatible = "amlogic,meson-gxbb-reset";
> -	reg = <0x0 0x04404 0x0 0x20>;
> -	#reset-cells = <1>;
> -};
> diff --git a/Documentation/devicetree/bindings/reset/amlogic,meson-reset.yaml b/Documentation/devicetree/bindings/reset/amlogic,meson-reset.yaml
> new file mode 100644
> index 000000000000..00917d868d58
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/reset/amlogic,meson-reset.yaml
> @@ -0,0 +1,37 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> +# Copyright 2019 BayLibre, SAS
> +%YAML 1.2
> +---
> +$id: "http://devicetree.org/schemas/reset/amlogic,meson-reset.yaml#"
> +$schema: "http://devicetree.org/meta-schemas/core.yaml#"
> +
> +title: Amlogic Meson SoC Reset Controller
> +
> +maintainers:
> +  - Neil Armstrong <narmstrong@baylibre.com>
> +
> +properties:
> +  compatible:
> +    enum:
> +      - amlogic,meson8b-reset # Reset Controller on Meson8b and compatible SoCs
> +      - amlogic,meson-gxbb-reset # Reset Controller on GXBB and compatible SoCs
> +      - amlogic,meson-axg-reset # Reset Controller on AXG and compatible SoCs
> +
> +  reg:
> +    maxItems: 1
> +
> +  "#reset-cells":
> +    const: 1
> +
> +required:
> +  - compatible
> +  - reg
> +  - "#reset-cells"
> +
> +examples:
> +  - |
> +    reset-controller@c884404 {
> +          compatible = "amlogic,meson-gxbb-reset";
> +          reg = <0xc884404 0x20>;
> +          #reset-cells = <1>;
> +    };
