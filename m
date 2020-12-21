Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 79CC82DF87C
	for <lists+devicetree@lfdr.de>; Mon, 21 Dec 2020 06:02:27 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726150AbgLUFBM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 21 Dec 2020 00:01:12 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39682 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725872AbgLUFBL (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 21 Dec 2020 00:01:11 -0500
Received: from mail-yb1-xb2c.google.com (mail-yb1-xb2c.google.com [IPv6:2607:f8b0:4864:20::b2c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 77DE5C061282
        for <devicetree@vger.kernel.org>; Sun, 20 Dec 2020 21:00:31 -0800 (PST)
Received: by mail-yb1-xb2c.google.com with SMTP id x2so7750032ybt.11
        for <devicetree@vger.kernel.org>; Sun, 20 Dec 2020 21:00:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=wWEd+TxYdAPpu8bXys3dBLACeriF2mvf//pdErslYdo=;
        b=fsvC0lRr9040uKgjfwIxdY5FblJVUz3r3vxNxL/TytM/xLfLMlIRXdUWAcIEA6uapV
         A7pyAdobCwrZRjyYMcfN2VCZUKf1fD//dEBgvP/+J7bM+jGfQ1CdSOHgRCX3gFuZHHEX
         ulLYrMcUfxutFHegle1CFISmppUrBIAUwsRVB0MDJgP8Ez+bhM7KZuVEIZnXWKVNzY9t
         SClqxerz90aFmSPDlIcV22/V6uh9KpKNtjMRkLHNWbJG8lWhMqGaxjaKwBUfw2T7dps9
         NfEmAgJRKXI5WbMlb14g14b3seIghHoIb9RhUC0txCYo5aToI0e0YNw4yrgxy1XhCbCE
         O3kA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=wWEd+TxYdAPpu8bXys3dBLACeriF2mvf//pdErslYdo=;
        b=KQVDpmA/1QeB6sYp1Rp/dF+sMK9ZsKpJmRSADdAFvNt/SFZND0TUoFnAU2hEtEj2oj
         ZICsUXhec5+Wz2KeCVCmoZxw+YT1drv+taiSVSeSQDCARNvjCHF5W8rGNhOlU5MObUHY
         sbMZGQJk2qZkbb9vgMdJCx1atmeMWj0ku2vrV4cVAcUDFmQi2ljDSaj8Xzu7qs51Xu/J
         UdHspBsiTzOBAdEaUqSxDftNgYjeEmo6R27T3jF9bZR6kXg2j3cNEiihOY3HFFeXShCu
         DNGlkNpVPcuD0Ppmo1zXeJ1rhGO5BQy1DKSb3ur9nbknmfEyI7tKGZSHAnVcPswLqwrI
         dqZg==
X-Gm-Message-State: AOAM533uhowNLisdovaWVW551dvIvtm1f3XJgL734S1hFtqt/IfpPTTO
        QNcx3AOP8ftmCn7bycwiQi9CB+AD6M+Vtg==
X-Google-Smtp-Source: ABdhPJxq9/CFGCuX1W08nV7vtLJy7F85mt6X2DfoEUGGeEK1nGnoLCHycUC54CMScahha32mvW2NrA==
X-Received: by 2002:a05:6830:1493:: with SMTP id s19mr10850044otq.175.1608522817719;
        Sun, 20 Dec 2020 19:53:37 -0800 (PST)
Received: from ripper (104-57-184-186.lightspeed.austtx.sbcglobal.net. [104.57.184.186])
        by smtp.gmail.com with ESMTPSA id s26sm3600580otd.8.2020.12.20.19.53.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 20 Dec 2020 19:53:37 -0800 (PST)
Date:   Sun, 20 Dec 2020 19:54:21 -0800
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     Robert Foss <robert.foss@linaro.org>
Cc:     agross@kernel.org, robh+dt@kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH v1] arm64: dts: qcom: sdm845-db845c: Fix reset-pin of
 ov8856 node
Message-ID: <X+Acbf5Ks7R+M6ZW@ripper>
References: <20201217151200.1179555-1-robert.foss@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20201217151200.1179555-1-robert.foss@linaro.org>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu 17 Dec 07:12 PST 2020, Robert Foss wrote:

> Switch reset pin of ov8856 node from GPIO_ACTIVE_HIGH to GPIO_ACTIVE_LOW,
> this issue prevented the ov8856 from probing properly as it does not respond
> to I2C messages.
> 
> Fixes: d4919a44564b ("arm64: dts: qcom: sdm845-db845c: Add ov8856 & ov7251
> camera nodes")
> 
> Signed-off-by: Robert Foss <robert.foss@linaro.org>
> ---
>  arch/arm64/boot/dts/qcom/sdm845-db845c.dts | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sdm845-db845c.dts b/arch/arm64/boot/dts/qcom/sdm845-db845c.dts
> index 7cc236575ee2..a943b3f353ce 100644
> --- a/arch/arm64/boot/dts/qcom/sdm845-db845c.dts
> +++ b/arch/arm64/boot/dts/qcom/sdm845-db845c.dts
> @@ -1112,11 +1112,11 @@ camera@10 {
>  		reg = <0x10>;
>  
>  		// CAM0_RST_N
> -		reset-gpios = <&tlmm 9 0>;
> +		reset-gpios = <&tlmm 9 1>;

Please do use GPIO_ACTIVE_LOW as the argument...

Regards,
Bjorn

>  		pinctrl-names = "default";
>  		pinctrl-0 = <&cam0_default>;
>  		gpios = <&tlmm 13 0>,
> -			<&tlmm 9 0>;
> +			<&tlmm 9 1>;
>  
>  		clocks = <&clock_camcc CAM_CC_MCLK0_CLK>;
>  		clock-names = "xvclk";
> -- 
> 2.27.0
> 
