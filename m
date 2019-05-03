Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 81E8A135B2
	for <lists+devicetree@lfdr.de>; Sat,  4 May 2019 00:42:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726276AbfECWmR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 3 May 2019 18:42:17 -0400
Received: from mail-pg1-f195.google.com ([209.85.215.195]:39731 "EHLO
        mail-pg1-f195.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726042AbfECWmR (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 3 May 2019 18:42:17 -0400
Received: by mail-pg1-f195.google.com with SMTP id w22so2068908pgi.6
        for <devicetree@vger.kernel.org>; Fri, 03 May 2019 15:42:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=4RYvNBRihg/HZePRuAHy3LcvAniIXnKHrlXHPcftmFs=;
        b=Gt5toQv5TYcVqMJ1wYceVeXD21dLmeK2mCMoPR7QrK9DDKIzUd41u48ol33VRjGT9n
         sKoIUJqzoMrxmH3wrfCaUWkIwqdgJ8Ouoz+8PJ1G+67G3bQ0uxICS0sH1PUE5g/P1NPD
         KS+Rd22dTPYlQSuVFCyNEPAGt2Df2yw8H+EMDpBZTpSA3fZ9aHm+M2TJHGAU3z0eZ1oB
         COEI295juknojXvk2ZUc++Einpc9aqX1OufbvergGj7kNg+6BywrmZcdyWFNUPMfB8Ya
         VfVWAmCTwfzczuQXNNMlq4WCJyox4a3NMFuY2JazkLhy3Ej7lRxXwQpZjnKXqYQaZUQR
         RPMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=4RYvNBRihg/HZePRuAHy3LcvAniIXnKHrlXHPcftmFs=;
        b=T5Th3c+Cj/dDxgY4BYGRRkFByqmLEw79NfXCmhN43JovDtUkLb/sJmvIiDqShIRq/Q
         lxbBuDTgj/wSdngJUkDgzwBTvWIP9htsJbk1BUIbRB5/GHBT5VoASlPe1SUb+3aAZPga
         IYmtxpmLTlSUViDoe03StoWcCdk5XnFFUyFXV2pKmvp5VcvoqlFyUQDTjAopgFov29r6
         XjQQOe5GE9I/dMSqUz/UT5F5hbo58Rj6qZSLCR5qJX2J+v5+gEbTKkBNvSe/2LjuBqta
         A8ac9vHgvD2sh5T9pEVxlEUfxmiFcvtfXoueGb4mAa55sh4RyIFYTEzLtHHhFZ2D4vET
         NwNQ==
X-Gm-Message-State: APjAAAX8BQ6rxRAG+bsauJ6Kx3bZhnba5ze3w+aznDcmdTcgVm/Lz1ra
        rhpb/SONst8DkSr2oMuSMrDuCQ==
X-Google-Smtp-Source: APXvYqzJIfKn9EVufbH6skH/fjFGpac0p0raS5ruRaxpojktvkgJnhgJi8aBBww4YuTIakheArHPdQ==
X-Received: by 2002:a62:62c2:: with SMTP id w185mr14617509pfb.237.1556923336280;
        Fri, 03 May 2019 15:42:16 -0700 (PDT)
Received: from builder (104-188-17-28.lightspeed.sndgca.sbcglobal.net. [104.188.17.28])
        by smtp.gmail.com with ESMTPSA id e29sm3648517pgb.37.2019.05.03.15.42.14
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Fri, 03 May 2019 15:42:15 -0700 (PDT)
Date:   Fri, 3 May 2019 15:42:13 -0700
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     Vinod Koul <vkoul@kernel.org>
Cc:     Andy Gross <agross@kernel.org>, linux-arm-msm@vger.kernel.org,
        David Brown <david.brown@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: qcom: qcs404-evb: Fix typo
Message-ID: <20190503224213.GI3137@builder>
References: <20190502121306.3374-1-vkoul@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190502121306.3374-1-vkoul@kernel.org>
User-Agent: Mutt/1.10.0 (2018-05-17)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu 02 May 05:13 PDT 2019, Vinod Koul wrote:

> Fix the typo "dreive-strength" and use correct property drive-strength
> 
> Fixes: 7241ab944da3 ("arm64: dts: qcom: qcs404: Add sdcc1 node")
> Signed-off-by: Vinod Koul <vkoul@kernel.org>
> ---

Thanks for spotting this, picked up.

Regards,
Bjorn

>  arch/arm64/boot/dts/qcom/qcs404-evb.dtsi | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/qcs404-evb.dtsi b/arch/arm64/boot/dts/qcom/qcs404-evb.dtsi
> index 2c3127167e3c..7cc0b7842ac2 100644
> --- a/arch/arm64/boot/dts/qcom/qcs404-evb.dtsi
> +++ b/arch/arm64/boot/dts/qcom/qcs404-evb.dtsi
> @@ -200,7 +200,7 @@
>  		data {
>  			pins = "sdc1_data";
>  			bias-pull-up;
> -			dreive-strength = <10>;
> +			drive-strength = <10>;
>  		};
>  
>  		rclk {
> @@ -225,7 +225,7 @@
>  		data {
>  			pins = "sdc1_data";
>  			bias-pull-up;
> -			dreive-strength = <2>;
> +			drive-strength = <2>;
>  		};
>  
>  		rclk {
> -- 
> 2.20.1
> 
