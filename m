Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id C79A41668CF
	for <lists+devicetree@lfdr.de>; Thu, 20 Feb 2020 21:47:51 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728582AbgBTUru (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 20 Feb 2020 15:47:50 -0500
Received: from mail-pf1-f196.google.com ([209.85.210.196]:46560 "EHLO
        mail-pf1-f196.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728957AbgBTUru (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 20 Feb 2020 15:47:50 -0500
Received: by mail-pf1-f196.google.com with SMTP id k29so2478641pfp.13
        for <devicetree@vger.kernel.org>; Thu, 20 Feb 2020 12:47:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=Hkv6DOXu5fdybyXIzjRo7+04GtF2evxAJc5xRrDjbJ8=;
        b=jaF//ckA9Yq4Vh+ca/r+NhybKNWW6ze+2UlwRWigULuox+Ken8q1+KvZPDzCv6iHYG
         xcShEnwM2BcKYi+TQWEU69o9JK/JeCXbNDNyc/KdTYhEc3SnwM48KnmXNz/zn3AkxwV9
         qy5YupuRRpb/l28O7x2Matqm96xTgKDJ6uC9rzBBvLXd3YgIRy6LRTxgr8qsSXhAZ/dx
         mqZHEVQAlsGYqF81UiUIuStZv49XGPVq5qbyaiXM7Zg1IKUey4oXTzfGOX6nWxjsll0N
         7xX7KbkE7wNZ3z8/BcETr7Sd+yEgyvtbgU3VrwRukkfdN06SUSjp7DEaHQzffZCoWVaD
         KMEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=Hkv6DOXu5fdybyXIzjRo7+04GtF2evxAJc5xRrDjbJ8=;
        b=USg6s+IEvGMP6nqy+piKBcSH3S8oTySfywHn5ABuLTmnZ1OvDKJ9bmqi5WI8j0p6VH
         JCcwhtO78gJMMltMLzIbgyTOK/QSgiu0YoEWG0jdmXxRMRYpyvkXqu0AeKy1G/gTfHCa
         6YkgeN6JS7CPKyFXaLDmIS7UY/Fgk9JDe+7LP9E4WDkfVarZ3q7hcswRBBeGCB55fzbp
         ViAt66GzphJd1RhsooOWzzrGAlqVhU2tc+rrD4i0K9h3PULAuaglxVJMx2yTUrVOR4JJ
         YSozwKASc9Aktt2DeqpCtVfnEgTj0N1N2fnrZT6J1r9B/jQUx8T4qowEuUFsoRVftPJz
         0ZoA==
X-Gm-Message-State: APjAAAW4QnxqwWMxMqPYQff7DrryvPyMzPeAoScYMeqKPY4gtzYFPC7J
        AXf3V/y1w1VsfG5VjND1kaJZpg==
X-Google-Smtp-Source: APXvYqx+aKyiXRkNTfl5Aq1gcOsCwd61wYCFHeHE3bYX5050kK3HcQXro3BICKybNa6XOZ4aygdYhw==
X-Received: by 2002:a63:a741:: with SMTP id w1mr35769659pgo.131.1582231669323;
        Thu, 20 Feb 2020 12:47:49 -0800 (PST)
Received: from xps15 (S0106002369de4dac.cg.shawcable.net. [68.147.8.254])
        by smtp.gmail.com with ESMTPSA id u23sm479779pfm.29.2020.02.20.12.47.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 20 Feb 2020 12:47:48 -0800 (PST)
Date:   Thu, 20 Feb 2020 13:47:46 -0700
From:   Mathieu Poirier <mathieu.poirier@linaro.org>
To:     Bjorn Andersson <bjorn.andersson@linaro.org>
Cc:     Andy Gross <agross@kernel.org>, Ohad Ben-Cohen <ohad@wizery.com>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        linux-arm-msm@vger.kernel.org, linux-remoteproc@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Sibi Sankar <sibis@codeaurora.org>,
        Rishabh Bhatnagar <rishabhb@codeaurora.org>
Subject: Re: [PATCH v3 4/8] arm64: dts: qcom: qcs404: Add IMEM and PIL info
 region
Message-ID: <20200220204746.GD19352@xps15>
References: <20200211005059.1377279-1-bjorn.andersson@linaro.org>
 <20200211005059.1377279-5-bjorn.andersson@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200211005059.1377279-5-bjorn.andersson@linaro.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Feb 10, 2020 at 04:50:55PM -0800, Bjorn Andersson wrote:
> Add a simple-mfd representing IMEM on QCS404 and define the PIL
> relocation info region, so that post mortem tools will be able to locate
> the loaded remoteprocs.
> 
> Signed-off-by: Bjorn Andersson <bjorn.andersson@linaro.org>
> ---
> 
> Changes since v2:
> - Replace offset with reg
> 
>  arch/arm64/boot/dts/qcom/qcs404.dtsi | 13 +++++++++++++
>  1 file changed, 13 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/qcs404.dtsi b/arch/arm64/boot/dts/qcom/qcs404.dtsi
> index 4ee1e3d5f123..f539293b875c 100644
> --- a/arch/arm64/boot/dts/qcom/qcs404.dtsi
> +++ b/arch/arm64/boot/dts/qcom/qcs404.dtsi
> @@ -997,6 +997,19 @@ blsp2_spi0: spi@7af5000 {
>  			status = "disabled";
>  		};
>  
> +		imem@8600000 {
> +			compatible = "syscon", "simple-mfd";
> +			reg = <0x08600000 0x1000>;
> +
> +			#address-cells = <1>;
> +			#size-cells = <1>;
> +
> +			pil-reloc@94c {
> +				compatible ="qcom,pil-reloc-info";

s/="/= "

> +				reg = <0x94c 200>;
> +			};
> +		};
> +
>  		intc: interrupt-controller@b000000 {
>  			compatible = "qcom,msm-qgic2";
>  			interrupt-controller;
> -- 
> 2.24.0
> 
