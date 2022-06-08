Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9AB335429C6
	for <lists+devicetree@lfdr.de>; Wed,  8 Jun 2022 10:46:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231701AbiFHIqR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 8 Jun 2022 04:46:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35730 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231733AbiFHIp0 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 8 Jun 2022 04:45:26 -0400
Received: from mail-ej1-f41.google.com (mail-ej1-f41.google.com [209.85.218.41])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EEFD1237CCC
        for <devicetree@vger.kernel.org>; Wed,  8 Jun 2022 01:04:37 -0700 (PDT)
Received: by mail-ej1-f41.google.com with SMTP id gl15so25966882ejb.4
        for <devicetree@vger.kernel.org>; Wed, 08 Jun 2022 01:04:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to;
        bh=z1pynH//pgQnDYlKVmezDz849rqJ016okOmOatfBqg0=;
        b=pcWkoMaatsyoOnjH1V3SQDD3Os/+RJimsLiREuuPBkldlhiUEwH9mU3z4kih2DOH/r
         9dhB2jeRUXdsSJEQSZ0zw88jZ5NCl5R838STUdKIni/DX+OlahF/biO12DBEh0GUFBy/
         K/OpQt4SGcDNyuxSv6xLIX2dLTsNROzQb/Wfk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=z1pynH//pgQnDYlKVmezDz849rqJ016okOmOatfBqg0=;
        b=Wn+HXQMdkPRrK4X1vLKBeIX7yaXrskCue92sAsMcyVjJGenOB2cfppFuwXIoQ8ekxP
         gX+vOeTksqFQXFuMtUxmcEV9gP8Wt7zlim5tVhewBLRu9latlCVNudKmtnq7SZ8BuNT7
         6vNm4dvwKBrlI7rOA4RA0CXVMmWmDjG0Dc207HZ5ZmDenTLnf/QEMv8z6rQj60JkD2T3
         2xwtRvYaaPanLKeeaVwwXR+U/R/m9MjqiXT4upnnmkIuivzp7wzhhQN8XkEKRo+oZ7P/
         /3ebosUQykzPnwg0NUnt9z63gwpASlY1ZHhkreEjofRuN1Ur9izcOjkmEqtG3oczRHYM
         dFUQ==
X-Gm-Message-State: AOAM532bKgpeBSh+T9HHQlnU9Jl150KT4uT9oE5PAV3Cf2HsndZMfo22
        4W4AHpFo/VxPglElJ0/tDtoeqg==
X-Google-Smtp-Source: ABdhPJwRYQpjkqr0vcW3vwHEA6U4wL2bHxy0Nl5aD5H+iFVKDzBaiCaZxSgiFxUY07rEl6/Q9gxhiA==
X-Received: by 2002:a17:906:4356:b0:711:cd0d:b205 with SMTP id z22-20020a170906435600b00711cd0db205mr14359077ejm.240.1654675384925;
        Wed, 08 Jun 2022 01:03:04 -0700 (PDT)
Received: from tom-ThinkPad-T14s-Gen-2i (net-2-39-143-183.cust.vodafonedsl.it. [2.39.143.183])
        by smtp.gmail.com with ESMTPSA id r11-20020aa7d58b000000b0042df0c7deccsm11846369edq.78.2022.06.08.01.03.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Jun 2022 01:03:04 -0700 (PDT)
Date:   Wed, 8 Jun 2022 10:03:02 +0200
From:   Tommaso Merciai <tommaso.merciai@amarulasolutions.com>
To:     Jacopo Mondi <jacopo@jmondi.org>
Cc:     Quentin Schulz <foss+kernel@0leil.net>, shawnx.tu@intel.com,
        mchehab@kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, linux-media@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Quentin Schulz <quentin.schulz@theobroma-systems.com>
Subject: Re: [PATCH v6 4/4] media: i2c: ov5675: add .get_selection support
Message-ID: <20220608080302.GC821506@tom-ThinkPad-T14s-Gen-2i>
References: <20220607153335.875956-1-foss+kernel@0leil.net>
 <20220607153335.875956-4-foss+kernel@0leil.net>
 <20220607165136.bmriu2n7yorc7fx6@uno.localdomain>
 <20220607220405.GB821506@tom-ThinkPad-T14s-Gen-2i>
 <20220608064209.roub7uk7kx4k4muf@uno.localdomain>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220608064209.roub7uk7kx4k4muf@uno.localdomain>
X-Spam-Status: No, score=-0.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,PDS_OTHER_BAD_TLD,
        RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_NONE,
        SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=no autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Wed, Jun 08, 2022 at 08:42:09AM +0200, Jacopo Mondi wrote:
