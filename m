Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 9A7638DC90
	for <lists+devicetree@lfdr.de>; Wed, 14 Aug 2019 20:01:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728841AbfHNSAz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 14 Aug 2019 14:00:55 -0400
Received: from mail-pg1-f195.google.com ([209.85.215.195]:40024 "EHLO
        mail-pg1-f195.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726166AbfHNSAv (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 14 Aug 2019 14:00:51 -0400
Received: by mail-pg1-f195.google.com with SMTP id w10so53462004pgj.7
        for <devicetree@vger.kernel.org>; Wed, 14 Aug 2019 11:00:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=fJ9cwj5PrHv4tRSMH6SQvLLbwv7CS8HXTftOWfJo5YU=;
        b=cECcwQ7pw8ag3svApom/3ETlM1wknpk5ILygrzGn1QU4bu/wsXI6CsZTBQ73V5pcq0
         hXnqCylY/c5iFgimVmuUzZM+oxtdeRMf5TF/wOdu6A1kvOEYnyeE+01vSTVm4zSMihXs
         dOnbA/MsU6qsOfN4jSNA1g041BjYGzwr45XH8ZYGhbgHoTpoLoIJvDu+eH4CKDQtRDif
         Xy8xa4yYdsnUQfh1/WWJPu2ImOFr0aFF33yxzD6S2TiL4inlGcSGfNuGxOlQnPdPU1vg
         jV3EmAmQCrmzlIet4ld2gJMgLo6m3DvCFpRneuCBvOV1wloKmsjcsrwY0n3xmKMvqWuF
         8KFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=fJ9cwj5PrHv4tRSMH6SQvLLbwv7CS8HXTftOWfJo5YU=;
        b=ocumSMRVSVlTvqRMK9LSzdN6uiCsWfwTE1H1UbLABf5uJczqbx5hCA0AvK7zO2kdef
         Uk6PkMOapY+63pauQFZIDKOx54dvspQdR5qP4sXOyF2B3r4TtssGUkntUDR2u7T24Nuh
         5x3gJogfv8J0vqQa0ELQb4rcMtep4UBcKdJ+ryL30TJ2P0Afq8pug6xHejWjJGhBmPY/
         PJOFzY59+cLc1VNJhuqtXMX/KAJVFBOwhRpDCeF/hQgpYiYyhRbbKt8OPCZn/73Gkg8r
         VR5LeKwQKpQSiWxzxTCyXXE7eNBorctDNsL7P/aDw2c8Tgart/MOfrSgNZfhLl5pWRyU
         OzzA==
X-Gm-Message-State: APjAAAV6WlaimOCSJxdcAffumV77yvU0ycDxFhoz7uoJUycKq6EriAHi
        sWi1LGVsgwiPqpuqfZBQX97f3Q==
X-Google-Smtp-Source: APXvYqzrakKid7QIIFOdnyxXZVtpIxlsGPaEU5w1zmjCc5Hh5N86JWWqrhekwsDpNQnJ1x5HdupD0w==
X-Received: by 2002:a17:90a:858c:: with SMTP id m12mr870111pjn.129.1565805650121;
        Wed, 14 Aug 2019 11:00:50 -0700 (PDT)
Received: from minitux (104-188-17-28.lightspeed.sndgca.sbcglobal.net. [104.188.17.28])
        by smtp.gmail.com with ESMTPSA id a6sm694379pjv.30.2019.08.14.11.00.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Aug 2019 11:00:49 -0700 (PDT)
Date:   Wed, 14 Aug 2019 11:00:47 -0700
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     Vinod Koul <vkoul@kernel.org>
Cc:     Andy Gross <agross@kernel.org>, linux-arm-msm@vger.kernel.org,
        sibis@codeaurora.org, Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Stephen Boyd <sboyd@kernel.org>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH 10/22] arm64: dts: qcom: pm8150b: Add pon and adc nodes
Message-ID: <20190814180047.GH6167@minitux>
References: <20190814125012.8700-1-vkoul@kernel.org>
 <20190814125012.8700-11-vkoul@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190814125012.8700-11-vkoul@kernel.org>
User-Agent: Mutt/1.12.0 (2019-05-25)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed 14 Aug 05:50 PDT 2019, Vinod Koul wrote:

> Add the pon and adc nodes found in pm8150b PMIC.
> 
> Signed-off-by: Vinod Koul <vkoul@kernel.org>
> ---
>  arch/arm64/boot/dts/qcom/pm8150b.dtsi | 54 +++++++++++++++++++++++++++
>  1 file changed, 54 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/pm8150b.dtsi b/arch/arm64/boot/dts/qcom/pm8150b.dtsi
> index c0a678b0f159..846197bd65cd 100644
> --- a/arch/arm64/boot/dts/qcom/pm8150b.dtsi
> +++ b/arch/arm64/boot/dts/qcom/pm8150b.dtsi
> @@ -2,6 +2,7 @@
>  // Copyright (c) 2017-2019, The Linux Foundation. All rights reserved.
>  // Copyright (c) 2019, Linaro Limited
>  
> +#include <dt-bindings/iio/qcom,spmi-vadc.h>
>  #include <dt-bindings/interrupt-controller/irq.h>
>  #include <dt-bindings/spmi/spmi.h>
>  
> @@ -11,6 +12,59 @@
>  		reg = <0x2 SPMI_USID>;
>  		#address-cells = <1>;
>  		#size-cells = <0>;
> +
> +		pon@800 {
> +			compatible = "qcom,pm8916-pon";
> +			reg = <0x0800>;
> +		};
> +
> +		adc@3100 {
> +			compatible = "qcom,spmi-adc5";
> +			reg = <0x3100>;
> +			#address-cells = <1>;
> +			#size-cells = <0>;
> +			#io-channel-cells = <1>;
> +			interrupts = <0x2 0x31 0x0 IRQ_TYPE_EDGE_RISING>;
> +
> +			ref-gnd@0 {
> +				reg = <ADC5_REF_GND>;
> +				qcom,pre-scaling = <1 1>;
> +				label = "ref_gnd";
> +			};
> +
> +			vref-1p25@1 {
> +				reg = <ADC5_1P25VREF>;
> +				qcom,pre-scaling = <1 1>;
> +				label = "vref_1p25";
> +			};
> +
> +			die-temp@6 {
> +				reg = <ADC5_DIE_TEMP>;
> +				qcom,pre-scaling = <1 1>;
> +				label = "die_temp";
> +			};
> +
> +			chg-temp@9 {
> +				reg = <ADC5_CHG_TEMP>;
> +				qcom,pre-scaling = <1 1>;
> +				label = "chg_temp";
> +			};
> +

I believe the above items are internal, so it makes sense to keep them
here, the below amux ones relates to board configuration so I think
those should go in the board file.

Regards,
Bjorn

> +			smb1390-therm@14 {
> +				reg = <ADC5_AMUX_THM2>;
> +				qcom,hw-settle-time = <200>;
> +				qcom,pre-scaling = <1 1>;
> +				label = "smb1390_therm";
> +			};
> +
> +			smb1355-therm@78 {
> +				reg = <ADC5_AMUX_THM2_100K_PU>;
> +				qcom,ratiometric;
> +				qcom,hw-settle-time = <200>;
> +				qcom,pre-scaling = <1 1>;
> +				label = "smb1355_therm";
> +			};
> +		};
>  	};
>  
>  	qcom,pm8150@3 {
> -- 
> 2.20.1
> 
