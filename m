Return-Path: <devicetree+bounces-921-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id CB7C97A3F46
	for <lists+devicetree@lfdr.de>; Mon, 18 Sep 2023 03:46:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E062D1C20847
	for <lists+devicetree@lfdr.de>; Mon, 18 Sep 2023 01:46:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 54D8215A8;
	Mon, 18 Sep 2023 01:46:37 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF864136C
	for <devicetree@vger.kernel.org>; Mon, 18 Sep 2023 01:46:35 +0000 (UTC)
Received: from mail-yw1-x1135.google.com (mail-yw1-x1135.google.com [IPv6:2607:f8b0:4864:20::1135])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D0F96124
	for <devicetree@vger.kernel.org>; Sun, 17 Sep 2023 18:46:32 -0700 (PDT)
Received: by mail-yw1-x1135.google.com with SMTP id 00721157ae682-59c0442a359so30386987b3.0
        for <devicetree@vger.kernel.org>; Sun, 17 Sep 2023 18:46:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1695001592; x=1695606392; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=GN+ZP7HO00noajf9njN6jgdBrsju6UYYDWypBjncENU=;
        b=yUJSEtlukS4Fxmd6o4eG1oM8+TdJwX6dHWcaqZaJW7R8nybnrrBCVgu3+3+MjToLno
         xHpTAti73edNw1W01OATkWCyspBMGOSGcWHkD8HA53lrSdhw9ihgE9H1b1t6/eeD6WHB
         W8kXD/j8PT1a2nsykKLo6FJrSBownXLfGs78VHitLu3IZhmpHLCjHCx55X1u4QJW8vIk
         StQPntPO2iTnyzyCHLAg8pLgbb7R3ycj4GompH849L0GB5/Nk7hoHyq41shVr98WqsVq
         8nyv4L5YC/eW9JkWjTWqMh+ovKtGRgJgjkegM0opxMN/ph/LE6xxY5NkFHu0F+rNwfd1
         64pw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695001592; x=1695606392;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=GN+ZP7HO00noajf9njN6jgdBrsju6UYYDWypBjncENU=;
        b=tA5n4fF9BWGh7e33PDMA0+WZYs/5kylWCaKeO7dfxt2/aCoZIA6dpLRUWfmeol1Lws
         a7xoF2BuCA9Z5ziWWOEY06Fpt663pTmYg/lgl68ZYiTYCGRD5bV2WC0jUHPJfkIVu/Yi
         te+XxsyKrW9Eec5BP9hah6JPcGDWl2lAQAzs5SVLFxlLL5ePJYcjKM8AQ42R63DOeDHr
         K8mcjsR36UIpr350oY6PxEWF0RAA1fhmibYHMIB+wTImFklx8Z8gmgPS5XCDCvZE4Ywl
         xbr87cSm0RT/TyR4gz4gNLXMO8wMoGyr+4eqNpD2DxoAd1pSMSC+girAzeqoq3YoT3oy
         WQvA==
X-Gm-Message-State: AOJu0YznLrdZAW/RiFGHJz5JhriFFsC5jSLVch8GrsWHd/Bdse9FvsGy
	bIoscjcy0NBJ71Qq8sFB1VHKbHm8fRQd/B7EoTmJ+w==
X-Google-Smtp-Source: AGHT+IFyyon2ii0QkHQJw/3KC5VRE/P0uqsTDjykAK8zhw2UPsZAy0HTamPa4+DC6onQOC4lZV/moBMVBprp9PLEc4M=
X-Received: by 2002:a81:524e:0:b0:59b:fe73:dec1 with SMTP id
 g75-20020a81524e000000b0059bfe73dec1mr7886346ywb.7.1695001591904; Sun, 17 Sep
 2023 18:46:31 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20230823091757.31311-1-quic_nitirawa@quicinc.com>
 <20230823091757.31311-3-quic_nitirawa@quicinc.com> <24cff590-c71f-4a30-9b80-fa9a0bd27957@linaro.org>
 <c9719d64-33c1-d13e-0ab6-289011282044@quicinc.com> <CAA8EJppYD8Oq_fkOOKf8_x7RdbjBx7XzV_5y4sKE3ZDv_WV9_Q@mail.gmail.com>
 <68e111ba-9a7b-511a-5765-24b491ad201b@quicinc.com>
In-Reply-To: <68e111ba-9a7b-511a-5765-24b491ad201b@quicinc.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Mon, 18 Sep 2023 04:46:20 +0300
Message-ID: <CAA8EJpr-E=wASYXnsviLTwYEvkzOCDi-m5Nu8v-yV5=xKP5yEg@mail.gmail.com>
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