> Hi
> 
> On Wed, Jun 08, 2022 at 12:04:05AM +0200, Tommaso Merciai wrote:
> > Hi Quentin/Jacopo,
> >
> > On Tue, Jun 07, 2022 at 06:51:36PM +0200, Jacopo Mondi wrote:
> > > Hi Quentin,
> > >
> > > On Tue, Jun 07, 2022 at 05:33:35PM +0200, Quentin Schulz wrote:
> > > > From: Quentin Schulz <quentin.schulz@theobroma-systems.com>
> > > >
> > > > The sensor has 2592*1944 active pixels, surrounded by 16 active dummy
> > > > pixels and there are an additional 24 black rows "at the bottom".
> > > >
> > > >                      [2624]
> > > >         +-----+------------------+-----+
> > > >         |     |     16 dummy     |     |
> > > >         +-----+------------------+-----+
> > > >         |     |                  |     |
> > > >         |     |     [2592]       |     |
> > > >         |     |                  |     |
> > > >         |16   |      valid       | 16  |[2000]
> > > >         |dummy|                  |dummy|
> > > >         |     |            [1944]|     |
> > > >         |     |                  |     |
> > > >         +-----+------------------+-----+
> > > >         |     |     16 dummy     |     |
> > > >         +-----+------------------+-----+
> > > >         |     |  24 black lines  |     |
> > > >         +-----+------------------+-----+
> > > >
> > > > The top-left coordinate is gotten from the registers specified in the
> > > > modes which are identical for both currently supported modes.
> > > >
> > > > There are currently two modes supported by this driver: 2592*1944 and
> > > > 1296*972. The second mode is obtained thanks to subsampling while
> > > > keeping the same field of view (FoV). No cropping involved, hence the
> > > > harcoded values.
> > > >
> > > > Signed-off-by: Quentin Schulz <quentin.schulz@theobroma-systems.com>
> > > > ---
> > > >
> > > > v6:
> > > >  - explicit a bit more the commit log around subsampling for lower
> > > >  resolution modes,
> > > >  - (again) fixed reporting for V4L2_SEL_TGT_CROP_* thanks to Jacopo's help,
> > > >
> > > > v4:
> > > >  - explicit a bit more the commit log,
> > > >  - added drawing in the commit log,
> > > >  - fixed reporting for V4L2_SEL_TGT_CROP_* thanks to Jacopo's help,
> > > >
> > > > added in v3
> > > >
> > > >  drivers/media/i2c/ov5675.c | 21 +++++++++++++++++++++
> > > >  1 file changed, 21 insertions(+)
> > > >
> > > > diff --git a/drivers/media/i2c/ov5675.c b/drivers/media/i2c/ov5675.c
> > > > index 80840ad7bbb0..2230ff47ef49 100644
> > > > --- a/drivers/media/i2c/ov5675.c
> > > > +++ b/drivers/media/i2c/ov5675.c
> > > > @@ -1121,6 +1121,26 @@ static int ov5675_get_format(struct v4l2_subdev *sd,
> > > >  	return 0;
> > > >  }
> > > >
> > > > +static int ov5675_get_selection(struct v4l2_subdev *sd,
> > > > +				struct v4l2_subdev_state *state,
> > > > +				struct v4l2_subdev_selection *sel)
> > > > +{
> > > > +	if (sel->which != V4L2_SUBDEV_FORMAT_ACTIVE)
> > > > +		return -EINVAL;
> > > > +
> > > > +	switch (sel->target) {
> > > > +	case V4L2_SEL_TGT_CROP:
> > > > +	case V4L2_SEL_TGT_CROP_BOUNDS:
> > >
> > > Seem like we have trouble understanding each other, or better, I have
> > > troubles explaining myself most probably :)
> > >
> > > If the dummy/black area is readable, this should just be (0, 0, 2624,
> > > 2000) like it was in your previous version. What has changed that I
> > > have missed ?
> >
> > Taking as reference drivers/media/i2c/ov5693.c and others,
> > seems ok what Quentin have done from my side.
> >
> > Just one thing: maybe is better to avoid magic numbers with more
> > explicit defines like:
> >
> >  + case V4L2_SEL_TGT_CROP_DEFAULT:
> >  +           sel->r.top = OV5675_ACTIVE_START_TOP;
> >  +           sel->r.left = OV5693_ACTIVE_START_LEFT;
> >  +           sel->r.width = OV5693_ACTIVE_WIDTH;
> >  +           sel->r.height = OV5693_ACTIVE_HEIGHT;
> >
> > What do you think about?
> >
> > Thanks,
> > Tommaso
> >
> >
> 
> We have extensively discussed this:
> https://patchwork.linuxtv.org/project/linux-media/patch/20220509143226.531117-4-foss+kernel@0leil.net/
> https://patchwork.linuxtv.org/project/linux-media/patch/20220525145833.1165437-4-foss+kernel@0leil.net/
> 
> From the CROP_BOUNDS definition:
> Bounds of the crop rectangle. All valid crop rectangles fit inside the
> crop bounds rectangle.
> 
> From CROP_DEFAULT:
> Suggested cropping rectangle that covers the “whole picture”. This
> includes only active pixels and excludes other non-active pixels such
> as black pixels.
> 
> If (and only if) dummy/inactive pixels can be read out, the BOUNDS
> rectangle should contain them. In this case, as the analog crop
> rectangle is defined with a 16x16 top-left corner (and with a visible
> size of 2592x1944) from a larger rectangle, I presume it means
> dummy/invalid pixls can be read (IOW you can give to the ISP a rectangle
> that includes them).

Thanks for sharing this.

> 
> Anyway, we're discussing details really. I think v5 was almost there
> 
> +	switch (sel->target) {
> +	case V4L2_SEL_TGT_CROP_BOUNDS:
> +		sel->r.top = 0;
> +		sel->r.left = 0;
> +		sel->r.width = 2624;
> +		sel->r.height = 2000;
> +		return 0;
> +	case V4L2_SEL_TGT_CROP:
> +		sel->r.top = 16;
> +		sel->r.left = 16;
> +		sel->r.width = ov5675->cur_mode->width;
> +		sel->r.height = ov5675->cur_mode->height;
> +		return 0;
> +	case V4L2_SEL_TGT_CROP_DEFAULT:
> +		sel->r.top = 16;
> +		sel->r.left = 16;
> +		sel->r.width = supported_modes[0].width;
> +		sel->r.height = supported_modes[0].height;
> +		return 0;
> +	}
> 
> Apart from the fact that TGT_CROP should not report the final image
> size (after binning/digital crop) but the size of the pixel array
> portion processed to obtain the final image.
> 
> 
> +	switch (sel->target) {
> +	case V4L2_SEL_TGT_CROP_BOUNDS:
> +		sel->r.top = 0;
> +		sel->r.left = 0;
> +		sel->r.width = 2624;
> +		sel->r.height = 2000;
> +		return 0;
> +	case V4L2_SEL_TGT_CROP:
> +	case V4L2_SEL_TGT_CROP_DEFAULT:
> +		sel->r.top = 16;
> +		sel->r.left = 16;
> +		sel->r.width = 2592;
> +		sel->r.height = 1944;
> +		return 0;
> +	}
> 
> Let me remind that (in the context of pleasing libcamera requirements
> as Quentin is doing) all targets apart TGT_CROP are only useful to
> report static properties of the camera, which are of no real use
> unless you start actually looking into reading out black pixels etc
> etc.

Got it.
Thanks for clarifications.

Regards,
Tommaso
> 
> 
> > >
> > > Thanks
> > >   j
> > >
> > >
> > > > +	case V4L2_SEL_TGT_CROP_DEFAULT:
> > > > +		sel->r.top = 16;
> > > > +		sel->r.left = 16;
> > > > +		sel->r.width = 2592;
> > > > +		sel->r.height = 1944;
> > > > +		return 0;
> > > > +	}
> > > > +	return -EINVAL;
> > > > +}
> > > > +
> > > >  static int ov5675_enum_mbus_code(struct v4l2_subdev *sd,
> > > >  				 struct v4l2_subdev_state *sd_state,
> > > >  				 struct v4l2_subdev_mbus_code_enum *code)
> > > > @@ -1170,6 +1190,7 @@ static const struct v4l2_subdev_video_ops ov5675_video_ops = {
> > > >  static const struct v4l2_subdev_pad_ops ov5675_pad_ops = {
> > > >  	.set_fmt = ov5675_set_format,
> > > >  	.get_fmt = ov5675_get_format,
> > > > +	.get_selection = ov5675_get_selection,
> > > >  	.enum_mbus_code = ov5675_enum_mbus_code,
> > > >  	.enum_frame_size = ov5675_enum_frame_size,
> > > >  };
> > > > --
> > > > 2.36.1
> > > >
> >
> > --
> > Tommaso Merciai
> > Embedded Linux Engineer
> > tommaso.merciai@amarulasolutions.com
> > __________________________________
> >
> > Amarula Solutions SRL
> > Via Le Canevare 30, 31100 Treviso, Veneto, IT
> > T. +39 042 243 5310
> > info@amarulasolutions.com
> > www.amarulasolutions.com

-- 
Tommaso Merciai
Embedded Linux Engineer
tommaso.merciai@amarulasolutions.com
__________________________________

Amarula Solutions SRL
Via Le Canevare 30, 31100 Treviso, Veneto, IT
T. +39 042 243 5310
info@amarulasolutions.com
www.amarulasolutions.com
