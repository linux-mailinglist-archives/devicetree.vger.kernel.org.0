Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 71ED771866F
	for <lists+devicetree@lfdr.de>; Wed, 31 May 2023 17:33:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232815AbjEaPdw (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 31 May 2023 11:33:52 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56526 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232596AbjEaPdw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 31 May 2023 11:33:52 -0400
Received: from mail-ua1-x92a.google.com (mail-ua1-x92a.google.com [IPv6:2607:f8b0:4864:20::92a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7B8AB134
        for <devicetree@vger.kernel.org>; Wed, 31 May 2023 08:33:48 -0700 (PDT)
Received: by mail-ua1-x92a.google.com with SMTP id a1e0cc1a2514c-786de394130so1881564241.2
        for <devicetree@vger.kernel.org>; Wed, 31 May 2023 08:33:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=raspberrypi.com; s=google; t=1685547227; x=1688139227;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=imIEjVFp5eSMKckQx5LngCbXtl42MBWZrmB1sV0z1i4=;
        b=Kg4J/UusGpQUu9IIY2Yt6Rkna3CDY0B/+bPZWEkP6ZTeXSCiAccC+b8VEUqOoOn76v
         v8hBCZbn1ptZseLTEZYy9z7HqWGIcK0j6sCZLnryR+fGyfT0dzqroxmYau5JNb5PLXz4
         f0TfAx4q7//DE1h3q9YTXCgOzqpOLlRarIkw27icCkaGuFzQ22+gcyVldvQlmDjJnJ01
         EacmqG1Rl1O/TG+BRJNWsDN33bWskoEsN2CteDZ6SRPz2ruzyL7aEJW3+hoGI9N+99+7
         ULoWazxfoqa/O7rc25xko16JcnowEWK1eSUhz92mJonACueBSh3GRnTqxGR7YEkg6LKf
         GzTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685547227; x=1688139227;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=imIEjVFp5eSMKckQx5LngCbXtl42MBWZrmB1sV0z1i4=;
        b=Wql7YqaZY3ROWznr4ocYgP+lXZEqseNNByVHsG+ImlT7aIvolMkZ7SwMBczW43qlLk
         G+qw6UJ75+e3x+JU5XOXXunW7T7D2dAHqrqMbpD6+pDng8ncrUo41IPq88uCMbyHvhQM
         W+zz2DKNruAMWVEDiN522wvmGpIyzUzKJNfp1j0HSnPUv1+/syA9ioXgq37+ggGFansw
         be3zmvbE5HYthvb9Ty7uYLhn6YtHotK4s/Puit55bUB9YJPHUBfJvlvRPSeGePyF1rDx
         gNwolYKC/E6divKEibwyENSpZBR1B4fnkcf3UKZuvpNrPbQw9KbQJSiIcHq4r0nodCFc
         lXig==
X-Gm-Message-State: AC+VfDyDBrjx1nC611zvciFaHP+YLuQpn5N/ozXWjGbqwj0L6TA8uJNT
        +Y3NnbsQ1LpW0UGSp5yUNEn30LPr7CzA+L3l6CWmPg==
X-Google-Smtp-Source: ACHHUZ51h2QL9ZoX9ZoQjeVrv6tfPZLVpfdkbpaX/TCaqP2cZNJGTczauzYpLJ1GskTwU2OHb0cHa4wbrLgKsqMvyKw=
X-Received: by 2002:a1f:604c:0:b0:43c:290c:25e8 with SMTP id
 u73-20020a1f604c000000b0043c290c25e8mr1689481vkb.6.1685547227570; Wed, 31 May
 2023 08:33:47 -0700 (PDT)
MIME-Version: 1.0
References: <20230530173000.3060865-1-dave.stevenson@raspberrypi.com>
 <20230530173000.3060865-7-dave.stevenson@raspberrypi.com> <vnwwrfgwr5ueiheqsnvxz7sh3qjcftocjjxdghvrigfmlss4yu@5xq3tppv4pxg>
In-Reply-To: <vnwwrfgwr5ueiheqsnvxz7sh3qjcftocjjxdghvrigfmlss4yu@5xq3tppv4pxg>
From:   Dave Stevenson <dave.stevenson@raspberrypi.com>
Date:   Wed, 31 May 2023 16:33:31 +0100
Message-ID: <CAPY8ntCwmx6_8g_JTPrO+=VwXKj3z0-2htzZJtB+FJ5QgimL9g@mail.gmail.com>
Subject: Re: [PATCH 06/21] media: i2c: imx258: Make V4L2_CID_VBLANK configurable.
To:     Jacopo Mondi <jacopo.mondi@ideasonboard.com>
Cc:     Sakari Ailus <sakari.ailus@linux.intel.com>,
        linux-media@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Jacopo

Thanks for the review.

On Wed, 31 May 2023 at 16:16, Jacopo Mondi
<jacopo.mondi@ideasonboard.com> wrote:
>
> Hi Dave
>
> On Tue, May 30, 2023 at 06:29:45PM +0100, Dave Stevenson wrote:
> > The values and ranges of V4L2_CID_VBLANK are all computed,
> > so there is no reason for it to be a read only control.
> > Remove the register values from the mode lists, add the
> > handler, and remove the read only flag.
> >
> > Signed-off-by: Dave Stevenson <dave.stevenson@raspberrypi.com>
> > ---
> >  drivers/media/i2c/imx258.c | 16 +++++++---------
> >  1 file changed, 7 insertions(+), 9 deletions(-)
> >
> > diff --git a/drivers/media/i2c/imx258.c b/drivers/media/i2c/imx258.c
> > index 30bae7388c3a..c6fb649abb95 100644
> > --- a/drivers/media/i2c/imx258.c
> > +++ b/drivers/media/i2c/imx258.c
> > @@ -30,6 +30,8 @@
> >  #define IMX258_VTS_30FPS_VGA         0x034c
> >  #define IMX258_VTS_MAX                       0xffff
> >
> > +#define IMX258_REG_VTS                       0x0340
> > +
> >  /* HBLANK control - read only */
> >  #define IMX258_PPL_DEFAULT           5352
> >
> > @@ -202,8 +204,6 @@ static const struct imx258_reg mode_4208x3120_regs[] = {
> >       { 0x0114, 0x03 },
> >       { 0x0342, 0x14 },
> >       { 0x0343, 0xE8 },
> > -     { 0x0340, 0x0C },
> > -     { 0x0341, 0x50 },
> >       { 0x0344, 0x00 },
> >       { 0x0345, 0x00 },
> >       { 0x0346, 0x00 },
> > @@ -319,8 +319,6 @@ static const struct imx258_reg mode_2104_1560_regs[] = {
> >       { 0x0114, 0x03 },
> >       { 0x0342, 0x14 },
> >       { 0x0343, 0xE8 },
> > -     { 0x0340, 0x06 },
> > -     { 0x0341, 0x38 },
> >       { 0x0344, 0x00 },
> >       { 0x0345, 0x00 },
> >       { 0x0346, 0x00 },
> > @@ -436,8 +434,6 @@ static const struct imx258_reg mode_1048_780_regs[] = {
> >       { 0x0114, 0x03 },
> >       { 0x0342, 0x14 },
> >       { 0x0343, 0xE8 },
> > -     { 0x0340, 0x03 },
> > -     { 0x0341, 0x4C },
> >       { 0x0344, 0x00 },
> >       { 0x0345, 0x00 },
> >       { 0x0346, 0x00 },
> > @@ -803,6 +799,11 @@ static int imx258_set_ctrl(struct v4l2_ctrl *ctrl)
> >                                              BIT(IMX258_HDR_RATIO_MAX));
> >               }
> >               break;
> > +     case V4L2_CID_VBLANK:
>
> Should a new vblank value change the exposure limits too ?

Yes, however until "media: i2c: imx258: Follow normal V4L2 behaviours
for clipping exposure" (patch 10) the driver tells the sensor to
automatically extend blanking to allow for the requested exposure,
totally without userspace knowing. That patch adds in the
recomputation of exposure based on VBLANK changing.

I can swap the patch order if you feel it is necessary, but seeing as
exposure isn't limited in reality at this point I'm not too fussed.

  Dave

> > +             ret = imx258_write_reg(imx258, IMX258_REG_VTS,
> > +                                    IMX258_REG_VALUE_16BIT,
> > +                                    imx258->cur_mode->height + ctrl->val);
> > +             break;
> >       default:
> >               dev_info(&client->dev,
> >                        "ctrl(id:0x%x,val:0x%x) is not handled\n",
> > @@ -1214,9 +1215,6 @@ static int imx258_init_controls(struct imx258 *imx258)
> >                               IMX258_VTS_MAX - imx258->cur_mode->height, 1,
> >                               vblank_def);
> >
> > -     if (imx258->vblank)
> > -             imx258->vblank->flags |= V4L2_CTRL_FLAG_READ_ONLY;
> > -
> >       imx258->hblank = v4l2_ctrl_new_std(
> >                               ctrl_hdlr, &imx258_ctrl_ops, V4L2_CID_HBLANK,
> >                               IMX258_PPL_DEFAULT - imx258->cur_mode->width,
> > --
> > 2.25.1
> >
