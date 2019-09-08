Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 10A55AD0F5
	for <lists+devicetree@lfdr.de>; Mon,  9 Sep 2019 00:14:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1731001AbfIHWOe (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 8 Sep 2019 18:14:34 -0400
Received: from kirsty.vergenet.net ([202.4.237.240]:50548 "EHLO
        kirsty.vergenet.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726626AbfIHWOe (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 8 Sep 2019 18:14:34 -0400
Received: from penelope.horms.nl (195-23-252-147.net.novis.pt [195.23.252.147])
        by kirsty.vergenet.net (Postfix) with ESMTPA id AF4D325B80B;
        Mon,  9 Sep 2019 08:14:27 +1000 (AEST)
Received: by penelope.horms.nl (Postfix, from userid 7100)
        id 838EBE210A9; Sun,  8 Sep 2019 13:58:48 +0200 (CEST)
Date:   Sun, 8 Sep 2019 13:58:48 +0200
From:   Simon Horman <horms@verge.net.au>
To:     Jacopo Mondi <jacopo+renesas@jmondi.org>
Cc:     laurent.pinchart@ideasonboard.com,
        kieran.bingham+renesas@ideasonboard.com, geert@linux-m68k.org,
        uli@fpond.eu, VenkataRajesh.Kalakodima@in.bosch.com,
        devicetree@vger.kernel.org, robh+dt@kernel.org,
        mark.rutland@arm.com
Subject: Re: [PATCH v4 1/9] dt-bindings: display: renesas,cmm: Add R-Car CMM
 documentation
Message-ID: <20190908115844.5dmli3ur73er6rhi@verge.net.au>
References: <20190906134341.9879-1-jacopo+renesas@jmondi.org>
 <20190906134341.9879-2-jacopo+renesas@jmondi.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190906134341.9879-2-jacopo+renesas@jmondi.org>
Organisation: Horms Solutions BV
User-Agent: NeoMutt/20170113 (1.7.2)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Sep 06, 2019 at 03:43:33PM +0200, Jacopo Mondi wrote:
> Add device tree bindings documentation for the Renesas R-Car Display
> Unit Color Management Module.
> 
> CMM is the image enhancement module available on each R-Car DU video
> channel on R-Car Gen2 and Gen3 SoCs (V3H and V3M excluded).
> 
> Signed-off-by: Jacopo Mondi <jacopo+renesas@jmondi.org>
> ---
>  .../bindings/display/renesas,cmm.yaml         | 64 +++++++++++++++++++
>  1 file changed, 64 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/display/renesas,cmm.yaml
> 
> diff --git a/Documentation/devicetree/bindings/display/renesas,cmm.yaml b/Documentation/devicetree/bindings/display/renesas,cmm.yaml
> new file mode 100644
> index 000000000000..9e5922689cd7
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/display/renesas,cmm.yaml
> @@ -0,0 +1,64 @@
> +# SPDX-License-Identifier: GPL-2.0
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/display/renesas,cmm.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Renesas R-Car Color Management Module (CMM)
> +
> +maintainers:
> +  - Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> +  - Kieran Bingham <kieran.bingham+renesas@ideasonboard.com>
> +  - Jacopo Mondi <jacopo+renesas@jmondi.org>
> +
> +description: |+
> +  Renesas R-Car color management module connected to R-Car DU video channels.
> +  It provides image enhancement functions such as 1-D look-up tables (LUT),
> +  3-D look-up tables (CMU), 1D-histogram generation (HGO), and color
> +  space conversion (CSC).
> +
> +properties:
> +  compatible:
> +    items:
> +      - enum:
> +        - renesas,r8a7795-cmm
> +        - renesas,r8a7796-cmm
> +        - renesas,r8a77965-cmm
> +        - renesas,r8a77990-cmm
> +        - renesas,r8a77995-cmm
> +      - enum:
> +        - renesas,rcar-gen3-cmm
> +        - renesas,rcar-gen2-cmm

Should we continue the long standing practice in .txt bindings
for Renesas IP blocks to document briefly the purpose of each compat string?

> +  reg:
> +    maxItems: 1
> +
> +  clocks:
> +    maxItems: 1
> +
> +  resets:
> +    maxItems: 1
> +
> +  power-domains:
> +    maxItems: 1
> +
> +required:
> +  - compatible
> +  - reg
> +  - clocks
> +  - resets
> +  - power-domains
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/clock/r8a7796-cpg-mssr.h>
> +    #include <dt-bindings/power/r8a7796-sysc.h>
> +
> +    cmm0: cmm@fea40000 {
> +         compatible = "renesas,r8a7796-cmm";

Should "renesas,rcar-gen3-cmm" be listed as the secondary compat string
here?

> +         reg = <0 0xfea40000 0 0x1000>;
> +         power-domains = <&sysc R8A7796_PD_ALWAYS_ON>;
> +         clocks = <&cpg CPG_MOD 711>;
> +         resets = <&cpg 711>;
> +    };
> --
> 2.23.0
> 
