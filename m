Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B7D4026EA62
	for <lists+devicetree@lfdr.de>; Fri, 18 Sep 2020 03:18:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726065AbgIRBS4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 17 Sep 2020 21:18:56 -0400
Received: from perceval.ideasonboard.com ([213.167.242.64]:59362 "EHLO
        perceval.ideasonboard.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726055AbgIRBS4 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 17 Sep 2020 21:18:56 -0400
Received: from pendragon.ideasonboard.com (62-78-145-57.bb.dnainternet.fi [62.78.145.57])
        by perceval.ideasonboard.com (Postfix) with ESMTPSA id DEA9C2D7;
        Fri, 18 Sep 2020 03:18:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
        s=mail; t=1600391934;
        bh=02NFRVixNe7RIS+1uISxKS+ADE5ZLhxTdmlJT+2xOts=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=qDMzjoIXOun4pXzN4V74w+3JyTiDo9GKAwfF+dfnUTUv62yNmjfFFqTchRHaC/bj4
         wHhiE/L1/qyL79FoCKXpxOWG9bb2rhsxw6Awz1aT5BCBnwB3XhgLIY5G+6e8e2PnSH
         okORvFIxnXwsAnFK3dGYTgtkT9DkcHXBmREtUG6E=
Date:   Fri, 18 Sep 2020 04:18:23 +0300
From:   Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To:     Tomi Valkeinen <tomi.valkeinen@ti.com>
Cc:     dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        Rob Herring <robh+dt@kernel.org>, Jyri Sarha <jsarha@ti.com>,
        Tero Kristo <t-kristo@ti.com>, Nishanth Menon <nm@ti.com>,
        Rob Herring <robh@kernel.org>
Subject: Re: [PATCH v3 1/2] dt-bindings: display: ti,am65x-dss: add missing
 properties to dt-schema
Message-ID: <20200918011823.GD589@pendragon.ideasonboard.com>
References: <20200916131009.221252-1-tomi.valkeinen@ti.com>
 <20200916131009.221252-2-tomi.valkeinen@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20200916131009.221252-2-tomi.valkeinen@ti.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Tomi,

Thank you for the patch.

On Wed, Sep 16, 2020 at 04:10:08PM +0300, Tomi Valkeinen wrote:
> Add assigned-clocks, assigned-clock-parents and dma-coherent optional
> properties.
> 
> Signed-off-by: Tomi Valkeinen <tomi.valkeinen@ti.com>
> Reviewed-by: Rob Herring <robh@kernel.org>
> ---
>  .../devicetree/bindings/display/ti/ti,am65x-dss.yaml  | 11 +++++++++++
>  1 file changed, 11 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/display/ti/ti,am65x-dss.yaml b/Documentation/devicetree/bindings/display/ti/ti,am65x-dss.yaml
> index 4f9185462ed3..4dc30738ee57 100644
> --- a/Documentation/devicetree/bindings/display/ti/ti,am65x-dss.yaml
> +++ b/Documentation/devicetree/bindings/display/ti/ti,am65x-dss.yaml
> @@ -55,6 +55,14 @@ properties:
>        - const: vp1
>        - const: vp2
>  
> +  assigned-clocks:
> +    minItems: 1
> +    maxItems: 3
> +
> +  assigned-clock-parents:
> +    minItems: 1
> +    maxItems: 3
> +

Those properties can occur in any node that has clocks. Do we need to
specify them explicitly in every schema ?

>    interrupts:
>      maxItems: 1
>  
> @@ -62,6 +70,9 @@ properties:
>      maxItems: 1
>      description: phandle to the associated power domain
>  
> +  dma-coherent:
> +    type: boolean
> +
>    ports:
>      type: object
>      description:

-- 
Regards,

Laurent Pinchart
