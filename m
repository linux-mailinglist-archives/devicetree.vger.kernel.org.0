Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0BCB83EA528
	for <lists+devicetree@lfdr.de>; Thu, 12 Aug 2021 15:09:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236567AbhHLNJe (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 12 Aug 2021 09:09:34 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57918 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236461AbhHLNJd (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 12 Aug 2021 09:09:33 -0400
Received: from mail-pj1-x1030.google.com (mail-pj1-x1030.google.com [IPv6:2607:f8b0:4864:20::1030])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DFDAFC061798
        for <devicetree@vger.kernel.org>; Thu, 12 Aug 2021 06:09:07 -0700 (PDT)
Received: by mail-pj1-x1030.google.com with SMTP id a8so9401854pjk.4
        for <devicetree@vger.kernel.org>; Thu, 12 Aug 2021 06:09:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=Q6Z6UzVTDDWo7owMVz+jZxN77Zwy3W8+Jm9Ls2OVAqQ=;
        b=J4Zm05YX4kW8bJQh1gPPDFOqOZxOpFNotpYo8CzR4Mv9MYue5r0N+gS/T07ePDwEdK
         i+SL38+PWqJ0JmwbfVx9E+yKUOrpmNIBMEHZY/a8b+7IqdcOtHoCdgPGVFaqIyFDqbRA
         SDCfIbED326NRPlggvDpcWZLA+fVLyqKcC+wM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=Q6Z6UzVTDDWo7owMVz+jZxN77Zwy3W8+Jm9Ls2OVAqQ=;
        b=WMbENYuCnmtv5/nOMaOkUOpPBYZyUnZiH8OFzFe6aRET6/IueQq/7Lx8b/8fgmGu3H
         Dw2GMfzddetWBrkm7tqP1t4vub7zvTqPW7NhYoXZ7KS6lkJP9bW1QgOo8Av/zO/7Xto9
         XFAYLj/Pp4pMkVoE/rYF9EI83+sCeLzxrW3B6Jkrmvm7f2qzKVI/cioiQRF2KwRXVnfO
         xYfaBECS3nhzmdc2oE+rRf67D9TPAtmKWsABVSSmafQIGH3OcFIEHjwe3i/4eD3W1cj6
         Lirt14Q6ovmqnDnvCcYA9fXZr0grZfpFp9FmPrnVCVwqp6FbFvSHBW/dWTdxhsrxVQV3
         QomQ==
X-Gm-Message-State: AOAM532klgwcPhWw0VJEdNJLuXM1buoyUMHFhlp30ifrq4WnY2FGg4+f
        gtRg63ZKKWPVk0/n5OeLf36UVQ==
X-Google-Smtp-Source: ABdhPJzdBdYfD7mqL89y1GLdQphWXqLRm0nyTQ8nfeb+BWsYjAkhlM7/IY4nNGbGPqDlPBhOag7d0A==
X-Received: by 2002:a63:950a:: with SMTP id p10mr3783109pgd.362.1628773747415;
        Thu, 12 Aug 2021 06:09:07 -0700 (PDT)
Received: from localhost ([2620:15c:202:201:9d69:4059:b8a6:e36f])
        by smtp.gmail.com with UTF8SMTPSA id 129sm3641138pfg.50.2021.08.12.06.09.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 12 Aug 2021 06:09:07 -0700 (PDT)
Date:   Thu, 12 Aug 2021 06:09:05 -0700
From:   Matthias Kaehlcke <mka@chromium.org>
To:     Rajesh Patil <rajpat@codeaurora.org>
Cc:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>, swboyd@chromium.org,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, rnayak@codeaurora.org,
        saiprakash.ranjan@codeaurora.org, msavaliy@qti.qualcomm.com,
        skakit@codeaurora.org, Roja Rani Yarubandi <rojay@codeaurora.org>
Subject: Re: [PATCH V5 1/7] arm64: dts: sc7280: Add QSPI node
Message-ID: <YRUdccjvf+ivbqor@google.com>
References: <1628754078-29779-1-git-send-email-rajpat@codeaurora.org>
 <1628754078-29779-2-git-send-email-rajpat@codeaurora.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <1628754078-29779-2-git-send-email-rajpat@codeaurora.org>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Aug 12, 2021 at 01:11:12PM +0530, Rajesh Patil wrote:
> From: Roja Rani Yarubandi <rojay@codeaurora.org>
> 
> Add QSPI DT node and qspi_opp_table for SC7280 SoC.
> 
> Signed-off-by: Roja Rani Yarubandi <rojay@codeaurora.org>
> Signed-off-by: Rajesh Patil <rajpat@codeaurora.org>
> ---
>  arch/arm64/boot/dts/qcom/sc7280.dtsi | 62 ++++++++++++++++++++++++++++++++++++
>  1 file changed, 62 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sc7280.dtsi b/arch/arm64/boot/dts/qcom/sc7280.dtsi
> index 53a21d0..f8dd5ff 100644
> --- a/arch/arm64/boot/dts/qcom/sc7280.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sc7280.dtsi
> @@ -415,6 +415,25 @@
>  		method = "smc";
>  	};
>  
> +	qspi_opp_table: qspi-opp-table {
> +		compatible = "operating-points-v2";
> +
> +		opp-75000000 {
> +			opp-hz = /bits/ 64 <75000000>;
> +			required-opps = <&rpmhpd_opp_low_svs>;
> +		};
> +
> +		opp-150000000 {
> +			opp-hz = /bits/ 64 <150000000>;
> +			required-opps = <&rpmhpd_opp_svs>;
> +		};
> +
> +		opp-300000000 {
> +			opp-hz = /bits/ 64 <300000000>;
> +			required-opps = <&rpmhpd_opp_nom>;
> +		};
> +	};
> +

From v3:

roja> Can we move this "qspi_opp_table" to / from /soc?

bjorn> If you have made a proper attempt to convince Rob and Mark that
bjorn> a child "opp-table" in a SPI master is not a SPI device - and the
bjorn> conclusion is that this is not a good idea...then yes it should live
bjorn> outside /soc.

I didn't see a follow up on this, was such an attempt made? Is there a
link to the discussion?
