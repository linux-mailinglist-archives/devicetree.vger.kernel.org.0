Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 29C1C353887
	for <lists+devicetree@lfdr.de>; Sun,  4 Apr 2021 16:56:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230168AbhDDO4u (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 4 Apr 2021 10:56:50 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47506 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229918AbhDDO4u (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 4 Apr 2021 10:56:50 -0400
Received: from mail-oi1-x22a.google.com (mail-oi1-x22a.google.com [IPv6:2607:f8b0:4864:20::22a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4F8D2C061788
        for <devicetree@vger.kernel.org>; Sun,  4 Apr 2021 07:56:44 -0700 (PDT)
Received: by mail-oi1-x22a.google.com with SMTP id a8so9519198oic.11
        for <devicetree@vger.kernel.org>; Sun, 04 Apr 2021 07:56:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=Eb8f7Ge2VdppAq4aF/eE7Y1WWfUr/J2wbn7F+k+luzM=;
        b=kcWoua96Twe2qFF2QvYYAM1k6KmCXw8blVt2gl8JiMScwaPSR6YL0huFlfhsgCipLL
         GHfFM+dpmf3+JYc+FuIMhLMIkTNs2mwdkFsYC8YqhD+FZzSQuPVyVaUIM5KukKEpUYan
         KXx7e2IPLH7CKijo5vkf8BlxT0wsn9Vi5kmHHW7xaSwXT6S7JJ4qRjc/q9Vb1nwbxOFe
         SywrAaR1I3jDz4kQXqs1Y+HUFzAEP7HrIBDeW9eLX8UOO65pmc4vaqnTBWQ6O6PFfZHs
         CfFxsGG0q3ut+SPYndBvO35ZtCghAUQkBtsDTnArcTmgPDx36PkO/9NiLfmmts1SvQnC
         t0aA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=Eb8f7Ge2VdppAq4aF/eE7Y1WWfUr/J2wbn7F+k+luzM=;
        b=VQxs2z7J9eqIOoR25XuAEPAWzwKmLkdk8KLctP7I319L3ve8YWVevV9wWnAUfQDH4K
         2j5cB29Tti2x1J/PNnD4gqlhQb72HDjBrVFI9eCNFmkkAdDTxivLNO4cB+7W2WkYFxtV
         PT2EimTnQisj31ypDDRpc9c7dttG3ofkihZCl6SNZMpYgtlTILocUZractBwE7k4L6vN
         /m21Vdiz4/zXbivx/PmsVXJXcsV2esW5ZGKvx1WzVajvZ8bA41wHS+BeaJZpG6GVX9Yp
         Gs029gh1D+UsljsVRVoySwfoCqc0voGFb6Lb1Tn+kH+x8fyQr2TSvsXefquNwVSNZBPd
         dGrA==
X-Gm-Message-State: AOAM532rzTxZLXqKgGehQ2zne6PC+XdyN4hbl1kBzKjZ6HWtI5Eksr/e
        Un20Ig9jWwIc1R15k3o/QI+jkArYW9Oq2Q==
X-Google-Smtp-Source: ABdhPJzEq//8K4RSx3MByY5ZE+5bgAYAKYsQjUGPobB6HceTjivq0pc/AEV0fhUNanmNoheB/jq0HA==
X-Received: by 2002:aca:d608:: with SMTP id n8mr15284477oig.127.1617548203573;
        Sun, 04 Apr 2021 07:56:43 -0700 (PDT)
Received: from yoga (104-57-184-186.lightspeed.austtx.sbcglobal.net. [104.57.184.186])
        by smtp.gmail.com with ESMTPSA id f197sm3088738oob.38.2021.04.04.07.56.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 04 Apr 2021 07:56:43 -0700 (PDT)
Date:   Sun, 4 Apr 2021 09:56:41 -0500
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc:     Andy Gross <agross@kernel.org>, Rob Herring <robh+dt@kernel.org>,
        Stephen Boyd <sboyd@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-clk@vger.kernel.org
Subject: Re: [PATCH v1 4/4] arm64: dts: qcom: sdm845: add required clocks on
 the gcc
Message-ID: <20210404145641.GY904837@yoga>
References: <20210402233944.273275-1-dmitry.baryshkov@linaro.org>
 <20210402233944.273275-4-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210402233944.273275-4-dmitry.baryshkov@linaro.org>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri 02 Apr 18:39 CDT 2021, Dmitry Baryshkov wrote:

> Specify input clocks to the SDM845's Global Clock Controller as required
> by the bindings.
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

Okay, so that proved me wrong on my suggestion to rely on bi_tcxo always
coming from the DT...

Reviewed-by: Bjorn Andersson <bjorn.andersson@linaro.org>

Regards,
Bjorn

> ---
>  arch/arm64/boot/dts/qcom/sdm845.dtsi | 12 ++++++++++++
>  1 file changed, 12 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sdm845.dtsi b/arch/arm64/boot/dts/qcom/sdm845.dtsi
> index 454f794af547..86f717d5bfb6 100644
> --- a/arch/arm64/boot/dts/qcom/sdm845.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sdm845.dtsi
> @@ -1061,6 +1061,16 @@ soc: soc@0 {
>  		gcc: clock-controller@100000 {
>  			compatible = "qcom,gcc-sdm845";
>  			reg = <0 0x00100000 0 0x1f0000>;
> +			clocks = <&rpmhcc RPMH_CXO_CLK>,
> +				 <&rpmhcc RPMH_CXO_CLK_A>,
> +				 <&sleep_clk>,
> +				 <&pcie0_lane>,
> +				 <&pcie1_lane>;
> +			clock-names = "bi_tcxo",
> +				      "bi_tcxo_ao",
> +				      "sleep_clk",
> +				      "pcie_0_pipe_clk",
> +				      "pcie_1_pipe_clk";
>  			#clock-cells = <1>;
>  			#reset-cells = <1>;
>  			#power-domain-cells = <1>;
> @@ -2062,6 +2072,7 @@ pcie0_lane: lanes@1c06200 {
>  				clocks = <&gcc GCC_PCIE_0_PIPE_CLK>;
>  				clock-names = "pipe0";
>  
> +				#clock-cells = <0>;
>  				#phy-cells = <0>;
>  				clock-output-names = "pcie_0_pipe_clk";
>  			};
> @@ -2170,6 +2181,7 @@ pcie1_lane: lanes@1c06200 {
>  				clocks = <&gcc GCC_PCIE_1_PIPE_CLK>;
>  				clock-names = "pipe0";
>  
> +				#clock-cells = <0>;
>  				#phy-cells = <0>;
>  				clock-output-names = "pcie_1_pipe_clk";
>  			};
> -- 
> 2.30.2
> 
