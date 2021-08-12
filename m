Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A27BC3EA3F5
	for <lists+devicetree@lfdr.de>; Thu, 12 Aug 2021 13:47:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236945AbhHLLqw (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 12 Aug 2021 07:46:52 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39004 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236908AbhHLLqw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 12 Aug 2021 07:46:52 -0400
Received: from mail-vs1-xe32.google.com (mail-vs1-xe32.google.com [IPv6:2607:f8b0:4864:20::e32])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 26401C0613D3
        for <devicetree@vger.kernel.org>; Thu, 12 Aug 2021 04:46:27 -0700 (PDT)
Received: by mail-vs1-xe32.google.com with SMTP id n22so3604107vsq.11
        for <devicetree@vger.kernel.org>; Thu, 12 Aug 2021 04:46:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=swYbe+r4xM2v4bBc0/5cq0xuu+4foimm3BarAlyAuTQ=;
        b=rSyQgWPumok7BEHX+INbSmsyoJaICO/L+a9+pz1Pt4S6Y4f70jYWPMys2rQLl7UeFE
         W20wzry3Fk8gj9ezOY3whW5zXh1Hd14d4UMbp1gOfygJ489TBymqVgSsNJgatdWd2MOu
         xuem01PYzMNtl+DbHonziW98heLzCJY7VdSvYnmeFfYzuStV2ekfMqWwCeTV3ynZy5t7
         FxhA9KK9r/VGbDHwgvWiuAHErfaAVCO3hxbdaM1F8AbZfySw9GMCm+UEgYp6F8SXpIUv
         FrzInDM2CRtuvCFdtWnTRJs4upqDMcZTX0dQYpbT1XyQ8yHuwaH0PNB9NWbuKI8/9t+5
         8Xpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=swYbe+r4xM2v4bBc0/5cq0xuu+4foimm3BarAlyAuTQ=;
        b=mODMc14FtVh8qcqTg+Qx/vMvWuQ3gKgBPe7nz8To7/w42aaWZHxedN79wkYN6vDFJA
         hnvqZ9yvIAzVBC3bAX8fMCVfDeEBI78qOSE0BPtbYBG0bcFRt1x7tSTcgTNZg9u0A4Zg
         0pV3gLBKiDsU1HTn4cGfBxoyBTeOOm49BJE6Q8711ABxqBkoxpkjUNHZjRk2i2DK3iEw
         1lNk5vTpw6dLN0ctc5Htn0TzcCN1Ah03pmnAibhiSEVgax9cmRY4nmnDLlYb7cfq4Xod
         PD0a+7jf9VNpFScAJIYkjbozia8nDbkdw+AmTPUqavM0dQXoQd93a1pnAYb6QMvNFu9q
         ej+Q==
X-Gm-Message-State: AOAM531OIQZj7WVerUQAXii0TI2fJTd9fm7D4zaflijASag3J2NawRKV
        OF1F21kcNlnOY9S/STr4cVCejM8MqaDyYEcZQR2zBw==
X-Google-Smtp-Source: ABdhPJyo9v28rhQvbcDkSGaYK1PaVI8y4qhKY7V8XxfLNyiQn2krtfXEdb5A/BAcwjwCOnghLJAJNayOzDi4vZv4Fyw=
X-Received: by 2002:a67:7c11:: with SMTP id x17mr2588868vsc.55.1628768786350;
 Thu, 12 Aug 2021 04:46:26 -0700 (PDT)
MIME-Version: 1.0
References: <1628767642-4008-1-git-send-email-rnayak@codeaurora.org> <1628767642-4008-4-git-send-email-rnayak@codeaurora.org>
In-Reply-To: <1628767642-4008-4-git-send-email-rnayak@codeaurora.org>
From:   Ulf Hansson <ulf.hansson@linaro.org>
Date:   Thu, 12 Aug 2021 13:45:49 +0200
Message-ID: <CAPDyKFoJM4zzt_KskXLPqe6x6j4_-ftS0tc_C-mgJk2tC-pJSw@mail.gmail.com>
Subject: Re: [PATCH v7 3/3] arm64: dts: sc7180: Add required-opps for i2c
To:     Rajendra Nayak <rnayak@codeaurora.org>
Cc:     Bjorn Andersson <bjorn.andersson@linaro.org>,
        Viresh Kumar <viresh.kumar@linaro.org>,
        Linux PM <linux-pm@vger.kernel.org>,
        DTML <devicetree@vger.kernel.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        linux-arm-msm <linux-arm-msm@vger.kernel.org>,
        Stephen Boyd <swboyd@chromium.org>,
        Roja Rani Yarubandi <rojay@codeaurora.org>,
        Stephan Gerhold <stephan@gerhold.net>,
        Dmitry Osipenko <digetx@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, 12 Aug 2021 at 13:27, Rajendra Nayak <rnayak@codeaurora.org> wrote:
>
> qup-i2c devices on sc7180 are clocked with a fixed clock (19.2 MHz)
> Though qup-i2c does not support DVFS, it still needs to vote for a
> performance state on 'CX' to satisfy the 19.2 Mhz clock frequency
> requirement.
>
> Use 'required-opps' to pass this information from
> device tree, and also add the power-domains property to specify
> the CX power-domain.
>
> Signed-off-by: Rajendra Nayak <rnayak@codeaurora.org>
> Reviewed-by: Stephen Boyd <swboyd@chromium.org>

Reviewed-by: Ulf Hansson <ulf.hansson@linaro.org>

Kind regards
Uffe


> ---
>  arch/arm64/boot/dts/qcom/sc7180.dtsi | 24 ++++++++++++++++++++++++
>  1 file changed, 24 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/qcom/sc7180.dtsi b/arch/arm64/boot/dts/qcom/sc7180.dtsi
> index 4721c15..c8921e2 100644
> --- a/arch/arm64/boot/dts/qcom/sc7180.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sc7180.dtsi
> @@ -790,8 +790,10 @@
>                                                 <&gem_noc MASTER_APPSS_PROC 0 &config_noc SLAVE_QUP_0 0>,
>                                                 <&aggre1_noc MASTER_QUP_0 0 &mc_virt SLAVE_EBI1 0>;
>                                 interconnect-names = "qup-core", "qup-config",
>                                                         "qup-memory";
> +                               power-domains = <&rpmhpd SC7180_CX>;
> +                               required-opps = <&rpmhpd_opp_low_svs>;
>                                 status = "disabled";
>                         };
>
>                         spi0: spi@880000 {
> @@ -842,8 +844,10 @@
>                                                 <&gem_noc MASTER_APPSS_PROC 0 &config_noc SLAVE_QUP_0 0>,
>                                                 <&aggre1_noc MASTER_QUP_0 0 &mc_virt SLAVE_EBI1 0>;
>                                 interconnect-names = "qup-core", "qup-config",
>                                                         "qup-memory";
> +                               power-domains = <&rpmhpd SC7180_CX>;
> +                               required-opps = <&rpmhpd_opp_low_svs>;
>                                 status = "disabled";
>                         };
>
>                         spi1: spi@884000 {
> @@ -894,8 +898,10 @@
>                                                 <&gem_noc MASTER_APPSS_PROC 0 &config_noc SLAVE_QUP_0 0>,
>                                                 <&aggre1_noc MASTER_QUP_0 0 &mc_virt SLAVE_EBI1 0>;
>                                 interconnect-names = "qup-core", "qup-config",
>                                                         "qup-memory";
> +                               power-domains = <&rpmhpd SC7180_CX>;
> +                               required-opps = <&rpmhpd_opp_low_svs>;
>                                 status = "disabled";
>                         };
>
>                         uart2: serial@888000 {
> @@ -928,8 +934,10 @@
>                                                 <&gem_noc MASTER_APPSS_PROC 0 &config_noc SLAVE_QUP_0 0>,
>                                                 <&aggre1_noc MASTER_QUP_0 0 &mc_virt SLAVE_EBI1 0>;
>                                 interconnect-names = "qup-core", "qup-config",
>                                                         "qup-memory";
> +                               power-domains = <&rpmhpd SC7180_CX>;
> +                               required-opps = <&rpmhpd_opp_low_svs>;
>                                 status = "disabled";
>                         };
>
>                         spi3: spi@88c000 {
> @@ -980,8 +988,10 @@
>                                                 <&gem_noc MASTER_APPSS_PROC 0 &config_noc SLAVE_QUP_0 0>,
>                                                 <&aggre1_noc MASTER_QUP_0 0 &mc_virt SLAVE_EBI1 0>;
>                                 interconnect-names = "qup-core", "qup-config",
>                                                         "qup-memory";
> +                               power-domains = <&rpmhpd SC7180_CX>;
> +                               required-opps = <&rpmhpd_opp_low_svs>;
>                                 status = "disabled";
>                         };
>
>                         uart4: serial@890000 {
> @@ -1014,8 +1024,10 @@
>                                                 <&gem_noc MASTER_APPSS_PROC 0 &config_noc SLAVE_QUP_0 0>,
>                                                 <&aggre1_noc MASTER_QUP_0 0 &mc_virt SLAVE_EBI1 0>;
>                                 interconnect-names = "qup-core", "qup-config",
>                                                         "qup-memory";
> +                               power-domains = <&rpmhpd SC7180_CX>;
> +                               required-opps = <&rpmhpd_opp_low_svs>;
>                                 status = "disabled";
>                         };
>
>                         spi5: spi@894000 {
> @@ -1079,8 +1091,10 @@
>                                                 <&gem_noc MASTER_APPSS_PROC 0 &config_noc SLAVE_QUP_1 0>,
>                                                 <&aggre2_noc MASTER_QUP_1 0 &mc_virt SLAVE_EBI1 0>;
>                                 interconnect-names = "qup-core", "qup-config",
>                                                         "qup-memory";
> +                               power-domains = <&rpmhpd SC7180_CX>;
> +                               required-opps = <&rpmhpd_opp_low_svs>;
>                                 status = "disabled";
>                         };
>
>                         spi6: spi@a80000 {
> @@ -1131,8 +1145,10 @@
>                                                 <&gem_noc MASTER_APPSS_PROC 0 &config_noc SLAVE_QUP_1 0>,
>                                                 <&aggre2_noc MASTER_QUP_1 0 &mc_virt SLAVE_EBI1 0>;
>                                 interconnect-names = "qup-core", "qup-config",
>                                                         "qup-memory";
> +                               power-domains = <&rpmhpd SC7180_CX>;
> +                               required-opps = <&rpmhpd_opp_low_svs>;
>                                 status = "disabled";
>                         };
>
>                         uart7: serial@a84000 {
> @@ -1165,8 +1181,10 @@
>                                                 <&gem_noc MASTER_APPSS_PROC 0 &config_noc SLAVE_QUP_1 0>,
>                                                 <&aggre2_noc MASTER_QUP_1 0 &mc_virt SLAVE_EBI1 0>;
>                                 interconnect-names = "qup-core", "qup-config",
>                                                         "qup-memory";
> +                               power-domains = <&rpmhpd SC7180_CX>;
> +                               required-opps = <&rpmhpd_opp_low_svs>;
>                                 status = "disabled";
>                         };
>
>                         spi8: spi@a88000 {
> @@ -1217,8 +1235,10 @@
>                                                 <&gem_noc MASTER_APPSS_PROC 0 &config_noc SLAVE_QUP_1 0>,
>                                                 <&aggre2_noc MASTER_QUP_1 0 &mc_virt SLAVE_EBI1 0>;
>                                 interconnect-names = "qup-core", "qup-config",
>                                                         "qup-memory";
> +                               power-domains = <&rpmhpd SC7180_CX>;
> +                               required-opps = <&rpmhpd_opp_low_svs>;
>                                 status = "disabled";
>                         };
>
>                         uart9: serial@a8c000 {
> @@ -1251,8 +1271,10 @@
>                                                 <&gem_noc MASTER_APPSS_PROC 0 &config_noc SLAVE_QUP_1 0>,
>                                                 <&aggre2_noc MASTER_QUP_1 0 &mc_virt SLAVE_EBI1 0>;
>                                 interconnect-names = "qup-core", "qup-config",
>                                                         "qup-memory";
> +                               power-domains = <&rpmhpd SC7180_CX>;
> +                               required-opps = <&rpmhpd_opp_low_svs>;
>                                 status = "disabled";
>                         };
>
>                         spi10: spi@a90000 {
> @@ -1303,8 +1325,10 @@
>                                                 <&gem_noc MASTER_APPSS_PROC 0 &config_noc SLAVE_QUP_1 0>,
>                                                 <&aggre2_noc MASTER_QUP_1 0 &mc_virt SLAVE_EBI1 0>;
>                                 interconnect-names = "qup-core", "qup-config",
>                                                         "qup-memory";
> +                               power-domains = <&rpmhpd SC7180_CX>;
> +                               required-opps = <&rpmhpd_opp_low_svs>;
>                                 status = "disabled";
>                         };
>
>                         spi11: spi@a94000 {
> --
> QUALCOMM INDIA, on behalf of Qualcomm Innovation Center, Inc. is a member
> of Code Aurora Forum, hosted by The Linux Foundation
>
