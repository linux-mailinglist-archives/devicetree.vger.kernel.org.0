Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E6FDD656AFB
	for <lists+devicetree@lfdr.de>; Tue, 27 Dec 2022 13:31:50 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229619AbiL0Mbs (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 27 Dec 2022 07:31:48 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41692 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229488AbiL0Mbr (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 27 Dec 2022 07:31:47 -0500
Received: from mail-yw1-x1134.google.com (mail-yw1-x1134.google.com [IPv6:2607:f8b0:4864:20::1134])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 400082A3
        for <devicetree@vger.kernel.org>; Tue, 27 Dec 2022 04:31:46 -0800 (PST)
Received: by mail-yw1-x1134.google.com with SMTP id 00721157ae682-482363a1232so27367347b3.3
        for <devicetree@vger.kernel.org>; Tue, 27 Dec 2022 04:31:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=+tl/MMO0LNH8CVE2OF2niAolP3jhRwKfQCRDYekLpNQ=;
        b=zazgU0tXivH1SJAdqyqhQxpuVq3FENTRmfluatcJcxkl+XXOcYzDvqyF1taChqBxhV
         DlO7vFZ095SKfSxgW/kgXKvANzWsIjExJg4UJsmn3MgrRhxZLU0iOnAWZcubpzHNRlkS
         s3VdqO/klkDV9R208rDTm1c5ImlOa37awJMp494OFxluVQy9TsiehcqIt+qoHTNJfWJd
         dASkaDn9rok8Heh+zuvyZvnZvcChk+gQ9oF0hGt2Q8Lwk1iZpnsyoPyCGb1RBwrIk+G4
         sKnS8uG36+09mMdOHAylAHTxWQnfjpp0wLaSi49R7itpwkjbihF7z1HLDawAfjD8rFLd
         Ehig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=+tl/MMO0LNH8CVE2OF2niAolP3jhRwKfQCRDYekLpNQ=;
        b=gvYroOlFRmspwmqW7jaUi5wA/wzl6NCIJXeveNyDEB9sDSlVnhu4jSMycthD6dGIEQ
         l0YP32/8tywlyOZ9RUD8tttgkkeO1TCx427wH0vlkmScFjmUxryUPaedPFVwKaVhzJOA
         qSukRMJxjbiohI7ZmdB+jcg+LqICEcyjh/fn76ztICm3emLcCUvnwMc6plOyNQaN4FiA
         amJXkIZDx9i6ie5BvLH8Y1n6L6DnYOYX0p8VRXys+ZjG1AMOlZ34EBX72hs6srUeALKr
         E4fg9A8JbUf02c2PNLAFYeMZoKM/Ga655qLQS2dDUbiTu7gy2hsK9HdNP5CE3M8b/gwN
         iYwg==
X-Gm-Message-State: AFqh2kp7sQz2NGziZ/5qKzXgy8pzmQ8zG2bgtPFq39N2VryZ6DDDIbC4
        TZfjN1azfgWBSc9O1CHt2lqFLCZ9P57CBPo54JiyRg==
X-Google-Smtp-Source: AMrXdXufhet8xX2NEFv1dVmYX+HK7Wb2Pg01cOuGbRe8PqvIJtBO5ThL/Pjudw04zzo3ow3Ah0J0YglvG4PYKEGdsyw=
X-Received: by 2002:a0d:e64a:0:b0:3c0:c065:7608 with SMTP id
 p71-20020a0de64a000000b003c0c0657608mr3352010ywe.378.1672144305428; Tue, 27
 Dec 2022 04:31:45 -0800 (PST)
MIME-Version: 1.0
References: <20221227013225.2847382-1-dmitry.baryshkov@linaro.org>
 <20221227013225.2847382-13-dmitry.baryshkov@linaro.org> <a6622a6c-7378-4f3a-a34b-1227c51a3326@linaro.org>
In-Reply-To: <a6622a6c-7378-4f3a-a34b-1227c51a3326@linaro.org>
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date:   Tue, 27 Dec 2022 14:31:34 +0200
Message-ID: <CAA8EJpp0PJgrCv1oaeaDfhVq36X-XgXDTHvXjO97rQfaKyiPng@mail.gmail.com>
Subject: Re: [RFC PATCH 12/12] ARM: dts: qcom: apq8084: add clocks and
 clock-names to gcc device
To:     Konrad Dybcio <konrad.dybcio@linaro.org>
Cc:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Stephen Boyd <sboyd@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Taniya Das <quic_tdas@quicinc.com>,
        linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, 27 Dec 2022 at 14:08, Konrad Dybcio <konrad.dybcio@linaro.org> wrote:
>
>
>
> On 27.12.2022 02:32, Dmitry Baryshkov wrote:
> > Add clocks and clock-names nodes to the gcc device to bind clocks using
> > the DT links.
> >
> > Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> > ---
> Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>
>
> Though - again at the end of reviewing - I noticed you could have
> gone .index instead, like with qcs404.

QCS404 driver was in a good shape, so I doubt there will be any
significant changes for the bindings. On the other hand the apq8084 is
in such a flux state, that I can easily imagine getting additional
clock parents and/or removing existing parents. This can better be
coped with by using the clock-names instead of indices. For example,
see my comment regarding the pcie pipe clocks. I fear that apq8084 was
not seriously touched for the last 5 years. And even back in those
days not everything was plumbed together. None of MMCC (and thus
display, camera, venus), SATA, PCIe are present in the
qcom-apq8084.dtsi.

>
> Konrad
>
> >  arch/arm/boot/dts/qcom-apq8084.dtsi | 18 ++++++++++++++++++
> >  1 file changed, 18 insertions(+)
> >
> > diff --git a/arch/arm/boot/dts/qcom-apq8084.dtsi b/arch/arm/boot/dts/qcom-apq8084.dtsi
> > index fe30abfff90a..815b6c53f7b8 100644
> > --- a/arch/arm/boot/dts/qcom-apq8084.dtsi
> > +++ b/arch/arm/boot/dts/qcom-apq8084.dtsi
> > @@ -388,6 +388,24 @@ gcc: clock-controller@fc400000 {
> >                       #reset-cells = <1>;
> >                       #power-domain-cells = <1>;
> >                       reg = <0xfc400000 0x4000>;
> > +                     clocks = <&xo_board>,
> > +                              <&sleep_clk>,
> > +                              <0>, /* ufs */
> > +                              <0>,
> > +                              <0>,
> > +                              <0>,
> > +                              <0>, /* sata */
> > +                              <0>,
> > +                              <0>; /* pcie */
> > +                     clock-names = "xo",
> > +                                   "sleep_clk",
> > +                                   "ufs_rx_symbol_0_clk_src",
> > +                                   "ufs_rx_symbol_1_clk_src",
> > +                                   "ufs_tx_symbol_0_clk_src",
> > +                                   "ufs_tx_symbol_1_clk_src",
> > +                                   "sata_asic0_clk",
> > +                                   "sata_rx_clk",
> > +                                   "pcie_pipe";
> >               };
> >
> >               tcsr_mutex: hwlock@fd484000 {



-- 
With best wishes
Dmitry
