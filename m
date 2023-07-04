Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 619DA746990
	for <lists+devicetree@lfdr.de>; Tue,  4 Jul 2023 08:23:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229624AbjGDGXs (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 4 Jul 2023 02:23:48 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51148 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229938AbjGDGXr (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 4 Jul 2023 02:23:47 -0400
Received: from mail-vk1-xa34.google.com (mail-vk1-xa34.google.com [IPv6:2607:f8b0:4864:20::a34])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E0367E54
        for <devicetree@vger.kernel.org>; Mon,  3 Jul 2023 23:23:45 -0700 (PDT)
Received: by mail-vk1-xa34.google.com with SMTP id 71dfb90a1353d-47e3c76fe7fso552512e0c.0
        for <devicetree@vger.kernel.org>; Mon, 03 Jul 2023 23:23:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1688451825; x=1691043825;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=bOCMr7L1zm68Qc3bia4VEtpR77XDJmeTvTqd2QbGVh8=;
        b=IfN5ej8pgkUjD53bbuTilgqV8G0IBIJ2MjnFDv+aZ8iyMcwD8F7xzNvTyYhAUvwVCw
         HeYW6Tim+okJkB0Ul+oznc6SWZLAp3cDPRbVil2D82KSAZ/lDx3LZCVikHSrdf7KICgP
         irgbrOQ0gM77zGGDNQSNWnSi7yeoSOGCWVD8Q=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1688451825; x=1691043825;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=bOCMr7L1zm68Qc3bia4VEtpR77XDJmeTvTqd2QbGVh8=;
        b=DYToXAhalqI5PV+y7dr/+AceW/UjMzMqt0lCNEYzLIGs3m76sYAZkGYnFpbI48dQTd
         clJpVv1l3O60OmxGf7Nm07C/gWZ3IQ1l2QnjicM3Hx19JGOZl849V40WuCa8a3kWuLZr
         mBmSM4x4CkQapCyI/wu5MawUSMm1zMBBXqbVNlLeVzm+sPjnPbMDBF3MaEuuRhsYwB59
         xTrVrnUlXLaL/taFnAdGs0Pj2EQwwaDjYkoVioiCu8Dpp82pOcoyAizJrL+j4F7wdq36
         Nygy4AtAwOBIaZx4sGK4CBCrUE0O5sepg9Ucqc3SgpFd95TFZh4pc+e3ceQ+H965O5d1
         QJGg==
X-Gm-Message-State: ABy/qLZC12rXXGWEKQLyDaP7cX144kJswIDrQ2DpniDVyEc8QwtevNb5
        IT6pcMwSPptaE72ZFgq+UiZNKQnlEgSFNBZC6xShKw==
X-Google-Smtp-Source: APBJJlFrkrOb09mgT4dBIjkSalYCUeOQ4Eg4mXw0MnwQNaOm3wtN/QTN7R19osv0ZD3OHqWsojNyJ5lISIzfs9D5Z5A=
X-Received: by 2002:a1f:bf84:0:b0:471:5770:fe99 with SMTP id
 p126-20020a1fbf84000000b004715770fe99mr4817272vkf.12.1688451824976; Mon, 03
 Jul 2023 23:23:44 -0700 (PDT)
MIME-Version: 1.0
References: <20230530195132.2286163-1-bero@baylibre.com> <20230530195132.2286163-4-bero@baylibre.com>
 <7acba6fc-e1f7-8711-cf4a-2c24b2ccaf36@collabora.com>
In-Reply-To: <7acba6fc-e1f7-8711-cf4a-2c24b2ccaf36@collabora.com>
From:   Chen-Yu Tsai <wenst@chromium.org>
Date:   Tue, 4 Jul 2023 14:23:34 +0800
Message-ID: <CAGXv+5E+1hVvCza_=vNse_ZNQNC4WSmrCF2zpqyUEgU5tR6Y6g@mail.gmail.com>
Subject: Re: [PATCH v4 3/5] thermal/drivers/mediatek/lvts_thermal: Add mt8192 support
To:     AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>, nfraprado@collabora.com
Cc:     =?UTF-8?Q?Bernhard_Rosenkr=C3=A4nzer?= <bero@baylibre.com>,
        daniel.lezcano@linaro.org, rafael@kernel.org, amitk@kernel.org,
        rui.zhang@intel.com, matthias.bgg@gmail.com, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, rdunlap@infradead.org,
        ye.xingchen@zte.com.cn, p.zabel@pengutronix.de,
        linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, devicetree@vger.kernel.org,
        james.lo@mediatek.com, rex-bc.chen@mediatek.com,
        abailon@baylibre.com, amergnat@baylibre.com, khilman@baylibre.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, May 31, 2023 at 4:07=E2=80=AFPM AngeloGioacchino Del Regno
<angelogioacchino.delregno@collabora.com> wrote:
>
> Il 30/05/23 21:51, Bernhard Rosenkr=C3=A4nzer ha scritto:
> > From: Balsam CHIHI <bchihi@baylibre.com>
> >
> > Add LVTS Driver support for MT8192.
> >
> > Co-developed-by : N=C3=ADcolas F. R. A. Prado <nfraprado@collabora.com>
> > Signed-off-by: N=C3=ADcolas F. R. A. Prado <nfraprado@collabora.com>
> > Signed-off-by: Balsam CHIHI <bchihi@baylibre.com>
> > Reviewed-by: N=C3=ADcolas F. R. A. Prado <nfraprado@collabora.com>
> > Signed-off-by: Bernhard Rosenkr=C3=A4nzer <bero@baylibre.com>
> > Reviewed-by: Matthias Brugger <matthias.bgg@gmail.com>
> > ---
> >   drivers/thermal/mediatek/lvts_thermal.c | 95 ++++++++++++++++++++++++=
+
> >   1 file changed, 95 insertions(+)
> >
> > diff --git a/drivers/thermal/mediatek/lvts_thermal.c b/drivers/thermal/=
mediatek/lvts_thermal.c
> > index 5ea8a9d569ea6..d5e5214784ece 100644
> > --- a/drivers/thermal/mediatek/lvts_thermal.c
> > +++ b/drivers/thermal/mediatek/lvts_thermal.c
> > @@ -80,6 +80,7 @@
> >   #define LVTS_MSR_FILTERED_MODE              1
> >
> >   #define LVTS_HW_SHUTDOWN_MT8195             105000
> > +#define LVTS_HW_SHUTDOWN_MT8192              105000
> >
> >   static int golden_temp =3D LVTS_GOLDEN_TEMP_DEFAULT;
> >   static int coeff_b =3D LVTS_COEFF_B;
> > @@ -1280,6 +1281,88 @@ static const struct lvts_ctrl_data mt8195_lvts_a=
p_data_ctrl[] =3D {
> >       }
> >   };
> >
> > +static const struct lvts_ctrl_data mt8192_lvts_mcu_data_ctrl[] =3D {
> > +     {
> > +             .cal_offset =3D { 0x04, 0x08 },
> > +             .lvts_sensor =3D {
> > +                     { .dt_id =3D MT8192_MCU_BIG_CPU0 },
> > +                     { .dt_id =3D MT8192_MCU_BIG_CPU1 }
> > +             },
> > +             .num_lvts_sensor =3D 2,
> > +             .offset =3D 0x0,
> > +             .hw_tshut_temp =3D LVTS_HW_SHUTDOWN_MT8192,
> > +             .mode =3D LVTS_MSR_FILTERED_MODE,
> > +     },
> > +     {
> > +             .cal_offset =3D { 0x0c, 0x10 },
> > +             .lvts_sensor =3D {
> > +                     { .dt_id =3D MT8192_MCU_BIG_CPU2 },
> > +                     { .dt_id =3D MT8192_MCU_BIG_CPU3 }
> > +             },
> > +             .num_lvts_sensor =3D 2,
> > +             .offset =3D 0x100,
> > +             .hw_tshut_temp =3D LVTS_HW_SHUTDOWN_MT8192,
> > +             .mode =3D LVTS_MSR_FILTERED_MODE,
> > +     },
> > +     {
> > +             .cal_offset =3D { 0x14, 0x18, 0x1c, 0x20 },
> > +             .lvts_sensor =3D {
> > +                     { .dt_id =3D MT8192_MCU_LITTLE_CPU0 },
> > +                     { .dt_id =3D MT8192_MCU_LITTLE_CPU1 },
> > +                     { .dt_id =3D MT8192_MCU_LITTLE_CPU2 },
> > +                     { .dt_id =3D MT8192_MCU_LITTLE_CPU3 }
> > +             },
> > +             .num_lvts_sensor =3D 4,
> > +             .offset =3D 0x200,
> > +             .hw_tshut_temp =3D LVTS_HW_SHUTDOWN_MT8192,
> > +             .mode =3D LVTS_MSR_FILTERED_MODE,
> > +     }
> > +};
> > +
> > +static const struct lvts_ctrl_data mt8192_lvts_ap_data_ctrl[] =3D {
> > +             {
> > +             .cal_offset =3D { 0x24, 0x28 },
> > +             .lvts_sensor =3D {
> > +                     { .dt_id =3D MT8192_AP_VPU0 },
> > +                     { .dt_id =3D MT8192_AP_VPU1 }
> > +             },
> > +             .num_lvts_sensor =3D 2,
> > +             .offset =3D 0x0,
> > +             .hw_tshut_temp =3D LVTS_HW_SHUTDOWN_MT8192,
> > +     },
> > +     {
> > +             .cal_offset =3D { 0x2c, 0x30 },
> > +             .lvts_sensor =3D {
> > +                     { .dt_id =3D MT8192_AP_GPU0 },
> > +                     { .dt_id =3D MT8192_AP_GPU1 }
> > +             },
> > +             .num_lvts_sensor =3D 2,
> > +             .offset =3D 0x100,
> > +             .hw_tshut_temp =3D LVTS_HW_SHUTDOWN_MT8192,
>
> I'm unable to get readings for the GPU sensors, didn't really check
> the others; `cat (xxxx)` gives a resource not available error, is that
> the same for you?!

That could be related to the filtered mode stuff from Nicolas?

> Regards,
> Angelo
>
> > +     },
> > +     {
> > +             .cal_offset =3D { 0x34, 0x38 },
> > +             .lvts_sensor =3D {
> > +                     { .dt_id =3D MT8192_AP_INFRA },
> > +                     { .dt_id =3D MT8192_AP_CAM },
> > +             },
> > +             .num_lvts_sensor =3D 2,
> > +             .offset =3D 0x200,
> > +             .hw_tshut_temp =3D LVTS_HW_SHUTDOWN_MT8192,
> > +     },
> > +     {
> > +             .cal_offset =3D { 0x3c, 0x40, 0x44 },
> > +             .lvts_sensor =3D {
> > +                     { .dt_id =3D MT8192_AP_MD0 },
> > +                     { .dt_id =3D MT8192_AP_MD1 },
> > +                     { .dt_id =3D MT8192_AP_MD2 }
> > +             },
> > +             .num_lvts_sensor =3D 3,
> > +             .offset =3D 0x300,
> > +             .hw_tshut_temp =3D LVTS_HW_SHUTDOWN_MT8192,
> > +     }
> > +};
> > +
> >   static const struct lvts_data mt8195_lvts_mcu_data =3D {
> >       .lvts_ctrl      =3D mt8195_lvts_mcu_data_ctrl,
> >       .num_lvts_ctrl  =3D ARRAY_SIZE(mt8195_lvts_mcu_data_ctrl),
> > @@ -1290,9 +1373,21 @@ static const struct lvts_data mt8195_lvts_ap_dat=
a =3D {
> >       .num_lvts_ctrl  =3D ARRAY_SIZE(mt8195_lvts_ap_data_ctrl),
> >   };
> >
> > +static const struct lvts_data mt8192_lvts_mcu_data =3D {
> > +     .lvts_ctrl      =3D mt8192_lvts_mcu_data_ctrl,
> > +     .num_lvts_ctrl  =3D ARRAY_SIZE(mt8192_lvts_mcu_data_ctrl),
> > +};
> > +
> > +static const struct lvts_data mt8192_lvts_ap_data =3D {
> > +     .lvts_ctrl      =3D mt8192_lvts_ap_data_ctrl,
> > +     .num_lvts_ctrl  =3D ARRAY_SIZE(mt8192_lvts_ap_data_ctrl),
> > +};
> > +
> >   static const struct of_device_id lvts_of_match[] =3D {
> >       { .compatible =3D "mediatek,mt8195-lvts-mcu", .data =3D &mt8195_l=
vts_mcu_data },
> >       { .compatible =3D "mediatek,mt8195-lvts-ap", .data =3D &mt8195_lv=
ts_ap_data },
> > +     { .compatible =3D "mediatek,mt8192-lvts-mcu", .data =3D &mt8192_l=
vts_mcu_data },
> > +     { .compatible =3D "mediatek,mt8192-lvts-ap", .data =3D &mt8192_lv=
ts_ap_data },
> >       {},
> >   };
> >   MODULE_DEVICE_TABLE(of, lvts_of_match);
>
>
