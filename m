Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7D63C3E83C5
	for <lists+devicetree@lfdr.de>; Tue, 10 Aug 2021 21:32:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232644AbhHJTcW (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 10 Aug 2021 15:32:22 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50370 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231143AbhHJTcW (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 10 Aug 2021 15:32:22 -0400
Received: from mail-oi1-x235.google.com (mail-oi1-x235.google.com [IPv6:2607:f8b0:4864:20::235])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EE5E8C0613D3
        for <devicetree@vger.kernel.org>; Tue, 10 Aug 2021 12:31:59 -0700 (PDT)
Received: by mail-oi1-x235.google.com with SMTP id u25so697582oiv.5
        for <devicetree@vger.kernel.org>; Tue, 10 Aug 2021 12:31:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:in-reply-to:references:from:user-agent:date:message-id
         :subject:to:cc;
        bh=uXLJXQXuuZd3UO1KaNFPnK2MtvAlw+IRTdMIHt3NneI=;
        b=iGQiqPn37w/N3I/dCgu8RNPJSTKuhmeuvE1IiucCtPuOI+RcB2QkZf2DczQin4exUY
         ziYtP35UfEve9EEdLnPXqTThfUQSXK5LdSjZQxZL5x1KoYD8ns4jBbjo9F2UkY+9plYj
         W8bDWcuQ9XqPNG/raNP9ZdtqxoDTpXHMdEEWc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from
         :user-agent:date:message-id:subject:to:cc;
        bh=uXLJXQXuuZd3UO1KaNFPnK2MtvAlw+IRTdMIHt3NneI=;
        b=BOlV9jqYw9f6wxNUB6jk8KLfSJY4NcQm4LtM4Id26hgnNhR5Ofgz7HrtGHZhfKQJL5
         WU9r80Wf/LPL9qt7dvUjp80YSiMEDmEErHHCvPU7XxOb2e6YKtlRksG7KZldg/ZNTtU3
         yFlX5rmICpV8YmQnlBl1bhYlqy56rW162mcF2yqL4rVrj4gialTp7NQySQM+KFP8oeSI
         UtKsoeUx6KFxqcFfIio7PUXKikmITqIDXuCRYq07mms+tvWEZLfcAqHrBwYX3tKgEVG+
         xhR26P//3Wg9+DCSnv07GZROkCuXRPWkEFEdpwPa9DKr2IJ6KPI2TAT7vtvEc/D9xVRP
         WUig==
X-Gm-Message-State: AOAM531Hn6inpV8uk5TFwfLPDGyMKmt9yoHhGUBDx9qaIZkZ7P8scC+q
        YqxEMYpUDABPgRzrkkthE3rBCsel0H/eu7YD2OGMZQ==
X-Google-Smtp-Source: ABdhPJzvphU4+3PJPdpAiqFAGurPLLah+Lub1M7phYZa7mgUvQgTJjNkVmKIcimt5yMxJU40w3vDC3xrilgyng8dlf4=
X-Received: by 2002:a05:6808:114a:: with SMTP id u10mr7456659oiu.19.1628623919391;
 Tue, 10 Aug 2021 12:31:59 -0700 (PDT)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Tue, 10 Aug 2021 12:31:58 -0700
MIME-Version: 1.0
In-Reply-To: <1628568516-24155-3-git-send-email-pmaliset@codeaurora.org>
References: <1628568516-24155-1-git-send-email-pmaliset@codeaurora.org> <1628568516-24155-3-git-send-email-pmaliset@codeaurora.org>
From:   Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.9.1
Date:   Tue, 10 Aug 2021 12:31:58 -0700
Message-ID: <CAE-0n51uQJ4VDDbmpu18mJw4zcDhD-tvUDgi0LQ4-zAgBUKJ6A@mail.gmail.com>
Subject: Re: [PATCH v5 2/4] arm64: dts: qcom: sc7280: Add PCIe and PHY related nodes
To:     Prasad Malisetty <pmaliset@codeaurora.org>, agross@kernel.org,
        bhelgaas@google.com, bjorn.andersson@linaro.org,
        lorenzo.pieralisi@arm.com, robh+dt@kernel.org, svarbanov@mm-sol.com
Cc:     devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org,
        dianders@chromium.org, mka@chromium.org, vbadigan@codeaurora.org,
        sallenki@codeaurora.org, manivannan.sadhasivam@linaro.org
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting Prasad Malisetty (2021-08-09 21:08:34)
> diff --git a/arch/arm64/boot/dts/qcom/sc7280.dtsi b/arch/arm64/boot/dts/qcom/sc7280.dtsi
> index 53a21d0..4500d88 100644
> --- a/arch/arm64/boot/dts/qcom/sc7280.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sc7280.dtsi
> @@ -1598,6 +1712,18 @@
>                                         bias-bus-hold;
>                                 };
>                         };
> +
> +                       pcie1_default_state: pcie1-default-state {
> +                               clkreq {
> +                                       pins = "gpio79";
> +                                       function = "pcie1_clkreqn";
> +                               };
> +
> +                               wake-n {
> +                                       pins = "gpio3";
> +                                       function = "gpio";

This is function gpio, so presumably board designers could decide to
change the wake gpio to something else, right? I'd prefer we move wake-n
to the board level (idp) as well. gpio79 looks fine as it is muxed to be
the pcie1_clkreqn function, not gpio, so it seems to be a dedicated pin
for this purpose.
