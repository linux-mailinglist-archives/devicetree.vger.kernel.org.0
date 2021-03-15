Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 11B0433C6AB
	for <lists+devicetree@lfdr.de>; Mon, 15 Mar 2021 20:18:51 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233207AbhCOTSR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 15 Mar 2021 15:18:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57772 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233272AbhCOTR6 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 15 Mar 2021 15:17:58 -0400
Received: from mail-ot1-x32b.google.com (mail-ot1-x32b.google.com [IPv6:2607:f8b0:4864:20::32b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D711DC06175F
        for <devicetree@vger.kernel.org>; Mon, 15 Mar 2021 12:17:57 -0700 (PDT)
Received: by mail-ot1-x32b.google.com with SMTP id v24-20020a9d69d80000b02901b9aec33371so5684934oto.2
        for <devicetree@vger.kernel.org>; Mon, 15 Mar 2021 12:17:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=jaDJIbozHDomrvNHrqpon9HkLzG9r5TbsaSE94cHoXY=;
        b=n2V75PXggd6ZrjEgxJY17yUaCpyHvKCxlE1N8m6Y1gEka8kJuhPnBs9/VdgWyyet9J
         1nUuQ2uXPGXBTs+6pxODo5CLF6rmeB/JdE8wq1nxO7onQBFPT1+DZHGSV9AK31OKElMe
         dN83YB+3uSr3Ii44IQhW+HzStDj8seXFzDcji+rCH1DNsLCxRlmbFmU6ufDcO0yUDKPY
         R8Fae2qMuu3taYVmcPXfsMkGyoaa12dWDAlFHwzKRWWvoUs8at/9iXdGXJhKV28rNDF2
         dohtG1PlWiXCNoQ8hPvTNfNGAxy2J86VunLFwdbIAfzzpqhY8vWwHiXKLg8rYHMW0UTB
         aRKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=jaDJIbozHDomrvNHrqpon9HkLzG9r5TbsaSE94cHoXY=;
        b=QojXrBzBzbxVEGiX3cBAlRVbx2Qw/kbs5WD4cSQqjEzeAZdxBZuBHHH3nRL5I3AJ0i
         xcpYwwjKwiFECaX1708aHk2Enf8owjuObkO9nYN7I/jqUZ+fTepBlslj69pAcoMAHVQJ
         WvhymuL2LCkZj12AuJ0bWttfmLIvC388WrxYZ8qGsP4uMhvsFbwDaqQn8PCKseyuidlG
         R1oDMvqaHfQjfcLYD6iwX1Bw3oB8jMrGphRBN7+foJqtA+EUNpTfwH/DBxyT0N66cbop
         Gi2jdbcVS73/gbjBN7m0CyTfX8JlSFyxTRXZVyitOmap0J07BUHOTZWrG+umGe6faAZO
         7CIQ==
X-Gm-Message-State: AOAM530PT6XPosCifDJQtPlrB52FCCqeheGpeZltnwdT6/vEz/klODpY
        NyIPCqT8ptEFQXl7869pLWcDVamQ6JFV7Zj02EOcWA==
X-Google-Smtp-Source: ABdhPJw7m9FtaQnuJGDdSC12kGTvOQr6etwvoPeE1fqnJsiPEMefAdL97cCH5GhLabo/CTgr3Rcss3VDoANIwhdOJbk=
X-Received: by 2002:a05:6830:1513:: with SMTP id k19mr479331otp.51.1615835877310;
 Mon, 15 Mar 2021 12:17:57 -0700 (PDT)
MIME-Version: 1.0
References: <20210310163024.393578-1-caleb@connolly.tech> <20210310163024.393578-2-caleb@connolly.tech>
In-Reply-To: <20210310163024.393578-2-caleb@connolly.tech>
From:   Bhupesh Sharma <bhupesh.sharma@linaro.org>
Date:   Tue, 16 Mar 2021 00:47:46 +0530
Message-ID: <CAH=2Ntz71eezQrELqgjZu+mMvS5ANSsupyUYR6QU6-VS99K-Sw@mail.gmail.com>
Subject: Re: [PATCH 1/3] arm64: dts: qcom: sm8150: add other QUP nodes
To:     Caleb Connolly <caleb@connolly.tech>
Cc:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hello Caleb,

On Wed, 10 Mar 2021 at 22:02, Caleb Connolly <caleb@connolly.tech> wrote:
>
> Add the first and third qupv3 nodes used to hook
> up peripherals on some devices.
>
> Signed-off-by: Caleb Connolly <caleb@connolly.tech>
> ---
>  arch/arm64/boot/dts/qcom/sm8150.dtsi | 25 +++++++++++++++++++++++++
>  1 file changed, 25 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/qcom/sm8150.dtsi b/arch/arm64/boot/dts/qcom/sm8150.dtsi
> index e5bb17bc2f46..03e05d98daf2 100644
> --- a/arch/arm64/boot/dts/qcom/sm8150.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sm8150.dtsi
> @@ -577,6 +577,18 @@ gcc: clock-controller@100000 {
>                                  <&sleep_clk>;
>                 };
>
> +               qupv3_id_0: geniqup@8c0000 {
> +                       compatible = "qcom,geni-se-qup";
> +                       reg = <0x0 0x008c0000 0x0 0x6000>;
> +                       clock-names = "m-ahb", "s-ahb";
> +                       clocks = <&gcc GCC_QUPV3_WRAP_0_M_AHB_CLK>,
> +                                <&gcc GCC_QUPV3_WRAP_0_S_AHB_CLK>;
> +                       #address-cells = <2>;
> +                       #size-cells = <2>;
> +                       ranges;
> +                       status = "disabled";
> +               };
> +
>                 qupv3_id_1: geniqup@ac0000 {
>                         compatible = "qcom,geni-se-qup";
>                         reg = <0x0 0x00ac0000 0x0 0x6000>;
> @@ -598,6 +610,19 @@ uart2: serial@a90000 {
>                         };
>                 };
>
> +               qupv3_id_2: geniqup@cc0000 {
> +                       compatible = "qcom,geni-se-qup";
> +                       reg = <0x0 0x00cc0000 0x0 0x6000>;
> +
> +                       clock-names = "m-ahb", "s-ahb";
> +                       clocks = <&gcc GCC_QUPV3_WRAP_2_M_AHB_CLK>,
> +                                <&gcc GCC_QUPV3_WRAP_2_S_AHB_CLK>;
> +                       #address-cells = <2>;
> +                       #size-cells = <2>;
> +                       ranges;
> +                       status = "disabled";
> +               };
> +
>                 config_noc: interconnect@1500000 {
>                         compatible = "qcom,sm8150-config-noc";
>                         reg = <0 0x01500000 0 0x7400>;

LGTM, so:
Reviewed-by: Bhupesh Sharma <bhupesh.sharma@linaro.org>
