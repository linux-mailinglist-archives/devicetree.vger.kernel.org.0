Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id ECA85604C90
	for <lists+devicetree@lfdr.de>; Wed, 19 Oct 2022 18:00:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231872AbiJSQAz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 19 Oct 2022 12:00:55 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43520 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231537AbiJSQAZ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 19 Oct 2022 12:00:25 -0400
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com [213.167.242.64])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 999DB9A9D0
        for <devicetree@vger.kernel.org>; Wed, 19 Oct 2022 08:59:42 -0700 (PDT)
Received: from pendragon.ideasonboard.com (62-78-145-57.bb.dnainternet.fi [62.78.145.57])
        by perceval.ideasonboard.com (Postfix) with ESMTPSA id 5B1B35A4;
        Wed, 19 Oct 2022 17:59:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
        s=mail; t=1666195180;
        bh=f6TZdjBsSQ2qwq7mKE2z+jQGGPQK5tMyCSea52sbMiQ=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=NiPHLsOFifU6YsXMkvgPnetyjEd975JWWdFksM7pJZtrmRjEIEgbgU50zuZmea+eU
         3XvqnGlu9tKY9ujCAzUHdyMEVsYXTnRCQqs6rdTHWbXs8513JgsoEWKoG3iNCLqppq
         ZQydana0uiVzpi9IJCi/8Pd+992uuHbZ1ybDOVTo=
Date:   Wed, 19 Oct 2022 18:59:16 +0300
From:   Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To:     dri-devel@lists.freedesktop.org
Cc:     devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        Michal Simek <michal.simek@xilinx.com>,
        Jianqiang Chen <jianqian@xilinx.com>
Subject: Re: [PATCH v2 36/37] arm64: dts: zynqmp: Add ports for the
 DisplayPort subsystem
Message-ID: <Y1Ae1NlyVGNL/BVs@pendragon.ideasonboard.com>
References: <20220928224719.3291-1-laurent.pinchart@ideasonboard.com>
 <20220928224719.3291-37-laurent.pinchart@ideasonboard.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20220928224719.3291-37-laurent.pinchart@ideasonboard.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,SPF_HELO_PASS,SPF_PASS
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Michal,

I plan to send a pull request for the series soon. Patches 01/37 to
35/37 will go through the DRM tree. How would you like to handle this
patch and the next ? They depend on the DT binding changes in 01/37.

On Thu, Sep 29, 2022 at 01:47:18AM +0300, Laurent Pinchart wrote:
> The DPSUB DT bindings now specify ports to model the connections with
> the programmable logic and the DisplayPort output. Add them to the
> device tree.
> 
> Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> ---
>  arch/arm64/boot/dts/xilinx/zynqmp.dtsi | 24 ++++++++++++++++++++++++
>  1 file changed, 24 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/xilinx/zynqmp.dtsi b/arch/arm64/boot/dts/xilinx/zynqmp.dtsi
> index a549265e55f6..307c76cd8544 100644
> --- a/arch/arm64/boot/dts/xilinx/zynqmp.dtsi
> +++ b/arch/arm64/boot/dts/xilinx/zynqmp.dtsi
> @@ -930,6 +930,30 @@ zynqmp_dpsub: display@fd4a0000 {
>  			       <&zynqmp_dpdma ZYNQMP_DPDMA_VIDEO1>,
>  			       <&zynqmp_dpdma ZYNQMP_DPDMA_VIDEO2>,
>  			       <&zynqmp_dpdma ZYNQMP_DPDMA_GRAPHICS>;
> +
> +			ports {
> +				#address-cells = <1>;
> +				#size-cells = <0>;
> +
> +				port@0 {
> +					reg = <0>;
> +				};
> +				port@1 {
> +					reg = <1>;
> +				};
> +				port@2 {
> +					reg = <2>;
> +				};
> +				port@3 {
> +					reg = <3>;
> +				};
> +				port@4 {
> +					reg = <4>;
> +				};
> +				port@5 {
> +					reg = <5>;
> +				};
> +			};
>  		};
>  	};
>  };

-- 
Regards,

Laurent Pinchart
