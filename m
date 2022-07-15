Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E3BBE576407
	for <lists+devicetree@lfdr.de>; Fri, 15 Jul 2022 17:03:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230514AbiGOPDi (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 15 Jul 2022 11:03:38 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44822 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232111AbiGOPDg (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 15 Jul 2022 11:03:36 -0400
Received: from mail-ej1-x632.google.com (mail-ej1-x632.google.com [IPv6:2a00:1450:4864:20::632])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A10397B343
        for <devicetree@vger.kernel.org>; Fri, 15 Jul 2022 08:03:33 -0700 (PDT)
Received: by mail-ej1-x632.google.com with SMTP id sz17so9430134ejc.9
        for <devicetree@vger.kernel.org>; Fri, 15 Jul 2022 08:03:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=melexis.com; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=p6CP8onopPD155/MIJJvmZwsD6iKmjXwq6TGpLz4mfI=;
        b=hQia2dU1v8vS2fRfBhTKvB0RzbDCiYNzunNtQDiM1EMQql2ps5CpylbwJk/64QFLop
         SASu/mIWVL84rmDgWpxEpM4z+aoOoS49QYrVVS/iIMzL+3qJ5iqd4tH4wceETsXcAM8b
         EQC3vX1cZmZhgRFmfRjyMl4Gt5e39n4b/xnvfibbPpCn1/fco+pAl8+4L7bOqKoSS8vb
         Rbzit5G3w5rpyYcjdL3Zbc1gCap1TSowh5YFa6deEYcL9pbF/zNLgXpVo1phEgoaRf/Y
         ggorsKEui8/N4guc+HWY9tI3/LJ3ponaZE8CzIA5o6VabNDWtIZoUU0ujHJ+u/lfD7CS
         tvkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=p6CP8onopPD155/MIJJvmZwsD6iKmjXwq6TGpLz4mfI=;
        b=XSDVocPblEB9uiNPILVz+25b7nv+A9sUg5PHAQ77mcBhkVahHDbBfW07WHRXTkEenF
         CvWW5aVUhIlM+HZkdW8A9Ce2XorhUBIPSGaKenNJ78Q5BuiMOZcbZWjfVJEhaVtMQcik
         PHBVtA0lsYqY4AUGnN9Fb3JgL4IMsPCQQFr/0ppmULlH1JRnHOnce8Wub/sv+/1s97WT
         PVFrhd2KIXUoDqCMCK/mubRIchXq61w61ma05LqQm0xY999k8pGHgnYch/oWdiStYAca
         VcbQB4Pi6X1knHQIfHclauJyIhubQVDLw35cfTwRIi4oNvWF3FlaySoEK+VSco6Kmz9q
         p9AQ==
X-Gm-Message-State: AJIora8mbXkghg1hKmR7a3QwPcznwPjBeL+MQUiv002U4ioFUxFwgf/I
        tXh/nS+nEoZfkvEh03nR8g7ztg==
X-Google-Smtp-Source: AGRyM1u/Ac7XPT3CGow6rGqwOjkMVNynv+ceFHuR2a9Sx0/sdd1qDnla4xm1qnZHAB9JTg/O41aNxw==
X-Received: by 2002:a17:906:14d:b0:711:ff36:b1af with SMTP id 13-20020a170906014d00b00711ff36b1afmr13950885ejh.422.1657897412168;
        Fri, 15 Jul 2022 08:03:32 -0700 (PDT)
Received: from vkh-ThinkPad-T490 ([194.44.56.171])
        by smtp.gmail.com with ESMTPSA id t10-20020a05640203ca00b0043a26e3db72sm3000594edw.54.2022.07.15.08.03.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 15 Jul 2022 08:03:31 -0700 (PDT)
Date:   Fri, 15 Jul 2022 18:03:29 +0300
From:   Volodymyr Kharuk <vkh@melexis.com>
To:     Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc:     linux-media@vger.kernel.org, Andrii Kyselov <ays@melexis.com>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Hyun Kwon <hyun.kwon@xilinx.com>,
        Michal Simek <michal.simek@xilinx.com>,
        Kieran Bingham <kieran.bingham+renesas@ideasonboard.com>,
        devicetree@vger.kernel.org,
        Benjamin Mugnier <benjamin.mugnier@foss.st.com>
Subject: Re: [PATCH v2 4/6] media: uapi: Add mlx7502x header file
Message-ID: <20220715150329.GA14041@vkh-ThinkPad-T490>
References: <cover.1657786765.git.vkh@melexis.com>
 <0765b2ef8eea43dce67232a109e9f8b338aa06bd.1657786765.git.vkh@melexis.com>
 <Ys/wh1wUvQlmpHrg@pendragon.ideasonboard.com>
 <20220715085720.GA2295@vkh-ThinkPad-T490>
 <YtE1EgvDpfLdbWnD@pendragon.ideasonboard.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <YtE1EgvDpfLdbWnD@pendragon.ideasonboard.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_NONE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Jul 15, 2022 at 12:36:18PM +0300, Laurent Pinchart wrote:
> Hello,
> 
> CC'ing Benjamin Mugnier who I recall expressed an interest in ToF
> sensors (if I recall incorrectly, my apologies).
> 
> On Fri, Jul 15, 2022 at 11:57:20AM +0300, Volodymyr Kharuk wrote:
> > On Thu, Jul 14, 2022 at 01:31:35PM +0300, Laurent Pinchart wrote:
> > > On Thu, Jul 14, 2022 at 11:34:46AM +0300, Volodymyr Kharuk wrote:
> > > > Define user controls for mlx7502x driver and update MAINTAINERS
> > > > 
> > > > Signed-off-by: Volodymyr Kharuk <vkh@melexis.com>
> > > > ---
> > > >  MAINTAINERS                   |  7 +++++++
> > > >  include/uapi/linux/mlx7502x.h | 31 +++++++++++++++++++++++++++++++
> > > >  2 files changed, 38 insertions(+)
> > > >  create mode 100644 include/uapi/linux/mlx7502x.h
> > > > 
> > > > diff --git a/MAINTAINERS b/MAINTAINERS
> > > > index ef3ec334fae9..1a68d888ee14 100644
> > > > --- a/MAINTAINERS
> > > > +++ b/MAINTAINERS
> > > > @@ -12673,6 +12673,13 @@ S:	Supported
> > > >  W:	http://www.melexis.com
> > > >  F:	drivers/iio/temperature/mlx90632.c
> > > >  
> > > > +MELEXIS MLX7502X DRIVER
> > > > +M:	Volodymyr Kharuk <vkh@melexis.com>
> > > > +L:	linux-media@vger.kernel.org
> > > > +S:	Supported
> > > > +W:	http://www.melexis.com
> > > > +F:	include/uapi/linux/mlx7502x.h
> > > > +
> > > >  MELFAS MIP4 TOUCHSCREEN DRIVER
> > > >  M:	Sangwon Jee <jeesw@melfas.com>
> > > >  S:	Supported
> > > > diff --git a/include/uapi/linux/mlx7502x.h b/include/uapi/linux/mlx7502x.h
> > > > new file mode 100644
> > > > index 000000000000..44386f3d6f5a
> > > > --- /dev/null
> > > > +++ b/include/uapi/linux/mlx7502x.h
> > > > @@ -0,0 +1,31 @@
> > > > +/* SPDX-License-Identifier: GPL-2.0 WITH Linux-syscall-note */
> > > > +/*
> > > > + * Melexis 7502x ToF cameras driver.
> > > > + *
> > > > + * Copyright (C) 2021 Melexis N.V.
> > > > + *
> > > > + */
> > > > +
> > > > +#ifndef __UAPI_MLX7502X_H_
> > > > +#define __UAPI_MLX7502X_H_
> > > > +
> > > > +#include <linux/v4l2-controls.h>
> > > > +
> > > 
> > > These controls should be documented, in
> > > Documentation/userspace-api/media/drivers/.
> > 
> > Ok, will do in v3
> > 
> > > > +/* number of phases per frame: 1..8 */
> > > > +#define V4L2_CID_MLX7502X_PHASE_NUMBER  (V4L2_CID_USER_MLX7502X_BASE + 0)
> > > > +/* shift of each phase in frame, this is an array of 8 elements, each 16bits */
> > > > +#define V4L2_CID_MLX7502X_PHASE_SEQ	(V4L2_CID_USER_MLX7502X_BASE + 1)
> > > > +/* frequency modulation in MHz */
> > > > +#define V4L2_CID_MLX7502X_FMOD		(V4L2_CID_USER_MLX7502X_BASE + 2)
> > > > +/* time integration of each phase in us */
> > > > +#define V4L2_CID_MLX7502X_TINT		(V4L2_CID_USER_MLX7502X_BASE + 3)
> > > 
> > > Are these control very device-specific, or are they concept that apply
> > > in general to ToF sensors ? Same for V4L2_CID_MLX7502X_OUTPUT_MODE.
> > 
> > These controls(except V4L2_CID_MLX7502X_OUTPUT_MODE) are general for ToF
> > sensors. Do you think we should standardize them?
> 
> I would really really like to see control standardization for ToF
> sensors, yes :-)
Sounds great :)
> 
> Do you know of any public litterature that explains the operating
> principles of ToF sensors ? I don't expect most of the V4L2 developers
> to be familiar with the concept, so something that could bring us up to
> speed on ToF would be useful for the discussion.

