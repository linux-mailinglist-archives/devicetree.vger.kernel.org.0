Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id AE0423221A6
	for <lists+devicetree@lfdr.de>; Mon, 22 Feb 2021 22:41:47 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230440AbhBVVkl (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 22 Feb 2021 16:40:41 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38934 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232114AbhBVVkN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 22 Feb 2021 16:40:13 -0500
Received: from mail-qk1-x735.google.com (mail-qk1-x735.google.com [IPv6:2607:f8b0:4864:20::735])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 63F4DC061574
        for <devicetree@vger.kernel.org>; Mon, 22 Feb 2021 13:39:28 -0800 (PST)
Received: by mail-qk1-x735.google.com with SMTP id z190so14225422qka.9
        for <devicetree@vger.kernel.org>; Mon, 22 Feb 2021 13:39:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=H3gtb67Rbv2Oe6UDQp4HWiS6Hu5OxgV81uFWpNkVCzA=;
        b=bQgaV3WmM9hI12gMDgOACFTrUnXNvNEEI20IhDcIxftZHYKoSnXOazZ1/QMf7VimNG
         Raw39gfaB0qGmNxB/RUh3yPWM4YiStFq0wv6U71TPOkVcwhdE+iY0cX5tCmx/SajQLZw
         tqQ4IaaRFYCr+SZ7DXSTmDmXtG0cdb1UbWiQPXDOkMZSOj+5hFMXrpQV/3szHl5AbuAY
         ///sVLgeOxDJouZYY2waVi4O1GKDJuN8pLSmZyc24qYhqjW9IT2i001MIw4ZTFnmNW3Y
         HN7czysY0OBk4/IcGyBfizC2h5GFRHx0svfuI/ngWxqRIaIhzJd4m8mVu6es7Kw0dzDv
         Jycg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=H3gtb67Rbv2Oe6UDQp4HWiS6Hu5OxgV81uFWpNkVCzA=;
        b=KUqTx5YthI9Zk9L7SSvieQHRCB3mpQja2GbEIT+JrJIIv320Ng1RTWE/qhv1VOe91v
         8qXKONOL8TXOoVp+zP/o0uhDUaEit7kAqDkI169viEio8AunX1usmq9a1nj3kTQB14Xr
         k9PO8MWVepco16yYxEUvpZss2ICpMmlXHQvWDlCgmxn1XkSt5VLY+kAVXZMeYv6z9/vE
         L+3hJY2cH2kjm+dZAwaRRWBmzOpfIMccAGNlBKF4YJV7rShnEAYinOYdosZr2RAv8J+g
         wOf5KaEzhPGLsD7IxI6PVb7UMMC2nzVlxxTUuC8JNOOIS5qz/FKph0BB48/T5D3TITNF
         o4BA==
X-Gm-Message-State: AOAM530R3WSSsZYrcaNpibLLvJhVvLtCEZM1W8scPIEMOdUXu2syEkbf
        46Lm+zXDBxYnBfZB0xjWx8E2I7LgON/9bPXfNtHdag==
X-Google-Smtp-Source: ABdhPJy5Vzpy2tapziRuiToT1gzKIWjh/cEM9RiR2vHpBsbPlXddazpWLrGXrUzPpLQPL1I3WFAIPdmmGZcL9+Od5rU=
X-Received: by 2002:ae9:e715:: with SMTP id m21mr24218577qka.217.1614029967625;
 Mon, 22 Feb 2021 13:39:27 -0800 (PST)
MIME-Version: 1.0
References: <20210222132817.1807788-1-bryan.odonoghue@linaro.org> <20210222132817.1807788-4-bryan.odonoghue@linaro.org>
In-Reply-To: <20210222132817.1807788-4-bryan.odonoghue@linaro.org>
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date:   Tue, 23 Feb 2021 00:39:16 +0300
Message-ID: <CAA8EJprQ5CoY6MoUptnTA+RLEzBhc+NfrAefBk4enSLP-9=jOg@mail.gmail.com>
Subject: Re: [PATCH v2 3/3] arm64: dts: qcom: sm8250: Add venus DT node
To:     "Bryan O'Donoghue" <bryan.odonoghue@linaro.org>
Cc:     Rob Herring <robh+dt@kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        "open list:DRM DRIVER FOR MSM ADRENO GPU" 
        <linux-arm-msm@vger.kernel.org>,
        Stanimir Varbanov <stanimir.varbanov@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Jonathan Marek <jonathan@marek.ca>, dikshita@qti.qualcomm.com
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Tested-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

On Mon, 22 Feb 2021 at 16:29, Bryan O'Donoghue
<bryan.odonoghue@linaro.org> wrote:
>
> Add DT entries for the sm8250 venus encoder/decoder.
>
> Co-developed-by: Jonathan Marek <jonathan@marek.ca>
> Signed-off-by: Jonathan Marek <jonathan@marek.ca>
> Co-developed-by: Dikshita Agarwal <dikshita@qti.qualcomm.com>
> Signed-off-by: Dikshita Agarwal <dikshita@qti.qualcomm.com>
> Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
> ---
>  arch/arm64/boot/dts/qcom/sm8250.dtsi | 60 ++++++++++++++++++++++++++++
>  1 file changed, 60 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/qcom/sm8250.dtsi b/arch/arm64/boot/dts/qcom/sm8250.dtsi
> index 3639792411ce..6b6993995eca 100644
> --- a/arch/arm64/boot/dts/qcom/sm8250.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sm8250.dtsi
> @@ -14,6 +14,7 @@
>  #include <dt-bindings/soc/qcom,rpmh-rsc.h>
>  #include <dt-bindings/thermal/thermal.h>
>  #include <dt-bindings/clock/qcom,videocc-sm8250.h>
> +#include <dt-bindings/interconnect/qcom,sm8250.h>
>
>  / {
>         interrupt-parent = <&intc>;
> @@ -1811,6 +1812,65 @@ usb_2_dwc3: dwc3@a800000 {
>                         };
>                 };
>
> +               venus: video-codec@aa00000 {
> +                       compatible = "qcom,sm8250-venus";
> +                       reg = <0 0x0aa00000 0 0x100000>;
> +                       interrupts = <GIC_SPI 174 IRQ_TYPE_LEVEL_HIGH>;
> +                       power-domains = <&videocc MVS0C_GDSC>,
> +                                       <&videocc MVS0_GDSC>,
> +                                       <&rpmhpd SM8250_MX>;
> +                       power-domain-names = "venus", "vcodec0", "mx";
> +                       operating-points-v2 = <&venus_opp_table>;
> +
> +                       clocks = <&gcc GCC_VIDEO_AXI0_CLK>,
> +                                <&videocc VIDEO_CC_MVS0C_CLK>,
> +                                <&videocc VIDEO_CC_MVS0_CLK>;
> +                       clock-names = "iface", "core", "vcodec0_core";
> +
> +                       interconnects = <&gem_noc MASTER_AMPSS_M0 &config_noc SLAVE_VENUS_CFG>,
> +                                       <&mmss_noc MASTER_VIDEO_P0 &mc_virt SLAVE_EBI_CH0>;
> +                       interconnect-names = "cpu-cfg", "video-mem";
> +
> +                       iommus = <&apps_smmu 0x2100 0x0400>;
> +                       memory-region = <&video_mem>;
> +
> +                       resets = <&gcc GCC_VIDEO_AXI0_CLK_ARES>,
> +                                <&videocc VIDEO_CC_MVS0C_CLK_ARES>;
> +                       reset-names = "bus", "core";
> +
> +                       video-decoder {
> +                               compatible = "venus-decoder";
> +                       };
> +
> +                       video-encoder {
> +                               compatible = "venus-encoder";
> +                       };
> +
> +                       venus_opp_table: venus-opp-table {
> +                               compatible = "operating-points-v2";
> +
> +                               opp-720000000 {
> +                                       opp-hz = /bits/ 64 <720000000>;
> +                                       required-opps = <&rpmhpd_opp_low_svs>;
> +                               };
> +
> +                               opp-1014000000 {
> +                                       opp-hz = /bits/ 64 <1014000000>;
> +                                       required-opps = <&rpmhpd_opp_svs>;
> +                               };
> +
> +                               opp-1098000000 {
> +                                       opp-hz = /bits/ 64 <1098000000>;
> +                                       required-opps = <&rpmhpd_opp_svs_l1>;
> +                               };
> +
> +                               opp-1332000000 {
> +                                       opp-hz = /bits/ 64 <1332000000>;
> +                                       required-opps = <&rpmhpd_opp_nom>;
> +                               };
> +                       };
> +               };
> +
>                 videocc: clock-controller@abf0000 {
>                         compatible = "qcom,sm8250-videocc";
>                         reg = <0 0x0abf0000 0 0x10000>;
> --
> 2.29.2
>


-- 
With best wishes
Dmitry
