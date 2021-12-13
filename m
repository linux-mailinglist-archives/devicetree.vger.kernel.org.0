Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 73F31472C48
	for <lists+devicetree@lfdr.de>; Mon, 13 Dec 2021 13:29:12 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229799AbhLMM3L (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 13 Dec 2021 07:29:11 -0500
Received: from perceval.ideasonboard.com ([213.167.242.64]:51250 "EHLO
        perceval.ideasonboard.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232939AbhLMM3L (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 13 Dec 2021 07:29:11 -0500
Received: from pendragon.ideasonboard.com (62-78-145-57.bb.dnainternet.fi [62.78.145.57])
        by perceval.ideasonboard.com (Postfix) with ESMTPSA id 9B65F51C;
        Mon, 13 Dec 2021 13:29:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
        s=mail; t=1639398549;
        bh=GCjOKZpQ5qkY0cfibvg4ScwZHAnZP2bkpzthQnUyFuA=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=KZqc+UltdBpeWsBdpnBaKjCaf8OaFo/NDiHhHyPF7EhCBSY57X4bqF9qQPJGhZlfC
         +gJS2tiQNhw3W9DeuSx67k1uEyjP/ljbSvtkF9kDqQ0GnCCLDtZwta/VmiV9OUBH0c
         SQaYSTEppdqdMeWmihJvy278RxmPNG1MW03gEl5c=
Date:   Mon, 13 Dec 2021 14:28:39 +0200
From:   Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To:     Jagan Teki <jagan@amarulasolutions.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        Linus Walleij <linus.walleij@linaro.org>,
        Andrzej Hajda <andrzej.hajda@intel.com>,
        Marek Szyprowski <m.szyprowski@samsung.com>,
        devicetree@vger.kernel.org, linux-amarula@amarulasolutions.com
Subject: Re: [PATCH v2] drm: of: Lookup if child node has panel or bridge
Message-ID: <Ybc8dym7NWvBmYYf@pendragon.ideasonboard.com>
References: <20211213121613.3377432-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20211213121613.3377432-1-jagan@amarulasolutions.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Jagan,

Thank you for the patch.

On Mon, Dec 13, 2021 at 05:46:13PM +0530, Jagan Teki wrote:
> Some OF graphs don't require 'ports' to represent the
> downstream panel or bridge; instead it simply adds a child
> node on a given parent node.
> 
> drm_of_find_panel_or_bridge can lookup panel or bridge for
> a given node based on the OF graph port and endpoint and it
> fails to use if the given node has a child panel or bridge.
> 
> This patch add support to lookup that given node has child
> panel or bridge however that child node cannot be a 'port'
> alone or it cannot be a 'port' node too.
> 
> Example OF graph representation of DSI host, which doesn't
> have 'ports' and has child panel.
> 
> dsi {
> 	compatible = "allwinner,sun6i-a31-mipi-dsi";
> 	#address-cells = <1>;
> 	#size-cells = <0>;
> 
> 	port {
> 		dsi_in_tcon0: endpoint {
> 			remote-endpoint = <tcon0_out_dsi>;
> 	};
> 
> 	panel@0 {
> 		reg = <0>;
> 	};
> };
> 
> Example OF graph representation of DSI host, which doesn't
> have 'ports' and has child bridge.
> 
> dsi {
> 	compatible = "allwinner,sun6i-a31-mipi-dsi";
> 	#address-cells = <1>;
> 	#size-cells = <0>;
> 
> 	port {
> 		dsi_in_tcon0: endpoint {
> 			remote-endpoint = <tcon0_out_dsi>;
> 	};
> 
> 	bridge@0 {
> 		reg = <0>;
> 
> 		ports {
> 			#address-cells = <1>;
> 			#size-cells = <0>;
> 
> 			bridge_out: port@1 {
> 				reg = <1>;
> 
> 				bridge_out_panel: endpoint {
> 					remote-endpoint = <&panel_out_bridge>;
> 				};
> 			};
> 		};
> 	};
> };
> 
> Example OF graph representation of DSI host, which doesn't
> have 'ports' or 'port' and has child panel.
> 
> dsi0 {
> 	compatible = "ste,mcde-dsi";
> 	#address-cells = <1>;
> 	#size-cells = <0>;
> 
> 	panel@0 {
> 		reg = <0>;
> 	};
> };
> 
> Example OF graph representation of LTDC host, which doesn't
> have 'ports' or child panel/bridge and has 'port'.
> 
> ltdc {
> 	compatible = "st,stm32-ltdc";
> 	#address-cells = <1>;
> 	#size-cells = <0>;
> 
> 	port {
> 	};
> };
> 
> Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
> ---
> Changes for v2:
> - drop of helper
> https://patchwork.kernel.org/project/dri-devel/cover/20211207054747.461029-1-jagan@amarulasolutions.com/
> - support 'port' alone OF graph
> - updated comments
> - added simple code
> 
>  drivers/gpu/drm/drm_of.c | 23 +++++++++++++++++++++++
>  1 file changed, 23 insertions(+)
> 
> diff --git a/drivers/gpu/drm/drm_of.c b/drivers/gpu/drm/drm_of.c
> index 59d368ea006b..7d018ff8bc83 100644
> --- a/drivers/gpu/drm/drm_of.c
> +++ b/drivers/gpu/drm/drm_of.c
> @@ -249,6 +249,27 @@ int drm_of_find_panel_or_bridge(const struct device_node *np,
>  	if (panel)
>  		*panel = NULL;
>  
> +	/**
> +	 * Some OF graphs don't require 'ports' to represent the downstream
> +	 * panel or bridge; instead it simply adds a child node on a given
> +	 * parent node.
> +	 *
> +	 * Lookup that child node for a given parent however that child
> +	 * cannot be a 'port' alone or it cannot be a 'port' node too.
> +	 */
> +	if (!of_get_child_by_name(np, "ports")) {
> +		if (of_get_child_by_name(np, "port") && (of_get_child_count(np) == 1))

This messes up reference counting of device_node.

> +			goto of_graph_get_remote;
> +
> +		for_each_available_child_of_node(np, remote) {
> +			if (of_node_name_eq(remote, "port"))
> +				continue;
> +
> +			goto of_find_panel_or_bridge;
> +		}
> +	}

This really looks like a hack to me, I'm worried it may cause issues. It
would be better, I think, to split the drm_of_find_panel_or_bridge()
function in two, with the of_graph_get_remote_node() call moved to a
wrapper function, calling an inner function that takes the remote
device_node pointer. For the DSI use case, you could either look up the
panel DT node in the display driver and call the inner function
directly, or implement a DSI-specific wrapper.

> +
> +of_graph_get_remote:
>  	/*
>  	 * of_graph_get_remote_node() produces a noisy error message if port
>  	 * node isn't found and the absence of the port is a legit case here,
> @@ -259,6 +280,8 @@ int drm_of_find_panel_or_bridge(const struct device_node *np,
>  		return -ENODEV;
>  
>  	remote = of_graph_get_remote_node(np, port, endpoint);
> +
> +of_find_panel_or_bridge:
>  	if (!remote)
>  		return -ENODEV;
>  

-- 
Regards,

Laurent Pinchart
