Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 87BA139CC45
	for <lists+devicetree@lfdr.de>; Sun,  6 Jun 2021 04:21:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230105AbhFFCXP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 5 Jun 2021 22:23:15 -0400
Received: from mail-ot1-f49.google.com ([209.85.210.49]:47053 "EHLO
        mail-ot1-f49.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230083AbhFFCXO (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 5 Jun 2021 22:23:14 -0400
Received: by mail-ot1-f49.google.com with SMTP id 66-20020a9d02c80000b02903615edf7c1aso13136143otl.13
        for <devicetree@vger.kernel.org>; Sat, 05 Jun 2021 19:21:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=X7fGrPbJzdZR1znab5GtShDunQ4siLQt3bvfoIUzQU4=;
        b=LvIVHsAU2R3GLLn25OtHsou5sowN4nyO4d9JV4O7hM6QVvGuNeQeodUnLYsAIQiDWv
         wdxuwxKCdsF0vqa97xPvHmL/Ab9puEP9kpXW1XHYqo5GdKuJxoUr4fO6xvPE9Oqgaphb
         8uLf7M6BPlJT7nbmJtTdpQGwqK4+pHwhXRoqEs0Av8oaxBhc9ZF5wMUrRZZ8AHiVYH3q
         uPsAICmHEv2lOKvJ9clVa2z1gsy5FWiRddgsZ83Ea+r1lgzAESeE2W3UAge4V4q5JkXB
         uL1QqzcJEUvWMxjyst9PyRFC2WoZEwsnbA0dh2iaS8S4MvqhdkTiIRI637+XvwRh1O1J
         lC3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=X7fGrPbJzdZR1znab5GtShDunQ4siLQt3bvfoIUzQU4=;
        b=nz4Bjo8MKgpfY7e2Vv+Jk924URqyNM6+SG451nRyBQFoYIz+3Tc4LSqCLKsZSzPIkb
         Ev8ykB8CQWZ3DYpcwxQegwC8Ei4aUwYpHxKBdW5txofniwsU6cpyVw+FcrKQ+3AcGf7V
         Q2d5iCpRfyZkaPEUedmVi+OL5JDuh2HgritVulZDSIouayU3xD6AZip9vj48McUcHIki
         QALb3RXDo9WI1fD9hB5qmJNZ4O7SP1Hg5dcVvzsY83hpibUUipHAFBV187eTOlTNWBqG
         jGIIW+Kpyh00EWy0tnXFx2OlCykjluayCj5MlsMyMRRmAdbUvmsyVYoCNOmeeyHRqt6x
         i7OA==
X-Gm-Message-State: AOAM533H4OOhPXxmPViUXFPHhQwDXAhVgiTeyVLGYiSqx18IO0o9bzZH
        FrdCXiVlQwJI0kDy6qU1uQ0scA==
X-Google-Smtp-Source: ABdhPJzi770S3nzdmV5E1eFv1zDRurpCww+fj6gJFDnFVBVi0bHcMEKiHeOtGMoNkM+jV4f5EU3RGw==
X-Received: by 2002:a9d:18e:: with SMTP id e14mr9023801ote.34.1622946025841;
        Sat, 05 Jun 2021 19:20:25 -0700 (PDT)
Received: from builder.lan (104-57-184-186.lightspeed.austtx.sbcglobal.net. [104.57.184.186])
        by smtp.gmail.com with ESMTPSA id p65sm731467oop.0.2021.06.05.19.20.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 05 Jun 2021 19:20:25 -0700 (PDT)
Date:   Sat, 5 Jun 2021 21:20:23 -0500
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     Prasad Malisetty <pmaliset@codeaurora.org>
Cc:     agross@kernel.org, bhelgaas@google.com, robh+dt@kernel.org,
        swboyd@chromium.org, lorenzo.pieralisi@arm.com,
        svarbanov@mm-sol.com, devicetree@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, linux-usb@vger.kernel.org,
        linux-kernel@vger.kernel.org, mgautam@codeaurora.org,
        dianders@chromium.org, mka@chromium.org, sanm@codeaurora.org
Subject: Re: [PATCH v2 1/4] arm64: dts: qcom: sc7280: Add PCIe nodes for IDP
 board
Message-ID: <YLww50NM0xF9wx+H@builder.lan>
References: <1622904059-21244-1-git-send-email-pmaliset@codeaurora.org>
 <1622904059-21244-2-git-send-email-pmaliset@codeaurora.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1622904059-21244-2-git-send-email-pmaliset@codeaurora.org>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sat 05 Jun 09:40 CDT 2021, Prasad Malisetty wrote:

> Add PCIe nodes for sc7280 IDP board.
> 

This looks good, but it can't come before patch 2 in the series, which
introduces these labels.

Regards,
Bjorn

> Signed-off-by: Prasad Malisetty <pmaliset@codeaurora.org>
> ---
>  arch/arm64/boot/dts/qcom/sc7280-idp.dts | 28 ++++++++++++++++++++++++++++
>  1 file changed, 28 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sc7280-idp.dts b/arch/arm64/boot/dts/qcom/sc7280-idp.dts
> index 3900cfc..a58552b 100644
> --- a/arch/arm64/boot/dts/qcom/sc7280-idp.dts
> +++ b/arch/arm64/boot/dts/qcom/sc7280-idp.dts
> @@ -268,6 +268,34 @@
>  		};
>  };
>  
> +&pcie1 {
> +	status = "okay";
> +
> +	vdda-supply = <&vreg_l10c_0p8>;
> +};
> +
> +&pcie1_phy {
> +	status = "okay";
> +
> +	vdda-phy-supply = <&vreg_l10c_0p8>;
> +	vdda-pll-supply = <&vreg_l6b_1p2>;
> +};
> +
> +&pcie1_default_state {
> +	clkreq {
> +		bias-pull-up;
> +	};
> +
> +	wake-n {
> +		drive-strength = <2>;
> +		bias-pull-up;
> +	};
> +
> +	nvme-n {
> +		bias-pull-up;
> +	};
> +};
> +
>  &qupv3_id_0 {
>  	status = "okay";
>  };
> -- 
> The Qualcomm Innovation Center, Inc. is a member of the Code Aurora Forum,
> a Linux Foundation Collaborative Project
> 
