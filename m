Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id BA76515D7FF
	for <lists+devicetree@lfdr.de>; Fri, 14 Feb 2020 14:10:45 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728036AbgBNNKo (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 14 Feb 2020 08:10:44 -0500
Received: from perceval.ideasonboard.com ([213.167.242.64]:37394 "EHLO
        perceval.ideasonboard.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726191AbgBNNKo (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 14 Feb 2020 08:10:44 -0500
Received: from pendragon.ideasonboard.com (81-175-216-236.bb.dnainternet.fi [81.175.216.236])
        by perceval.ideasonboard.com (Postfix) with ESMTPSA id 14E04504;
        Fri, 14 Feb 2020 14:10:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
        s=mail; t=1581685843;
        bh=VBpnQBYrhS7rjLikkevn4VY+OoeRpTZ17mrFu2uIFkI=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=eSnObmA8eOFh0K2ebyyFg+LI6qet1ihcffdb8byKZ4v3oU0wkEJkF1+nyihZHhzPF
         2aQO2wtxyIkrz7RpgrddgUxhajY3HmSd7DzXCCmtAi+tsXM7UNLi8Ua4qHCz5/QJL7
         WikTXkvV1tNladGZ7HpnTfDjaHvHH23z/gPwEcRQ=
Date:   Fri, 14 Feb 2020 15:10:25 +0200
From:   Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To:     Maxime Ripard <maxime@cerno.tech>
Cc:     Chen-Yu Tsai <wens@csie.org>, Maxime Ripard <mripard@kernel.org>,
        dri-devel@lists.freedesktop.org,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Sean Paul <seanpaul@chromium.org>,
        Daniel Vetter <daniel.vetter@intel.com>,
        David Airlie <airlied@linux.ie>, devicetree@vger.kernel.org,
        Mark Rutland <mark.rutland@arm.com>,
        Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 1/2] dt-bindings: display: sun4i-tcon: Add LVDS Dual Link
 property
Message-ID: <20200214131025.GI4831@pendragon.ideasonboard.com>
References: <20200214123244.109300-1-maxime@cerno.tech>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20200214123244.109300-1-maxime@cerno.tech>
User-Agent: Mutt/1.10.1 (2018-07-13)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Maxime,

Thank you for the patch.

On Fri, Feb 14, 2020 at 01:32:43PM +0100, Maxime Ripard wrote:
> SoCs that have multiple TCONs can use the two set of pins on the first TCON
> to drive a dual-link display. Add a property to enable the dual link.
> 
> Signed-off-by: Maxime Ripard <maxime@cerno.tech>
> ---
>  .../bindings/display/allwinner,sun4i-a10-tcon.yaml         | 7 +++++++
>  1 file changed, 7 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/display/allwinner,sun4i-a10-tcon.yaml b/Documentation/devicetree/bindings/display/allwinner,sun4i-a10-tcon.yaml
> index 86ad617d2327..aa6dd8409dbc 100644
> --- a/Documentation/devicetree/bindings/display/allwinner,sun4i-a10-tcon.yaml
> +++ b/Documentation/devicetree/bindings/display/allwinner,sun4i-a10-tcon.yaml
> @@ -105,6 +105,13 @@ properties:
>          - const: edp
>          - const: lvds
>  
> +  allwinner,lvds-dual-link:
> +    type: boolean
> +    description: |
> +      On a SoC with two TCON with LVDS support, the first TCON can
> +      operate over both pins sets to output in a dual-link setup. This
> +      will be triggered by setting this property.

Could you maybe provide an example of how this property is supposed to
be used ? I'm especially wondering what ports are used in that case and
how they're connected.

> +
>    ports:
>      type: object
>      description: |

-- 
Regards,

Laurent Pinchart
