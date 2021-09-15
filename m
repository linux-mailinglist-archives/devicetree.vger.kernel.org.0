Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B22D040BCF7
	for <lists+devicetree@lfdr.de>; Wed, 15 Sep 2021 03:13:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231555AbhIOBPP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 14 Sep 2021 21:15:15 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48004 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229586AbhIOBPO (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 14 Sep 2021 21:15:14 -0400
Received: from mail-oo1-xc2e.google.com (mail-oo1-xc2e.google.com [IPv6:2607:f8b0:4864:20::c2e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A2A3FC061764
        for <devicetree@vger.kernel.org>; Tue, 14 Sep 2021 18:13:56 -0700 (PDT)
Received: by mail-oo1-xc2e.google.com with SMTP id b5-20020a4ac285000000b0029038344c3dso317988ooq.8
        for <devicetree@vger.kernel.org>; Tue, 14 Sep 2021 18:13:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:in-reply-to:references:from:user-agent:date:message-id
         :subject:to:cc;
        bh=fye5BxPOrlWKYYLZtsMn4MC6bBGJt02zFY1/zJ5TMGY=;
        b=MZQHMBIYPJkDu38cafY9egRxkkGrq4MLPBCaGkD+OAZbzsyJ+myDA6eNNaxnxFbLNK
         e2EEuRbKcsPnZhkfQStJtSPdAiI/TRJ74MQaIABJ66M3r0b0jHTWMOLNsdxI3ZjaJkDj
         GLW4Mgju2/a2bbyeUetWD1ZtD6kLbB/Ia5VSs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:in-reply-to:references:from
         :user-agent:date:message-id:subject:to:cc;
        bh=fye5BxPOrlWKYYLZtsMn4MC6bBGJt02zFY1/zJ5TMGY=;
        b=Mis6aSrOlPqrhGFvuq4th556LPW9wAt2x85E1uwtgkXpt4iKtlYJrCmgW/Rt7StQS1
         v50BZquNqVw8cMTvlxZedQP73kPeJd9HZnzh60EGso6dzWjeAYDD1xdmDsiFvblXVZXR
         SjEgnU43PGCKKEZmZZaq+bczj8KyXsLGntzU4Yfh2cre/5rjwTXVApzOb7ukMwQRhYTW
         Il0B5w7CGfBos/LIhAG05n8Dcz+r9vxqXrBTfNzkMf4LBUjAUE94Cl3kHmWJthz5xu0B
         sXTr/YvV6Jx36I3CK4Ao4dOI5+5Ka2RNDOeoyuA2elBN36dcWmOO7gwkP0lp6OS2D5gL
         gMUA==
X-Gm-Message-State: AOAM533qq2x3SyGjdY3AW9F3iYdxpkZdBvU7jsZoZuBKP6+bg3YnNCIx
        mGXyKFMeqavQZsCygPyH+sQ0bwAGms9PgPtNxGPKqw==
X-Google-Smtp-Source: ABdhPJyldbFleOsQkMUKsmWFviYenDiXUNcW52RTf+GR1ym674J9EKp24jVyBGbGyY6HVNG9Gnf0nQ9Nuzr5Xl9pln8=
X-Received: by 2002:a4a:919e:: with SMTP id d30mr16454443ooh.8.1631668435971;
 Tue, 14 Sep 2021 18:13:55 -0700 (PDT)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Tue, 14 Sep 2021 18:13:55 -0700
MIME-Version: 1.0
In-Reply-To: <1631643550-29960-4-git-send-email-pmaliset@codeaurora.org>
References: <1631643550-29960-1-git-send-email-pmaliset@codeaurora.org> <1631643550-29960-4-git-send-email-pmaliset@codeaurora.org>
From:   Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.9.1
Date:   Tue, 14 Sep 2021 18:13:55 -0700
Message-ID: <CAE-0n52p+5rabienYNG_OQfiaLLCgaRj9vfeKR6s3-bCdzHDQA@mail.gmail.com>
Subject: Re: [PATCH v7 3/4] arm64: dts: qcom: sc7280: Add PCIe nodes for IDP board
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

Quoting Prasad Malisetty (2021-09-14 11:19:09)
> Enable PCIe controller and PHY for sc7280 IDP board.
> Add specific NVMe GPIO entries for SKU1 and SKU2 support.
>
> Signed-off-by: Prasad Malisetty <pmaliset@codeaurora.org>
> ---
>  arch/arm64/boot/dts/qcom/sc7280-idp.dts  |  9 +++++++++
>  arch/arm64/boot/dts/qcom/sc7280-idp.dtsi | 32 ++++++++++++++++++++++++++++++++
>  arch/arm64/boot/dts/qcom/sc7280-idp2.dts |  9 +++++++++
>  3 files changed, 50 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/qcom/sc7280-idp.dts b/arch/arm64/boot/dts/qcom/sc7280-idp.dts
> index 64fc22a..2cc6b0a 100644
> --- a/arch/arm64/boot/dts/qcom/sc7280-idp.dts
> +++ b/arch/arm64/boot/dts/qcom/sc7280-idp.dts
> @@ -61,6 +61,15 @@
>         modem-init;
>  };
>
> +&pcie1_default_state {
> +       nvme-n {
> +               pins = "gpio19";
> +               function = "gpio";
> +
> +               bias-pull-up;
> +       };

I don't think the style is to have a single container node anymore.
Instead, each pin gets a different node and then pinctrl-0 has a list of
phandles to the different nodes. qcom maintainers may have more input
here.

Also, this should really go into a different section than here. I
thought the style was to have a 'board specific' pinctrl section.

> +};
> +
>  &pmk8350_vadc {
>         pmr735a_die_temp {
>                 reg = <PMR735A_ADC7_DIE_TEMP>;
