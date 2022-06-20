Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6C685551769
	for <lists+devicetree@lfdr.de>; Mon, 20 Jun 2022 13:27:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241391AbiFTL1R (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 20 Jun 2022 07:27:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49440 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S241131AbiFTL1Q (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 20 Jun 2022 07:27:16 -0400
Received: from mail-qk1-x733.google.com (mail-qk1-x733.google.com [IPv6:2607:f8b0:4864:20::733])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E424015FE3
        for <devicetree@vger.kernel.org>; Mon, 20 Jun 2022 04:27:14 -0700 (PDT)
Received: by mail-qk1-x733.google.com with SMTP id b142so7556335qkg.2
        for <devicetree@vger.kernel.org>; Mon, 20 Jun 2022 04:27:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=J533xN3vmF0b7bVUQdXHVZEy7RzWjbJzXkA6gmKmUpM=;
        b=uXD9hNHwJQGzSu1R+BjCobalYD7q5Z8EwJPQB48/5crPDTeRGCaJgxUC+DO5AKya+V
         /tvhBT++bznuMCHZ6dL3mJwbcnc02CCryFRwyQ+1ftSyxndju0SGNwGR9rtlNMFtAXoo
         ZEsnUHkIFNU0vbyN0P7BTNKNGEtxRZY8iykFHs1mHxgEG+hwyaHLsO+m0pzzMQfXSm/c
         x1IUli0HM2d3pVQly64GEK7O+i1OOyMVuUem8NUw25+Zm+IraqqcJfTUWVl7dbnbaasR
         0MeayDdwzLljdq7VAMrGb1qqEXYsIUFU7+l72N6muFi9n3MDHkPznav0bs1DMNpTGbDp
         RAJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=J533xN3vmF0b7bVUQdXHVZEy7RzWjbJzXkA6gmKmUpM=;
        b=1uDRT5X7+VlAtjNNX7gZ0lqlGAE/2M6lbmNGH47RofKLvJO8idwt9uahSR3vVLdr0z
         W8vnldvIvSEQMkR2/sOosLYi1W/9jHOPmPGp9FknJ3SdcqWoyfnipPGzR9bGGSgykukL
         wCU1bWV0Slmtwt4bu7x3JEsu2UOnMkGzYeR807xuWMn46x2KzDSeXokLPTO9bu0XigaM
         NU3tZ7oR3d6GgguxYyDTyb/ioaDXz6LhHBQofalAKEoN7fC+HFIRP+ZIRwUW+WvQ2+pj
         ksXZ11TmqHxYvvJyk4vgYL7uzZnSICQEwe8tC64mfMw282QtzV1EM9Fsvg8fggZ0QZs1
         md2Q==
X-Gm-Message-State: AJIora/3Ywtbli+2az5P03uICF7KGSbig8sUUQ8N5K+lSWoiRoe16yqm
        9OF4x+J6a0nuUdCgZFLk6ChMQw6eaSE97Y/52Hck2Q==
X-Google-Smtp-Source: AGRyM1sfDngwvGMs+qB5zHQAaYrnUMlXHonu3sVuECoTaRPqj1Jfmm7lD4wGqOJcO36O8Bx+Fh9TJRYROfWBhQ56PbA=
X-Received: by 2002:a05:620a:2a0e:b0:6a7:8346:1601 with SMTP id
 o14-20020a05620a2a0e00b006a783461601mr15631960qkp.593.1655724434076; Mon, 20
 Jun 2022 04:27:14 -0700 (PDT)
MIME-Version: 1.0
References: <20220620071936.1558906-1-dmitry.baryshkov@linaro.org>
 <20220620071936.1558906-4-dmitry.baryshkov@linaro.org> <22f4ba43-2505-3000-24b6-b01d58d87e7f@linaro.org>
In-Reply-To: <22f4ba43-2505-3000-24b6-b01d58d87e7f@linaro.org>
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date:   Mon, 20 Jun 2022 14:27:03 +0300
Message-ID: <CAA8EJpoESu8FBhbg8R6axtS-VfuYqsXKvgvnDExVJy2wZt5+Jg@mail.gmail.com>
Subject: Re: [PATCH 3/4] arm64: dts: qcom: msm8996: add GCC's optional clock sources
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, 20 Jun 2022 at 14:24, Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:
>
> On 20/06/2022 09:19, Dmitry Baryshkov wrote:
> > Add missing GCC clock sources. This includes PCIe and USB PIPE and UFS
> > symbol clocks.
> >
> > Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> > ---
> >  arch/arm64/boot/dts/qcom/msm8996.dtsi | 18 ++++++++++++++++--
> >  1 file changed, 16 insertions(+), 2 deletions(-)
> >
> > diff --git a/arch/arm64/boot/dts/qcom/msm8996.dtsi b/arch/arm64/boot/dts/qcom/msm8996.dtsi
> > index e97f193aefd3..6c7380f86383 100644
> > --- a/arch/arm64/boot/dts/qcom/msm8996.dtsi
> > +++ b/arch/arm64/boot/dts/qcom/msm8996.dtsi
> > @@ -689,8 +689,22 @@ gcc: clock-controller@300000 {
> >
> >                       clocks = <&rpmcc RPM_SMD_BB_CLK1>,
> >                                <&rpmcc RPM_SMD_LN_BB_CLK>,
> > -                              <&sleep_clk>;
> > -                     clock-names = "cxo", "cxo2", "sleep_clk";
> > +                              <&sleep_clk>,
> > +                              <&pciephy_0>,
> > +                              <&pciephy_1>,
> > +                              <&pciephy_2>,
> > +                              <&ssusb_phy_0>,
> > +                              <0>, <0>, <0>;
>
> Since the clocks are optional, there is no need to pass <0> to them. I
> think it does not bring any benefits.

It serves as a reminder that they should be filled with the proper
sources. We do the same thing for DSI/DP clocks where the PHY is not
yet supported, but the GCC lists them.

I had to mark them as optional so that the existing schema files pass
validation. Otherwise they would be in the 'required' part.

>
> > +                     clock-names = "cxo",
> > +                                   "cxo2",
> > +                                   "sleep_clk",
> > +                                   "pcie_0_pipe_clk_src",
> > +                                   "pcie_1_pipe_clk_src",
> > +                                   "pcie_2_pipe_clk_src",
> > +                                   "usb3_phy_pipe_clk_src",
> > +                                   "ufs_rx_symbol_0_clk_src",
> > +                                   "ufs_rx_symbol_1_clk_src",
> > +                                   "ufs_tx_symbol_0_clk_src";
> >               };
> >
> >               tsens0: thermal-sensor@4a9000 {
>
>
> Best regards,
> Krzysztof



-- 
With best wishes
Dmitry
