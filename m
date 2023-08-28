Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 005AD78AEFD
	for <lists+devicetree@lfdr.de>; Mon, 28 Aug 2023 13:39:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232350AbjH1Lij (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 28 Aug 2023 07:38:39 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56808 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229511AbjH1LiT (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 28 Aug 2023 07:38:19 -0400
Received: from mail-yw1-x1136.google.com (mail-yw1-x1136.google.com [IPv6:2607:f8b0:4864:20::1136])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 278A7C3
        for <devicetree@vger.kernel.org>; Mon, 28 Aug 2023 04:38:17 -0700 (PDT)
Received: by mail-yw1-x1136.google.com with SMTP id 00721157ae682-58fae4a5285so36658577b3.0
        for <devicetree@vger.kernel.org>; Mon, 28 Aug 2023 04:38:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1693222696; x=1693827496;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=X/GcQDos7beFK8Cr8pyybDQsIb90MvDBQ7F0gE7uSTg=;
        b=t+y7VOvrfhe78N28JaKtOAKkHPLsu0IfQyka5RAfFYATUbKwuudLVhdSwKPEb3H8Lw
         PW8kVppM5FFqRHtKhOiEaPBaH81Vz0YHQZ7tfWJCl578+tSqAiA6tA+ntEkNPtxFdCDN
         Vy8VMnmY5S8ClorwFa57g7r6ravlzmJvsm7Q1czfcEiwkoFfXMpgb2Gr1Ul6qjIKJxD4
         hSKu1kxrsgglwBmpPc/EMr4hak2/pqSJK2V1noRujL18QZoxfYpRk2h3hSCvnUpyi/Sv
         Em7/khjjteAnGfPwcSpknD9Z1GOF/Jn0nni7I2BagYqACyrXQNbosuIBMkYKLvxgGZx7
         +Mzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1693222696; x=1693827496;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=X/GcQDos7beFK8Cr8pyybDQsIb90MvDBQ7F0gE7uSTg=;
        b=Cr/bYUOu79NlcjRKu61wW+0FN3qhGWcR0QitLtHMYn+WqhFOnP9jaXXAk6AgU2761J
         rfBABOfKb/3PoBilAHLgA3Djberp19oezEDjPKqOjSpMoh9tSdku979rGlhw7ZR/JMc7
         hQVGrbNoPZyARXauH1rWAE4htyLxQQtn+AYp16+6i/C5i4bQqxUKB0MGcUpZ1/1l0zyY
         Xz16KMbhs46Ml33D5sfXUKoIzr75sl6OsJlBtMa9xdX1VNCVTyFeYilJHg25peIsdTHC
         j/oxHO2/1ENOp+4Tf/+vEPr5+3Faj9HBkQ8xEuqsoQK+lWGYF6hNQqErhe2eGOIHREHu
         +/6w==
X-Gm-Message-State: AOJu0YwSMK5+cu1xpMnRWa7wzgOuWmVSW1DTQbrjXxBt24TwGShdB6iG
        LhAHuZMkRaN7EP/UqXkLhPCkOTaP24qBjt0dQqQTfg==
X-Google-Smtp-Source: AGHT+IGSI0QI0tI/WkUznWjFS0uzLKIYm0i0wZ8BZiHVTdJITFObmZ7zhr+id79WX+wWOU1SIhbptghNiVOrUezedCE=
X-Received: by 2002:a25:874c:0:b0:d5d:4df9:b6e2 with SMTP id
 e12-20020a25874c000000b00d5d4df9b6e2mr21819788ybn.46.1693222696379; Mon, 28
 Aug 2023 04:38:16 -0700 (PDT)
MIME-Version: 1.0
References: <20230827115033.935089-1-dmitry.baryshkov@linaro.org>
 <20230827115033.935089-16-dmitry.baryshkov@linaro.org> <3b88827f-9cda-46b3-96ad-d10245afce1e@linaro.org>
In-Reply-To: <3b88827f-9cda-46b3-96ad-d10245afce1e@linaro.org>
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date:   Mon, 28 Aug 2023 14:38:04 +0300
Message-ID: <CAA8EJpp7GQ1DFcYwdS3-UG7CzRZT5KXXL78wgbYs46o72ZxLuw@mail.gmail.com>
Subject: Re: [PATCH v4 15/23] ARM: dts: qcom: apq8064: add Krait clock controller
To:     Konrad Dybcio <konrad.dybcio@linaro.org>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Ilia Lin <ilia.lin@kernel.org>,
        Viresh Kumar <vireshk@kernel.org>, Nishanth Menon <nm@ti.com>,
        Stephen Boyd <sboyd@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        "Rafael J. Wysocki" <rafael@kernel.org>,
        Georgi Djakov <djakov@kernel.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-pm@vger.kernel.org, linux-clk@vger.kernel.org,
        Christian Marangi <ansuelsmth@gmail.com>,
        Stephan Gerhold <stephan@gerhold.net>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, 28 Aug 2023 at 13:54, Konrad Dybcio <konrad.dybcio@linaro.org> wrote:
>
> On 27.08.2023 13:50, Dmitry Baryshkov wrote:
> > Add device node for the clock controller for the CPU cores and L2
> > clocks. It will be further used by the L2 and by the CPUfreq nodes.
> >
> > Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> > ---
> >  arch/arm/boot/dts/qcom/qcom-apq8064.dtsi | 26 ++++++++++++++++++++++++
> >  1 file changed, 26 insertions(+)
> >
> > diff --git a/arch/arm/boot/dts/qcom/qcom-apq8064.dtsi b/arch/arm/boot/dts/qcom/qcom-apq8064.dtsi
> > index ba7d5ef8de17..a05e64bff07f 100644
> > --- a/arch/arm/boot/dts/qcom/qcom-apq8064.dtsi
> > +++ b/arch/arm/boot/dts/qcom/qcom-apq8064.dtsi
> > @@ -213,6 +213,32 @@ sleep_clk: sleep_clk {
> >               };
> >       };
> >
> > +     kraitcc: clock-controller {
> > +             compatible = "qcom,krait-cc-v1";
> > +             clocks = <&gcc PLL9>,
> > +                      <&gcc PLL10>,
> > +                      <&gcc PLL16>,
> > +                      <&gcc PLL17>,
> > +                      <&gcc PLL12>,
> > +                      <&acc0>,
> > +                      <&acc1>,
> > +                      <&acc2>,
> > +                      <&acc3>,
> > +                      <&l2cc>;
> > +             clock-names = "hfpll0",
> > +                           "hfpll1",
> > +                           "hfpll2",
> > +                           "hfpll3",
> > +                           "hfpll_l2",
> > +                           "acpu0_aux",
> > +                           "acpu1_aux",
> > +                           "acpu2_aux",
> > +                           "acpu3_aux",
> > +                           "acpu_l2_aux";
> > +             #clock-cells = <1>;
> > +             #interconnect-cells = <1>;
> Doesn't only the L2 device register with icc?

True. I'll drop this



--
With best wishes
Dmitry
