Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 70EC76F3CC8
	for <lists+devicetree@lfdr.de>; Tue,  2 May 2023 06:44:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233410AbjEBEoQ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 2 May 2023 00:44:16 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46258 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233396AbjEBEoP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 2 May 2023 00:44:15 -0400
Received: from mail-wm1-x32a.google.com (mail-wm1-x32a.google.com [IPv6:2a00:1450:4864:20::32a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 784CE30E8
        for <devicetree@vger.kernel.org>; Mon,  1 May 2023 21:44:13 -0700 (PDT)
Received: by mail-wm1-x32a.google.com with SMTP id 5b1f17b1804b1-3f315735514so151329185e9.1
        for <devicetree@vger.kernel.org>; Mon, 01 May 2023 21:44:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1683002652; x=1685594652;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=SjAkXszgotjphxC6hqTl4pNTopNCtvCijtli/J67wJc=;
        b=Yd9IEn2UzuraiKv1BNWloSfI/gQXN5DkadhkGXQWkphj0ySFeamClw8j2hx4DSAs3h
         rlGAuBfmcyKYnNQqq5D/+tFQKLSmFd1ZTFJPqV80nqqzKWkoa+znGBEF3u547NGEXJNI
         iqm2Z7g8GI1qk49mcR/OgoNyY6FbqshyI48Qju3NHp3grBfodXQNONwpp9OOTr0uvqTu
         yKxFVl7Mv3AV0//xKJ6M1yyYMpfA6yGicguTXBGhXCGNrAdm6JXmevR/NvGMPKWgaQYY
         0YndTJ2PuvBvnL80os4TWl01o+myhzSTLQrHPIue02jmcTpg7q6Zg04pyMqvSTRA64Ax
         tKKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683002652; x=1685594652;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=SjAkXszgotjphxC6hqTl4pNTopNCtvCijtli/J67wJc=;
        b=cvhmYuYqqQnRiQhdGYaodq10RbEFJ3m3XqbranA7oKRq9rpWaCJSilwkEA8ConGfaH
         J2eM3HLUe1nLvzm2L9VjtRy7hspMIAZqo9J8u2S+uifrqFJtDBdWYSCQ47SG8K04Knnc
         TVWq40Z50oNIX1idiyvlqoaUhS1gXjWq1bW3FYZLOhmSqqDcHBW7r8XSlY2Tan557Fhj
         kRJzYU/FnYr/1Ew7eflAfHPwpsCqEg4EFqVLamYYF2elZRObF2oYd8yiHL+U2k8lhA6o
         qDR2sz00QF3yxYP2MzMyzWDUB4Nwhvr9l1Fk7PSaj7CJjCwgrHm5vV+4JeUsMBcb/TIo
         y4hQ==
X-Gm-Message-State: AC+VfDwD/fqkwE04lDnPVjGLatRXIn6qSFlHNO5FXBK03305UPLVLYrJ
        DZ0c5Wul8zdMB5mZR2B4y9J6ISTeO5rNNypFKMccFw==
X-Google-Smtp-Source: ACHHUZ5rCXKUpxDP0Ua+qlPJBj8KodZY1HXjjK+w2EHgd7XTKUYWoJIM1m9fKouskiytgc5NlL6vNWTq/L0j9LAIv48=
X-Received: by 2002:a5d:6e04:0:b0:2f7:cfe2:6507 with SMTP id
 h4-20020a5d6e04000000b002f7cfe26507mr14177934wrz.20.1683002651896; Mon, 01
 May 2023 21:44:11 -0700 (PDT)
MIME-Version: 1.0
References: <20230501192432.1220727-1-bhupesh.sharma@linaro.org>
 <20230501192432.1220727-3-bhupesh.sharma@linaro.org> <1be5930d-a389-7fa0-2886-4e9af09cbf85@linaro.org>
In-Reply-To: <1be5930d-a389-7fa0-2886-4e9af09cbf85@linaro.org>
From:   Bhupesh Sharma <bhupesh.sharma@linaro.org>
Date:   Tue, 2 May 2023 10:14:00 +0530
Message-ID: <CAH=2NtzicVig8wv43YZS0N5LSMRpxd3U84fc=qFV+sJF9BKcig@mail.gmail.com>
Subject: Re: [PATCH v9 2/4] phy: qcom-qmp-usb: add support for updated qcm2290
 / sm6115 binding
To:     Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-phy@lists.infradead.org, agross@kernel.org,
        linux-kernel@vger.kernel.org, andersson@kernel.org,
        bhupesh.linux@gmail.com, krzysztof.kozlowski@linaro.org,
        robh+dt@kernel.org, konrad.dybcio@linaro.org, kishon@kernel.org,
        vkoul@kernel.org, krzysztof.kozlowski+dt@linaro.org
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

On Tue, 2 May 2023 at 05:43, Dmitry Baryshkov
<dmitry.baryshkov@linaro.org> wrote:
>
> On 01/05/2023 22:24, Bhupesh Sharma wrote:
> > Add support for the new qcm2290 / sm6115 binding.
> >
> > The USB QMP phy on these devices supports 2 lanes. Also note that the
> > binding now does not describe every register subregion and instead
> > the driver holds the corresponding offsets. This also includes
> > the PCS_MISC region.
> >
> > Signed-off-by: Bhupesh Sharma <bhupesh.sharma@linaro.org>
> > ---
> >   drivers/phy/qualcomm/phy-qcom-qmp-usb.c | 22 ++++++++++++++++++++++
> >   1 file changed, 22 insertions(+)
> >
> > diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-usb.c b/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
> > index a49711c5a63d..aa143c081805 100644
> > --- a/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
> > +++ b/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
> > @@ -1414,6 +1414,10 @@ struct qmp_usb_offsets {
> >       u16 pcs_usb;
> >       u16 tx;
> >       u16 rx;
> > +     /* for PHYs with >= 2 lanes */
> > +     u16 tx2;
> > +     u16 rx2;
> > +     u16 pcs_misc;
> >   };
> >
> >   /* struct qmp_phy_cfg - per-PHY initialization config */
> > @@ -1558,6 +1562,16 @@ static const char * const qmp_phy_vreg_l[] = {
> >       "vdda-phy", "vdda-pll",
> >   };
> >
> > +static const struct qmp_usb_offsets qmp_usb_offsets_v3 = {
> > +     .serdes         = 0,
> > +     .pcs            = 0xc00,
> > +     .tx             = 0x200,
> > +     .rx             = 0x400,
> > +     .tx2            = 0x600,
> > +     .rx2            = 0x800,
> > +     .pcs_misc       = 0xa00,
> > +};
> > +
> >   static const struct qmp_usb_offsets qmp_usb_offsets_v5 = {
> >       .serdes         = 0,
> >       .pcs            = 0x0200,
> > @@ -1922,6 +1936,8 @@ static const struct qmp_phy_cfg sm8350_usb3_uniphy_cfg = {
> >   static const struct qmp_phy_cfg qcm2290_usb3phy_cfg = {
> >       .lanes                  = 2,
> >
> > +     .offsets                = &qmp_usb_offsets_v3,
> > +
> >       .serdes_tbl             = qcm2290_usb3_serdes_tbl,
> >       .serdes_tbl_num         = ARRAY_SIZE(qcm2290_usb3_serdes_tbl),
> >       .tx_tbl                 = qcm2290_usb3_tx_tbl,
> > @@ -2497,6 +2513,12 @@ static int qmp_usb_parse_dt(struct qmp_usb *qmp)
> >       qmp->tx = base + offs->tx;
> >       qmp->rx = base + offs->rx;
> >
> > +     if (cfg->lanes >= 2) {
> > +             qmp->tx2 = base + offs->tx2;
> > +             qmp->rx2 = base + offs->rx2;
> > +             qmp->pcs_misc = base + offs->pcs_misc;
>
> pcs_misc should also be usable for a single-lane PHYs.

Ok. I will make it generic in the next version.

Thanks,
Bhupesh
