Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id AE0222874F9
	for <lists+devicetree@lfdr.de>; Thu,  8 Oct 2020 15:11:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730244AbgJHNLX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 8 Oct 2020 09:11:23 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44588 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1730121AbgJHNLX (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 8 Oct 2020 09:11:23 -0400
Received: from mail-pl1-x642.google.com (mail-pl1-x642.google.com [IPv6:2607:f8b0:4864:20::642])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4380AC061755
        for <devicetree@vger.kernel.org>; Thu,  8 Oct 2020 06:11:23 -0700 (PDT)
Received: by mail-pl1-x642.google.com with SMTP id d23so2741918pll.7
        for <devicetree@vger.kernel.org>; Thu, 08 Oct 2020 06:11:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=+X3GicCGteIVfq38xRLbLcBNEFwVSzCj2w5B89w+FP0=;
        b=HPznq537pnPyKKYjqGIm/j+ZJAmAv/hU2gaJCn+IHBU8kf+m1z14EnWRZ2+tK+H/WE
         YD5ZdG9OZSkyZfXW30I6L/rXq88fnEIVPCVzwuybChJLg6/v87xTKyrX0/s0zn7OyfiK
         +kgZ6EAM5EFYezG3ypYCVFRhft9TaQgxLhjviTfS+t+z9zrHG+9JxL/87E26Qd9xL7cp
         TpfA1MQKJwIEWmtCj4sCVXe1sM5VAO3HIQdJJSbnKfWGm0Z7Ra2C0CWYYj8wcc3lURUw
         6VUc9stwzq4d065rc38eoK5eNBcyQkYh/2RT9Ikqj0wHCj1XJ81gkn6MjY0S4YBf8kMz
         5UmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=+X3GicCGteIVfq38xRLbLcBNEFwVSzCj2w5B89w+FP0=;
        b=CKdmoT5DNOyAuSSTnicApEsXrOx05tK8buasMyH9lyEKnDxs/5j1wAiwbSnSKRT/0h
         Iattule1AEYf3ngDEpWHeUANK0hS60q78dR9G0qp+Ydvf6x0OqnQqMhdnh85Q7jgZTIm
         vN4ttK3rTzj1cZnu0Orm+kDQMB3g2S/q5ue0UL4MpIsUDk4rEml6Zw905Ow3IpxC2Cbl
         fYmXQaDHA/AkZsqqy3nPdcOcu83cOGbD66/qnFm8FEDOHkPwRt0Q0Zv+Sp0NUvxzRBWu
         6YNoQauyDU6R3RWqdcLiw96u3Mv1DoaWPZOBsznLFCe8JRjFMsXug/X+Ob/7WQsx12Yl
         LlLA==
X-Gm-Message-State: AOAM530pdVuqplUdN6kpZU5HAWZ/XXIi2mOatYZvTbjYAzV7TRESDEpe
        R7NP/fU5QuXb26AiZrgAo8HJ
X-Google-Smtp-Source: ABdhPJwiDCGyLL+78bsP966t1KvBta0k97o+q8h4M+K+xaM7g5TqVZYh6Vx3+ddHUQTQSgL3Dib/Tw==
X-Received: by 2002:a17:902:8543:b029:d3:9c44:7230 with SMTP id d3-20020a1709028543b02900d39c447230mr7401907plo.10.1602162682651;
        Thu, 08 Oct 2020 06:11:22 -0700 (PDT)
Received: from linux ([103.59.133.81])
        by smtp.gmail.com with ESMTPSA id c4sm7164293pjq.7.2020.10.08.06.11.19
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Thu, 08 Oct 2020 06:11:21 -0700 (PDT)
Date:   Thu, 8 Oct 2020 18:41:15 +0530
From:   Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To:     Gokul Sriram Palanisamy <gokulsri@codeaurora.org>
Cc:     sboyd@kernel.org, agross@kernel.org, bjorn.andersson@linaro.org,
        devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org, robh+dt@kernel.org,
        sricharan@codeaurora.org
Subject: Re: [PATCH v3 3/3] arm64: dts: Enabled MHI device over PCIe
Message-ID: <20201008131115.GA23649@linux>
References: <1602160344-19586-1-git-send-email-gokulsri@codeaurora.org>
 <1602160344-19586-4-git-send-email-gokulsri@codeaurora.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1602160344-19586-4-git-send-email-gokulsri@codeaurora.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Thu, Oct 08, 2020 at 06:02:24PM +0530, Gokul Sriram Palanisamy wrote:
> Enabled MHI device support over PCIe and added memory
> reservation required for MHI enabled QCN9000 PCIe card.
> 
> Signed-off-by: Gokul Sriram Palanisamy <gokulsri@codeaurora.org>
> ---
>  arch/arm64/boot/dts/qcom/ipq8074-hk10.dtsi | 47 ++++++++++++++++++++++++++++++
>  1 file changed, 47 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/ipq8074-hk10.dtsi b/arch/arm64/boot/dts/qcom/ipq8074-hk10.dtsi
> index 0827055..e5c1ec0 100644
> --- a/arch/arm64/boot/dts/qcom/ipq8074-hk10.dtsi
> +++ b/arch/arm64/boot/dts/qcom/ipq8074-hk10.dtsi
> @@ -24,6 +24,22 @@
>  		device_type = "memory";
>  		reg = <0x0 0x40000000 0x0 0x20000000>;
>  	};
> +
> +	reserved-memory {
> +		#address-cells = <2>;
> +		#size-cells = <2>;
> +		ranges;
> +
> +		qcn9000_pcie0: memory@50f00000 {
> +			no-map;
> +			reg = <0x0 0x50f00000 0x0 0x03700000>;
> +		};
> +
> +		qcn9000_pcie1: memory@54600000 {
> +			no-map;
> +			reg = <0x0 0x54600000 0x0 0x03700000>;
> +		};
> +	};
>  };
>  
>  &blsp1_spi1 {
> @@ -45,11 +61,42 @@
>  &pcie0 {
>  	status = "ok";
>  	perst-gpio = <&tlmm 58 0x1>;
> +
> +	pcie0_rp: pcie0_rp {
> +		reg = <0 0 0 0 0>;
> +
> +		status = "ok";
> +		mhi_0: qcom,mhi@0 {

MHI doesn't support devicetree as of now so how is this supposed to work?
Have you tested this series with mainline?

Thanks,
Mani

> +			reg = <0 0 0 0 0 >;
> +
> +			qrtr_instance_id = <0x20>;
> +			base-addr = <0x50f00000>;
> +			m3-dump-addr = <0x53c00000>;
> +			etr-addr = <0x53d00000>;
> +			qcom,caldb-addr = <0x53e00000>;
> +		};
> +	};
>  };
>  
>  &pcie1 {
>  	status = "ok";
>  	perst-gpio = <&tlmm 61 0x1>;
> +
> +	pcie1_rp: pcie1_rp {
> +		reg = <0 0 0 0 0>;
> +
> +		status = "ok";
> +		mhi_1: qcom,mhi@1 {
> +			reg = <0 0 0 0 0 >;
> +
> +			qrtr_instance_id = <0x21>;
> +			base-addr = <0x54600000>;
> +			m3-dump-addr = <0x57300000>;
> +			etr-addr = <0x57400000>;
> +			qcom,caldb-addr = <0x57500000>;
> +			};
> +		};
> +	};
>  };
>  
>  &qmp_pcie_phy0 {
> -- 
> 2.7.4
> 
