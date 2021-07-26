Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 803173D6069
	for <lists+devicetree@lfdr.de>; Mon, 26 Jul 2021 18:11:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236787AbhGZPWN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 26 Jul 2021 11:22:13 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50890 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237273AbhGZPWI (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 26 Jul 2021 11:22:08 -0400
Received: from mail-pl1-x630.google.com (mail-pl1-x630.google.com [IPv6:2607:f8b0:4864:20::630])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CB189C061764
        for <devicetree@vger.kernel.org>; Mon, 26 Jul 2021 09:02:36 -0700 (PDT)
Received: by mail-pl1-x630.google.com with SMTP id a20so12398122plm.0
        for <devicetree@vger.kernel.org>; Mon, 26 Jul 2021 09:02:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=6QXVZQXbkdfF3znCoEbHDGEQ9aqAeJksuuR7qjhWdCA=;
        b=gSxwx5LsTE3muUYVy9dNqCEpXXRE0vVlovoYoFEE2XxDqzIBXALE0dC1REOgl2RFwW
         472XGGDt3N7qKuXUIQg5jYxUnkAFP8XfMVaDIAETENQzwRSAsGoRwHmANOQtN8aNPCPx
         DtLei+dLdYzjanqmjOuOejfwOJ5iUZY7YUL4I=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=6QXVZQXbkdfF3znCoEbHDGEQ9aqAeJksuuR7qjhWdCA=;
        b=JRybpj84s6xPzEOAzi3YJvKS+xhK85FMxAC9DtUaSVvI75xVBipG6HZFjDIPgIrR80
         JD4eZdSZKIOvboiepIN6vuaPWG8rliBYHZJgYtONrpjy7CwqrZcTkqmTT7y3IUSvjxjn
         qfvMBxeiouZpGhr4ZbNMEDQ5XT2LsKHJY+jMpyri9+2wtOsuiNw24XAgKQMd5JCwJ1ij
         ScPqJQHDezDmm6V8GLQ9YKukEM7SD2D2ZHoKik0gSuy6aYC04whcuDY/2nIJe6PcEo14
         sSyOV6vMWxqoejxDuQBg8L3jEhx7o8XzcjHW9bRAvJqRE/D2ceVMZZ9Kh2UcMRx+js7B
         vF2Q==
X-Gm-Message-State: AOAM532vI3ZlBs88iHLonGltrou0ME1w7FFFno314vDO8fBs30unDiQ9
        xIFD7cgI0N7qtGBQ7LmXarFpMw==
X-Google-Smtp-Source: ABdhPJzzpw26/zIq9tVL2Z8GX3fcQaDxJkwE5cA977PbOEx922S0BZ76DbIlE2Elo5vFRr8sKLyO2g==
X-Received: by 2002:a63:fd43:: with SMTP id m3mr18824516pgj.210.1627315356018;
        Mon, 26 Jul 2021 09:02:36 -0700 (PDT)
Received: from localhost ([2620:15c:202:201:f794:2436:8d25:f451])
        by smtp.gmail.com with UTF8SMTPSA id f7sm423786pfc.111.2021.07.26.09.02.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 26 Jul 2021 09:02:35 -0700 (PDT)
Date:   Mon, 26 Jul 2021 09:02:34 -0700
From:   Matthias Kaehlcke <mka@chromium.org>
To:     Rajesh Patil <rajpat@codeaurora.org>
Cc:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, rnayak@codeaurora.org,
        saiprakash.ranjan@codeaurora.org, msavaliy@qti.qualcomm.com,
        skakit@codeaurora.org, Roja Rani Yarubandi <rojay@codeaurora.org>
Subject: Re: [PATCH V4 2/4] arm64: dts: sc7280: Add QUPv3 wrapper_0 nodes
Message-ID: <YP7cmkayoajJ+1yj@google.com>
References: <1627306847-25308-1-git-send-email-rajpat@codeaurora.org>
 <1627306847-25308-3-git-send-email-rajpat@codeaurora.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <1627306847-25308-3-git-send-email-rajpat@codeaurora.org>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Jul 26, 2021 at 07:10:45PM +0530, Rajesh Patil wrote:
> From: Roja Rani Yarubandi <rojay@codeaurora.org>
> 
> Add QUPv3 wrapper_0 DT nodes for SC7280 SoC.
> 
> Signed-off-by: Roja Rani Yarubandi <rojay@codeaurora.org>
> Signed-off-by: Rajesh Patil <rajpat@codeaurora.org>
> ---
> Changes in V4:
>  - As per Bjorn's comment, added QUP Wrapper_0 nodes
>    other than debug-uart node
>  - Dropped interconnect votes for wrapper_0 node
> 
> Changes in V3:
>  - Broken the huge V2 patch into 3 smaller patches.
>    1. QSPI DT nodes
>    2. QUP wrapper_0 DT nodes
>    3. QUP wrapper_1 DT nodes
> 
> Changes in V2:
>  - As per Doug's comments removed pinmux/pinconf subnodes.
>  - As per Doug's comments split of SPI, UART nodes has been done.
>  - Moved QSPI node before aps_smmu as per the order.
> 
>  arch/arm64/boot/dts/qcom/sc7280-idp.dts |  84 ++++
>  arch/arm64/boot/dts/qcom/sc7280.dtsi    | 720 ++++++++++++++++++++++++++++++++
>  2 files changed, 804 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sc7280-idp.dts b/arch/arm64/boot/dts/qcom/sc7280-idp.dts
> index b0bfd8e..f63cf51 100644
> --- a/arch/arm64/boot/dts/qcom/sc7280-idp.dts
> +++ b/arch/arm64/boot/dts/qcom/sc7280-idp.dts
> @@ -358,6 +358,16 @@
>  	vdda18-supply = <&vreg_l1c_1p8>;
>  };
>  
> +&uart7 {
> +	status = "okay";
> +
> +	/delete-property/interrupts;
> +	interrupts-extended = <&intc GIC_SPI 608 IRQ_TYPE_LEVEL_HIGH>,
> +				<&tlmm 31 IRQ_TYPE_EDGE_FALLING>;
> +	pinctrl-names = "default", "sleep";
> +	pinctrl-1 = <&qup_uart7_sleep_cts>, <&qup_uart7_sleep_rts>, <&qup_uart7_sleep_tx>, <&qup_uart7_sleep_rx>;
> +};
> +
>  /* PINCTRL - additions to nodes defined in sc7280.dtsi */
>  
>  &qspi_cs0 {
> @@ -428,3 +438,77 @@
>  		bias-pull-up;
>  	};
>  };
> +&qup_uart7_cts {
> +	/*
> +	 * Configure a pull-down on CTS to match the pull of
> +	 * the Bluetooth module.
> +	 */
> +	bias-pull-down;
> +};
> +
> +&qup_uart7_rts {
> +	/* We'll drive RTS, so no pull */
> +	drive-strength = <2>;
> +	bias-disable;
> +};
> +
> +&qup_uart7_tx {
> +	/* We'll drive TX, so no pull */
> +	drive-strength = <2>;
> +	bias-disable;
> +};
> +
> +&qup_uart7_rx {
> +	/*
> +	 * Configure a pull-up on RX. This is needed to avoid
> +	 * garbage data when the TX pin of the Bluetooth module is
> +	 * in tri-state (module powered off or not driving the
> +	 * signal yet).
> +	 */
> +	bias-pull-up;
> +};
> +
> +&tlmm {
> +	qup_uart7_sleep_cts: qup-uart7-sleep-cts {
> +		pins = "gpio28";
> +		function = "gpio";
> +		/*
> +		 * Configure a pull-down on CTS to match the pull of
> +		 * the Bluetooth module.
> +		 */
> +		bias-pull-down;
> +	};
> +
> +	qup_uart7_sleep_rts: qup-uart7-sleep-rts {
> +		pins = "gpio29";
> +		function = "gpio";
> +		/*
> +		 * Configure pull-down on RTS. As RTS is active low
> +		 * signal, pull it low to indicate the BT SoC that it
> +		 * can wakeup the system anytime from suspend state by
> +		 * pulling RX low (by sending wakeup bytes).
> +		 */
> +		bias-pull-down;
> +	};
> +
> +	qup_uart7_sleep_tx: qup-uart7-sleep-tx {
> +		pins = "gpio30";
> +		function = "gpio";
> +		/*
> +		 * Configure pull-up on TX when it isn't actively driven
> +		 * to prevent BT SoC from receiving garbage during sleep.
> +		 */
> +		bias-pull-up;
> +	};
> +
> +	qup_uart7_sleep_rx: qup-uart7-sleep-rx {
> +		pins = "gpio31";
> +		function = "gpio";
> +		/*
> +		 * Configure a pull-up on RX. This is needed to avoid
> +		 * garbage data when the TX pin of the Bluetooth module
> +		 * is floating which may cause spurious wakeups.
> +		 */
> +		bias-pull-up;
> +	};
> +};

How the patches of this series are split strikes me as a bit odd. Supposedly
this patch adds the QUPv3 wrapper_0 DT nodes for the SC7280, however the
above is the pin configuration for the Bluetooth UART of the SC7280 IDP board.
I don't see a good reason why that should be part of this patch. It should be
a separate change whose subject indicates that it configures the Bluetooth UART
of the SC7280 IDP.

Without this conflation of SoC and board DT it would seem perfectly reasonable
to squash this patch and '[4/4] arm64: dts: sc7280: Add QUPv3 wrapper_1 nodes'
into a single one, they are essentially doing the same thing, I see no need to
have different patches for the wrapper 0 and 1 nodes.
