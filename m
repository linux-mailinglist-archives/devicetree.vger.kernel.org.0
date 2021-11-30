Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0F47F463EF9
	for <lists+devicetree@lfdr.de>; Tue, 30 Nov 2021 21:03:36 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1343581AbhK3UGy (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 30 Nov 2021 15:06:54 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48648 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240057AbhK3UGw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 30 Nov 2021 15:06:52 -0500
Received: from mail-pg1-x52b.google.com (mail-pg1-x52b.google.com [IPv6:2607:f8b0:4864:20::52b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C5D44C061748
        for <devicetree@vger.kernel.org>; Tue, 30 Nov 2021 12:03:32 -0800 (PST)
Received: by mail-pg1-x52b.google.com with SMTP id q16so20993974pgq.10
        for <devicetree@vger.kernel.org>; Tue, 30 Nov 2021 12:03:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=muJ29bKDUUrSskXGJgCVK4wH9p4Q4vUd1+SeB9qzFgg=;
        b=XDJWQaFkILCWUUvLb/uIFXGwaHNQA23YQSjzfGzmjHMA+Yk81MtuPk/2syrX4YfPQe
         7YqIaR9kX3AZsj37NacVff2cRF5tSnsnhGEP/b91nJHIzRm3CyUvVxkcwPbVH5LzCnl2
         AT1NPZEXAHN/2YBaOSvDf0SgEjaGLYcfk+/gM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=muJ29bKDUUrSskXGJgCVK4wH9p4Q4vUd1+SeB9qzFgg=;
        b=Pc7GM8kvPPQTKZevLcyYeiN5euJyZl5GFjeCjQdtZvpGBhjGKFYHIJUFlenmmfLMBC
         5kAb/ayIe6/8mELA05RL6M0cRmkalPmQ5erC1Dz8Zuxv+2iBG9+p2nvI6ANv5PiXlE5h
         HLpC6Fo4NM8GEP+eosEMaf5nxVb6VNTgRVZ74KA5GIKHjK7Y5MyEJLt725ItvfVYFaJJ
         Dt3ac1Wej4GDzIqbFnb+yKzAIGisallfCHR+Ern4d56+9bj+2iiFoc+EpQS1K3vz1bmy
         SUJICjnNcLQNb2FfzxhaWT0kTs5PVd08wIasQaxyP959WU0gg+GQa9/RmMGs8LQvViFr
         aUiQ==
X-Gm-Message-State: AOAM5322mn+krEDmaFlIkrh1CZ4ORWBpyfF5Fdi9LzZ+QurTk7SM8e8q
        uZSWLOG/dhgaMtzqWzDBov+Olg==
X-Google-Smtp-Source: ABdhPJwa83bFfumktwKpBVwFszz7w+WHjUH+gWSuMVgxt159xo92in7siC73ZSAdZFLdAAZFwuEmtw==
X-Received: by 2002:a63:5147:: with SMTP id r7mr1095295pgl.448.1638302612301;
        Tue, 30 Nov 2021 12:03:32 -0800 (PST)
Received: from localhost ([2620:15c:202:201:ecc:102f:1eec:93da])
        by smtp.gmail.com with UTF8SMTPSA id p2sm3346951pja.55.2021.11.30.12.03.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 30 Nov 2021 12:03:31 -0800 (PST)
Date:   Tue, 30 Nov 2021 12:03:30 -0800
From:   Matthias Kaehlcke <mka@chromium.org>
To:     Rajendra Nayak <quic_rjendra@quicinc.com>
Cc:     agross@kernel.org, bjorn.andersson@linaro.org, robh+dt@kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, dianders@chromium.org,
        kgodara@codeaurora.org, Kshitiz Godara <kgodara1@codeaurora.org>
Subject: Re: [PATCH v2 4/4] arm64: dts: qcom: sc7280-crd: Add Touchscreen and
 touchpad support
Message-ID: <YaaDkiFp54mLAbJH@google.com>
References: <1638185497-26477-1-git-send-email-quic_rjendra@quicinc.com>
 <1638185497-26477-5-git-send-email-quic_rjendra@quicinc.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <1638185497-26477-5-git-send-email-quic_rjendra@quicinc.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Nov 29, 2021 at 05:01:37PM +0530, Rajendra Nayak wrote:
> From: Kshitiz Godara <kgodara1@codeaurora.org>
> 
> Add Touchscreen and touchpad hid-over-i2c node for the sc7280 CRD board
> 
> Signed-off-by: Kshitiz Godara <kgodara1@codeaurora.org>
> Signed-off-by: Rajendra Nayak <quic_rjendra@quicinc.com>
> ---
>  arch/arm64/boot/dts/qcom/sc7280-crd.dts | 61 +++++++++++++++++++++++++++++++++
>  1 file changed, 61 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sc7280-crd.dts b/arch/arm64/boot/dts/qcom/sc7280-crd.dts
> index 1e3e2f3..fcfb14d 100644
> --- a/arch/arm64/boot/dts/qcom/sc7280-crd.dts
> +++ b/arch/arm64/boot/dts/qcom/sc7280-crd.dts
> @@ -23,6 +23,47 @@
>  	};
>  };
>  
> +ap_tp_i2c: &i2c0 {
> +	status = "okay";
> +	clock-frequency = <400000>;
> +
> +	trackpad: trackpad@15 {
> +		compatible = "hid-over-i2c";
> +		reg = <0x15>;
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&tp_int_odl>;
> +
> +		interrupt-parent = <&tlmm>;
> +		interrupts = <7 IRQ_TYPE_EDGE_FALLING>;
> +
> +		post-power-on-delay-ms = <20>;
> +		hid-descr-addr = <0x0001>;
> +		vdd-supply = <&vreg_l18b_1p8>;
> +
> +		wakeup-source;
> +	};
> +};
> +
> +ap_ts_pen_1v8: &i2c13 {
> +	status = "okay";
> +	clock-frequency = <400000>;
> +
> +	ap_ts: touchscreen@5c {
> +		compatible = "hid-over-i2c";
> +		reg = <0x5C>;

nit: the convention seems to be to use lowercase characters for hex numbers.

Reviewed-by: Matthias Kaehlcke <mka@chromium.org>
