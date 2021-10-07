Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 41BB1425A1F
	for <lists+devicetree@lfdr.de>; Thu,  7 Oct 2021 19:57:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S243344AbhJGR7W (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 7 Oct 2021 13:59:22 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49658 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S243307AbhJGR7V (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 7 Oct 2021 13:59:21 -0400
Received: from mail-ot1-x335.google.com (mail-ot1-x335.google.com [IPv6:2607:f8b0:4864:20::335])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 13019C061760
        for <devicetree@vger.kernel.org>; Thu,  7 Oct 2021 10:57:28 -0700 (PDT)
Received: by mail-ot1-x335.google.com with SMTP id c6-20020a9d2786000000b005471981d559so8476588otb.5
        for <devicetree@vger.kernel.org>; Thu, 07 Oct 2021 10:57:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:in-reply-to:references:from:user-agent:date:message-id
         :subject:to:cc;
        bh=tNffkl0Q4XYFcl/VueyyIpHh5QtOfORzbwnyFe2lGUk=;
        b=b+B3rRcrnNNlpsNamNM5v+Dg5DxzaCynl+SWNFYgRP4C1AnU07jrfTNLTW3dVfQRNr
         m16M6gVxXz3tLCf9fGZXHnleEiyRdUWguUWmryHmIQ82olFUq30yn7iNGN3fm3PbT7gq
         iuVijXL/lXLB2gsZHyuvZ/TeV4YTcLK+kzvu8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:in-reply-to:references:from
         :user-agent:date:message-id:subject:to:cc;
        bh=tNffkl0Q4XYFcl/VueyyIpHh5QtOfORzbwnyFe2lGUk=;
        b=CpfAhGx3X1Ng1A2/5mGDmEeqxH0fYsuUmsD7n0+WGCdfOYMM0qhcdQSTZ0J/uNKPXa
         MVEtkPZj/ntV2EQL1kD+5UL1IQZ8BlBHfDIzOm/ts3QTo35FBoByVMLf5Y5tOrtmH+og
         /5V8tiCVK7DXOPKcGE1u0TXvxBD/riu5LyKGF+k37q5j7pl1XKjQvZSRbs2KOYnsk4sy
         h5AtbcVaVDVXu2YXFmXgbQsGgjojjlvvFrDLIWzpYwVi0AjcAIE1VwTY9WfG/Tp4rhZZ
         u0KkV/2jOnXfEx7R8aexRl8r0EmogItJkf78NLEhBGMgZmpRX9WtJ91U6zPU8h1paAFL
         9Arw==
X-Gm-Message-State: AOAM532SBHuADV+f7uI23m18hWZFI2UHVYZ3/1lA3QbvvyRfcqPrBnDq
        Wh8QuXu9Vw5Udah9X0PPJPvrKFq6qg710Ivfn6iNMQ==
X-Google-Smtp-Source: ABdhPJwAvWX1ls2QReA8P64elG2Woqp0Lk3ZSmYVtjCSdDEAjMULvzOhTxb4cSKxDFAzNCrZ2d6cimg76yLQk+aAvUE=
X-Received: by 2002:a9d:12f4:: with SMTP id g107mr908111otg.77.1633629447464;
 Thu, 07 Oct 2021 10:57:27 -0700 (PDT)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Thu, 7 Oct 2021 13:57:27 -0400
MIME-Version: 1.0
In-Reply-To: <1633614519-26680-2-git-send-email-srivasam@codeaurora.org>
References: <1633614519-26680-1-git-send-email-srivasam@codeaurora.org> <1633614519-26680-2-git-send-email-srivasam@codeaurora.org>
From:   Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.9.1
Date:   Thu, 7 Oct 2021 13:57:27 -0400
Message-ID: <CAE-0n52Ge_XZr914Ksmq5Myk3FRp7+Sc5P-9jj8wuspKkjXnYw@mail.gmail.com>
Subject: Re: [PATCH 1/3] pinctrl: qcom: Update lpass variant independent
 functions as generic
To:     Srinivasa Rao Mandadapu <srivasam@codeaurora.org>,
        agross@kernel.org, alsa-devel@alsa-project.org,
        bgoswami@codeaurora.org, bjorn.andersson@linaro.org,
        broonie@kernel.org, devicetree@vger.kernel.org,
        judyhsiao@chromium.org, lgirdwood@gmail.com,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        perex@perex.cz, plai@codeaurora.org, robh+dt@kernel.org,
        rohitkr@codeaurora.org, srinivas.kandagatla@linaro.org,
        tiwai@suse.com
Cc:     Venkata Prasad Potturu <potturu@codeaurora.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting Srinivasa Rao Mandadapu (2021-10-07 06:48:37)
> diff --git a/drivers/pinctrl/qcom/pinctrl-lpass-lpi.c b/drivers/pinctrl/qcom/pinctrl-lpass-lpi.c
> index 2f19ab4..c0117c5 100644
> --- a/drivers/pinctrl/qcom/pinctrl-lpass-lpi.c
> +++ b/drivers/pinctrl/qcom/pinctrl-lpass-lpi.c
> @@ -124,7 +124,8 @@ static const struct pinctrl_pin_desc sm8250_lpi_pins[] = {
>         PINCTRL_PIN(13, "gpio13"),
>  };
>
> -enum sm8250_lpi_functions {
> +

Please drop this extra newline so the diff makes sense.

> +enum lpass_lpi_functions {
>         LPI_MUX_dmic1_clk,
>         LPI_MUX_dmic1_data,
>         LPI_MUX_dmic2_clk,
> @@ -203,7 +204,7 @@ static const struct lpi_pingroup sm8250_groups[] = {
>         LPI_PINGROUP(13, NO_SLEW, dmic3_data, i2s2_data, _, _),
>  };
>
> -static const struct lpi_function sm8250_functions[] = {
> +static const struct lpi_function lpass_functions[] = {

Why not follow the approach of other qcom pinctrl drivers and make a
core driver that each SoC uses as a library?

>         LPI_FUNCTION(dmic1_clk),
>         LPI_FUNCTION(dmic1_data),
>         LPI_FUNCTION(dmic2_clk),
> @@ -615,7 +616,7 @@ static int lpi_pinctrl_probe(struct platform_device *pdev)
>                 return dev_err_probe(dev, PTR_ERR(pctrl->slew_base),
>                                      "Slew resource not provided\n");
>
> -       ret = devm_clk_bulk_get(dev, MAX_LPI_NUM_CLKS, pctrl->clks);
> +       ret = devm_clk_bulk_get_optional(dev, MAX_LPI_NUM_CLKS, pctrl->clks);

Please mention in the commit text why this is now optional.

>         if (ret)
>                 return dev_err_probe(dev, ret, "Can't get clocks\n");
>
