Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D4A3E1CD995
	for <lists+devicetree@lfdr.de>; Mon, 11 May 2020 14:25:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729309AbgEKMZC (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 11 May 2020 08:25:02 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48150 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-FAIL-OK-FAIL)
        by vger.kernel.org with ESMTP id S1727913AbgEKMZC (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Mon, 11 May 2020 08:25:02 -0400
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk [IPv6:2a00:1098:0:82:1000:25:2eeb:e3e3])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E80F7C061A0C
        for <devicetree@vger.kernel.org>; Mon, 11 May 2020 05:25:01 -0700 (PDT)
Received: from [127.0.0.1] (localhost [127.0.0.1])
        (Authenticated sender: ezequiel)
        with ESMTPSA id 79A402A117C
Message-ID: <28fa96d51523448656c71656dc80177d08c481ed.camel@collabora.com>
Subject: Re: [PATCH v2 3/6] ARM: dts: zynq: add port definitions to
 hdmi-tx@39
From:   Ezequiel Garcia <ezequiel@collabora.com>
To:     Michal Simek <michal.simek@xilinx.com>
Cc:     kernel@collabora.com, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, geert+renesas@glider.be,
        robh+dt@kernel.org, xuwei5@hisilicon.com,
        Ricardo =?ISO-8859-1?Q?Ca=F1uelo?= 
        <ricardo.canuelo@collabora.com>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Date:   Mon, 11 May 2020 09:24:49 -0300
In-Reply-To: <20200511110611.3142-4-ricardo.canuelo@collabora.com>
References: <20200511110611.3142-1-ricardo.canuelo@collabora.com>
         <20200511110611.3142-4-ricardo.canuelo@collabora.com>
Organization: Collabora
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.36.0-1 
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

(Adding Michal)

On Mon, 2020-05-11 at 13:06 +0200, Ricardo Cañuelo wrote:
> Define a 'ports' node for 'adv7511: hdmi-tx@39' to make it compliant with
> the adi,adv7511 DT binding.
> 
> This fills the minimum requirements to meet the binding requirements,
> remote endpoints are not defined.
> 
> Signed-off-by: Ricardo Cañuelo <ricardo.canuelo@collabora.com>
> ---
>  arch/arm/boot/dts/zynq-zc702.dts | 10 ++++++++++
>  arch/arm/boot/dts/zynq-zc706.dts | 10 ++++++++++
>  2 files changed, 20 insertions(+)
> 
> diff --git a/arch/arm/boot/dts/zynq-zc702.dts b/arch/arm/boot/dts/zynq-zc702.dts
> index 27cd6cb52f1b..79fd236edded 100644
> --- a/arch/arm/boot/dts/zynq-zc702.dts
> +++ b/arch/arm/boot/dts/zynq-zc702.dts
> @@ -135,6 +135,16 @@
>  				adi,input-clock = "1x";
>  				adi,input-style = <3>;
>  				adi,input-justification = "right";
> +				ports {
> +					#address-cells = <1>;
> +					#size-cells = <0>;
> +					port@0 {
> +						reg = <0>;
> +					};
> +					port@1 {
> +						reg = <1>;
> +					};
> +				};
>  			};
>  		};
>  
> diff --git a/arch/arm/boot/dts/zynq-zc706.dts b/arch/arm/boot/dts/zynq-zc706.dts
> index 77943c16d33f..99fa51ba6e93 100644
> --- a/arch/arm/boot/dts/zynq-zc706.dts
> +++ b/arch/arm/boot/dts/zynq-zc706.dts
> @@ -93,6 +93,16 @@
>  				adi,input-clock = "1x";
>  				adi,input-style = <3>;
>  				adi,input-justification = "evenly";
> +				ports {
> +					#address-cells = <1>;
> +					#size-cells = <0>;
> +					port@0 {
> +						reg = <0>;
> +					};
> +					port@1 {
> +						reg = <1>;
> +					};
> +				};
>  			};
>  		};
>  
> -- 
> 2.18.0
> 
> 


