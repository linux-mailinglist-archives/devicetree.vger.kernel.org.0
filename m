Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0C34F34DF68
	for <lists+devicetree@lfdr.de>; Tue, 30 Mar 2021 05:34:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231319AbhC3Ddv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 29 Mar 2021 23:33:51 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44884 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231300AbhC3Dd3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 29 Mar 2021 23:33:29 -0400
Received: from mail-ot1-x332.google.com (mail-ot1-x332.google.com [IPv6:2607:f8b0:4864:20::332])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 59AF4C061765
        for <devicetree@vger.kernel.org>; Mon, 29 Mar 2021 20:33:29 -0700 (PDT)
Received: by mail-ot1-x332.google.com with SMTP id h6-20020a0568300346b02901b71a850ab4so14326546ote.6
        for <devicetree@vger.kernel.org>; Mon, 29 Mar 2021 20:33:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=Ql+HmMVz0sH5JvqPIDDXRRneez0X7Lfo0B0gyoh7cLM=;
        b=xNnTtYTScqIxt3EB9zSXP2rDikXQFXlNLrRtRx7KgGzF5eHkcpRCP6js5A8uHFOVar
         F8sohG2dY7SxS95uWnuxZoDNGafqo+8YFtcf1pqwYrFJvNvIwGiLNGpCAhQ85673CXoW
         /HsmgZQFB3OGZ3v5IfwiN/36cWxqR8L9cx/RA78hWVY0TWUB99dWREIIJ69t7jlH8A0v
         f6XaTxIjNAlRTrv0PlKs2uP+jnoUOcAPH5lrH1/oImxRRO2FTMtDEntz9nlJlp56Roq4
         KUORmj1PI5ZbzAZ8ghkRk7NJZrdPJHKZ2VtWLglYfzlSe+sNwIIHL5rVKsREx3rou4O4
         Q/8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=Ql+HmMVz0sH5JvqPIDDXRRneez0X7Lfo0B0gyoh7cLM=;
        b=hg41NVOkILCHSSB+SRlPHmxIZup1X9ig4bOVFapcw9epkjpFjMjaZ6TKAPVvT2bphU
         sT8e/Y5KDn5H6nngrfnk7w6OUgEfLcKx7B4lmPrqkB2awCjeelNIctaJay8mFQSgHmVL
         NB8wQ4D3DS8epkAIlNnxb3yV8LpL90GjrHnRN5LevKmBLyNoZLzqsLHmSVSTeh/3fzyB
         2HmPlAHtIzlZ0D4reQklBnaFk2ftosicoHhqSVNVHRKIPb92kuc9YYru5tz/e8xe+jtp
         f5br4YFonMqPPPH/ZFEyzYOHrwjK2BY7rNJ12NixrAVEQQgvD6QiJfOAPXfFV42YBDET
         UifQ==
X-Gm-Message-State: AOAM532S79k+D9qHCG1oBdJJfc3D5StgdLFPyfSlAx7QF8nbEPfycWnW
        rRBT7g3eNIgSdHqncRcurcPk7w==
X-Google-Smtp-Source: ABdhPJyj67MR0So7sgsQ2b0tv1kudAjEpKQylBYgPjsDUahMPCBwQtkZHMmijKOUyL4r+Xcf2cd+/Q==
X-Received: by 2002:a9d:6ad9:: with SMTP id m25mr25971757otq.267.1617075208795;
        Mon, 29 Mar 2021 20:33:28 -0700 (PDT)
Received: from builder.lan (104-57-184-186.lightspeed.austtx.sbcglobal.net. [104.57.184.186])
        by smtp.gmail.com with ESMTPSA id c25sm4991615otk.35.2021.03.29.20.33.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 Mar 2021 20:33:28 -0700 (PDT)
Date:   Mon, 29 Mar 2021 22:33:26 -0500
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc:     Andy Gross <agross@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@ti.com>,
        Rob Herring <robh+dt@kernel.org>,
        Manu Gautam <mgautam@codeaurora.org>,
        Stephen Boyd <sboyd@kernel.org>,
        Jonathan Marek <jonathan@marek.ca>,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org
Subject: Re: [PATCH v5 7/7] arm64: dts: qcom: use dp_phy to provide clocks to
 dispcc
Message-ID: <YGKcBrWE6VLerK0I@builder.lan>
References: <20210328205257.3348866-1-dmitry.baryshkov@linaro.org>
 <20210328205257.3348866-8-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210328205257.3348866-8-dmitry.baryshkov@linaro.org>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sun 28 Mar 15:52 CDT 2021, Dmitry Baryshkov wrote:

> Plug dp_phy-provided clocks to display clock controller.
> 

Reviewed-by: Bjorn Andersson <bjorn.andersson@linaro.org>

Regards,
Bjorn

> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---
>  arch/arm64/boot/dts/qcom/sm8250.dtsi | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sm8250.dtsi b/arch/arm64/boot/dts/qcom/sm8250.dtsi
> index 0f79e6885004..a2478bd3590a 100644
> --- a/arch/arm64/boot/dts/qcom/sm8250.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sm8250.dtsi
> @@ -2600,8 +2600,8 @@ dispcc: clock-controller@af00000 {
>  				 <&dsi0_phy 1>,
>  				 <&dsi1_phy 0>,
>  				 <&dsi1_phy 1>,
> -				 <0>,
> -				 <0>,
> +				 <&dp_phy 0>,
> +				 <&dp_phy 1>,
>  				 <0>,
>  				 <0>,
>  				 <0>,
> @@ -2614,8 +2614,8 @@ dispcc: clock-controller@af00000 {
>  				      "dsi0_phy_pll_out_dsiclk",
>  				      "dsi1_phy_pll_out_byteclk",
>  				      "dsi1_phy_pll_out_dsiclk",
> -				      "dp_link_clk_divsel_ten",
> -				      "dp_vco_divided_clk_src_mux",
> +				      "dp_phy_pll_link_clk",
> +				      "dp_phy_pll_vco_div_clk",
>  				      "dptx1_phy_pll_link_clk",
>  				      "dptx1_phy_pll_vco_div_clk",
>  				      "dptx2_phy_pll_link_clk",
> -- 
> 2.30.2
> 
