Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 4B507367CA
	for <lists+devicetree@lfdr.de>; Thu,  6 Jun 2019 01:16:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726855AbfFEXQL (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 5 Jun 2019 19:16:11 -0400
Received: from mail-pf1-f195.google.com ([209.85.210.195]:33780 "EHLO
        mail-pf1-f195.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726510AbfFEXQK (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 5 Jun 2019 19:16:10 -0400
Received: by mail-pf1-f195.google.com with SMTP id x15so263506pfq.0
        for <devicetree@vger.kernel.org>; Wed, 05 Jun 2019 16:16:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=83uaEygo28oePM8F3N5NKuuyzBb7fPbGLBzqyFLAQQA=;
        b=y86THFYYFuCwg4NjgtAt7q46z+gYvfpS6JqQFp2TWNQo+PZyW2UuCmgfYs5ihF7zsV
         XumG9iIAEVLK8uyQS3mak0JKMY1b+ReeQfrKxAmqp22LDWu3HffTgFEiYsvFl7qalEFB
         arlU6GJSju0p8Q1UH6cfZbyy5D62Wv10AChwbI1AaZ5GaGOCgHYdqsa3X30OAgKJG58s
         6JALkoJuHNPpb2z9+j7A+1zNGbPGpiODmwm/iohB98CcqGrtJytsgbA/azm2orw4oGLZ
         IwGC80IxpqcR3MrG1W+XPElhPBNJ6TFFKPlNKhhJRGrYkuSHAZrdeW4H1J6o62wMhLLl
         HWmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=83uaEygo28oePM8F3N5NKuuyzBb7fPbGLBzqyFLAQQA=;
        b=gY8NwgnMN5JMr11VktS3YtJijgExaZwq/jLgxL1wZb0Y5xlSqxJVNRoDrDMeBNMBW+
         wHqNaL5sYCfcVQIbVE9Wefll9/1samR2qipxT89LPQBntBqvjE9LZLTv2vE52mGd2ldN
         auYYP+/aNiAwWKP65bXTSXkeH3Y6A1OhYKpVALcB7mnVRtGMZF141GAsYy7BBEHoOD2g
         z1su72gew+mWA5oO+b4Prvg/UMS7HLCseFAvWS/BK26NnyI+AV0nldTOu3ONEi2FvLYn
         xqSE9OA8SXWU9v4kmprSYvGGTONe4z4l0GNBQs2lg+7oeFcDacNcQrpRnThxoNnpUb5R
         jyyw==
X-Gm-Message-State: APjAAAU1i16n8Ab6e3HENDyRkAEyHQfL62UIynAde2c/oguXuzbQcR3v
        ZBd4zQ7nPm1/MUor9wVphn75mw==
X-Google-Smtp-Source: APXvYqyrieihJjw0LyM7b9fHrzgoFMOxImgwdOC+BxMvC1MGA+JrHx/r56FAICY9eUBKenRtbDPxJg==
X-Received: by 2002:a62:e417:: with SMTP id r23mr18453641pfh.160.1559776570125;
        Wed, 05 Jun 2019 16:16:10 -0700 (PDT)
Received: from minitux (104-188-17-28.lightspeed.sndgca.sbcglobal.net. [104.188.17.28])
        by smtp.gmail.com with ESMTPSA id v4sm48956pff.45.2019.06.05.16.16.09
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 05 Jun 2019 16:16:09 -0700 (PDT)
Date:   Wed, 5 Jun 2019 16:16:07 -0700
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     John Stultz <john.stultz@linaro.org>
Cc:     lkml <linux-kernel@vger.kernel.org>,
        Andy Gross <agross@kernel.org>,
        David Brown <david.brown@linaro.org>,
        Amit Pundir <amit.pundir@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Sebastian Reichel <sre@kernel.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH 3/3 v2] arm64: dts: qcom: pm8998: Use qcom,pm8998-pon
 binding for second gen pon
Message-ID: <20190605231607.GL4814@minitux>
References: <20190603222319.62842-1-john.stultz@linaro.org>
 <20190603222319.62842-3-john.stultz@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190603222319.62842-3-john.stultz@linaro.org>
User-Agent: Mutt/1.12.0 (2019-05-25)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon 03 Jun 15:23 PDT 2019, John Stultz wrote:

> This changes pm8998 to use the new qcom,pm8998-pon compatible
> string for the pon in order to support the gen2 pon
> functionality properly.
> 
> Cc: Andy Gross <agross@kernel.org>
> Cc: David Brown <david.brown@linaro.org>
> Cc: Bjorn Andersson <bjorn.andersson@linaro.org>
> Cc: Amit Pundir <amit.pundir@linaro.org>
> Cc: Rob Herring <robh+dt@kernel.org>
> Cc: Mark Rutland <mark.rutland@arm.com>
> Cc: Sebastian Reichel <sre@kernel.org>
> Cc: linux-arm-msm@vger.kernel.org
> Cc: devicetree@vger.kernel.org

Reviewed-by: Bjorn Andersson <bjorn.andersson@linaro.org>

> Signed-off-by: John Stultz <john.stultz@linaro.org>
> ---
>  arch/arm64/boot/dts/qcom/pm8998.dtsi | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/pm8998.dtsi b/arch/arm64/boot/dts/qcom/pm8998.dtsi
> index d3ca35a940fb6..051a52df80f9e 100644
> --- a/arch/arm64/boot/dts/qcom/pm8998.dtsi
> +++ b/arch/arm64/boot/dts/qcom/pm8998.dtsi
> @@ -39,7 +39,7 @@
>  		#size-cells = <0>;
>  
>  		pm8998_pon: pon@800 {
> -			compatible = "qcom,pm8916-pon";
> +			compatible = "qcom,pm8998-pon";
>  
>  			reg = <0x800>;
>  			mode-bootloader = <0x2>;
> -- 
> 2.17.1
> 
