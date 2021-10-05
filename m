Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 28E53421B77
	for <lists+devicetree@lfdr.de>; Tue,  5 Oct 2021 03:10:53 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230234AbhJEBMk (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 4 Oct 2021 21:12:40 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57912 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230097AbhJEBMk (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 4 Oct 2021 21:12:40 -0400
Received: from mail-ot1-x331.google.com (mail-ot1-x331.google.com [IPv6:2607:f8b0:4864:20::331])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A1AAAC061753
        for <devicetree@vger.kernel.org>; Mon,  4 Oct 2021 18:10:50 -0700 (PDT)
Received: by mail-ot1-x331.google.com with SMTP id x33-20020a9d37a4000000b0054733a85462so23895914otb.10
        for <devicetree@vger.kernel.org>; Mon, 04 Oct 2021 18:10:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:in-reply-to:references:from:user-agent:date:message-id
         :subject:to:cc;
        bh=rLYw2KrQ4s9yKh8fwXPTnJIwo3OAJ8FO94iCHD8cOyc=;
        b=NfweNdNukEeDOmICkjI+OAOsiFlhGgBdGGuE3YS7PPqAtBU/vvUP2YYgGsozM8MhDr
         xAdETSKZTxk+artDcSFycUCG6VpiP/8uGGZxPRj6+T772L+8572TOw4ceNhukT9YQzjh
         l8qD3NkacSCpPIvzktW3BEsh7ksMXKB5Vk2qw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:in-reply-to:references:from
         :user-agent:date:message-id:subject:to:cc;
        bh=rLYw2KrQ4s9yKh8fwXPTnJIwo3OAJ8FO94iCHD8cOyc=;
        b=QrfwR5zaS4bfLLLCL2dlEcyhzVBvurS3/5D7u0pjnjoKivYFdsp57IdPNKPn/dlBdm
         Ksr9YuhsO2nGyn5ifOTTbHBbI7X/r/tdmb/g4Q+Jd3oZJAsKbBhTT2pe0HFnxw/sX6gG
         koer/fBYTvSzbRgB3phDobKmUlENcM0wDIexjJJDmTu2cd/OXxH2W5zjbyh+BjbKAhXa
         UYiZ/WTxntBIDEJvJgU+o4+aiUkdr3JwrVUeWafHLUZ5eoXAc8F0dmvP5w6iTHRaHMtY
         ZuKmXh3ImdSTF7ST6ZvUZLwbhbl87RJzIZnrM87KO7juv9Z1R0C6yrdKMkUnlzb5Ib97
         JXMQ==
X-Gm-Message-State: AOAM532nJl6Qe95xs/n0vTSQ/qjbipfBOgyCzaSBGAtwsB/UM88znyRb
        XwzuqQP2O4/d96rR8U6dsA1bxudgiB696UqpV4wK6A==
X-Google-Smtp-Source: ABdhPJw/be4HaaJNo0lUyEzqEwnsmy31pjLpTnss9vmmL1BpHUvaF9IauV887aW6sUmfDgdNjMNrPLMCP754T3ywXq0=
X-Received: by 2002:a9d:6a0f:: with SMTP id g15mr12319566otn.126.1633396249933;
 Mon, 04 Oct 2021 18:10:49 -0700 (PDT)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Mon, 4 Oct 2021 21:10:49 -0400
MIME-Version: 1.0
In-Reply-To: <1633376488-545-4-git-send-email-pmaliset@codeaurora.org>
References: <1633376488-545-1-git-send-email-pmaliset@codeaurora.org> <1633376488-545-4-git-send-email-pmaliset@codeaurora.org>
From:   Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.9.1
Date:   Mon, 4 Oct 2021 21:10:49 -0400
Message-ID: <CAE-0n50WXwP52YM9k6YrPwNWs+KCuODg=mnmROUUPvdwvRxEsw@mail.gmail.com>
Subject: Re: [PATCH v10 3/5] arm64: dts: qcom: sc7280: Add PCIe nodes for IDP board
To:     Prasad Malisetty <pmaliset@codeaurora.org>, agross@kernel.org,
        bhelgaas@google.com, bjorn.andersson@linaro.org,
        lorenzo.pieralisi@arm.com, robh+dt@kernel.org, svarbanov@mm-sol.com
Cc:     devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org,
        dianders@chromium.org, mka@chromium.org, vbadigan@codeaurora.org,
        sallenki@codeaurora.org, manivannan.sadhasivam@linaro.org,
        linux-pci@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting Prasad Malisetty (2021-10-04 12:41:26)
> Enable PCIe controller and PHY for sc7280 IDP board.
> Add specific NVMe GPIO entries for SKU1 and SKU2 support.
>
> Signed-off-by: Prasad Malisetty <pmaliset@codeaurora.org>
> ---
>  arch/arm64/boot/dts/qcom/sc7280-idp.dts  |  8 +++++
>  arch/arm64/boot/dts/qcom/sc7280-idp.dtsi | 51 ++++++++++++++++++++++++++++++++
>  arch/arm64/boot/dts/qcom/sc7280-idp2.dts |  8 +++++
>  3 files changed, 67 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/qcom/sc7280-idp.dtsi b/arch/arm64/boot/dts/qcom/sc7280-idp.dtsi
> index 272d5ca..b416f3d 100644
> --- a/arch/arm64/boot/dts/qcom/sc7280-idp.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sc7280-idp.dtsi
> @@ -462,6 +491,28 @@
>  };
>
>  &tlmm {
> +       nvme_pwren_pin: nvme-pwren-pin {

pin is sort of redundant but OK. It would be simpler without the pin
postfix.

> +               function = "gpio";
> +               bias-pull-up;

Why is there a bias pull up on this enable pin? I'd expect to see a
bias-disable as this is an output pin and there's no need for a pull.

> +       };
> +
> +       pcie1_reset_n: pcie1-reset-n {
> +               pins = "gpio2";
> +               function = "gpio";
> +
> +               drive-strength = <16>;

Why such a strong drive strength?

> +               output-low;
> +               bias-disable;
> +       };
> +
> +       pcie1_wake_n: pcie1-wake-n {
> +               pins = "gpio3";
> +               function = "gpio";
> +
> +               drive-strength = <2>;
> +               bias-pull-up;
> +       };
> +
>         qup_uart7_sleep_cts: qup-uart7-sleep-cts {
>                 pins = "gpio28";
>                 function = "gpio";
