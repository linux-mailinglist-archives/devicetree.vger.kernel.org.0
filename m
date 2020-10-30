Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7CA1E2A06C1
	for <lists+devicetree@lfdr.de>; Fri, 30 Oct 2020 14:50:12 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726078AbgJ3NuL (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 30 Oct 2020 09:50:11 -0400
Received: from mail-ot1-f66.google.com ([209.85.210.66]:37707 "EHLO
        mail-ot1-f66.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725939AbgJ3NuL (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 30 Oct 2020 09:50:11 -0400
Received: by mail-ot1-f66.google.com with SMTP id m22so5594250ots.4
        for <devicetree@vger.kernel.org>; Fri, 30 Oct 2020 06:50:09 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=Fpsxg7WP/KUtp9NI35ZOhuIUYRiQTXAVnmKKhKLFynE=;
        b=Iyul8s2gHXyKIgEsPLHjoG944zwlGwAsqLMmlIdQ7jf/vXcptCstdComzu64jjEz2P
         Wij/n2QarPq14aw5hZQt/l2rRYzlAu1zIPj9zMnEsGdGfEiGpg/78kW1d7dYo3rS+YgQ
         PWEytGd3GOtp1rxZvlGISqRl7La7QjZCGfttSpHUPokh10nZq+fi7CI7sA7OChIf0FqD
         WCh7FclXmT2gxJKIFu3V2112/PFJibifgJRQ9oTvcSAGR1+54DICfX8msGW6Wgqfxp0z
         YtMSaMDiE8pS/zdN3IYMMOCdUmCUny7vecHAlGCyuIupKXY/FuVABHs2+PCp1iMNCORc
         PF1Q==
X-Gm-Message-State: AOAM530KiwcIj8nLi4iWf65R0wQjba8mG7lOKD0KvEhcIjawPIsQoxrt
        khLsmq+qsMb558zNG63BEw==
X-Google-Smtp-Source: ABdhPJxysUPuT9pzo8OBCXnuLmgwbR2+EXEXWVmkl1V1sLfSJzvd+COOROGxXj2W4jkrqgv22YjugQ==
X-Received: by 2002:a9d:719b:: with SMTP id o27mr1662480otj.313.1604065808896;
        Fri, 30 Oct 2020 06:50:08 -0700 (PDT)
Received: from xps15 (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.gmail.com with ESMTPSA id v11sm1337747otj.73.2020.10.30.06.50.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 30 Oct 2020 06:50:08 -0700 (PDT)
Received: (nullmailer pid 3743454 invoked by uid 1000);
        Fri, 30 Oct 2020 13:50:07 -0000
Date:   Fri, 30 Oct 2020 08:50:07 -0500
From:   Rob Herring <robh@kernel.org>
To:     Sameer Pujar <spujar@nvidia.com>
Cc:     devicetree@vger.kernel.org, p.zabel@pengutronix.de,
        kuninori.morimoto.gx@renesas.com
Subject: Re: [PATCH 2/2] dt-bindings: Use graph.yaml reference in docs
Message-ID: <20201030135007.GA3734985@bogus>
References: <1603691266-32643-1-git-send-email-spujar@nvidia.com>
 <1603691266-32643-3-git-send-email-spujar@nvidia.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1603691266-32643-3-git-send-email-spujar@nvidia.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Oct 26, 2020 at 11:17:46AM +0530, Sameer Pujar wrote:
> Since graph bindings are now converted to json-schema the references of
> graph.txt are replaced with graph.yaml in various docs.

This will conflict unless you split by subsystem (still conflicts, but 
it's not Linus dealing with them) and new ones will creep in during the 
cycle. It's easier to just make graph.txt say, 'This file has moved to...'.

> Signed-off-by: Sameer Pujar <spujar@nvidia.com>
> ---
>  Documentation/devicetree/bindings/arm/coresight.txt                   | 2 +-
>  Documentation/devicetree/bindings/connector/usb-connector.yaml        | 2 +-
>  Documentation/devicetree/bindings/display/arm,hdlcd.txt               | 2 +-
>  Documentation/devicetree/bindings/display/arm,komeda.txt              | 2 +-
>  Documentation/devicetree/bindings/display/arm,malidp.txt              | 2 +-
>  Documentation/devicetree/bindings/display/armada/marvell,dove-lcd.txt | 2 +-
>  Documentation/devicetree/bindings/display/atmel/hlcdc-dc.txt          | 2 +-
>  Documentation/devicetree/bindings/display/bridge/adi,adv7511.txt      | 2 +-
>  .../devicetree/bindings/display/bridge/analogix,anx7814.yaml          | 2 +-
>  Documentation/devicetree/bindings/display/bridge/cdns,dsi.txt         | 2 +-
>  Documentation/devicetree/bindings/display/bridge/cdns,mhdp8546.yaml   | 2 +-
>  Documentation/devicetree/bindings/display/bridge/dw_hdmi.txt          | 2 +-
>  Documentation/devicetree/bindings/display/bridge/lvds-codec.yaml      | 2 +-
>  Documentation/devicetree/bindings/display/bridge/nwl-dsi.yaml         | 2 +-
>  Documentation/devicetree/bindings/display/bridge/ps8640.yaml          | 2 +-
>  Documentation/devicetree/bindings/display/bridge/renesas,lvds.yaml    | 2 +-
>  Documentation/devicetree/bindings/display/bridge/simple-bridge.yaml   | 2 +-
>  Documentation/devicetree/bindings/display/bridge/tda998x.txt          | 2 +-
>  .../devicetree/bindings/display/bridge/thine,thc63lvd1024.yaml        | 2 +-
>  Documentation/devicetree/bindings/display/bridge/toshiba,tc358767.txt | 2 +-
>  Documentation/devicetree/bindings/display/hisilicon/dw-dsi.txt        | 2 +-
>  Documentation/devicetree/bindings/display/hisilicon/hisi-ade.txt      | 2 +-
>  Documentation/devicetree/bindings/display/imx/ldb.txt                 | 2 +-
>  Documentation/devicetree/bindings/display/ingenic,ipu.yaml            | 2 +-
>  Documentation/devicetree/bindings/display/ingenic,lcd.yaml            | 4 ++--
>  Documentation/devicetree/bindings/display/mediatek/mediatek,dpi.txt   | 2 +-
>  Documentation/devicetree/bindings/display/mediatek/mediatek,dsi.txt   | 2 +-
>  Documentation/devicetree/bindings/display/mediatek/mediatek,hdmi.txt  | 2 +-
>  Documentation/devicetree/bindings/display/mipi-dsi-bus.txt            | 2 +-
>  Documentation/devicetree/bindings/display/msm/dpu.txt                 | 2 +-
>  Documentation/devicetree/bindings/display/msm/dsi.txt                 | 2 +-
>  Documentation/devicetree/bindings/display/msm/mdp4.txt                | 2 +-
>  Documentation/devicetree/bindings/display/msm/mdp5.txt                | 2 +-
>  Documentation/devicetree/bindings/display/panel/panel-common.yaml     | 2 +-
>  Documentation/devicetree/bindings/display/renesas,du.txt              | 2 +-
>  .../devicetree/bindings/display/rockchip/inno_hdmi-rockchip.txt       | 2 +-
>  Documentation/devicetree/bindings/display/rockchip/rockchip-lvds.txt  | 2 +-
>  Documentation/devicetree/bindings/display/st,stm32-dsi.yaml           | 2 +-
>  Documentation/devicetree/bindings/display/ti/ti,am65x-dss.yaml        | 2 +-
>  Documentation/devicetree/bindings/display/ti/ti,j721e-dss.yaml        | 2 +-
>  Documentation/devicetree/bindings/display/ti/ti,k2g-dss.yaml          | 2 +-
>  Documentation/devicetree/bindings/display/ti/ti,omap-dss.txt          | 2 +-
>  Documentation/devicetree/bindings/display/tilcdc/tilcdc.txt           | 2 +-
>  Documentation/devicetree/bindings/display/truly,nt35597.txt           | 2 +-
>  Documentation/devicetree/bindings/media/video-interfaces.txt          | 2 +-
>  Documentation/devicetree/bindings/media/video-mux.txt                 | 2 +-
>  Documentation/devicetree/bindings/sound/st,stm32-sai.txt              | 2 +-
>  Documentation/devicetree/bindings/usb/mediatek,mtu3.txt               | 2 +-
>  Documentation/devicetree/bindings/usb/ti,hd3ss3220.yaml               | 2 +-
>  49 files changed, 50 insertions(+), 50 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/arm/coresight.txt b/Documentation/devicetree/bindings/arm/coresight.txt
> index d711676..97a6c1c 100644
> --- a/Documentation/devicetree/bindings/arm/coresight.txt
> +++ b/Documentation/devicetree/bindings/arm/coresight.txt
> @@ -141,7 +141,7 @@ Coresight components are interconnected to create a data path for the flow of
>  trace data generated from the "sources" to their collection points "sink".
>  Each coresight component must describe the "input" and "output" connections.
>  The connections must be described via generic DT graph bindings as described
> -by the "bindings/graph.txt", where each "port" along with an "endpoint"
> +by the "bindings/graph.yaml", where each "port" along with an "endpoint"
>  component represents a hardware port and the connection.
>  
>   * All output ports must be listed inside a child node named "out-ports"
> diff --git a/Documentation/devicetree/bindings/connector/usb-connector.yaml b/Documentation/devicetree/bindings/connector/usb-connector.yaml
> index 728f82d..f3e6df0 100644
> --- a/Documentation/devicetree/bindings/connector/usb-connector.yaml
> +++ b/Documentation/devicetree/bindings/connector/usb-connector.yaml
> @@ -125,7 +125,7 @@ properties:
>        power dual role.
>  
>    ports:
> -    description: OF graph bindings (specified in bindings/graph.txt) that model
> +    description: OF graph bindings (specified in bindings/graph.yaml) that model

The real fix for the schemas is removing the free form reference and 
making a schema reference.

>        any data bus to the connector unless the bus is between parent node and
>        the connector. Since a single connector can have multiple data buses every
>        bus has an assigned OF graph port number as described below.
