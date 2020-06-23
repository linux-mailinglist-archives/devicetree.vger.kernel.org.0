Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id EB1CE20684C
	for <lists+devicetree@lfdr.de>; Wed, 24 Jun 2020 01:24:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2387672AbgFWXYv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 23 Jun 2020 19:24:51 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52630 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2387783AbgFWXYv (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 23 Jun 2020 19:24:51 -0400
Received: from mail-pl1-x643.google.com (mail-pl1-x643.google.com [IPv6:2607:f8b0:4864:20::643])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E3A6FC061573
        for <devicetree@vger.kernel.org>; Tue, 23 Jun 2020 16:24:50 -0700 (PDT)
Received: by mail-pl1-x643.google.com with SMTP id g12so138992pll.10
        for <devicetree@vger.kernel.org>; Tue, 23 Jun 2020 16:24:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=3G9QMVwxTsA92LLKCFH4RqCAh/UtFLmjlIBZFONQCss=;
        b=kleomPaHRpYa6r8GyLa5xfannizPFjQqXQWpZBPvk5Kv28krx2yW1R+46OHgC/VrOa
         orGPc9RcAHqT0crgKC8pHbALu1G9E71b2hDazaZ8IugV5ZC7kf34zZDYMZadtHSRha12
         C+nYl0T+bDdRldeU5Oh91e0n0VyUYWql4+V6sqH8tMXgNuS6g3/r+o+CwD9ECIK1pbDf
         Iu0m+GXI/jpB563yx0A15h5kO6aAa2x+g9S2BcXUAngENANFC71xbE25w5HgsaBTOd3c
         L5pkE21g86RSpvDH/+DxtxldgadP4Mr8HGLCPPt54AtgI1DVSQpkaWwlm8VLiyoPjsPH
         LvZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=3G9QMVwxTsA92LLKCFH4RqCAh/UtFLmjlIBZFONQCss=;
        b=NbMRTQmAnuFFC8YjOxXGnflMqr1XTNpprOwEJHCn1a0/HCqHlNVFbt4Erp5392KXfK
         OTl66vwLaVSGmnFv17Sv92pYoWK6TIHVBUQzwCZMluIqhinq9ZbcFt4QjQ/zxhDPdDW9
         FQjGxWLrbtLy/KQ4H5yHOUnf2xySMSd6SiyiO//mtIO7Lj1rCIusZCV2Ophyz03nUIxV
         GHNHYg80XunC49vJg+3e7liWDBxUFnpZKaEMYLEsTfyNJV8BafKUnM3u9aKFh0I6eFwy
         5wEbWt3i0lDkgbmJh/ExJZ3HXPWdca71Vxe3/s881IFREOR6u9OwnVDY/pIK5oaWJuBL
         xwBQ==
X-Gm-Message-State: AOAM530FqwyvaNki5y+++quJxlyvfBQ8ubfDLJjgxzMg1zRX9qLMY48T
        bBLaSDjN4s186hWUe/rTSCQ2zU/ZpN4=
X-Google-Smtp-Source: ABdhPJybS5PXzSDbG++SU/WtqGmAw1CKJ6YSGskex+IHZgTwomcda7KuYRhYhMYpTv6ddwrA5pM8vw==
X-Received: by 2002:a17:90a:930c:: with SMTP id p12mr26990817pjo.2.1592954690455;
        Tue, 23 Jun 2020 16:24:50 -0700 (PDT)
Received: from builder.lan (104-188-17-28.lightspeed.sndgca.sbcglobal.net. [104.188.17.28])
        by smtp.gmail.com with ESMTPSA id z24sm18411636pfk.29.2020.06.23.16.24.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Jun 2020 16:24:49 -0700 (PDT)
Date:   Tue, 23 Jun 2020 16:22:07 -0700
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     Konrad Dybcio <konradybcio@gmail.com>
Cc:     skrzynka@konradybcio.pl, Andy Gross <agross@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Kees Cook <keescook@chromium.org>,
        Anton Vorontsov <anton@enomsg.org>,
        Colin Cross <ccross@android.com>,
        Tony Luck <tony.luck@intel.com>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 08/12] arm64: dts: qcom: msm8994: Add pmu node
Message-ID: <20200623232207.GN128451@builder.lan>
References: <20200623224813.297077-1-konradybcio@gmail.com>
 <20200623224813.297077-9-konradybcio@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200623224813.297077-9-konradybcio@gmail.com>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue 23 Jun 15:48 PDT 2020, Konrad Dybcio wrote:

> Add the CPU PMU to get perf support for hardware events.
> 
> Signed-off-by: Konrad Dybcio <konradybcio@gmail.com>

Applied, thanks.

> ---
>  arch/arm64/boot/dts/qcom/msm8994.dtsi | 5 +++++
>  1 file changed, 5 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/msm8994.dtsi b/arch/arm64/boot/dts/qcom/msm8994.dtsi
> index 8af01ebe73f7..b3c01ebc5c67 100644
> --- a/arch/arm64/boot/dts/qcom/msm8994.dtsi
> +++ b/arch/arm64/boot/dts/qcom/msm8994.dtsi
> @@ -154,6 +154,11 @@ memory {
>  		reg = <0 0 0 0>;
>  	};
>  
> +	pmu {
> +		compatible = "arm,cortex-a53-pmu";
> +		interrupts = <GIC_PPI 7 (GIC_CPU_MASK_SIMPLE(4)| IRQ_TYPE_LEVEL_HIGH)>;
> +	};
> +
>  	reserved-memory {
>  		#address-cells = <2>;
>  		#size-cells = <2>;
> -- 
> 2.27.0
> 
