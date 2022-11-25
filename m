Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 62631638CE4
	for <lists+devicetree@lfdr.de>; Fri, 25 Nov 2022 16:06:06 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229735AbiKYPGE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 25 Nov 2022 10:06:04 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58996 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229597AbiKYPGE (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 25 Nov 2022 10:06:04 -0500
Received: from mail-ed1-x531.google.com (mail-ed1-x531.google.com [IPv6:2a00:1450:4864:20::531])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C3ED927B0F
        for <devicetree@vger.kernel.org>; Fri, 25 Nov 2022 07:06:01 -0800 (PST)
Received: by mail-ed1-x531.google.com with SMTP id s12so6748590edd.5
        for <devicetree@vger.kernel.org>; Fri, 25 Nov 2022 07:06:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=melexis.com; s=google;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=fvqdmTUWT2xrEs7EUWyBWddANF1nz9rdB64JipOk+bQ=;
        b=cKJf3Bor2OFyZBLIh0WUIq1HVFaLOp8T+qsYxprqyKEje6jbdKS5tr0Ispl0lzki8+
         eO68hXpM864fW6bAHaGIIHbdBl+uDyfgnL87ijgZ0DBK3SD9/pOoHp2jkm3hQn15VHpC
         XUR5sIORuhBpojVHBk/MUzudQmIVFofNi27nD1iWr69LbR/BQ+mmfdEpaE8IJPTVEU5v
         MLETBzIGr5VyEpxcNIlgalItSWgl+ppASZxNcVR9Gslse7i7ndlxZCNljDX4zT5/pAJi
         6kJZyMPFHp8zZT/DGaIG5YQAVbUsNm59+5UAJWwuXz4Nv5Eel01AxYo6yRLkzUde6e4r
         nhGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=fvqdmTUWT2xrEs7EUWyBWddANF1nz9rdB64JipOk+bQ=;
        b=RK2V2y8swWVPd9hEIeUBBQw0991hyhSRgSx0X+8lZXNuZV7ILczOi89uMe61EwUBuf
         nW20zD/9mg0jUJHA+r+t7Cw+Pc1rqplJdJOPnuu/r1hqHYh/z/2NZtpOkwLmuNASO9gs
         cIgWnVkpLMmumlsIrAuCRa1FsAlwGJWNvRTPZbbj13n8rwnS6EiIh1pxxys7vNQdmsk2
         myZNq9DJ3maKqrzBbLWFXBodJubuzzz1GQSTSnB3qm/SdOyQPKdCEmxnoNaQ2popuDLL
         29rvWPuThGADWjmFLLSpZlYCIDQT9WTczDDKBx9A5eInvx7swnqioNl9nkec1xcU8D6f
         jlqw==
X-Gm-Message-State: ANoB5plvJ5IUNfy+BBj2Rk7ZHgtkYhJjA2kDEAkN70xgZToWq8Ksgy4H
        Au2zVmQeFq8DQJOrWn9mJ50ZsIKjuoMokr9o
X-Google-Smtp-Source: AA0mqf7jgt3PeWxJilXyfbPsUkqudms+cGCl/vYbtk8bV0e8nB2mna5DtYQj/DkP+VgItJb8UpTsZg==
X-Received: by 2002:aa7:c6da:0:b0:469:172:1f38 with SMTP id b26-20020aa7c6da000000b0046901721f38mr33411953eds.195.1669388760077;
        Fri, 25 Nov 2022 07:06:00 -0800 (PST)
Received: from melexis.com ([2a02:2378:1085:b41d:bec4:93fd:8998:6d7a])
        by smtp.gmail.com with ESMTPSA id f24-20020a170906495800b007bb32e2d6f5sm1637452ejt.207.2022.11.25.07.05.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 25 Nov 2022 07:05:59 -0800 (PST)
Date:   Fri, 25 Nov 2022 17:05:55 +0200
From:   Volodymyr Kharuk <vkh@melexis.com>
To:     Hans Verkuil <hverkuil-cisco@xs4all.nl>
Cc:     linux-media@vger.kernel.org, Andrii Kyselov <ays@melexis.com>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        devicetree@vger.kernel.org,
        Sakari Ailus <sakari.ailus@linux.intel.com>,
        Benjamin Mugnier <benjamin.mugnier@foss.st.com>
Subject: Re: [PATCH v3 1/8] media: uapi: ctrls: Add Time of Flight class
 controls
Message-ID: <Y4DZ009tDZxOu1n0@melexis.com>
References: <cover.1669381013.git.vkh@melexis.com>
 <8819951fe1bb25501ab88e00bcf8e76734e97663.1669381013.git.vkh@melexis.com>
 <a021fcb2-81f4-38bd-6958-4fca59738878@xs4all.nl>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <a021fcb2-81f4-38bd-6958-4fca59738878@xs4all.nl>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_NONE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Hans,

Thanks for your review,

On Fri, Nov 25, 2022 at 03:20:46PM +0100, Hans Verkuil wrote:
> On 25/11/2022 14:34, Volodymyr Kharuk wrote:
> > Define Time of Flight class controls.
> > Also add most common TOF controls:
> >  - phase sequence
> >  - time integration
> >  - frequency modulation
> > 
> > Signed-off-by: Volodymyr Kharuk <vkh@melexis.com>
> > ---
> >  include/uapi/linux/v4l2-controls.h | 8 ++++++++
> >  1 file changed, 8 insertions(+)
> > 
> > diff --git a/include/uapi/linux/v4l2-controls.h b/include/uapi/linux/v4l2-controls.h
> > index d27e255ed33b..a9ecfaa4252c 100644
> > --- a/include/uapi/linux/v4l2-controls.h
> > +++ b/include/uapi/linux/v4l2-controls.h
> > @@ -68,6 +68,7 @@
> >  #define V4L2_CTRL_CLASS_DETECT		0x00a30000	/* Detection controls */
> >  #define V4L2_CTRL_CLASS_CODEC_STATELESS 0x00a40000	/* Stateless codecs controls */
> >  #define V4L2_CTRL_CLASS_COLORIMETRY	0x00a50000	/* Colorimetry controls */
> > +#define V4L2_CTRL_CLASS_TOF		0x00a60000	/* Time of light camera controls */
> 
> light -> flight
oh, indeed. Will fix.
> 
> >  
> >  /* User-class control IDs */
> >  
> > @@ -2782,6 +2783,13 @@ struct v4l2_ctrl_vp9_compressed_hdr {
> >  	struct v4l2_vp9_mv_probs mv;
> >  };
> >  
> > +#define V4L2_CID_TOF_CLASS_BASE		(V4L2_CTRL_CLASS_TOF | 0x900)
> > +#define V4L2_CID_TOF_CLASS		(V4L2_CTRL_CLASS_TOF | 1)
> > +
> > +#define V4L2_CID_TOF_PHASE_SEQ		(V4L2_CID_TOF_CLASS_BASE + 0)
> > +#define V4L2_CID_TOF_FMOD		(V4L2_CID_TOF_CLASS_BASE + 1)
> 
> I'd go for _FREQ_MOD
Ok. Will fix.
> 
> > +#define V4L2_CID_TOF_TINT		(V4L2_CID_TOF_CLASS_BASE + 2)
> 
> and _TIME_INTEGRATION
Ok. Will fix.
> 
> Regards,
> 
> 	Hans
> 
> > +
> >  /* MPEG-compression definitions kept for backwards compatibility */
> >  #ifndef __KERNEL__
> >  #define V4L2_CTRL_CLASS_MPEG            V4L2_CTRL_CLASS_CODEC
> 

-- 
--
BR,
Volodymyr Kharuk
