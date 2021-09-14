Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 055D940B434
	for <lists+devicetree@lfdr.de>; Tue, 14 Sep 2021 18:08:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234037AbhINQKG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 14 Sep 2021 12:10:06 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33812 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235205AbhINQKF (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 14 Sep 2021 12:10:05 -0400
Received: from mail-oi1-x234.google.com (mail-oi1-x234.google.com [IPv6:2607:f8b0:4864:20::234])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2CDDCC061764
        for <devicetree@vger.kernel.org>; Tue, 14 Sep 2021 09:08:48 -0700 (PDT)
Received: by mail-oi1-x234.google.com with SMTP id bd1so19690402oib.5
        for <devicetree@vger.kernel.org>; Tue, 14 Sep 2021 09:08:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=2RfQkTzIaazG9aW7D87bI3SL7FWGDYir1432mvXAawM=;
        b=kBwfIPkSP+kWJhn/vK3YFAiPfobchUsDdX5M+3LRjFmoR2EnxqLRLfPTcKn3eMIowo
         tNW79kmM41Tf5ULqCc6ZfDFt0q3QF5sWJE1SxcfqJUd8jtbOqNYfHagXdI6/JaMIbgxT
         fDVtoe8G32Pa6O6wO4/s1QTdatrGAgqZFq/vaGLk605XdLdRTqBzw4n7VSau5YQcv5ZQ
         diZhpLG3G49C8VVQ/WgepScFCxFjrPVpAduAyOWz3yHJxgrBtoYEhS3husfcljJ7uamo
         z6KuJrKlY5GuEvEdkIcIOc3ib1KFIWhAE0oETzUssq1UO8nGI7qBTogL3C4B3pa0V2Jl
         NuYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=2RfQkTzIaazG9aW7D87bI3SL7FWGDYir1432mvXAawM=;
        b=nIHbfl0p5BVRNm0KxHwMzf63mSxNNvnIF/csGlztNo8ioIr5W3g5YodXLW6IOBYKf6
         3Ko0UPTugwmqoVtkW26uIsGttbSF+oWfx8/59Pza984xp9z24/E5KgSQOxrEjMVXVsqp
         8ye96rbSZ+XJKzugw8RRa98SrTwHx75i2xZnnL5uCrrj4/nlXg2qMm7cVSvK1KPlL0dF
         jik6H+erzWjVhWEPl4+cyB+PQZbREWqPYaSc3qzhHqL2QVVaZK5OPLBLr/KkNm3R3YLA
         nmtDCNY7bG9LKRE22wJhPT80dWUvvuYKM8vpaARKZFtpqfSCnWabge2Q6lVdZcuVcJ5d
         qmOA==
X-Gm-Message-State: AOAM531rBSZc32X6r2s/P52qQNN40FeB5WppGhpahALGFncSLc3TaMV2
        HoNg7BuUgvtHhW7i4aUH70wdVw==
X-Google-Smtp-Source: ABdhPJxtTxsR/Q6u4IRGpKnKJm4YOmmiy6ntvfdzN8ZelDaoe6Sku+w3B7gdkyZKy5GXgRU7MaiwUg==
X-Received: by 2002:a05:6808:a01:: with SMTP id n1mr1976220oij.52.1631635727434;
        Tue, 14 Sep 2021 09:08:47 -0700 (PDT)
Received: from builder.lan (104-57-184-186.lightspeed.austtx.sbcglobal.net. [104.57.184.186])
        by smtp.gmail.com with ESMTPSA id j10sm2707105oog.13.2021.09.14.09.08.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Sep 2021 09:08:46 -0700 (PDT)
Date:   Tue, 14 Sep 2021 11:08:44 -0500
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     Konrad Dybcio <konrad.dybcio@somainline.org>
Cc:     ~postmarketos/upstreaming@lists.sr.ht, martin.botka@somainline.org,
        angelogioacchino.delregno@somainline.org,
        marijn.suijten@somainline.org, jamipkettunen@somainline.org,
        Andy Gross <agross@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Kees Cook <keescook@chromium.org>,
        Anton Vorontsov <anton@enomsg.org>,
        Colin Cross <ccross@android.com>,
        Tony Luck <tony.luck@intel.com>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 02/17] arm64: dts: qcom: Add SM6350 device tree
Message-ID: <YUDJDDPWiGAYWpSi@builder.lan>
References: <20210820204926.235192-1-konrad.dybcio@somainline.org>
 <20210820204926.235192-3-konrad.dybcio@somainline.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210820204926.235192-3-konrad.dybcio@somainline.org>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri 20 Aug 15:49 CDT 2021, Konrad Dybcio wrote:
> diff --git a/arch/arm64/boot/dts/qcom/sm6350.dtsi b/arch/arm64/boot/dts/qcom/sm6350.dtsi
[..]
> +		cpu-map {
> +			cluster0 {
> +				core0 {
> +					cpu = <&CPU0>;
> +				};
> +
> +				core1 {
> +					cpu = <&CPU1>;
> +				};
> +
> +				core2 {
> +					cpu = <&CPU2>;
> +				};
> +
> +				core3 {
> +					cpu = <&CPU3>;
> +				};
> +
> +				core4 {
> +					cpu = <&CPU4>;
> +				};
> +
> +				core5 {
> +					cpu = <&CPU5>;
> +				};
> +			};
> +
> +			cluster1 {

Shouldn't this be represented as a single "cluster", like other DynamIQ
devices?

> +				core0 {
> +					cpu = <&CPU6>;
> +				};
> +
> +				core1 {
> +					cpu = <&CPU7>;
> +				};
> +			};
> +		};
> +	};

Regards,
Bjorn
