Return-Path: <devicetree+bounces-643-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FED07A25D5
	for <lists+devicetree@lfdr.de>; Fri, 15 Sep 2023 20:34:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 568AE1C20AF1
	for <lists+devicetree@lfdr.de>; Fri, 15 Sep 2023 18:34:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B4D49362;
	Fri, 15 Sep 2023 18:34:10 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22B1F30CF6
	for <devicetree@vger.kernel.org>; Fri, 15 Sep 2023 18:34:09 +0000 (UTC)
Received: from mail-yb1-xb2f.google.com (mail-yb1-xb2f.google.com [IPv6:2607:f8b0:4864:20::b2f])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BA5A1270E
	for <devicetree@vger.kernel.org>; Fri, 15 Sep 2023 11:34:05 -0700 (PDT)
Received: by mail-yb1-xb2f.google.com with SMTP id 3f1490d57ef6-d815a5eee40so2264034276.2
        for <devicetree@vger.kernel.org>; Fri, 15 Sep 2023 11:34:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1694802845; x=1695407645; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=XAp4QGQYuiB0aBhykrwn9fuo1kSVZeoCYVkl9zEjWE8=;
        b=ZRn2r1NhTF7RYpU9wxUTTfDNoPsm2sCTFXU1/SwBNv25DiPf06YThxVCMV4zUBKCO3
         cRyQwzUXYv4n6sQXFoqqhqUpCcxXv8Nn7Uf9WvoZEiwCAAZ8FIUnap3XKbucbT57CAJF
         rIXOxDqv6tUYiUr4p8YFl5KjPOuZ/rkmVNpWnAlE0w2Eo8bmA345EyQuL9VLWpO1VMVT
         hXIBl0MdO6N1c144hAhtpiGJi5jXaaPE2g1MVc/DILwfFJLW+5h7tvFpOu9cLrpopNVd
         BeMBNPf/5h5KjAjAo4JSTKrLSLN/HazLaTHgY6jyEpjZa2V2wU18gx7tDmfMmZilxyqE
         ihbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694802845; x=1695407645;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=XAp4QGQYuiB0aBhykrwn9fuo1kSVZeoCYVkl9zEjWE8=;
        b=N7NxzBMPPVoGry6ekTObByBQlo/F3m3oeOCXB9rPG4qz0qDYhDpmfApqBzMaSzYrgP
         vEvrqX3lBTPIeN6lOfRKSc9IDUqOff3WFabmWnJAM7Q/3+4Qas9h93VRkwoF84ll4i4c
         vqkC9IVAuEcB2XDWoR/zipJcoBC9GSH0NfGeBzRR7cTwm0Tqhr1HYeMcqsbCun3zH7/Q
         3ON+4/jz3YL9pDaIaekUlFl13H/++J4UYUWnRjJ2I32CkjmQCeJ4J+rwzQuPUkwhVGRX
         gjYTQZ7ncXJhgNkSEb9yzniswpvjJurCk2Rl62dGpQQrPlyXjfwC7SSeECFHyufyuEEK
         WxEA==
X-Gm-Message-State: AOJu0Yx8kotcusU3OvzVWS38ETOu6AWEm8YyExa2Bog0Q/vL5J7PrAOU
	B3rh+n1Xk2+FB1hsNa8zHSkrfnR77b92tTvm5OssmRrV5OFXlOZbncMQzQ==
X-Google-Smtp-Source: AGHT+IGz/X+sLYorNmDn+iedwieWtRZ/y9HzEpRRT43OwE+qJPUPdVSjf4sOic9847CsYuYN7WCPMNDqcCWsxExcJ04=
X-Received: by 2002:a25:820e:0:b0:d7b:9a4b:5a72 with SMTP id
 q14-20020a25820e000000b00d7b9a4b5a72mr2312461ybk.31.1694802844944; Fri, 15
 Sep 2023 11:34:04 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20230823091757.31311-1-quic_nitirawa@quicinc.com>
 <20230823091757.31311-3-quic_nitirawa@quicinc.com> <24cff590-c71f-4a30-9b80-fa9a0bd27957@linaro.org>
 <c9719d64-33c1-d13e-0ab6-289011282044@quicinc.com>
In-Reply-To: <c9719d64-33c1-d13e-0ab6-289011282044@quicinc.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Fri, 15 Sep 2023 21:33:53 +0300
Message-ID: <CAA8EJppYD8Oq_fkOOKf8_x7RdbjBx7XzV_5y4sKE3ZDv_WV9_Q@mail.gmail.com>
Subject: Re: [PATCH V3 2/2] phy: qcom-qmp-ufs: Add Phy Configuration support
 for SC7280
To: Nitin Rawat <quic_nitirawa@quicinc.com>
Cc: agross@kernel.org, andersson@kernel.org, konrad.dybcio@linaro.org, 
	vkoul@kernel.org, kishon@kernel.org, robh+dt@kernel.org, 
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, 
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
	Manish Pandey <quic_mapa@quicinc.com>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Fri, 15 Sept 2023 at 19:14, Nitin Rawat <quic_nitirawa@quicinc.com> wrote:
