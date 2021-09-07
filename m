Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E88F6402A18
	for <lists+devicetree@lfdr.de>; Tue,  7 Sep 2021 15:47:00 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1344874AbhIGNsF (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 7 Sep 2021 09:48:05 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33138 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1344869AbhIGNsE (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 7 Sep 2021 09:48:04 -0400
Received: from mail-ot1-x331.google.com (mail-ot1-x331.google.com [IPv6:2607:f8b0:4864:20::331])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1D071C06175F
        for <devicetree@vger.kernel.org>; Tue,  7 Sep 2021 06:46:58 -0700 (PDT)
Received: by mail-ot1-x331.google.com with SMTP id c42-20020a05683034aa00b0051f4b99c40cso12855299otu.0
        for <devicetree@vger.kernel.org>; Tue, 07 Sep 2021 06:46:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=TGrDwOa3lQJKnj52Foveo24I3v9X7ezZKxCdSoKyzMI=;
        b=Oof7E/msGkg9jKBxfsxoq3j861ag/LYr9pcbxR0Y02SC649ijTrosMom2dFlF3upZh
         jcz4UCy1m1tCx1QuHK2t1G6O1vxyVq1/chNR+ZZJsL2gJxBvnzM0+WHb2CNbMHRKFqW/
         oWTF38o3RdNVYwpfzM2Ko/CQzqHXCsKdrANPVjVEOhYQFBFpMb58nocWPLVm8rO7ysRL
         unoxmK5tsVD7Z2fBGFEwWm5FDKJ9WiYk+CUNGXKu12m4FfRcfQHulXuNv1U/DAaqq8FJ
         HoDWnJ/yBzR3YgtuVN042wokp97r3K/8vgen5ee5n6VbWMd7Yr8hOTxnloQfm21eE2da
         tN+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=TGrDwOa3lQJKnj52Foveo24I3v9X7ezZKxCdSoKyzMI=;
        b=CrVwmlgoh+1M9SNP50BM4Nn8N7+b+rvshAxSgH7lOysk9S9HVM4v0q5Ji8cqibz1HS
         6mUO8IqSJj0AnsOy179wWbuGozIMa/RaRHb+4G8XvzOXgHU0aWGMVa5Wt+V6k2sIkUN4
         XFyfztnwcOd7Jp2Az/qZNyCXXlG5HBTy8hI9L/Q5CGwYD4sA3TJugZ5+yRCL3Ny1zv6e
         rP2tQD0kST2+k2+yDuma+NKgURh0xJmrbyM2Wwu0ehyoxleatX20N5/p+B1vyNmlkMJl
         zsXFxLwEJJFxHTqpE0pv5mDMtsqafUAVyQEBi3WHdsxt5pB/Ag2XCmFoJyEzDQ3mxc/A
         V9IQ==
X-Gm-Message-State: AOAM531GTx88RcTwty6Bcv5Udt2X6kTvd7EB63xAmw8FqfuZ/j/ONysc
        F3kY7O6YDNiUAwAF7imCrEoscA==
X-Google-Smtp-Source: ABdhPJw5N1+GXS15e/qJDD1egWQgkLsILIiHFb94mbwfsFYnXn+pYTtBfbxiMazO8cgtoU2Fry3IiQ==
X-Received: by 2002:a9d:5f8e:: with SMTP id g14mr14907728oti.37.1631022417453;
        Tue, 07 Sep 2021 06:46:57 -0700 (PDT)
Received: from ripper (104-57-184-186.lightspeed.austtx.sbcglobal.net. [104.57.184.186])
        by smtp.gmail.com with ESMTPSA id j17sm2413677ots.10.2021.09.07.06.46.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 07 Sep 2021 06:46:57 -0700 (PDT)
Date:   Tue, 7 Sep 2021 06:47:57 -0700
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@somainline.org>
Cc:     agross@kernel.org, robh+dt@kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, konrad.dybcio@somainline.org,
        marijn.suijten@somainline.org, martin.botka@somainline.org,
        ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
        paul.bouchara@somainline.org
Subject: Re: [PATCH 7/7] arm64: dts: qcom: msm8998-xperia: Add audio clock
 and its pin
Message-ID: <YTdtjRonJBtJUk9N@ripper>
References: <20210903180924.1006044-1-angelogioacchino.delregno@somainline.org>
 <20210903180924.1006044-7-angelogioacchino.delregno@somainline.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210903180924.1006044-7-angelogioacchino.delregno@somainline.org>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri 03 Sep 11:09 PDT 2021, AngeloGioacchino Del Regno wrote:

> All smartphones of this platform are equipped with a WCD9335 audio
> codec, getting its MCLK from PM8998 gpio13: add this clock to DT.
> 
> Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@somainline.org>
> Reviewed-by: Marijn Suijten <marijn.suijten@somainline.org>
> ---
>  .../dts/qcom/msm8998-sony-xperia-yoshino.dtsi | 19 +++++++++++++++++++
>  1 file changed, 19 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/msm8998-sony-xperia-yoshino.dtsi b/arch/arm64/boot/dts/qcom/msm8998-sony-xperia-yoshino.dtsi
> index 5fbe5abf4133..7aeebd3b2e9e 100644
> --- a/arch/arm64/boot/dts/qcom/msm8998-sony-xperia-yoshino.dtsi
> +++ b/arch/arm64/boot/dts/qcom/msm8998-sony-xperia-yoshino.dtsi
> @@ -20,6 +20,19 @@ / {
>  	qcom,msm-id = <0x124 0x20000>, <0x124 0x20001>; /* 8998v2, v2.1 */
>  	qcom,board-id = <8 0>;
>  
> +	clocks {
> +		compatible = "simple-bus";
> +
> +		div1_mclk: divclk1 {
> +			compatible = "gpio-gate-clock";
> +			pinctrl-0 = <&audio_mclk_pin>;
> +			pinctrl-names = "default";
> +			clocks = <&rpmcc RPM_SMD_DIV_CLK1>;

What controls the clock rate of divclk1?

Regards,
Bjorn

> +			#clock-cells = <0>;
> +			enable-gpios = <&pm8998_gpio 13 GPIO_ACTIVE_HIGH>;
> +		};
> +	};
> +
>  	board_vbat: vbat-regulator {
>  		compatible = "regulator-fixed";
>  		regulator-name = "VBAT";
> @@ -313,6 +326,12 @@ cam_snapshot_pin_a: cam-snapshot-btn-active {
>  		input-enable;
>  		qcom,drive-strength = <PMIC_GPIO_STRENGTH_NO>;
>  	};
> +
> +	audio_mclk_pin: audio-mclk-pin-active {
> +		pins = "gpio13";
> +		function = "func2";
> +		power-source = <0>;
> +	};
>  };
>  
>  &pmi8998_gpio {
> -- 
> 2.32.0
> 
