Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 10256892B4
	for <lists+devicetree@lfdr.de>; Sun, 11 Aug 2019 18:56:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725870AbfHKQ4D (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 11 Aug 2019 12:56:03 -0400
Received: from asavdk4.altibox.net ([109.247.116.15]:47802 "EHLO
        asavdk4.altibox.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725847AbfHKQ4C (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 11 Aug 2019 12:56:02 -0400
Received: from ravnborg.org (unknown [158.248.194.18])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by asavdk4.altibox.net (Postfix) with ESMTPS id 83BEF803BA;
        Sun, 11 Aug 2019 18:55:59 +0200 (CEST)
Date:   Sun, 11 Aug 2019 18:55:58 +0200
From:   Sam Ravnborg <sam@ravnborg.org>
To:     Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc:     dri-devel@lists.freedesktop.org,
        Thierry Reding <thierry.reding@gmail.com>,
        devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>
Subject: Re: [PATCH v2 3/9] dt-bindings: display: panel: Add bindings for NEC
 NL8048HL11 panel
Message-ID: <20190811165558.GE14660@ravnborg.org>
References: <20190810231048.1921-1-laurent.pinchart@ideasonboard.com>
 <20190810231048.1921-4-laurent.pinchart@ideasonboard.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190810231048.1921-4-laurent.pinchart@ideasonboard.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CMAE-Score: 0
X-CMAE-Analysis: v=2.3 cv=VcLZwmh9 c=1 sm=1 tr=0
        a=UWs3HLbX/2nnQ3s7vZ42gw==:117 a=UWs3HLbX/2nnQ3s7vZ42gw==:17
        a=jpOVt7BSZ2e4Z31A5e1TngXxSK0=:19 a=kj9zAlcOel0A:10 a=P1BnusSwAAAA:8
        a=gEfo2CItAAAA:8 a=BV6WD_pGniE4cI7BCpoA:9 a=CjuIK1q_8ugA:10
        a=D0XLA9XvdZm18NrgonBM:22 a=sptkURWiP4Gy88Gu7hUp:22
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Laurent.

My meta-schemas foo is very limited, but I noticed a few things.
Hopefully Rob finds time soon to review.

	Sam

On Sun, Aug 11, 2019 at 02:10:42AM +0300, Laurent Pinchart wrote:
> The NEC NL8048HL11 is a 10.4cm WVGA (800x480) panel with a 24-bit RGB
> parallel data interface and an SPI control interface.
> 
> Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> ---
> Changes since v1:
> 
> - Convert to YAML
> ---
>  .../display/panel/nec,nl8048hl11.yaml         | 49 +++++++++++++++++++
>  1 file changed, 49 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/display/panel/nec,nl8048hl11.yaml
> 
> diff --git a/Documentation/devicetree/bindings/display/panel/nec,nl8048hl11.yaml b/Documentation/devicetree/bindings/display/panel/nec,nl8048hl11.yaml
> new file mode 100644
> index 000000000000..cc3d40975828
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/display/panel/nec,nl8048hl11.yaml
> @@ -0,0 +1,49 @@
> +# SPDX-License-Identifier: GPL-2.0
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/display/panel/nec,nl8048hl11.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: NEC NL8048HL11 4.1" WVGA TFT LCD panel
> +
> +description:
> +  The NEC NL8048HL11 is a 4.1" WVGA TFT LCD panel with a 24-bit RGB parallel
> +  data interface and an SPI control interface.
> +
> +maintainers:
> +  - Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> +
> +allOf:
> +  - $ref: panel-common.yaml#
I *think* we are missing a reference to spi-controller.yaml here.


> +
> +properties:
> +  compatible:
> +    const: nec,nl8048hl11
> +
> +  label: true
> +  reset-gpios: true
> +  port: true
> +
> +required:
> +  - compatible
> +  - reset-gpios
> +  - port
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    lcd_panel: panel {
> +      compatible = "nec,nl8048hl11";
> +      spi-max-frequency = <10000000>;
Not sure, but should there be a reg property here for spi too?

> +
> +      reset-gpios = <&gpio7 7 GPIO_ACTIVE_LOW>;
> +
> +      port {
> +        lcd_in: endpoint {
> +          remote-endpoint = <&dpi_out>;
> +        };
> +      };
> +    };
> +
> +...
> -- 
> Regards,
> 
> Laurent Pinchart
