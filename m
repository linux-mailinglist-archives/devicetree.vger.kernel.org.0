Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 7AD458DC64
	for <lists+devicetree@lfdr.de>; Wed, 14 Aug 2019 19:53:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728735AbfHNRxg (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 14 Aug 2019 13:53:36 -0400
Received: from mail-pf1-f194.google.com ([209.85.210.194]:40641 "EHLO
        mail-pf1-f194.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726490AbfHNRxg (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 14 Aug 2019 13:53:36 -0400
Received: by mail-pf1-f194.google.com with SMTP id w16so1502802pfn.7
        for <devicetree@vger.kernel.org>; Wed, 14 Aug 2019 10:53:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=ArUMi9WppD4KpmP84aiabPQB2r88tFmYQMOJibiN7ys=;
        b=kliu/oC7PiMQOOfilpD5KvgHHyE8oa5C6lAExUySmM8Gmc2V94Xyf6Qt5G/mkSgZhR
         QoFzTj+lZ1ObVgrqM+0gtiijudG06ZfyLJ5kJjYItLw4I+rL1Z79ZDaoftLaBRBFK8q+
         dWMTHzKF6NZcIO435/wCcEWgyaQiCltRj0zs3ftm1/vnz2zC5tq7dAcQx9Hw8XcgDDEd
         fNu/pV8Ggd3G0/AyPAzdGDlGMZH3ZdiSXvDAEJg7G2fql6hV4mG6GWE5XgalyO45XUnK
         s5magF6WCYFUrHtyomNCckDGMWe6chR6VSez62+ZOPWVo/ocYLBw+fSbNqAIrOnqHVcm
         XzCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=ArUMi9WppD4KpmP84aiabPQB2r88tFmYQMOJibiN7ys=;
        b=I+44glM7yS/g1G9IMu9x6rGwJHDH0ybFDO4tqioNc5jXqlswZtltBdAMxot2NnRXAO
         P8QkXSc5lL4XjDH+d1+oi825M7q2FDTpuNSBjny29lC6lrske+qIul7w+B2Cm+BtCnos
         D6sf2Lmq6xQTXUzszR0Z7/omB0YefWSCQuB8jNYxRDdCtiQ0ijKG2V0FtZvi4tAv1EdO
         SPzHrRPd+i0ymXxCChndrj/p/hD9+uW00YnBZYz4XMIFWYrnSEs2zRh3ogKkKyulXHe3
         +ZM4xmvb92+w0DZXQ/nCdX8xkehyNeVM2PHXbNX+UQ6n3MbXOenugk3ziJ7f8o5So3pX
         XmgQ==
X-Gm-Message-State: APjAAAUdkiVmspuXH5Y7YW6RmtiNTOXZPzT/x6jfQPTii4NsB1RH2t3b
        c/gHlNXyAVGHZUveAvWeLcIaUg==
X-Google-Smtp-Source: APXvYqzzMd/5cvFBLMtXfDsAG0LpYnyV+4JJdTWPaUZn9IwFFuOYCZZhd94jls34yHAIl6jxNlK44A==
X-Received: by 2002:aa7:82da:: with SMTP id f26mr1210723pfn.82.1565805215646;
        Wed, 14 Aug 2019 10:53:35 -0700 (PDT)
Received: from minitux (104-188-17-28.lightspeed.sndgca.sbcglobal.net. [104.188.17.28])
        by smtp.gmail.com with ESMTPSA id q8sm387240pjq.20.2019.08.14.10.53.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Aug 2019 10:53:35 -0700 (PDT)
Date:   Wed, 14 Aug 2019 10:53:32 -0700
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     Vinod Koul <vkoul@kernel.org>
Cc:     Andy Gross <agross@kernel.org>, linux-arm-msm@vger.kernel.org,
        sibis@codeaurora.org, Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Stephen Boyd <sboyd@kernel.org>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH 02/22] arm64: dts: qcom: sm8150-mtp: add base dts file
Message-ID: <20190814175332.GG6167@minitux>
References: <20190814125012.8700-1-vkoul@kernel.org>
 <20190814125012.8700-3-vkoul@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190814125012.8700-3-vkoul@kernel.org>
User-Agent: Mutt/1.12.0 (2019-05-25)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed 14 Aug 05:49 PDT 2019, Vinod Koul wrote:

> This add base DTS file for sm8150-mtp and enables
> boot to console
> 
> Signed-off-by: Vinod Koul <vkoul@kernel.org>

Reviewed-by: Bjorn Andersson <bjorn.andersson@linaro.org>

> ---
>  arch/arm64/boot/dts/qcom/Makefile       |  1 +
>  arch/arm64/boot/dts/qcom/sm8150-mtp.dts | 28 +++++++++++++++++++++++++
>  2 files changed, 29 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/qcom/sm8150-mtp.dts
> 
> diff --git a/arch/arm64/boot/dts/qcom/Makefile b/arch/arm64/boot/dts/qcom/Makefile
> index 0a7e5dfce6f7..1964dacaf19b 100644
> --- a/arch/arm64/boot/dts/qcom/Makefile
> +++ b/arch/arm64/boot/dts/qcom/Makefile
> @@ -12,5 +12,6 @@ dtb-$(CONFIG_ARCH_QCOM)	+= sdm845-cheza-r2.dtb
>  dtb-$(CONFIG_ARCH_QCOM)	+= sdm845-cheza-r3.dtb
>  dtb-$(CONFIG_ARCH_QCOM)	+= sdm845-db845c.dtb
>  dtb-$(CONFIG_ARCH_QCOM)	+= sdm845-mtp.dtb
> +dtb-$(CONFIG_ARCH_QCOM)	+= sm8150-mtp.dtb
>  dtb-$(CONFIG_ARCH_QCOM)	+= qcs404-evb-1000.dtb
>  dtb-$(CONFIG_ARCH_QCOM)	+= qcs404-evb-4000.dtb
> diff --git a/arch/arm64/boot/dts/qcom/sm8150-mtp.dts b/arch/arm64/boot/dts/qcom/sm8150-mtp.dts
> new file mode 100644
> index 000000000000..df08ee50510d
> --- /dev/null
> +++ b/arch/arm64/boot/dts/qcom/sm8150-mtp.dts
> @@ -0,0 +1,28 @@
> +// SPDX-License-Identifier: BSD-3-Clause
> +// Copyright (c) 2017-2019, The Linux Foundation. All rights reserved.
> +// Copyright (c) 2019, Linaro Limited
> +
> +/dts-v1/;
> +
> +#include "sm8150.dtsi"
> +
> +/ {
> +	model = "Qualcomm Technologies, Inc. SM8150 MTP";
> +	compatible = "qcom,sm8150-mtp";
> +
> +	aliases {
> +		serial0 = &uart2;
> +	};
> +
> +	chosen {
> +		stdout-path = "serial0:115200n8";
> +	};
> +};
> +
> +&qupv3_id_1 {
> +	status = "okay";
> +};
> +
> +&uart2 {
> +	status = "okay";
> +};
> -- 
> 2.20.1
> 
