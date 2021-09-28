Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7DF9641B8BB
	for <lists+devicetree@lfdr.de>; Tue, 28 Sep 2021 22:54:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S242790AbhI1U4I (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 28 Sep 2021 16:56:08 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57542 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S242755AbhI1U4H (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 28 Sep 2021 16:56:07 -0400
Received: from mail-ot1-x333.google.com (mail-ot1-x333.google.com [IPv6:2607:f8b0:4864:20::333])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A44C5C061745
        for <devicetree@vger.kernel.org>; Tue, 28 Sep 2021 13:54:27 -0700 (PDT)
Received: by mail-ot1-x333.google.com with SMTP id d12-20020a05683025cc00b0054d8486c6b8so193130otu.0
        for <devicetree@vger.kernel.org>; Tue, 28 Sep 2021 13:54:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:in-reply-to:references:from:user-agent:date:message-id
         :subject:to:cc;
        bh=xv0aAGE5pADH0iB1mtL8/0AzpzK5WiYw7HycOHRo6qk=;
        b=hWMyj4swmETDbFT2TTJtKNP29AOWP2M4nuPVQLPgnLgp15KRXGy0asFZp/RBSPFsqD
         FvOoTQWIoSs30yIvhkgD90OhxO89jOsAT3uh92F4FZjJRi7QPzPj/BVnrDsZpVe5aSuZ
         mHutseh9cIYuupbYb2NGL0rc5Bp6Mc3SvNbDU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:in-reply-to:references:from
         :user-agent:date:message-id:subject:to:cc;
        bh=xv0aAGE5pADH0iB1mtL8/0AzpzK5WiYw7HycOHRo6qk=;
        b=C1JG15GQlCPyddrOk7l6a9FrDVgFUOpgk5efEgTqXtLW9fTaceFEH4z9OJhkQEqfVM
         ujdYUOeYs89rVBX/X4pRUo8dXlk2c8ut5vzcnmchIDsZ9mqKXv+6K05UCkGCDz72pdMN
         +UcFKybx0NjcWli/2JikFWBf1bBAqiRz4Rkg6g/A3OXw7ddWuCRnuztviwigv1cOIULT
         QxzET8R2D4YKexJJ0qNLA4OemD9IFBEBmFwEGZlIJ6tQ6MtqN4U2+5zODKc6laIEh5zD
         3pnjn9PvtOY9XdiiRyPCLgq1QAuG/ewe0hAwyX7snTyJU7ZeBDwlSh4IXlV1nv65/LzI
         CDkA==
X-Gm-Message-State: AOAM533HM97SA0xf2viAuLSapk7QK8tOXerogzPilA1GYUXcfBoTlgnr
        LBcti8664nNkZEVP7xSiQC8b6xEKrWYdRZXqLnWGtA==
X-Google-Smtp-Source: ABdhPJx4hWeVlhQnSZqv1x3P26gHXeqCB8PnjGZ5cB1QP9XvecnwMKMNBh0Wi8TKUOsSzbzxP40VeMX9sIBE+cK89Pw=
X-Received: by 2002:a05:6830:358:: with SMTP id h24mr6676714ote.159.1632862467044;
 Tue, 28 Sep 2021 13:54:27 -0700 (PDT)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Tue, 28 Sep 2021 13:54:26 -0700
MIME-Version: 1.0
In-Reply-To: <20210927184858.1.Ib7e63ae17e827ce0636a09d5dec9796043e4f80a@changeid>
References: <20210927184858.1.Ib7e63ae17e827ce0636a09d5dec9796043e4f80a@changeid>
From:   Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.9.1
Date:   Tue, 28 Sep 2021 13:54:26 -0700
Message-ID: <CAE-0n506JaDYzX_AXnL_eq9hDSPF1Lfxyd7chr=uYkxFkJHy6w@mail.gmail.com>
Subject: Re: [PATCH 1/2] arm64: dts: sc7180: Factor out ti-sn65dsi86 support
To:     LKML <linux-kernel@vger.kernel.org>,
        Philip Chen <philipchen@chromium.org>
Cc:     dianders@chromium.org, Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-msm@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting Philip Chen (2021-09-27 18:49:39)
> diff --git a/arch/arm64/boot/dts/qcom/sc7180-trogdor-ti-sn65dsi86.dtsi b/arch/arm64/boot/dts/qcom/sc7180-trogdor-ti-sn65dsi86.dtsi
> new file mode 100644
> index 000000000000..7b1034a5a8e9
> --- /dev/null
> +++ b/arch/arm64/boot/dts/qcom/sc7180-trogdor-ti-sn65dsi86.dtsi
> @@ -0,0 +1,87 @@
> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> +/*
> + * Google Trogdor dts fragment for the boards with TI sn65dsi86 edp bridge
> + *
> + * Copyright 2021 Google LLC.
> + */
> +
> +&dsi0_out {
> +       remote-endpoint = <&sn65dsi86_in>;
> +       data-lanes = <0 1 2 3>;
> +};
> +
> +&edp_brij_i2c {
> +       sn65dsi86_bridge: bridge@2d {
> +               compatible = "ti,sn65dsi86";
> +               reg = <0x2d>;
> +               pinctrl-names = "default";
> +               pinctrl-0 = <&edp_brij_en>, <&edp_brij_irq>;

I still don't see edp_brij_en used in the second patch so why didn't
this pinctrl node move to this file like edp_brij_irq did?

> +               gpio-controller;
> +               #gpio-cells = <2>;