Here what I have:
1. ToF Basics from Melexis
https://media.melexis.com/-/media/files/documents/application-notes/time-of-flight-basics-application-note-melexis.pdf
2. ToF Basics from TI
https://www.ti.com/lit/wp/sloa190b/sloa190b.pdf?ts=1657842732275&ref_url=https%253A%252F%252Fwww.google.com%252F
2. ToF systems from TI
https://www.ti.com/lit/ug/sbau219d/sbau219d.pdf
4. This more related to ToF algorithms
https://hal.inria.fr/hal-00725654/document

I hope it helps.
> 
> > Note that the control V4L2_CID_MLX7502X_TINT is similar to
> > V4L2_CID_EXPOSURE, but the way it is done in ToF is different. They don't
> > have a shutter. So I gave a separate control name. Is it ok?
> 
> Yes, I think that's fine.
> 
> > > > +/* mode could sw(sending i2c packet), hw(pin triggering), and continuous(self triggering) */
> > > > +#define V4L2_CID_MLX7502X_TRIGGER_MODE	(V4L2_CID_USER_MLX7502X_BASE + 4)
> > > > +/* in case sw or hw trigger mode is used */
> > > > +#define V4L2_CID_MLX7502X_TRIGGER	(V4L2_CID_USER_MLX7502X_BASE + 5)
> > > 
> > > Trigger control is likely something we need to standardize at the V4L2
> > > level.
> > 
> > Ok, then I'll remove these controls for now and I will back with this as
> > a separate patch.
> > 
> > > > +/* this is related to the taps in ToF cameras, usually A minus B is the best option */
> > > > +#define V4L2_CID_MLX7502X_OUTPUT_MODE	(V4L2_CID_USER_MLX7502X_BASE + 6)
> > > > +/* ToF camers has its own temperature sensor, which can be read out only during streaming */
> > > > +#define V4L2_CID_MLX7502X_TEMPERATURE	(V4L2_CID_USER_MLX7502X_BASE + 7)
> > > 
> > > This should probably use the proposed temperature control from
> > > https://lore.kernel.org/linux-media/20220415111845.27130-3-benjamin.mugnier@foss.st.com/
> > 
> > Ok, then I'll remove these controls for now.
> > 
> > > > +
> > > > +#endif /* __UAPI_MLX7502X_H_ */
> 
> -- 
> Regards,
> 
> Laurent Pinchart

-- 
--
Volodymyr Kharuk
