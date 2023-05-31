Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5C7DE717FA9
	for <lists+devicetree@lfdr.de>; Wed, 31 May 2023 14:14:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232018AbjEaMOA (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 31 May 2023 08:14:00 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59118 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229936AbjEaMN7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 31 May 2023 08:13:59 -0400
Received: from mail-yw1-x112c.google.com (mail-yw1-x112c.google.com [IPv6:2607:f8b0:4864:20::112c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8F7A4E5
        for <devicetree@vger.kernel.org>; Wed, 31 May 2023 05:13:58 -0700 (PDT)
Received: by mail-yw1-x112c.google.com with SMTP id 00721157ae682-5659d85876dso72369987b3.2
        for <devicetree@vger.kernel.org>; Wed, 31 May 2023 05:13:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1685535238; x=1688127238;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=Q2BZSxSP7Pt2y1VcGEto9FJCjPiOTo234JZ/yns0+cY=;
        b=Mz/WpmK5r+Ad4wgQpc9mCecDbBaJv7/vRYI/G9cv2tYbfZRTwArYpbXrsQsIZIwH8v
         sXQInLJ/QaM/CgporF84MR6HmDBNbsubJ/hUndX9hNdvAu+RMQFOYw8zrAmHjTKotMgk
         VXRtBQUjvNk4Uc4KScLYrfFmtktOGswN/7YsiAJQlo02CQl8yOaAmfKE2UZdiBau+leP
         DiLzHDeZ68KHMkXZxSvB2i9eO1PROpNFu3Mqi85yJY5zH6R77CAjg0pR2s0zOg2OlTiU
         10HzSYI7jEqj9XXAH/66rcRLgznqGwrth3kerGGcasQo5CbCNFwXxtfCOl8vWUFyQZAF
         SL1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685535238; x=1688127238;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Q2BZSxSP7Pt2y1VcGEto9FJCjPiOTo234JZ/yns0+cY=;
        b=R42YdRpwjM/DK75Rq1IG+sU0dJpO4WXiYgG8i9/tt30FNcDjJWt96SaZuvZnbj/9tk
         khGnz/RuMyvAGMVH0KV2M/ZSudymPwM3B9J/r6Emi6Ay10iA4mKqYQbVeV6TFKEKGFLa
         prFi231TyiZs+iOz74jFyx3RO5922OITQ4A0K1qKR0uDe1TyMp9yLT993O6ooOi7C9Xg
         bg1IF/kroXVMr8M3e2QXvs6qXgAIjSpKZptX+IDIZgwtFZLQ+P6nl/0TeVstaVH2H2at
         JGXQEsFNZY8ZroGDVnOvcDLv5sY1SZogvbUcObIow5Htiu9pRzSpE3vNzKv3iMYXKoVW
         MCHw==
X-Gm-Message-State: AC+VfDyfVNn+i99wWmC6FTOVJRKv9dHfnDaZBy1vGtLgOLgb/HzSwEM0
        y2kG1l9/gBVrgxDGYdUPZHcGfWJVRFirMiTUrM3fug==
X-Google-Smtp-Source: ACHHUZ7536cxfgOmZ9m64GzW+g/SJ2WDgsfWDV+bhSeNj4JLfmhTi0RfMu55OZxmHYhxl0ybxLX0g+I6SijNSTtrs1w=
X-Received: by 2002:a81:df12:0:b0:565:4eee:a4d4 with SMTP id
 c18-20020a81df12000000b005654eeea4d4mr5498236ywn.10.1685535237693; Wed, 31
 May 2023 05:13:57 -0700 (PDT)
MIME-Version: 1.0
References: <20230531023415.1209301-1-dmitry.baryshkov@linaro.org>
 <20230531023415.1209301-3-dmitry.baryshkov@linaro.org> <47e84a3c-b457-7aff-ad6a-809178c08b62@linaro.org>
In-Reply-To: <47e84a3c-b457-7aff-ad6a-809178c08b62@linaro.org>
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date:   Wed, 31 May 2023 15:13:46 +0300
Message-ID: <CAA8EJprDPzTQU1j6n17gYAeiXw1t6M_d4CciTtD8mHNksYGHow@mail.gmail.com>
Subject: Re: [PATCH v3 2/5] phy: qcom-qmp-combo: add support for the USB+DP
 PHY on SM8150 platform
To:     Konrad Dybcio <konrad.dybcio@linaro.org>
Cc:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, 31 May 2023 at 14:35, Konrad Dybcio <konrad.dybcio@linaro.org> wrote:
> On 31.05.2023 04:34, Dmitry Baryshkov wrote:
> > SM8150 and SC8180X are close relatives. Reuse sc8180x data to support
> > USB+DP combo PHY on SM8150 platform.
> >
> > Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> > ---
> I'm not sure this is right. Downstream reuses SA8195 USB seq.

The upstream driver uses sm8150 data for sc8180x. So even if sc8180x
data is not correct for sc8180x, it is definitely the one that we
should use for sm8150:

static const struct qmp_phy_cfg sc8180x_usb3dpphy_cfg = {
        .serdes_tbl             = sm8150_usb3_serdes_tbl,
        .serdes_tbl_num         = ARRAY_SIZE(sm8150_usb3_serdes_tbl),
        .tx_tbl                 = sm8150_usb3_tx_tbl,
        .tx_tbl_num             = ARRAY_SIZE(sm8150_usb3_tx_tbl),
        .rx_tbl                 = sm8150_usb3_rx_tbl,
        .rx_tbl_num             = ARRAY_SIZE(sm8150_usb3_rx_tbl),
        .pcs_tbl                = sm8150_usb3_pcs_tbl,
        .pcs_tbl_num            = ARRAY_SIZE(sm8150_usb3_pcs_tbl),
        .pcs_usb_tbl            = sm8150_usb3_pcs_usb_tbl,
        .pcs_usb_tbl_num        = ARRAY_SIZE(sm8150_usb3_pcs_usb_tbl),

        .dp_serdes_tbl          = qmp_v4_dp_serdes_tbl,
        .dp_serdes_tbl_num      = ARRAY_SIZE(qmp_v4_dp_serdes_tbl),
        .dp_tx_tbl              = qmp_v4_dp_tx_tbl,
        .dp_tx_tbl_num          = ARRAY_SIZE(qmp_v4_dp_tx_tbl),



>
> Konrad
> >  drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 4 ++++
> >  1 file changed, 4 insertions(+)
> >
> > diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
> > index 33cc99d9c77d..2bff1bbb8610 100644
> > --- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
> > +++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
> > @@ -3614,6 +3614,10 @@ static const struct of_device_id qmp_combo_of_match_table[] = {
> >               .compatible = "qcom,sm6350-qmp-usb3-dp-phy",
> >               .data = &sm6350_usb3dpphy_cfg,
> >       },
> > +     {
> > +             .compatible = "qcom,sm8150-qmp-usb3-dp-phy",
> > +             .data = &sc8180x_usb3dpphy_cfg,
> > +     },
> >       {
> >               .compatible = "qcom,sm8250-qmp-usb3-dp-phy",
> >               .data = &sm8250_usb3dpphy_cfg,



-- 
With best wishes
Dmitry
