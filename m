Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B3C213E83F3
	for <lists+devicetree@lfdr.de>; Tue, 10 Aug 2021 21:51:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232196AbhHJTwH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 10 Aug 2021 15:52:07 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54860 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230077AbhHJTwH (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 10 Aug 2021 15:52:07 -0400
Received: from mail-ot1-x334.google.com (mail-ot1-x334.google.com [IPv6:2607:f8b0:4864:20::334])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D1ABDC0613D3
        for <devicetree@vger.kernel.org>; Tue, 10 Aug 2021 12:51:44 -0700 (PDT)
Received: by mail-ot1-x334.google.com with SMTP id e13-20020a9d63cd0000b02904fa42f9d275so482731otl.1
        for <devicetree@vger.kernel.org>; Tue, 10 Aug 2021 12:51:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:in-reply-to:references:from:user-agent:date:message-id
         :subject:to:cc;
        bh=7/7uowWN2jQeWDxt9eNITvpY2HZF5mcPTVHvPG/MbMQ=;
        b=gt5soBchXC72xOkvl3xRddt38dFwE4MTM7neiayM2G7uoE7Vh+uFyH1pTweQ2BpE9Q
         Q4w5KNBCV+MXPzZFKDUOdVp8I27Pso4vAIjC1Y3fqdgwnDdWbhWwt0UCI/75EqbcugPd
         QZxGFJby0phDcPWiQGZFgdVSlmdZPWSrSzuzE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from
         :user-agent:date:message-id:subject:to:cc;
        bh=7/7uowWN2jQeWDxt9eNITvpY2HZF5mcPTVHvPG/MbMQ=;
        b=GAzA2jQ3cVdzajE15vzZRhkgMIZdNYgIg2rWIpoewhJGsnhCWwjFvZaVHMNFPhh89C
         eLlos5TkCXlCXDuMaHjMOKoSQ96qVJRDCy4fYn9GyGxVXwET7DSC3HPL2mxojVMdti1p
         Eh5DRmm6pDq93/6sEx50OEpJ2/rD/omX452VtB6BmG2wLKiCDrS0pqXF2jUFrvTpM8OH
         Al2Ys0OP+oQ2UyaNFLfQJdAs+p1vu+b8R8CFVXNBo0lRwc6Rp/RTorf9xnjPsvr/IXuz
         2eJZ9x0I/kbiTustlBT29b8hzHdxiUhcUCASa8HgZH0+aYH6jw2sTrWNvpsHU92MNbJt
         IUAg==
X-Gm-Message-State: AOAM530m62piGncLye4561nJuNuLPHYtLzCBuRshCbZiruzoSk8kuhqc
        oW4HIJxkB6uTNttTVpU2QzedaYaz4ayDIt2MFw2DBg==
X-Google-Smtp-Source: ABdhPJwWfhK1GcpqU0JS0YBVqCjmmL+rUGGuzn4ocxKLaz3l+uhfqZ5RAje9bUKCezb5w0pDB+nkPEk2a5qGGrl4IJM=
X-Received: by 2002:a05:6830:44a7:: with SMTP id r39mr22245175otv.25.1628625104215;
 Tue, 10 Aug 2021 12:51:44 -0700 (PDT)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Tue, 10 Aug 2021 12:51:43 -0700
MIME-Version: 1.0
In-Reply-To: <1628619089-12502-1-git-send-email-pillair@codeaurora.org>
References: <1628619089-12502-1-git-send-email-pillair@codeaurora.org>
From:   Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.9.1
Date:   Tue, 10 Aug 2021 12:51:43 -0700
Message-ID: <CAE-0n539nm6BrR51bZW-jX8e=o5d19JFnKfT9fb-sVS9FGKn0A@mail.gmail.com>
Subject: Re: [PATCH v2] arm64: dts: qcom: sc7280: Add WPSS remoteproc node
To:     Rakesh Pillai <pillair@codeaurora.org>, agross@kernel.org,
        bjorn.andersson@linaro.org, robh+dt@kernel.org
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, sibis@codeaurora.org,
        mpubbise@codeaurora.org
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting Rakesh Pillai (2021-08-10 11:11:29)
> diff --git a/arch/arm64/boot/dts/qcom/sc7280.dtsi b/arch/arm64/boot/dts/qcom/sc7280.dtsi
> index 53a21d0..41a7826 100644
> --- a/arch/arm64/boot/dts/qcom/sc7280.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sc7280.dtsi
> @@ -74,6 +74,16 @@
>                         reg = <0 0x8b700000 0 0x10000>;
>                         no-map;
>                 };
> +
> +               wlan_fw_mem: memory@80c00000 {
> +                       no-map;
> +                       reg = <0x0 0x80c00000 0x0 0xc00000>;
> +               };

Please try to keep this sorted by reg address. 80c00000 comes before
8b700000.

> +
> +               wpss_mem: memory@9ae00000 {
> +                       no-map;
> +                       reg = <0x0 0x9ae00000 0x0 0x1900000>;
> +               };
>         };
>
>         cpus {
> @@ -1270,6 +1280,53 @@
>                         };
>                 };
>
> +               remoteproc_wpss: remoteproc@8a00000 {
> +                       compatible = "qcom,sc7280-wpss-pil";
> +                       reg = <0 0x08a00000 0 0x10000>;
> +
> +                       interrupts-extended = <&intc GIC_SPI 587 IRQ_TYPE_EDGE_RISING>,
> +                                             <&wpss_smp2p_in 0 IRQ_TYPE_NONE>,
> +                                             <&wpss_smp2p_in 1 IRQ_TYPE_NONE>,
> +                                             <&wpss_smp2p_in 2 IRQ_TYPE_NONE>,
> +                                             <&wpss_smp2p_in 3 IRQ_TYPE_NONE>,
> +                                             <&wpss_smp2p_in 7 IRQ_TYPE_NONE>;

Is this IRQ_TYPE_EDGE_RISING? Please add some type of edge or level flag.

> +                       interrupt-names = "wdog", "fatal", "ready", "handover",
> +                                         "stop-ack", "shutdown-ack";
> +
> +                       clocks = <&gcc GCC_WPSS_AHB_BDG_MST_CLK>,
> +                                <&gcc GCC_WPSS_AHB_CLK>,
> +                                <&gcc GCC_WPSS_RSCP_CLK>,
> +                                <&rpmhcc RPMH_CXO_CLK>;
> +                       clock-names = "gcc_wpss_ahb_bdg_mst_clk",
> +                                     "gcc_wpss_ahb_clk",
> +                                     "gcc_wpss_rscp_clk",
> +                                     "xo";
> +
> +                       memory-region = <&wpss_mem>;
> +
> +                       qcom,smem-states = <&wpss_smp2p_out 0>;
