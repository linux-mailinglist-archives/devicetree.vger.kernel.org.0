Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id B686B17CB53
	for <lists+devicetree@lfdr.de>; Sat,  7 Mar 2020 03:47:38 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726271AbgCGCrh (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 6 Mar 2020 21:47:37 -0500
Received: from mail-pj1-f66.google.com ([209.85.216.66]:35824 "EHLO
        mail-pj1-f66.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726259AbgCGCrh (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 6 Mar 2020 21:47:37 -0500
Received: by mail-pj1-f66.google.com with SMTP id s8so1882339pjq.0
        for <devicetree@vger.kernel.org>; Fri, 06 Mar 2020 18:47:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=/TRUJUtCxoJr2pqkTiLnH3NeMO+5+wP18MbBGwl1VpQ=;
        b=fQf8UBn7/bTpeN0W23TKO3sg7Wmr6TcYe9FLKdc4QXrgHwFrqKZlFK9umi0NR5h7CO
         efYLTJHlw4ihT2NNuIzfBpTjXAFp03KIlSSIGSPUZOTOTQN6+NzbClDjWMvtNumunsZf
         pj4vB8ZNitQ/iNfq3PeHrNYf/UmQd5vopf9gVnUkWa4K6KQTQdlzJqb8mwl91MIHVfpI
         CK8bAl9EcrUqBgU7tI9ctMfgEu6lWFv0myNir5STMDoyaQBdo91dQy+KjnTnf4kmckcF
         /CM4U/mZcZu82VAYCSg7mvUYL3KtbgqMyE9dqz2GlSm7I3IzxPiRc9y2i2KNLJIH8uu1
         gK2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=/TRUJUtCxoJr2pqkTiLnH3NeMO+5+wP18MbBGwl1VpQ=;
        b=SXkReHtniZtzj2DCFCy/8nohdCMjnmetiFYjMqB5TPc6+TLU5iOTy4NLJ3TpS1HZdO
         bZB9GxyZISVWwmczYrrJR6kQKyFH4OTw2uUi/UtM433SfNwUaxVsPFhM3TiHkuQarl06
         QB0noEzTnE7TUhgmpXrGQG+b0+USjDMgjavFcSBAig6DgSSoNzxXhGI8+lJdBjdGlLrT
         xBbco1OK/NHPah9QUX78QM+y03DDFNE9J5LJ/q6gCaZDLfl87LWkKOYzMb36+Phr5+yl
         DB5Xl/SA+ZuXZ+2ULifc4WjIbkG5QqZDMBHSPSV7riMShnCeQ2pMIGA8qbBCn9AhKV5u
         In+A==
X-Gm-Message-State: ANhLgQ2NvMDI98l69zSLvh+g5N20vhaUeb3qFAiEHyw6yUwCI/gMrDEb
        aQFXT9jo1LrL8mPqm382/5124BrN2WY=
X-Google-Smtp-Source: ADFU+vs06omP9DDIanW/7BIljswpejxJdOu3j3Oapw/Muyix+IW+HjAgI9iuKPhFNjxkaFzGYW8Egg==
X-Received: by 2002:a17:902:7483:: with SMTP id h3mr6062982pll.30.1583549256522;
        Fri, 06 Mar 2020 18:47:36 -0800 (PST)
Received: from builder (104-188-17-28.lightspeed.sndgca.sbcglobal.net. [104.188.17.28])
        by smtp.gmail.com with ESMTPSA id mp23sm10631065pjb.42.2020.03.06.18.47.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Mar 2020 18:47:35 -0800 (PST)
Date:   Fri, 6 Mar 2020 18:47:33 -0800
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Cc:     agross@kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, robh+dt@kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH 4/4] arm64: dts: qcom: db845c: add Low speed expansion
 i2c and spi nodes
Message-ID: <20200307024733.GE1094083@builder>
References: <20200305145344.14670-1-srinivas.kandagatla@linaro.org>
 <20200305145344.14670-5-srinivas.kandagatla@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200305145344.14670-5-srinivas.kandagatla@linaro.org>
User-Agent: Mutt/1.12.2 (2019-09-21)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu 05 Mar 06:53 PST 2020, Srinivas Kandagatla wrote:

> This patch adds support UART0, I2C0, I2C1 and SPI0 available
> on Low Speed expansion connector.
> 

Applied, after fixing the sort order. Thanks for posting this!

Regards,
Bjorn

> Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
> ---
>  arch/arm64/boot/dts/qcom/sdm845-db845c.dts | 34 ++++++++++++++++++++++
>  1 file changed, 34 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sdm845-db845c.dts b/arch/arm64/boot/dts/qcom/sdm845-db845c.dts
> index 350d3ea60235..fd2bdf10a4d9 100644
> --- a/arch/arm64/boot/dts/qcom/sdm845-db845c.dts
> +++ b/arch/arm64/boot/dts/qcom/sdm845-db845c.dts
> @@ -434,6 +434,24 @@
>  	vdda-pll-supply = <&vreg_l26a_1p2>;
>  };
>  
> +&i2c11 {
> +	/* On Low speed expansion */
> +	label = "LS-I2C1";
> +	status = "okay";
> +};
> +
> +&i2c14 {
> +	/* On Low speed expansion */
> +	label = "LS-I2C0";
> +	status = "okay";
> +};
> +
> +&spi2 {
> +	/* On Low speed expansion */
> +	label = "LS-SPI0";
> +	status = "okay";
> +};
> +
>  &pm8998_gpio {
>  	vol_up_pin_a: vol-up-active {
>  		pins = "gpio6";
> @@ -574,6 +592,11 @@
>  	};
>  };
>  
> +&uart3 {
> +	label = "LS-UART0";
> +	status = "disabled";
> +};
> +
>  &uart6 {
>  	status = "okay";
>  
> @@ -589,6 +612,7 @@
>  };
>  
>  &uart9 {
> +	label = "LS-UART1";
>  	status = "okay";
>  };
>  
> @@ -674,6 +698,16 @@
>  };
>  
>  /* PINCTRL - additions to nodes defined in sdm845.dtsi */
> +&qup_spi2_default {
> +	drive-strength = <16>;
> +};
> +
> +&qup_uart3_default{
> +	pinmux {
> +		pins = "gpio41", "gpio42", "gpio43", "gpio44";
> +		function = "qup3";
> +	};
> +};
>  
>  &qup_uart6_default {
>  	pinmux {
> -- 
> 2.21.0
> 
