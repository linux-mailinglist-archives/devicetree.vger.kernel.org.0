Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id F003A3FAF7B
	for <lists+devicetree@lfdr.de>; Mon, 30 Aug 2021 03:19:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236134AbhH3BTo (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 29 Aug 2021 21:19:44 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38378 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231401AbhH3BTn (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 29 Aug 2021 21:19:43 -0400
Received: from mail-qk1-x72c.google.com (mail-qk1-x72c.google.com [IPv6:2607:f8b0:4864:20::72c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 209A5C061575
        for <devicetree@vger.kernel.org>; Sun, 29 Aug 2021 18:18:51 -0700 (PDT)
Received: by mail-qk1-x72c.google.com with SMTP id a66so14048352qkc.1
        for <devicetree@vger.kernel.org>; Sun, 29 Aug 2021 18:18:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=1hhV9nDZ+cplYuMpzE5vj+vUQnOUXDSLgbJtDYIw5iU=;
        b=l48UbSq5y96b7Dk1nHFjQBTnvGbk1gL0McaWJMIJWZqfj+kqRt+GQGwJJd5YNqTf+F
         icQUbgnMufMLqa/YYBuvxQ1JyTzyx3mAo+679rU4RFgiFJ4+mhaiEbBAJBuWw7IZ78lu
         8+aPx0JPVRVEJ5p/6qpHfjlSz7y0fWj//LkFtLptH+njEkcJodvFRNLEWNF5xcc6jaG8
         fHLWb9sF4yb98dATKbxQnOPhDziP9JstHOfN5Lk3mRvS5qxdNmhFwK9MywC3bFF6y1HW
         d2QY775IlmnUvQlOI1hlg/8/v3yEPNWURgW69mrpTZ6ej+ZyyNqR/QhbVUKkUe4Dqqz5
         VzxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=1hhV9nDZ+cplYuMpzE5vj+vUQnOUXDSLgbJtDYIw5iU=;
        b=eLN+XdC2MA7QyYwXA8DWjYnSPdIDQ01/yHLWg/3+260vX2S20b3jGWC1Z8EKpp0o5j
         X+Gp2xXWNhklKi4RCw+jypr9r1Xj99d1JoNeNQC+oUxrNj1ubHfZBK8KgvAa3MJJOIK+
         FWeD9IHWY5TAnYhAOk4ZEW0qAJz7k1kV6PBl2v2WWBnwnsN+Qfg0KYvtcYSGJ/02/nrh
         saVtPavlLv60wj00OQluvQByaIn1D45pinho9GzuCogIQJMpIIZ7dwC1Vzr74P8F237W
         ZtC7f39dM54vR84JVMWDoWBC3kGdfVcXMm8dM3G68KyBAOlbgpXLJNXKtRel/HbDBUbx
         0IOw==
X-Gm-Message-State: AOAM5322Z/ydt8SPezeiwyWspz7wsAQRp+c3/4IHQ+fuAXZ5KEkbtWVE
        ASFSfl0ii6bfGdUm57e4Cii7/+qv0t4NoDgEXUiyMA==
X-Google-Smtp-Source: ABdhPJzjQAbOyw7RF7SMSFWbofpQGeDuRMHg8J+xdDznT8ceulgiTq42PR9MZKBMAweOZyfYw2CriKpOgNi3EXgRtdQ=
X-Received: by 2002:a05:620a:1082:: with SMTP id g2mr20776166qkk.138.1630286330330;
 Sun, 29 Aug 2021 18:18:50 -0700 (PDT)
MIME-Version: 1.0
References: <20210829203027.276143-1-marijn.suijten@somainline.org> <20210829203027.276143-2-marijn.suijten@somainline.org>
In-Reply-To: <20210829203027.276143-2-marijn.suijten@somainline.org>
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date:   Mon, 30 Aug 2021 04:18:39 +0300
Message-ID: <CAA8EJprQ03ipZzO+1vgt9W7jFbLXgsYR0n-oJxVB-142x8dgRA@mail.gmail.com>
Subject: Re: [PATCH 1/3] arm: dts: qcom: apq8064: Use 27MHz PXO clock as DSI
 PLL reference
To:     Marijn Suijten <marijn.suijten@somainline.org>
Cc:     phone-devel@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@somainline.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Martin Botka <martin.botka@somainline.org>,
        Jami Kettunen <jami.kettunen@somainline.org>,
        Pavel Dubrova <pashadubrova@gmail.com>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        "open list:DRM DRIVER FOR MSM ADRENO GPU" 
        <linux-arm-msm@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        open list <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sun, 29 Aug 2021 at 23:30, Marijn Suijten
<marijn.suijten@somainline.org> wrote:
>
> The 28NM DSI PLL driver for msm8960 calculates with a 27MHz reference
> clock and should hence use PXO, not CXO which runs at 19.2MHz.
>
> Note that none of the DSI PHY/PLL drivers currently use this "ref"
> clock; they all rely on (sometimes inexistant) global clock names and
> usually function normally without a parent clock.  This discrepancy will
> be corrected in a future patch, for which this change needs to be in
> place first.
>
> Cc: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> Signed-off-by: Marijn Suijten <marijn.suijten@somainline.org>

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

Checked the downstream driver, it always uses 27 MHz clock in calculations.

> ---
>  arch/arm/boot/dts/qcom-apq8064.dtsi | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/arch/arm/boot/dts/qcom-apq8064.dtsi b/arch/arm/boot/dts/qcom-apq8064.dtsi
> index 2687c4e890ba..77659b783759 100644
> --- a/arch/arm/boot/dts/qcom-apq8064.dtsi
> +++ b/arch/arm/boot/dts/qcom-apq8064.dtsi
> @@ -198,7 +198,7 @@ cxo_board: cxo_board {
>                         clock-frequency = <19200000>;
>                 };
>
> -               pxo_board {
> +               pxo_board: pxo_board {
>                         compatible = "fixed-clock";
>                         #clock-cells = <0>;
>                         clock-frequency = <27000000>;
> @@ -1306,7 +1306,7 @@ dsi0_phy: dsi-phy@4700200 {
>                         reg-names = "dsi_pll", "dsi_phy", "dsi_phy_regulator";
>                         clock-names = "iface_clk", "ref";
>                         clocks = <&mmcc DSI_M_AHB_CLK>,
> -                                <&cxo_board>;
> +                                <&pxo_board>;
>                 };
>
>
> --
> 2.33.0
>


-- 
With best wishes
Dmitry
