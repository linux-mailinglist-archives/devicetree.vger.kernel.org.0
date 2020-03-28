Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id C2E5F196937
	for <lists+devicetree@lfdr.de>; Sat, 28 Mar 2020 21:30:06 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727070AbgC1UaF (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 28 Mar 2020 16:30:05 -0400
Received: from asavdk3.altibox.net ([109.247.116.14]:51630 "EHLO
        asavdk3.altibox.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726604AbgC1UaF (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 28 Mar 2020 16:30:05 -0400
Received: from ravnborg.org (unknown [158.248.194.18])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by asavdk3.altibox.net (Postfix) with ESMTPS id A7F412001E;
        Sat, 28 Mar 2020 21:30:02 +0100 (CET)
Date:   Sat, 28 Mar 2020 21:30:01 +0100
From:   Sam Ravnborg <sam@ravnborg.org>
To:     Fabio Estevam <festevam@gmail.com>
Cc:     devicetree@vger.kernel.org, robh+dt@kernel.org,
        dri-devel@lists.freedesktop.org,
        heiko.stuebner@theobroma-systems.com
Subject: Re: [PATCH 1/2] dt-bindings: display: ltk500hd1829: Remove the reg
 property
Message-ID: <20200328203001.GD32230@ravnborg.org>
References: <20200328183641.11226-1-festevam@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200328183641.11226-1-festevam@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CMAE-Score: 0
X-CMAE-Analysis: v=2.3 cv=eMA9ckh1 c=1 sm=1 tr=0
        a=UWs3HLbX/2nnQ3s7vZ42gw==:117 a=UWs3HLbX/2nnQ3s7vZ42gw==:17
        a=jpOVt7BSZ2e4Z31A5e1TngXxSK0=:19 a=kj9zAlcOel0A:10 a=pGLkceISAAAA:8
        a=e5mUnYsNAAAA:8 a=Oxn-PBeVso710B35qF0A:9 a=RrzKasS7yui5-qp_:21
        a=kayGcTJZRUTLABb6:21 a=CjuIK1q_8ugA:10 a=Vxmtnl_E_bksehYqCbjh:22
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sat, Mar 28, 2020 at 03:36:40PM -0300, Fabio Estevam wrote:
> Commit 52120e8c7ae3 ("dt-bindings: display: fix panel warnings") removed
> the dsi unit name, but missed to remove the 'reg' property, which causes
> the following 'make dt_binding_check' warning:
> 
> Documentation/devicetree/bindings/display/panel/leadtek,ltk500hd1829.example.dts:17.5-29.11: Warning (unit_address_vs_reg): /example-0/dsi: node has a reg or ranges property, but no unit name
> 
> Fix it by removing the unneeded 'reg' property.
> 
> Fixes: 52120e8c7ae3 ("dt-bindings: display: fix panel warnings")
> Signed-off-by: Fabio Estevam <festevam@gmail.com>

Thanks, applied to drm-misc-next.

	Sam

> ---
>  .../devicetree/bindings/display/panel/leadtek,ltk500hd1829.yaml  | 1 -
>  1 file changed, 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/display/panel/leadtek,ltk500hd1829.yaml b/Documentation/devicetree/bindings/display/panel/leadtek,ltk500hd1829.yaml
> index fd931b293816..b900973b5f7b 100644
> --- a/Documentation/devicetree/bindings/display/panel/leadtek,ltk500hd1829.yaml
> +++ b/Documentation/devicetree/bindings/display/panel/leadtek,ltk500hd1829.yaml
> @@ -37,7 +37,6 @@ examples:
>      dsi {
>          #address-cells = <1>;
>          #size-cells = <0>;
> -        reg = <0xff450000 0x1000>;
>  
>          panel@0 {
>              compatible = "leadtek,ltk500hd1829";
> -- 
> 2.17.1
> 
> _______________________________________________
> dri-devel mailing list
> dri-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/dri-devel
