Return-Path: <devicetree+bounces-1189-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FFCD7A53D3
	for <lists+devicetree@lfdr.de>; Mon, 18 Sep 2023 22:20:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1B31128187E
	for <lists+devicetree@lfdr.de>; Mon, 18 Sep 2023 20:19:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F37CE28686;
	Mon, 18 Sep 2023 20:19:52 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E7F3E27701;
	Mon, 18 Sep 2023 20:19:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 48365C433C8;
	Mon, 18 Sep 2023 20:19:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695068392;
	bh=lgKTJttU3vBHsXfAuVjsF6p8uoUUCVqIrWPXUqL2PhU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=VhsXJc+fdL3QjF0Vl3Md17K5xmCYwSXa2Po1SZHG8jjc75demx/YE3T/oRG6EPoJB
	 64XofwD39/KUKOcPtd/FD9BhlT4bVBR3d0FMG4gLlCkYjf5JNC71skeNTFkPZcLJ/3
	 NrGLk1Z1DvgbA3Ag64A0Oz4BfYOiaGK+zNTaD5Fz6CnJghwz58XGOkNoHLuNgdMtSc
	 mL7ddF8yggeeBHtEFhKfYaDdVmK4BjOyP4eyfDOSiixoqtgVr7HYKTbHt9i6ca54Y0
	 P56iYbUVDkWoWJ8mZvTai+dUfPgeB+mqdlPXjndxI2yqGPse/7l+WnpWdO2Xjru8rb
	 8alOB8nAFiMpA==
Received: (nullmailer pid 1711800 invoked by uid 1000);
	Mon, 18 Sep 2023 20:19:49 -0000
Date: Mon, 18 Sep 2023 15:19:49 -0500
From: Rob Herring <robh@kernel.org>
To: Wesley Cheng <quic_wcheng@quicinc.com>
Cc: andersson@kernel.org, srinivas.kandagatla@linaro.org, tiwai@suse.com, Thinh.Nguyen@synopsys.com, linux-arm-msm@vger.kernel.org, linux-usb@vger.kernel.org, lgirdwood@gmail.com, mathias.nyman@intel.com, robh+dt@kernel.org, gregkh@linuxfoundation.org, krzysztof.kozlowski+dt@linaro.org, perex@perex.cz, alsa-devel@alsa-project.org, devicetree@vger.kernel.org, konrad.dybcio@linaro.org, broonie@kernel.org, agross@kernel.org, conor+dt@kernel.org, bgoswami@quicinc.com, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v6 14/33] dt-bindings: usb: xhci: Add num-hc-interrupters
 definition
Message-ID: <169506838863.1711748.10580032008247397299.robh@kernel.org>
References: <20230916001026.315-1-quic_wcheng@quicinc.com>
 <20230916001026.315-15-quic_wcheng@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230916001026.315-15-quic_wcheng@quicinc.com>


On Fri, 15 Sep 2023 17:10:07 -0700, Wesley Cheng wrote:
> Add the definition for how many interrupts the XHCI host controller should
> allocate.  XHCI can potentially support up to 1024 interrupters, which
> implementations may want to limit.
> 
> Signed-off-by: Wesley Cheng <quic_wcheng@quicinc.com>
> ---
>  Documentation/devicetree/bindings/usb/usb-xhci.yaml | 6 ++++++
>  1 file changed, 6 insertions(+)
> 

Reviewed-by: Rob Herring <robh@kernel.org>


