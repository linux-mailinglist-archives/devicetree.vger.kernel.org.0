Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id EEEB649BF34
	for <lists+devicetree@lfdr.de>; Tue, 25 Jan 2022 23:58:49 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234502AbiAYW6s (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 25 Jan 2022 17:58:48 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42730 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234497AbiAYW6r (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 25 Jan 2022 17:58:47 -0500
Received: from mail-oi1-x236.google.com (mail-oi1-x236.google.com [IPv6:2607:f8b0:4864:20::236])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 28D23C06173B
        for <devicetree@vger.kernel.org>; Tue, 25 Jan 2022 14:58:47 -0800 (PST)
Received: by mail-oi1-x236.google.com with SMTP id s9so34069587oib.11
        for <devicetree@vger.kernel.org>; Tue, 25 Jan 2022 14:58:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:in-reply-to:references:from:user-agent:date:message-id
         :subject:to:cc;
        bh=4GrEGiXjXL9jM2PagphyLmPQgXS8BKdDMmMa/v1WcS8=;
        b=KnrApliL2b9WWrU59yhGRfdoFGaa55rg/vI7LRBW36Wfx60ses5GccZ+b4Z4vF18uG
         ehlsp1efYiE7XxXHgy63iyBfkfblH4TMkMDMpfERGniIW98kOdQv9ZRLA8SdFFX/appE
         g2hIeQTf4Z7Tu7id3qc0/jrNfUstimOw5TfME=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:in-reply-to:references:from
         :user-agent:date:message-id:subject:to:cc;
        bh=4GrEGiXjXL9jM2PagphyLmPQgXS8BKdDMmMa/v1WcS8=;
        b=JM3dAR9guZEzJksaMyyrB9eGuHQ6N9zwUvPC1jLAEks533pugOhm1GTVFKH2ZJkEJH
         g+J3O7fVYsF1YmkrTlY5jjCKn5S4lZO4bv2I2SUUcCcQV7Efrp0VzHRgr5pqFp8rrflI
         rZ46Ue6x8qJv0AZgwgvXK1yG6tvvf47abZiKyMLusWFQmJywGCf/t6Sxewf/Uo/tWbc5
         JT4CCC/qCP00LYrXIqxWvGqtHczZsxKtWkgHngImOYO2pxuXoVU/qQda8NUEn9wuWaDB
         1ViK4Ps2TICbKvziOg3N+bp4GvEVpjurktOdJtM1EihwwEGBAwB9mP7kPwFvkLR1haKk
         O4Cg==
X-Gm-Message-State: AOAM531fvPVARJuq2FF0JlE7iLhifBNeF+xvf/AtNkxZhODNoUoLr6w3
        nUZQkryaJhASgaHWg2H+NhMGtpvcD1/LFGB0AiPYzQ==
X-Google-Smtp-Source: ABdhPJz/O3MC6yV8Na0Cedpp8W0CwTEtF8gOk/oxJ4e1SCN0kqjYYdRYhajhxsZdC8Xxbi2ioFnxITFxMTR/93UaP9Q=
X-Received: by 2002:a05:6808:1302:: with SMTP id y2mr2158640oiv.238.1643151526577;
 Tue, 25 Jan 2022 14:58:46 -0800 (PST)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Tue, 25 Jan 2022 14:58:46 -0800
MIME-Version: 1.0
In-Reply-To: <20220125144316.v2.5.I5604b7af908e8bbe709ac037a6a8a6ba8a2bfa94@changeid>
References: <20220125224422.544381-1-dianders@chromium.org> <20220125144316.v2.5.I5604b7af908e8bbe709ac037a6a8a6ba8a2bfa94@changeid>
From:   Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.10
Date:   Tue, 25 Jan 2022 14:58:46 -0800
Message-ID: <CAE-0n528Bxdj+DKhi2Lan4qR_=4KHD7A1Zkr15tmu+MchryJ1A@mail.gmail.com>
Subject: Re: [PATCH v2 5/5] arm64: dts: qcom: sc7280: Add herobrine-r1
To:     Bjorn Andersson <bjorn.andersson@linaro.org>,
        Douglas Anderson <dianders@chromium.org>
Cc:     konrad.dybcio@somainline.org, kgodara@codeaurora.org,
        mka@chromium.org, sibis@codeaurora.org, pmaliset@codeaurora.org,
        quic_rjendra@quicinc.com, Andy Gross <agross@kernel.org>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting Douglas Anderson (2022-01-25 14:44:22)
> diff --git a/arch/arm64/boot/dts/qcom/sc7280-herobrine-herobrine-r1.dts b/arch/arm64/boot/dts/qcom/sc7280-herobrine-herobrine-r1.dts
> new file mode 100644
> index 000000000000..f95273052da0
> --- /dev/null
> +++ b/arch/arm64/boot/dts/qcom/sc7280-herobrine-herobrine-r1.dts
> @@ -0,0 +1,313 @@
> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> +/*
> + * Google Herobrine board device tree source
> + *
> + * Copyright 2022 Google LLC.
> + */
> +
> +/dts-v1/;
> +
> +#include "sc7280-herobrine.dtsi"
> +
> +/ {
> +       model = "Google Herobrine (rev1+)";
> +       compatible = "google,herobrine", "qcom,sc7280";

Can we stop adding "qcom,sc7280" to the board compatible string? It
looks out of place. It's the compatible for the SoC and should really be
the compatible for the /soc node.

> +};
> +
> +/* ADDITIONS TO NODES DEFINED IN PARENT DEVICE TREE FILES */
> +
> +&ap_spi_fp {
> +       status = "okay";
> +};
[...]
> diff --git a/arch/arm64/boot/dts/qcom/sc7280-herobrine.dtsi b/arch/arm64/boot/dts/qcom/sc7280-herobrine.dtsi
> new file mode 100644
> index 000000000000..24c34ddebd18
> --- /dev/null
> +++ b/arch/arm64/boot/dts/qcom/sc7280-herobrine.dtsi
> @@ -0,0 +1,778 @@
> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> +/*
> + * Google Herobrine baseboard device tree source
> + *
[...]
> +
> +               vin-supply = <&ppvar_sys>;
> +       };
> +
> +       pp3300_codec: pp3300-codec-regulator {
> +               compatible = "regulator-fixed";
> +               regulator-name = "pp3300_codec";
> +
> +               regulator-min-microvolt = <3300000>;
> +               regulator-max-microvolt = <3300000>;
> +
> +               gpio = <&tlmm 105 GPIO_ACTIVE_HIGH>;
> +               enable-active-high;
> +               pinctrl-names = "default";
> +               pinctrl-0 = <&en_pp3300_codec>;
> +
> +               vin-supply = <&pp3300_z1>;
> +       };
> +
> +       pp3300_left_in_mlb: pp3300-left-in-mlb {

Sometimes '-regulator' is left out. Is that intentional? I suppose it
would be better if every node had regulator postfix, but it may be too
long of a node name?

> +               compatible = "regulator-fixed";
> +               regulator-name = "pp3300_left_in_mlb";
> +
> +               regulator-min-microvolt = <3300000>;
> +               regulator-max-microvolt = <3300000>;
> +
> +               gpio = <&tlmm 80 GPIO_ACTIVE_HIGH>;
