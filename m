Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2DB9F6897DD
	for <lists+devicetree@lfdr.de>; Fri,  3 Feb 2023 12:39:27 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232166AbjBCLi6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 3 Feb 2023 06:38:58 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39808 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232138AbjBCLi5 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 3 Feb 2023 06:38:57 -0500
Received: from mail-vs1-xe2c.google.com (mail-vs1-xe2c.google.com [IPv6:2607:f8b0:4864:20::e2c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2E4B49B6C0
        for <devicetree@vger.kernel.org>; Fri,  3 Feb 2023 03:38:55 -0800 (PST)
Received: by mail-vs1-xe2c.google.com with SMTP id k6so5064609vsk.1
        for <devicetree@vger.kernel.org>; Fri, 03 Feb 2023 03:38:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=raspberrypi.com; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=mEPY90qK4nFKHSzgf9s1YLT9k+zfKGopRsjCgKG7YVU=;
        b=bqIeQNboul7uEgEHQ/+LSViBI3fSoJTp0lEpP1YpyNHqZo+rPHeEuAnNpb2M2r13Mv
         4OdNlRsivvM+LXGA7xsN2DiKEsPZ0jkHF+0O9Yny2qTSFVXNOguu0wAVDLYk3N1Yc0ZQ
         gJSWEM5ek8HGutoN0A6wBiYYrd8jy7DtCNY07h6xGUpkGleW9vc6+XuB8saEDnnRgQsp
         qdjZiYhDZAK/WRzc7eOUlpVtCSVq7jmQlbRtZpHaZ6pWSC/5BtLLZmXlDAcmKWXGjZJ5
         z70jEYpgdvmyPO1uket1uyBhTrNIua/GaX/B6My2ruxqPMBwlxiu9ngph3sigheGV9WV
         a8jQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=mEPY90qK4nFKHSzgf9s1YLT9k+zfKGopRsjCgKG7YVU=;
        b=v9TYewmPOi54d/Y6MMFlg2DHG1nDWxoJAqqwZUMJnZ8VDqQji8e6KP63ZVGW5PgnTn
         5Un9rcpiLOukJOPH8C+Vvb04/Hb1b/LI91vdxc6TnmDpfAD0RuLf4sFKhYj8/P6q8FBf
         lQPE5taYGCsfdKYH6e+JPZtl8tlTBadtahKSE+ftp8gLifFTh8n/n27LCE5I3IPJIWNZ
         9CHq2SsYKjCXhNmTk67m0s1Gi9Qtw4NLypjzU/Hq1ksvOe6qIaGHXdoFn138TU7iK6CQ
         qnkd2Ym0LN07mO5RyMKScupXPnsDjW/TooP2IDR4ovo/3F9Q6N7C70/wzWfLspresMzl
         pKYg==
X-Gm-Message-State: AO0yUKUsBZdEP35mPDyVxjXJqeUSvM7kzl/ftdWjrk6JdhLnqH1n/AYe
        G6eu0wr0p4N2wns2r5Cjlk7uMRQMBxP2CPtnjIHO+A==
X-Google-Smtp-Source: AK7set92H4c1FvbkExLvirnzerUOqRRuPEdFxNvs7LYj9gMAc8JlQQOubG+DJI6UqC3cFqZY5yg6VMYaMlr0vgAAfwM=
X-Received: by 2002:a67:e091:0:b0:3d4:aa7:e2d5 with SMTP id
 f17-20020a67e091000000b003d40aa7e2d5mr2055746vsl.32.1675424334197; Fri, 03
 Feb 2023 03:38:54 -0800 (PST)
MIME-Version: 1.0
References: <20230203102439.237527-1-alexander.stein@ew.tq-group.com>
 <20230203102439.237527-3-alexander.stein@ew.tq-group.com> <CAPY8ntDd06gLmETbi0S=2Y3ES40_5HJ_zZ0sx+cbHwtPq-XHow@mail.gmail.com>
 <4778564.GXAFRqVoOG@steina-w>
In-Reply-To: <4778564.GXAFRqVoOG@steina-w>
From:   Dave Stevenson <dave.stevenson@raspberrypi.com>
Date:   Fri, 3 Feb 2023 11:38:37 +0000
Message-ID: <CAPY8ntAEJeXGoN=8yAD5rSC4TKftzhJ2a8c898uaLD0bCZfHCQ@mail.gmail.com>
Subject: Re: [PATCH 2/2] media: i2c: imx290: Add support for imx327 variant
To:     Alexander Stein <alexander.stein@ew.tq-group.com>
Cc:     Manivannan Sadhasivam <mani@kernel.org>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        linux-media@vger.kernel.org, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, 3 Feb 2023 at 11:10, Alexander Stein
<alexander.stein@ew.tq-group.com> wrote:
>
> Hi Dave,
>
> Am Freitag, 3. Februar 2023, 11:55:55 CET schrieb Dave Stevenson:
> > Hi Alexander
> >
> > On Fri, 3 Feb 2023 at 10:24, Alexander Stein
> >
> > <alexander.stein@ew.tq-group.com> wrote:
> > > Both sensors are quite similar. Their specs only differ regarding LVDS
> > > and parallel output but are identical regarding MIPI-CSI-2 interface.
> > > But they use a different init setting of hard-coded values, taken from
> > > the datasheet.
> > >
> > > Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
> > > ---
> > >
> > >  drivers/media/i2c/imx290.c | 88 +++++++++++++++++++++++++++++++++-----
> > >  1 file changed, 77 insertions(+), 11 deletions(-)
> > >
> > > diff --git a/drivers/media/i2c/imx290.c b/drivers/media/i2c/imx290.c
> > > index e642e1df520d..337252b2ec15 100644
> > > --- a/drivers/media/i2c/imx290.c
> > > +++ b/drivers/media/i2c/imx290.c
> > > @@ -164,6 +164,36 @@
> > >
> > >  #define CLK_74_25      1
> > >  #define NUM_CLK                2
> > >
> > > +enum imx290_model {
> > > +       IMX290,
> > > +       IMX290_MONO,
> > > +       IMX327,
> > > +};
> > > +
> > > +struct imx290_device_data {
> > > +       enum imx290_model model;
> > > +       const char *name;
> > > +       u8 mono;
> > > +};
> > > +
> > > +static const struct imx290_device_data imx290_models[] = {
> > > +       [IMX290] = {
> > > +               .model = IMX290,
> > > +               .name = "imx290",
> > > +               .mono = 0,
> > > +       },
> > > +       [IMX290_MONO] = {
> > > +               .model = IMX290_MONO,
> > > +               .name = "imx290-mono",
> > > +               .mono = 1,
> > > +       },
> > > +       [IMX327] = {
> > > +               .model = IMX327,
> > > +               .name = "imx327",
> > > +               .mono = 0,
> > > +       },
> > > +};
> > > +
> > >
> > >  struct imx290_regval {
> > >
> > >         u32 reg;
> > >         u32 val;
> > >
> > > @@ -210,9 +240,9 @@ struct imx290 {
> > >
> > >         struct device *dev;
> > >         struct clk *xclk;
> > >         struct regmap *regmap;
> > >
> > > +       const struct imx290_device_data *devdata;
> > >
> > >         u32 xclk_freq;
> > >         u8 nlanes;
> > >
> > > -       u8 mono;
> > >
> > >         struct v4l2_subdev sd;
> > >         struct media_pad pad;
> > >
> > > @@ -240,7 +270,7 @@ static inline struct imx290 *to_imx290(struct
> > > v4l2_subdev *_sd)>
> > >   * Modes and formats
> > >   */
> > >
> > > -static const struct imx290_regval imx290_global_init_settings[] = {
> > > +static const struct imx290_regval imx290_global_init_settings_290[] = {
> > >
> > >         { IMX290_WINWV_OB, 12 },
> > >         { IMX290_WINPH, 0 },
> > >         { IMX290_WINPV, 0 },
> > >
> > > @@ -292,6 +322,23 @@ static const struct imx290_regval
> > > imx290_global_init_settings[] = {>
> > >         { IMX290_REG_8BIT(0x33b3), 0x04 },
> > >
> > >  };
> > >
> > > +static const struct imx290_regval imx290_global_init_settings_327[] = {
> > > +       { IMX290_WINWV_OB, 12 },
> > > +       { IMX290_WINPH, 0 },
> > > +       { IMX290_WINPV, 0 },
> > > +       { IMX290_WINWH, 1948 },
> > > +       { IMX290_WINWV, 1097 },
> > > +       { IMX290_XSOUTSEL, IMX290_XSOUTSEL_XVSOUTSEL_VSYNC |
> > > +                          IMX290_XSOUTSEL_XHSOUTSEL_HSYNC },
> > > +       { IMX290_REG_8BIT(0x3011), 0x0A },
> >
> > What datasheet are you working from? Mine (2019/03/25) has a
> > correction listed at v0.3 of:
> > Register 3011h setting 0Ah -> 02h
>
> I've got a v0.2 (2017/05/25). As you have v0.3 I am not really surprised you
> have different/additional values.

Revision history appears to be
0.1 2017/02/23
0.2 2017/05/25
0.3 2017/09/04
E17Z06 2017/12/18
E17Z06A81 2018/02/01
E1706B93 2019/03/25
so you are a way behind.

>
> > > +       { IMX290_REG_8BIT(0x3012), 0x64 },
> > > +       { IMX290_REG_8BIT(0x3013), 0x00 },
> > > +       { IMX290_REG_8BIT(0x309e), 0x4A },
> > > +       { IMX290_REG_8BIT(0x309f), 0x4A },
> >
> > 309e/f undocumented in my datasheet beyond "default value 5Ah, set to
> > "4Ah"". Not documented in imx290 or imx462 datasheets either. I'll read it
> > back from IMX290 and IMX462 when I get to the office and see if 0x4a is the
> > default anyway, in which case it can be generic.

I can't read back from my IMX290LLR as Vision Components use a
secondary MCU to stop you reading registers.

IMX462LQR default 0x5a 0x5a :-(

> Exactly, they are not documented at all, just marked red indicating it's
> different from reset default.
>
> > > +       { IMX290_REG_8BIT(0x3128), 0x04 },
> >
> > Correction v0.3 - register address 3128h deleted.
> >
> > > +       { IMX290_REG_8BIT(0x313b), 0x41 },
> >
> > Correction v0.3 - Register address 313Bh setting 41h -> 61h.

IMX462LQR default 0x51

> >
> >
> > I'll check the defaults on imx290 and imx462, because there is no harm
> > in adding those register writes if they happen to be the defaults.
> > There is also a fair amount of duplication between
> > imx290_global_init_settings_290 and imx290_global_init_settings_327 -
> > it'd be nice to reduce it down to the minimum set of diffs.
>
> Thanks, I'll update to the values you provided and split the common settings.

So annoyingly that does mean we need a sensor specific table, but I
think it is only 3 registers (0x309e, 0x309ef, and 0x313b). None of
those need to be set for IMX290 or 462.

  Dave

> > > +};
> > > +
> > >
> > >  static const struct imx290_regval imx290_37_125mhz_clock[] = {
> > >
> > >         { IMX290_EXTCK_FREQ, 0x2520 },
> > >         { IMX290_INCKSEL7, 0x49 },
> > >
> > > @@ -558,7 +605,7 @@ imx290_format_info(const struct imx290 *imx290, u32
> > > code)>
> > >         for (i = 0; i < ARRAY_SIZE(imx290_formats); ++i) {
> > >
> > >                 const struct imx290_format_info *info =
> > >                 &imx290_formats[i];
> > >
> > > -               if (info->code[imx290->mono] == code)
> > > +               if (info->code[imx290->devdata->mono] == code)
> > >
> > >                         return info;
> > >
> > >         }
> > >
> > > @@ -957,11 +1004,27 @@ static int imx290_start_streaming(struct imx290
> > > *imx290,>
> > >                                   struct v4l2_subdev_state *state)
> > >
> > >  {
> > >
> > >         const struct v4l2_mbus_framefmt *format;
> > >
> > > +       const struct imx290_regval *regs;
> > > +       unsigned int reg_num;
> > >
> > >         int ret;
> > >
> > > +       switch (imx290->devdata->model) {
> > > +       case IMX290:
> > > +       case IMX290_MONO:
> > > +               regs = imx290_global_init_settings_290;
> > > +               reg_num = ARRAY_SIZE(imx290_global_init_settings_290);
> > > +               break;
> > > +       case IMX327:
> > > +               regs = imx290_global_init_settings_327;
> > > +               reg_num = ARRAY_SIZE(imx290_global_init_settings_327);
> > > +               break;
> > > +       default:
> > > +               dev_err(imx290->dev, "Invalid model: %u\n",
> > > imx290->devdata->model); +               return -EINVAL;
> > > +       }
> > > +
> > >
> > >         /* Set init register settings */
> > >
> > > -       ret = imx290_set_register_array(imx290,
> > > imx290_global_init_settings, -
> > > ARRAY_SIZE(imx290_global_init_settings)); +       ret =
> > > imx290_set_register_array(imx290, regs, reg_num);
> > >
> > >         if (ret < 0) {
> > >
> > >                 dev_err(imx290->dev, "Could not set init registers\n");
> > >                 return ret;
> > >
> > > @@ -1072,7 +1135,7 @@ static int imx290_enum_mbus_code(struct v4l2_subdev
> > > *sd,>
> > >         if (code->index >= ARRAY_SIZE(imx290_formats))
> > >
> > >                 return -EINVAL;
> > >
> > > -       code->code = imx290_formats[code->index].code[imx290->mono];
> > > +       code->code =
> > > imx290_formats[code->index].code[imx290->devdata->mono];>
> > >         return 0;
> > >
> > >  }
> > >
> > > @@ -1114,7 +1177,7 @@ static int imx290_set_fmt(struct v4l2_subdev *sd,
> > >
> > >         fmt->format.height = mode->height;
> > >
> > >         if (!imx290_format_info(imx290, fmt->format.code))
> > >
> > > -               fmt->format.code = imx290_formats[0].code[imx290->mono];
> > > +               fmt->format.code =
> > > imx290_formats[0].code[imx290->devdata->mono];>
> > >         fmt->format.field = V4L2_FIELD_NONE;
> > >         fmt->format.colorspace = V4L2_COLORSPACE_RAW;
> > >
> > > @@ -1422,8 +1485,9 @@ static s64 imx290_check_link_freqs(const struct
> > > imx290 *imx290,>
> > >  }
> > >
> > >  static const struct of_device_id imx290_of_match[] = {
> > >
> > > -       { .compatible = "sony,imx290" },
> > > -       { .compatible = "sony,imx290-mono", .data = (void *)1 },
> > > +       { .compatible = "sony,imx290", .data = &imx290_models[IMX290] },
> > > +       { .compatible = "sony,imx290-mono", .data =
> > > &imx290_models[IMX290_MONO] }, +       { .compatible = "sony,imx327",
> > > .data = &imx290_models[IMX327] },
> > Based on Laurent's requests my parent to this set will be switching to
> > imx290 (as legacy), imx290lqr and imx290llr as the compatible strings.
> > imx327 ought to follow the same pattern.
>
> Okay thanks. I'll update to imx327lqr as well. Put me on CC so I'll notice the
> update & conflict.
>
> Best regards,
> Alexander
>
> >   Dave
> >
> > >         { /* sentinel */ }
> > >
> > >  };
> > >  MODULE_DEVICE_TABLE(of, imx290_of_match);
> > >
> > > @@ -1441,8 +1505,7 @@ static int imx290_parse_dt(struct imx290 *imx290)
> > >
> > >         s64 fq;
> > >
> > >         match = i2c_of_match_device(imx290_of_match, client);
> > >
> > > -       if (match)
> > > -               imx290->mono = match->data ? 1 : 0;
> > > +       imx290->devdata = match->data;
> > >
> > >         endpoint = fwnode_graph_get_next_endpoint(dev_fwnode(imx290->dev),
> > >         NULL);
> > >         if (!endpoint) {
> > >
> > > @@ -1561,6 +1624,9 @@ static int imx290_probe(struct i2c_client *client)
> > >
> > >         if (ret)
> > >
> > >                 goto err_pm;
> > >
> > > +       v4l2_i2c_subdev_set_name(&imx290->sd, client,
> > > +                                imx290->devdata->name, NULL);
> > > +
> > >
> > >         /*
> > >
> > >          * Finally, register the V4L2 subdev. This must be done after
> > >          * initializing everything as the subdev can be used immediately
> > >          after
> > >
> > > --
> > > 2.34.1
>
>
>
>