On Sun, 17 Sept 2023 at 17:23, Nitin Rawat <quic_nitirawa@quicinc.com> wrote:
>
>
>
> On 9/16/2023 12:03 AM, Dmitry Baryshkov wrote:
> > On Fri, 15 Sept 2023 at 19:14, Nitin Rawat <quic_nitirawa@quicinc.com> wrote:
> >>
> >>
> >>
> >> On 9/6/2023 1:34 AM, Dmitry Baryshkov wrote:
> >>> On 23/08/2023 12:17, Nitin Rawat wrote:
> >>>> Add SC7280 specific register layout and table configs.
> >>>>
> >>>> Co-developed-by: Manish Pandey <quic_mapa@quicinc.com>
> >>>> Signed-off-by: Manish Pandey <quic_mapa@quicinc.com>
> >>>> Signed-off-by: Nitin Rawat <quic_nitirawa@quicinc.com>
> >>>> ---
> >>>>    drivers/phy/qualcomm/phy-qcom-qmp-ufs.c | 142 ++++++++++++++++++++++++
> >>>>    1 file changed, 142 insertions(+)
> >>>>
> >>>> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
> >>>> b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
> >>>> index 3927eba8e468..514fa14df634 100644
> >>>> --- a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
> >>>> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
> >>>
> >>> [skipped tables programming]
> >>>
> >>> 4),
> >> Sorry I quite didn't get this comment. what exactly is skipped ?Please
> >> can you help explain?
> >
> > I skipped them, as I didn't have comments for them.
> >
> >>
> >>
> >>>> @@ -888,6 +993,40 @@ static const struct qmp_phy_cfg
> >>>> sa8775p_ufsphy_cfg = {
> >>>>        .regs            = ufsphy_v5_regs_layout,
> >>>>    };
> >>>>
> >>>> +static const struct qmp_phy_cfg sc7280_ufsphy_cfg = {
> >>>> +    .lanes                  = 2,
> >>>> +
> >>>> +    .offsets                = &qmp_ufs_offsets,
> >>>> +
> >>>> +    .tbls = {
> >>>> +        .serdes         = sm8150_ufsphy_serdes,
> >>>> +        .serdes_num     = ARRAY_SIZE(sm8150_ufsphy_serdes),
> >>>> +        .tx             = sc7280_ufsphy_tx,
> >>>> +        .tx_num         = ARRAY_SIZE(sc7280_ufsphy_tx),
> >>>> +        .rx             = sc7280_ufsphy_rx,
> >>>> +        .rx_num         = ARRAY_SIZE(sc7280_ufsphy_rx),
> >>>> +        .pcs            = sc7280_ufsphy_pcs,
> >>>> +        .pcs_num        = ARRAY_SIZE(sc7280_ufsphy_pcs),
> >>>> +    },
> >>>> +    .tbls_hs_b = {
> >>>> +        .serdes         = sm8150_ufsphy_hs_b_serdes,
> >>>> +        .serdes_num     = ARRAY_SIZE(sm8150_ufsphy_hs_b_serdes),
> >>>> +    },
> >>>> +    .tbls_hs_g4 = {
> >>>> +        .tx             = sm8250_ufsphy_hs_g4_tx,
> >>>> +        .tx_num         = ARRAY_SIZE(sm8250_ufsphy_hs_g4_tx),
> >>>> +        .rx             = sc7280_ufsphy_hs_g4_rx,
> >>>> +        .rx_num         = ARRAY_SIZE(sc7280_ufsphy_hs_g4_rx),
> >>>> +        .pcs            = sm8150_ufsphy_hs_g4_pcs,
> >>>> +        .pcs_num        = ARRAY_SIZE(sm8150_ufsphy_hs_g4_pcs),
> >>>> +    },
> >>>> +    .clk_list               = sm8450_ufs_phy_clk_l,
> >>>> +    .num_clks               = ARRAY_SIZE(sm8450_ufs_phy_clk_l),
> >>>
> >>> This doesn't correspond to the bindings. This array has 3 enries, while
> >>> in the bindings you have opted for two clocks for this PHY.
> >> Sure. I'll update the bindings.
> >
> > Are you sure about the third clock? Neither sm8150 nor sm8250 used the
> > qref clock. Or is that an omission on our side?
> >
>
> Hi Dmitry,
>
> For SC7280 we need all the three clocks for this target. Same is being
> used in downstream code as well. Hence I would need to update the
> binding as well.

Ack, thanks for the confirmation.

>
> Thanks,
> Nitin
>
>
> >>
> >>>
> >>>> +    .vreg_list              = qmp_phy_vreg_l,
> >>>> +    .num_vregs              = ARRAY_SIZE(qmp_phy_vreg_l),
> >>>> +    .regs                   = ufsphy_v4_regs_layout,
> >>>> +};
> >>>> +
> >>>>    static const struct qmp_phy_cfg sc8280xp_ufsphy_cfg = {
> >>>>        .lanes            = 2,
> >>>>
> >>>> @@ -1648,6 +1787,9 @@ static const struct of_device_id
> >>>> qmp_ufs_of_match_table[] = {
> >>>>        }, {
> >>>>            .compatible = "qcom,sa8775p-qmp-ufs-phy",
> >>>>            .data = &sa8775p_ufsphy_cfg,
> >>>> +    }, {
> >>>> +        .compatible = "qcom,sc7280-qmp-ufs-phy",
> >>>> +        .data = &sc7280_ufsphy_cfg,
> >>>>        }, {
> >>>>            .compatible = "qcom,sc8180x-qmp-ufs-phy",
> >>>>            .data = &sm8150_ufsphy_cfg,
> >>>> --
> >>>> 2.17.1
> >>>>
> >>>
> >> Thanks,
> >> Nitin
> >
> >
> >
--
With best wishes
Dmitry