>
>
>
> On 9/6/2023 1:34 AM, Dmitry Baryshkov wrote:
> > On 23/08/2023 12:17, Nitin Rawat wrote:
> >> Add SC7280 specific register layout and table configs.
> >>
> >> Co-developed-by: Manish Pandey <quic_mapa@quicinc.com>
> >> Signed-off-by: Manish Pandey <quic_mapa@quicinc.com>
> >> Signed-off-by: Nitin Rawat <quic_nitirawa@quicinc.com>
> >> ---
> >>   drivers/phy/qualcomm/phy-qcom-qmp-ufs.c | 142 ++++++++++++++++++++++++
> >>   1 file changed, 142 insertions(+)
> >>
> >> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
> >> b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
> >> index 3927eba8e468..514fa14df634 100644
> >> --- a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
> >> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
> >
> > [skipped tables programming]
> >
> > 4),
> Sorry I quite didn't get this comment. what exactly is skipped ?Please
> can you help explain?

I skipped them, as I didn't have comments for them.

>
>
> >> @@ -888,6 +993,40 @@ static const struct qmp_phy_cfg
> >> sa8775p_ufsphy_cfg = {
> >>       .regs            = ufsphy_v5_regs_layout,
> >>   };
> >>
> >> +static const struct qmp_phy_cfg sc7280_ufsphy_cfg = {
> >> +    .lanes                  = 2,
> >> +
> >> +    .offsets                = &qmp_ufs_offsets,
> >> +
> >> +    .tbls = {
> >> +        .serdes         = sm8150_ufsphy_serdes,
> >> +        .serdes_num     = ARRAY_SIZE(sm8150_ufsphy_serdes),
> >> +        .tx             = sc7280_ufsphy_tx,
> >> +        .tx_num         = ARRAY_SIZE(sc7280_ufsphy_tx),
> >> +        .rx             = sc7280_ufsphy_rx,
> >> +        .rx_num         = ARRAY_SIZE(sc7280_ufsphy_rx),
> >> +        .pcs            = sc7280_ufsphy_pcs,
> >> +        .pcs_num        = ARRAY_SIZE(sc7280_ufsphy_pcs),
> >> +    },
> >> +    .tbls_hs_b = {
> >> +        .serdes         = sm8150_ufsphy_hs_b_serdes,
> >> +        .serdes_num     = ARRAY_SIZE(sm8150_ufsphy_hs_b_serdes),
> >> +    },
> >> +    .tbls_hs_g4 = {
> >> +        .tx             = sm8250_ufsphy_hs_g4_tx,
> >> +        .tx_num         = ARRAY_SIZE(sm8250_ufsphy_hs_g4_tx),
> >> +        .rx             = sc7280_ufsphy_hs_g4_rx,
> >> +        .rx_num         = ARRAY_SIZE(sc7280_ufsphy_hs_g4_rx),
> >> +        .pcs            = sm8150_ufsphy_hs_g4_pcs,
> >> +        .pcs_num        = ARRAY_SIZE(sm8150_ufsphy_hs_g4_pcs),
> >> +    },
> >> +    .clk_list               = sm8450_ufs_phy_clk_l,
> >> +    .num_clks               = ARRAY_SIZE(sm8450_ufs_phy_clk_l),
> >
> > This doesn't correspond to the bindings. This array has 3 enries, while
> > in the bindings you have opted for two clocks for this PHY.
> Sure. I'll update the bindings.

Are you sure about the third clock? Neither sm8150 nor sm8250 used the
qref clock. Or is that an omission on our side?

>
> >
> >> +    .vreg_list              = qmp_phy_vreg_l,
> >> +    .num_vregs              = ARRAY_SIZE(qmp_phy_vreg_l),
> >> +    .regs                   = ufsphy_v4_regs_layout,
> >> +};
> >> +
> >>   static const struct qmp_phy_cfg sc8280xp_ufsphy_cfg = {
> >>       .lanes            = 2,
> >>
> >> @@ -1648,6 +1787,9 @@ static const struct of_device_id
> >> qmp_ufs_of_match_table[] = {
> >>       }, {
> >>           .compatible = "qcom,sa8775p-qmp-ufs-phy",
> >>           .data = &sa8775p_ufsphy_cfg,
> >> +    }, {
> >> +        .compatible = "qcom,sc7280-qmp-ufs-phy",
> >> +        .data = &sc7280_ufsphy_cfg,
> >>       }, {
> >>           .compatible = "qcom,sc8180x-qmp-ufs-phy",
> >>           .data = &sm8150_ufsphy_cfg,
> >> --
> >> 2.17.1
> >>
> >
> Thanks,
> Nitin



-- 
With best wishes
Dmitry

