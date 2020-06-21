Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 39155202948
	for <lists+devicetree@lfdr.de>; Sun, 21 Jun 2020 09:12:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729431AbgFUHMm (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 21 Jun 2020 03:12:42 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51298 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729381AbgFUHMm (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 21 Jun 2020 03:12:42 -0400
Received: from mail-pf1-x444.google.com (mail-pf1-x444.google.com [IPv6:2607:f8b0:4864:20::444])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EC92AC061794
        for <devicetree@vger.kernel.org>; Sun, 21 Jun 2020 00:12:41 -0700 (PDT)
Received: by mail-pf1-x444.google.com with SMTP id x22so6809615pfn.3
        for <devicetree@vger.kernel.org>; Sun, 21 Jun 2020 00:12:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=+rMtPSRpfPZ/10LjMZ9D5lqabt/ov8oGZq7vkldZVbI=;
        b=GZEkkNN9SVWP4VKu+Md9ytVNTcZZ3bH5tDUMUWlQ7XFlTVqOFA7sd7e+7qbjJckms0
         AZ2cYARf9REVrfk40td2X7poPOGaXlBctz9fQ4KHR+byiLCvOkDLKpUOouIaONISKWk/
         rqj2o/S5+ShGPOVB9yR0WFACzDnrz+sJ8zbfKSEcLCWC6SqOL680l7foMo8TX0a7TYKn
         y0qvNbgV/KC7GLMn93L1LJZcPutQLrtetJ2EQXlpB56k1ckuoIEdiFj5ot9xEcQl8qsx
         aIkvqbhkczcPhNPJPTGCm86buhTJkdxlFH0Kx6yXYZubtkEWm6PBKkyPX6D8LhESvW58
         FO/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=+rMtPSRpfPZ/10LjMZ9D5lqabt/ov8oGZq7vkldZVbI=;
        b=FXpezojKy2H7evvkG0NrgG/bcxHy8jsEjo4gN6959takRmDim1p00VF7Dar6Bn20/e
         INJVi/bwqgblI/k/1vhDuloVa5vqtxFxSr6dxGtK64wFs01UdLtV0F8nNxHdkkIQYnui
         IFOpusOMm+b71OaqnlwxWGXFp0IHHcL6M7dZ4UFUpYs+CkylW5nH/eWHlNsoT759z/Cl
         tay/FLBMZp2k6zHmwuUqx7lGo+PDmDDpDg48JEU/sXQPz1MDmuQyZBzcTDVd5edTU7LK
         Lauj7UTph7vqvC4qVSOTDe3xLlGyVo0KDDcMU1zluz0h3M8JRq/Pwn/UbanRtkRfUAUb
         pi6Q==
X-Gm-Message-State: AOAM533pXQw/1A2xf+wQQ9VuDr0WmqejM2fjaPKAWmCrQlUtS4S1J3N9
        9LmVeO8Vx23d6K1UTdS7JDbpxQ==
X-Google-Smtp-Source: ABdhPJxgRWInuUhCdGNKOQhoDTL4b8hXtC40JtehcB6BjEgPcRmNVe8MGFYLZwI/jyNblnjXqtHzow==
X-Received: by 2002:a63:9742:: with SMTP id d2mr7971058pgo.95.1592723561429;
        Sun, 21 Jun 2020 00:12:41 -0700 (PDT)
Received: from builder.lan (104-188-17-28.lightspeed.sndgca.sbcglobal.net. [104.188.17.28])
        by smtp.gmail.com with ESMTPSA id y81sm10530861pfb.33.2020.06.21.00.12.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 21 Jun 2020 00:12:40 -0700 (PDT)
Date:   Sun, 21 Jun 2020 00:09:53 -0700
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     Wesley Cheng <wcheng@codeaurora.org>
Cc:     heikki.krogerus@linux.intel.com, mark.rutland@arm.com,
        broonie@kernel.org, gregkh@linuxfoundation.org,
        lgirdwood@gmail.com, agross@kernel.org, robh+dt@kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org,
        jackp@codeaurora.org, rdunlap@infradead.org,
        bryan.odonoghue@linaro.org, lijun.kernel@gmail.com
Subject: Re: [PATCH v3 3/6] arm64: boot: dts: qcom: pm8150b: Add node for USB
 type C block
Message-ID: <20200621070953.GE128451@builder.lan>
References: <20200617180209.5636-1-wcheng@codeaurora.org>
 <20200617180209.5636-4-wcheng@codeaurora.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200617180209.5636-4-wcheng@codeaurora.org>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed 17 Jun 11:02 PDT 2020, Wesley Cheng wrote:

> The PM8150B has a dedicated USB type C block, which can be used for type C
> orientation and role detection.  Create the reference node to this type C
> block for further use.
> 
> Signed-off-by: Wesley Cheng <wcheng@codeaurora.org>
> ---
>  arch/arm64/boot/dts/qcom/pm8150b.dtsi | 8 ++++++++
>  1 file changed, 8 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/pm8150b.dtsi b/arch/arm64/boot/dts/qcom/pm8150b.dtsi
> index 322379d5c31f..ec44a8bc2f84 100644
> --- a/arch/arm64/boot/dts/qcom/pm8150b.dtsi
> +++ b/arch/arm64/boot/dts/qcom/pm8150b.dtsi
> @@ -22,6 +22,14 @@ power-on@800 {
>  			status = "disabled";
>  		};
>  
> +		qcom,typec@1500 {

Please no "qcom," in the node names and please give it a label to make
it easy to change the status of the node.

> +			compatible = "qcom,pm8150b-usb-typec";
> +			status = "disabled";
> +			reg = <0x1500>;
> +			interrupts =
> +				<0x2 0x15 0x5 IRQ_TYPE_EDGE_RISING>;

This is nicer on a single line, so please omit the line break.

Regards,
Bjorn

> +		};
> +
>  		adc@3100 {
>  			compatible = "qcom,spmi-adc5";
>  			reg = <0x3100>;
> -- 
> The Qualcomm Innovation Center, Inc. is a member of the Code Aurora Forum,
> a Linux Foundation Collaborative Project
> 
