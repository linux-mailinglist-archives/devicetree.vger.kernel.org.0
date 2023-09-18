Return-Path: <devicetree+bounces-1128-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id BB4797A4DA5
	for <lists+devicetree@lfdr.de>; Mon, 18 Sep 2023 17:56:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 739B728204D
	for <lists+devicetree@lfdr.de>; Mon, 18 Sep 2023 15:56:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B9D4620B01;
	Mon, 18 Sep 2023 15:52:39 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F0D163CC
	for <devicetree@vger.kernel.org>; Mon, 18 Sep 2023 15:52:37 +0000 (UTC)
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com [213.167.242.64])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 07841170E;
	Mon, 18 Sep 2023 08:51:04 -0700 (PDT)
Received: from pendragon.ideasonboard.com (213-243-189-158.bb.dnainternet.fi [213.243.189.158])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 3EDE4881C;
	Mon, 18 Sep 2023 16:56:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1695049001;
	bh=WLUi2NPc78JIOjN9Lo65OK6JYmPKUjzxwfThVedkFnU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=PSwdo2nwGyvMql3NYl/k6Zelnks+AtZKpuC9OAZ9NhTvxMxwgul7gmmrWFBAxF6aT
	 nK3YKPBpZl2i4Liz94J793vPPxIkmnM1Q0dmEFDneLrMs5Pt8lQCocnEhbNmcgU63K
	 lvYxxIY04wvUGES+sUe7T6AiNe3QBiwAXT5dvR90=
Date: Mon, 18 Sep 2023 17:58:29 +0300
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Michal Simek <michal.simek@amd.com>
Cc: linux-kernel@vger.kernel.org, monstr@monstr.eu, michal.simek@xilinx.com,
	git@xilinx.com,
	Amit Kumar Mahapatra <amit.kumar-mahapatra@xilinx.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Manikanta Guntupalli <manikanta.guntupalli@amd.com>,
	Parth Gajjar <parth.gajjar@amd.com>,
	Rob Herring <robh+dt@kernel.org>,
	Sharath Kumar Dasari <sharath.kumar.dasari@xilinx.com>,
	Srinivas Neeli <srinivas.neeli@xilinx.com>,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 2/6] arm64: xilinx: Use lower case for partition address
Message-ID: <20230918145829.GB16823@pendragon.ideasonboard.com>
References: <cover.1695040866.git.michal.simek@amd.com>
 <a96ac9a32a363b04958157548f290d480c21590c.1695040866.git.michal.simek@amd.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <a96ac9a32a363b04958157548f290d480c21590c.1695040866.git.michal.simek@amd.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_PASS,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Hi Michal,

Thank you for the patch.

On Mon, Sep 18, 2023 at 02:41:13PM +0200, Michal Simek wrote:
> Lower case should be used for register address.
> Issue is reported as:
> flash@0: partitions: Unevaluated properties are not allowed
> ('partition@22A0000' was unexpected)
> 
> Signed-off-by: Michal Simek <michal.simek@amd.com>

Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>

> ---
> 
>  arch/arm64/boot/dts/xilinx/zynqmp-sm-k26-revA.dts | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/xilinx/zynqmp-sm-k26-revA.dts b/arch/arm64/boot/dts/xilinx/zynqmp-sm-k26-revA.dts
> index c4774a42d5fc..157dcb4a27a8 100644
> --- a/arch/arm64/boot/dts/xilinx/zynqmp-sm-k26-revA.dts
> +++ b/arch/arm64/boot/dts/xilinx/zynqmp-sm-k26-revA.dts
> @@ -222,9 +222,9 @@ partition@2280000 {
>  				label = "Secure OS Storage";
>  				reg = <0x2280000 0x20000>; /* 128KB */
>  			};
> -			partition@22A0000 {
> +			partition@22a0000 {
>  				label = "User";
> -				reg = <0x22A0000 0x1d60000>; /* 29.375 MB */
> +				reg = <0x22a0000 0x1d60000>; /* 29.375 MB */
>  			};
>  		};
>  	};

-- 
Regards,

Laurent Pinchart

