Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 68AA230DD70
	for <lists+devicetree@lfdr.de>; Wed,  3 Feb 2021 16:02:38 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232960AbhBCPCE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 3 Feb 2021 10:02:04 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33904 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233408AbhBCPCC (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 3 Feb 2021 10:02:02 -0500
Received: from mail-yb1-xb2d.google.com (mail-yb1-xb2d.google.com [IPv6:2607:f8b0:4864:20::b2d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8E748C061786
        for <devicetree@vger.kernel.org>; Wed,  3 Feb 2021 07:01:16 -0800 (PST)
Received: by mail-yb1-xb2d.google.com with SMTP id m76so17516156ybf.0
        for <devicetree@vger.kernel.org>; Wed, 03 Feb 2021 07:01:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=WJ7CGQhYFtJFl07ok5/69cMGKvlS3zw3sFP/g+CPbqE=;
        b=uZRRLhF3y0eS4ljMgqi7OwEh7OK1K0i0l31vpn/9XZAt2nrvyjY193G5ODx9d1MwTy
         CtGWgi7zLNhfBfC4dS/zMN9ASHn+zM2vJMDusoIzh4ufmwXQieEUCQ7QXb9Rl/VCOMNw
         3+flaW4lom3bFvCog1A2VWA2/65sy9tTQUUfZ8mtd0ClAodwHZYBmr7VC+44oG182xst
         XYQkG68olRjlOj60fGtXQ8owKFIsLXXCAwQydtPH3kKTNOgXgRRJtjcn2NIak5mN33Sk
         jf0D6ymnpixxzJccr6sOkGqyLoBTwocxntAAov1uxolPvGX7AEI5sAMqCKnY2i4TB1J8
         Oj1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=WJ7CGQhYFtJFl07ok5/69cMGKvlS3zw3sFP/g+CPbqE=;
        b=KK6HJqLNzbonnV+BDj7Vg3eiVoKAWxxjzoTrYzmVtzuD+kjF/DxXXt+hAgDW+PfIwd
         UNpRtYiE+8huMNuWD0NOa3iNLGKirejHzFL38unfSLqLD80uciVHzdzlEsXYZMPd+Og1
         FNDTiGXxT2v/ncC9ccLJjOEP2AKIcpXPM0nH10Uwc5mhvo8qSOFLAN5Tsup7jtWJb0Ax
         HizJwbSZ/Cz6lH1jwbwznxxVG+kLmVURvA06z+AL5d14IlJnHB5LkC2xGtYcOhl7a6Yu
         frTXnLgysTD1EHVfnD+T2PMbeuEeLabpb+rCLhZ8/FOTzX3V+78s6B8g1WljpCcmk+pu
         uopw==
X-Gm-Message-State: AOAM530NDcNgS55XzQ/MCaIJwlidXviLJMrZYmk4MBPTyOi+5ihpISfm
        B1YPzPnqd3TVAUqkZ8MPHyxXiFJ94IGHU59CWrN90w==
X-Google-Smtp-Source: ABdhPJwRthCdZBCwaBHOQPF2SrN9ZvGM6S/fgfnLOLSpJL/wn3O50hA0qpEtO0YWCyaTDqZpAcvV9FeDz/C+DXAww/k=
X-Received: by 2002:a25:1457:: with SMTP id 84mr5080609ybu.74.1612364475171;
 Wed, 03 Feb 2021 07:01:15 -0800 (PST)
MIME-Version: 1.0
References: <1612346356-26445-1-git-send-email-amit.pundir@linaro.org>
In-Reply-To: <1612346356-26445-1-git-send-email-amit.pundir@linaro.org>
From:   Amit Pundir <amit.pundir@linaro.org>
Date:   Wed, 3 Feb 2021 20:30:39 +0530
Message-ID: <CAMi1Hd1cCtSFMBjXm6=fwEeSYMYs5xvKPK25TxsxU9YDogxxDQ@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: qcom: sdm845-xiaomi-beryllium: Add DSI and
 panel bits
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Konrad Dybcio <konradybcio@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        John Stultz <john.stultz@linaro.org>,
        Sumit Semwal <sumit.semwal@linaro.org>
Cc:     linux-arm-msm <linux-arm-msm@vger.kernel.org>,
        dt <devicetree@vger.kernel.org>,
        lkml <linux-kernel@vger.kernel.org>, phone-devel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Argh.. This patch is not formatted on top of mainline. It doesn't
apply cleanly. Sorry about that. I'll fix that in the next version.

Regards,
Amit Pundir

On Wed, 3 Feb 2021 at 15:29, Amit Pundir <amit.pundir@linaro.org> wrote:
>
> From: Sumit Semwal <sumit.semwal@linaro.org>
>
> Enabling the Display panel for beryllium phone (Xiaomi
> Pocophone F1) requires DSI labibb regulators and panel
> dts nodes to be added. It is also required to keep some
> of the regulators as always-on.
>
> Signed-off-by: Sumit Semwal <sumit.semwal@linaro.org>
> Signed-off-by: Amit Pundir <amit.pundir@linaro.org>
> ---
>  .../boot/dts/qcom/sdm845-xiaomi-beryllium.dts      | 55 ++++++++++++++++++++++
>  1 file changed, 55 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/qcom/sdm845-xiaomi-beryllium.dts b/arch/arm64/boot/dts/qcom/sdm845-xiaomi-beryllium.dts
> index cd15ae0347e8..e09effa555f1 100644
> --- a/arch/arm64/boot/dts/qcom/sdm845-xiaomi-beryllium.dts
> +++ b/arch/arm64/boot/dts/qcom/sdm845-xiaomi-beryllium.dts
> @@ -160,6 +160,14 @@
>                         regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
>                 };
>
> +               vreg_l14a_1p88: ldo14 {
> +                       regulator-min-microvolt = <1800000>;
> +                       regulator-max-microvolt = <1800000>;
> +                       regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
> +                       regulator-boot-on;
> +                       regulator-always-on;
> +               };
> +
>                 vreg_l17a_1p3: ldo17 {
>                         regulator-min-microvolt = <1304000>;
>                         regulator-max-microvolt = <1304000>;
> @@ -194,6 +202,7 @@
>                         regulator-min-microvolt = <1200000>;
>                         regulator-max-microvolt = <1200000>;
>                         regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
> +                       regulator-boot-on;
>                 };
>         };
>  };
> @@ -207,6 +216,44 @@
>         firmware-name = "qcom/sdm845/cdsp.mdt";
>  };
>
> +&dsi0 {
> +       status = "okay";
> +       vdda-supply = <&vreg_l26a_1p2>;
> +
> +       ports {
> +               port@1 {
> +                       endpoint {
> +                               remote-endpoint = <&tianma_nt36672a_in_0>;
> +                               data-lanes = <0 1 2 3>;
> +                       };
> +               };
> +       };
> +
> +       panel@0 {
> +               compatible = "tianma,fhd-video";
> +               reg = <0>;
> +               vddi0-supply = <&vreg_l14a_1p88>;
> +               vddpos-supply = <&lab>;
> +               vddneg-supply = <&ibb>;
> +
> +               reset-gpios = <&tlmm 6 GPIO_ACTIVE_LOW>;
> +
> +               #address-cells = <1>;
> +               #size-cells = <0>;
> +
> +               port {
> +                       tianma_nt36672a_in_0: endpoint {
> +                               remote-endpoint = <&dsi0_out>;
> +                       };
> +               };
> +       };
> +};
> +
> +&dsi0_phy {
> +       status = "okay";
> +       vdds-supply = <&vreg_l1a_0p875>;
> +};
> +
>  &gcc {
>         protected-clocks = <GCC_QSPI_CORE_CLK>,
>                            <GCC_QSPI_CORE_CLK_SRC>,
> @@ -274,6 +321,14 @@
>
>  };
>
> +&mdss {
> +       status = "okay";
> +};
> +
> +&mdss_mdp {
> +       status = "okay";
> +};
> +
>  &mss_pil {
>         status = "okay";
>         firmware-name = "qcom/sdm845/mba.mbn", "qcom/sdm845/modem.mdt";
> --
> 2.7.4
>
