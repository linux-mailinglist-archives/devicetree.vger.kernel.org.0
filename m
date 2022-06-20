Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 26F4255175F
	for <lists+devicetree@lfdr.de>; Mon, 20 Jun 2022 13:25:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239999AbiFTLZa (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 20 Jun 2022 07:25:30 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48448 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S241131AbiFTLZ3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 20 Jun 2022 07:25:29 -0400
Received: from mail-qv1-xf34.google.com (mail-qv1-xf34.google.com [IPv6:2607:f8b0:4864:20::f34])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9FE2C15FEC
        for <devicetree@vger.kernel.org>; Mon, 20 Jun 2022 04:25:28 -0700 (PDT)
Received: by mail-qv1-xf34.google.com with SMTP id y14so10119401qvs.10
        for <devicetree@vger.kernel.org>; Mon, 20 Jun 2022 04:25:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=5QXZowmyjbre5HBlPw3yqu+8qdh4czis+s/CTNbxfBk=;
        b=mQafKe2Tm9xdswCmldeqcHt1fjBKl9ptnU71Xm/Rw84HrhNZNF80DuTq36zf94ZtJo
         vE07HJ54i72Y9d7NQlxK3V2abLQKr1LyFEAlI1pdFcY3eCwzYer4t32WtdsTBlaDBbJA
         DfzVE9A5eog4x+xrXoZMLVFhD4cE0m9BWJRQsY5V+/F12TmIl8e+EEQstY+glIOBU/zZ
         QcKkI+ORgju03rBX1DDFesHusTYlksgZD4JgJeehdROl2ECH52t8s/gzg71QpuzVHfyR
         iOdANIXfUKG3y3+5QliefCmhczpr1+qs0Ex+fsNFfVHYIvA4aQIva+D81L6qk+bGvGj0
         VHgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=5QXZowmyjbre5HBlPw3yqu+8qdh4czis+s/CTNbxfBk=;
        b=NQRdSR2GS1CaGuGZlSH1ttE23Pu6Eyv2btJ4STq85vVryWTDrfYTxwAO84Gf28U1Y/
         Owpmobvcl5Vqen2S1AAYeMM8CYMVELi5onwqirDaSAIHw4mbE89VNe9cuIFSLnAMJAt9
         A1f3+AEUG1yq/7abo3nS/syVsrKuCvMmpdAe7TcofOcvrR5cOubkPvDEkf4Q8KLWkYif
         YqLEYXOh71XU4cDFcAx2ARE+pjfcnjW2mWTQdP+DZKSWX+F3nzZ6rVToJvLNwcT7lXtk
         I+I6jP5fvZAOnbgAcrriyuFAb1EIXsMZgOaGgsslr9j6bLqAE0K1+15l1tcsvCs5hq1w
         C6pA==
X-Gm-Message-State: AJIora/U87S/0yaz/RYGtlAA9wT/1t8aR0Aii/BW85/3DpZLgORmgtnM
        hIPj+rtblokrzq1X3ALeBw9hg/npU9PLcruOzD/llw==
X-Google-Smtp-Source: AGRyM1vQQ/H5C3sjvm2Eix6rA9rAxd2onuNFPRmD6ek/uCZhHOyx6DbTyq3GL/pzz23MuJhfJ7hBe3R9FBy/Q7nxuME=
X-Received: by 2002:ad4:5aa4:0:b0:465:2b11:cfd with SMTP id
 u4-20020ad45aa4000000b004652b110cfdmr18934135qvg.55.1655724327833; Mon, 20
 Jun 2022 04:25:27 -0700 (PDT)
MIME-Version: 1.0
References: <20220620110739.1598514-1-dmitry.baryshkov@linaro.org>
 <20220620110739.1598514-4-dmitry.baryshkov@linaro.org> <d80d2148-cfc2-8f48-56d5-71f4aae03cb6@linaro.org>
In-Reply-To: <d80d2148-cfc2-8f48-56d5-71f4aae03cb6@linaro.org>
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date:   Mon, 20 Jun 2022 14:25:16 +0300
Message-ID: <CAA8EJpqp92_SOKyU+AjckKC53pDB-i4wsrYx01BySOWNhUaJsA@mail.gmail.com>
Subject: Re: [PATCH 4/4] ARM: dts: qcom: msm8660: add pxo/cxo clocks to the
 GCC node
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Stephen Boyd <swboyd@chromium.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Taniya Das <quic_tdas@quicinc.com>,
        linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, 20 Jun 2022 at 14:17, Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:
>
> On 20/06/2022 13:07, Dmitry Baryshkov wrote:
> > Add pxo/cxo clocks to the GCC device tree node.
> >
> > Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> > ---
> >  arch/arm/boot/dts/qcom-msm8660.dtsi | 6 ++++--
> >  1 file changed, 4 insertions(+), 2 deletions(-)
> >
> > diff --git a/arch/arm/boot/dts/qcom-msm8660.dtsi b/arch/arm/boot/dts/qcom-msm8660.dtsi
> > index 47b97daecef1..61e3ab0ebfd3 100644
> > --- a/arch/arm/boot/dts/qcom-msm8660.dtsi
> > +++ b/arch/arm/boot/dts/qcom-msm8660.dtsi
> > @@ -50,13 +50,13 @@ cpu-pmu {
> >       };
> >
> >       clocks {
> > -             cxo_board {
> > +             cxo_board: cxo_board {
>
> If you touch this line, please correct the naming for node - no
> underscores and preferred some prefix or suffix, so:
> cxo-board-clk
> clk-cxo-board

Unfortunately, I don't think it's possible. We are bound by backwards
compatibility. Node name is used as a clock name. And other drivers
might reference the clock using the name. Thus, if you check other DT
files, we also have similar clock node names.

> >                       compatible = "fixed-clock";
> >                       #clock-cells = <0>;
> >                       clock-frequency = <19200000>;
> >               };
> >
> > -             pxo_board {
> > +             pxo_board: pxo_board {
>
> The same
>
> >                       compatible = "fixed-clock";
> >                       #clock-cells = <0>;
> >                       clock-frequency = <27000000>;

-- 
With best wishes
Dmitry
