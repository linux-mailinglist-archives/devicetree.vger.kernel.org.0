Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B22E048AE24
	for <lists+devicetree@lfdr.de>; Tue, 11 Jan 2022 14:05:24 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240120AbiAKNFX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 11 Jan 2022 08:05:23 -0500
Received: from perceval.ideasonboard.com ([213.167.242.64]:51588 "EHLO
        perceval.ideasonboard.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240093AbiAKNFX (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 11 Jan 2022 08:05:23 -0500
Received: from pendragon.ideasonboard.com (62-78-145-57.bb.dnainternet.fi [62.78.145.57])
        by perceval.ideasonboard.com (Postfix) with ESMTPSA id 86777CC;
        Tue, 11 Jan 2022 14:05:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
        s=mail; t=1641906321;
        bh=NSx4F+zr58+4S8iLThDYBkgZKhVFhldOeS3yZlZi9wQ=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=tOR5dzV67x+IVOG22DYuatLvq8HxL5ND2d11qVNb2hKP01gSFUectUkj/ecSI2+c2
         2z9GzTrFqT14R8Jd2Xio/WDD2uqahc8F6+wsKtPTshK8Vv2zdefnbCe9ATWqm3RfDu
         qurPJBnKqtn1GD7vUdFKhJj2x8F2PhAMUgEFWfCg=
Date:   Tue, 11 Jan 2022 15:05:10 +0200
From:   Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To:     Maxime Ripard <maxime@cerno.tech>
Cc:     Thierry Reding <thierry.reding@gmail.com>,
        Sam Ravnborg <sam@ravnborg.org>,
        Daniel Vetter <daniel.vetter@intel.com>,
        David Airlie <airlied@linux.ie>,
        Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
        Rob Herring <robh@kernel.org>
Subject: Re: [PATCH v3 2/2] dt-bindings: panel: Introduce a panel-lvds binding
Message-ID: <Yd2Ahn3+FVv/Aks7@pendragon.ideasonboard.com>
References: <20220111110635.804371-1-maxime@cerno.tech>
 <20220111110635.804371-2-maxime@cerno.tech>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220111110635.804371-2-maxime@cerno.tech>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Maxime,

Thank you for the patch.

On Tue, Jan 11, 2022 at 12:06:35PM +0100, Maxime Ripard wrote:
> Following the previous patch, let's introduce a generic panel-lvds
> binding that documents the panels that don't have any particular
> constraint documented.
> 
> Reviewed-by: Rob Herring <robh@kernel.org>
> Signed-off-by: Maxime Ripard <maxime@cerno.tech>
> 
> ---
> 
> Changes from v2:
>   - Added a MAINTAINERS entry
> 
> Changes from v1:
>   - Added missing compatible
>   - Fixed lint
> ---
>  .../bindings/display/panel/panel-lvds.yaml    | 57 +++++++++++++++++++
>  MAINTAINERS                                   |  1 +
>  2 files changed, 58 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/display/panel/panel-lvds.yaml
> 
> diff --git a/Documentation/devicetree/bindings/display/panel/panel-lvds.yaml b/Documentation/devicetree/bindings/display/panel/panel-lvds.yaml
> new file mode 100644
> index 000000000000..fcc50db6a812
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/display/panel/panel-lvds.yaml
> @@ -0,0 +1,57 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/display/panel/panel-lvds.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Generic LVDS Display Panel Device Tree Bindings
> +
> +maintainers:
> +  - Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
> +  - Thierry Reding <thierry.reding@gmail.com>
> +
> +allOf:
> +  - $ref: panel-common.yaml#
> +  - $ref: /schemas/display/lvds.yaml/#
> +
> +select:
> +  properties:
> +    compatible:
> +      contains:
> +        const: panel-lvds
> +
> +  not:
> +    properties:
> +      compatible:
> +        contains:
> +          enum:
> +            - advantech,idk-1110wr
> +            - advantech,idk-2121wr
> +            - innolux,ee101ia-01d
> +            - mitsubishi,aa104xd12
> +            - mitsubishi,aa121td01
> +            - sgd,gktw70sdae4se

I still don't like this :-( Couldn't we instead do

select:
  properties:
    compatible:
      contains:
        enum:
          - auo,b101ew05
          - tbs,a711-panel

?

> +
> +  required:
> +    - compatible
> +
> +properties:
> +  compatible:
> +    items:
> +      - enum:
> +          - auo,b101ew05
> +          - tbs,a711-panel
> +
> +      - const: panel-lvds
> +
> +unevaluatedProperties: false
> +
> +required:
> +  - compatible
> +  - data-mapping
> +  - width-mm
> +  - height-mm
> +  - panel-timing
> +  - port
> +
> +...
> diff --git a/MAINTAINERS b/MAINTAINERS
> index 368072da0a05..02001455949e 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -6080,6 +6080,7 @@ T:	git git://anongit.freedesktop.org/drm/drm-misc
>  S:	Maintained
>  F:	drivers/gpu/drm/panel/panel-lvds.c
>  F:	Documentation/devicetree/bindings/display/lvds.yaml
> +F:	Documentation/devicetree/bindings/display/panel/panel-lvds.yaml
>  
>  DRM DRIVER FOR MANTIX MLAF057WE51 PANELS
>  M:	Guido Günther <agx@sigxcpu.org>

-- 
Regards,

Laurent Pinchart
