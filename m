Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 42E594D2297
	for <lists+devicetree@lfdr.de>; Tue,  8 Mar 2022 21:29:16 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1349950AbiCHU3T (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 8 Mar 2022 15:29:19 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50196 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1349942AbiCHU3S (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 8 Mar 2022 15:29:18 -0500
Received: from mail-qt1-x82d.google.com (mail-qt1-x82d.google.com [IPv6:2607:f8b0:4864:20::82d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9901F3701D
        for <devicetree@vger.kernel.org>; Tue,  8 Mar 2022 12:28:20 -0800 (PST)
Received: by mail-qt1-x82d.google.com with SMTP id bt3so206226qtb.0
        for <devicetree@vger.kernel.org>; Tue, 08 Mar 2022 12:28:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ndufresne-ca.20210112.gappssmtp.com; s=20210112;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding;
        bh=sy3q2pyLqssO3bII5pLJwR/IqGHMT6m7EfjujDZu5EM=;
        b=qKj2lTQ13Feca7/CgE0LLACmgFd7gDIcM16bPcWt82Sai+KaNuPddeeDeWk+xELeEx
         xpor/39zAnIgxEnmR8dMkn9i5V2z2kGPL+T49WT5/ppm9xy84Xt608NZU38JD401BHGo
         8eFbl+zEWHy70B0Y4Pp+dmwO14MMAYJ2Z6mroF2muIHgb0UvwaHbZoR2mTXv1iLjrpbY
         3VLrwUP0mxVw40yHfeR9oMRyIYD+c2klDu4+Adu7xYJUV9Fu48t50Vn1/tf1Fx+w1Jnh
         8RC3LnPL6RBMe+tB6RvprqlYlEgOIPve1qr3AwTTo3QmExKQ9Q5LAS33QRrxvcBwkizn
         hhBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=sy3q2pyLqssO3bII5pLJwR/IqGHMT6m7EfjujDZu5EM=;
        b=EaM8aFb/5XC8ASA7YNqGP1DFwJyHJZ+rSovfZOpQEKEOeTrmOoj8ra64PmvkJPnfzV
         JT3LnNHH+IfPVzyYeIfOVjZH2cSbtVK13vatBf0tjBNn4RJCIu77yEWwyBcfQLpmipz9
         kqOln3d3Dphwr6bG7kZ3IzoSTosaW5d+Lu5CX7+K1LtIOPgQAL8n/Cv5QSn8FBNgtppg
         bgvrPPZMGFHO+XNqvKV/y+MruUDlpTThsoF7+QTVOi4xpK68jqMZ2WvYlfuatvg3yozW
         Ws/2FbcyUyV07TUAfPlkdPlAJjdztAq4k9lGozQtstB1otx5BuLi5FxacC7iEoR0sH9z
         UMPA==
X-Gm-Message-State: AOAM532T77O8ApWXioO3wYHPe42kg9dbd1a6/B8LuZ+NOmu6NcTxh15o
        JRbl9iF841HhySLyecm+a6sAwQ==
X-Google-Smtp-Source: ABdhPJzTaBbMi7sWpyLaCo4W2t/jH/TSdR/p49xN+sy0KyQQXQ1jjOWXZjCG0e9TpK0QjVDx3s4HiA==
X-Received: by 2002:a05:622a:130a:b0:2e0:70b4:d9b6 with SMTP id v10-20020a05622a130a00b002e070b4d9b6mr3914646qtk.260.1646771299761;
        Tue, 08 Mar 2022 12:28:19 -0800 (PST)
Received: from nicolas-tpx395.localdomain (173-246-12-168.qc.cable.ebox.net. [173.246.12.168])
        by smtp.gmail.com with ESMTPSA id x21-20020a376315000000b0067d1b191f89sm1135257qkb.68.2022.03.08.12.28.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 08 Mar 2022 12:28:19 -0800 (PST)
Message-ID: <5a43a326a270051df1f7b8402d07b443b02331b6.camel@ndufresne.ca>
Subject: Re: [PATCH v2 6/9] media: uapi: Add a control for DW100 driver
From:   Nicolas Dufresne <nicolas@ndufresne.ca>
To:     "Xavier Roumegue (OSS)" <xavier.roumegue@oss.nxp.com>,
        mchehab@kernel.org, hverkuil-cisco@xs4all.nl,
        stanimir.varbanov@linaro.org, laurent.pinchart@ideasonboard.com,
        tomi.valkeinen@ideasonboard.com, robh+dt@kernel.org
Cc:     linux-media@vger.kernel.org, devicetree@vger.kernel.org
Date:   Tue, 08 Mar 2022 15:28:18 -0500
In-Reply-To: <986c4b3c-e346-e5b5-7fc9-497d8a4fc89f@oss.nxp.com>
References: <20220308184829.38242-1-xavier.roumegue@oss.nxp.com>
         <20220308184829.38242-7-xavier.roumegue@oss.nxp.com>
         <1b2f72c783e7a83956acc788888c539bb83fe995.camel@ndufresne.ca>
         <986c4b3c-e346-e5b5-7fc9-497d8a4fc89f@oss.nxp.com>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.42.3 (3.42.3-1.fc35) 
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Le mardi 08 mars 2022 à 20:42 +0100, Xavier Roumegue (OSS) a écrit :
> Hello Nicolas,
> 
> On 3/8/22 20:15, Nicolas Dufresne wrote:
> > Le mardi 08 mars 2022 à 19:48 +0100, Xavier Roumegue a écrit :
> > > The DW100 driver gets the dewarping mapping as a binary blob from the
> > > userspace application through a custom control.
> > > The blob format is hardware specific so create a dedicated control for
> > > this purpose.
> > > 
> > > Signed-off-by: Xavier Roumegue <xavier.roumegue@oss.nxp.com>
> > > ---
> > >   Documentation/userspace-api/media/drivers/dw100.rst |  7 +++++++
> > >   include/uapi/linux/dw100.h                          | 11 +++++++++++
> > >   2 files changed, 18 insertions(+)
> > >   create mode 100644 include/uapi/linux/dw100.h
> > > 
> > > diff --git a/Documentation/userspace-api/media/drivers/dw100.rst b/Documentation/userspace-api/media/drivers/dw100.rst
> > > index 20aeae63a94f..3abad05849ad 100644
> > > --- a/Documentation/userspace-api/media/drivers/dw100.rst
> > > +++ b/Documentation/userspace-api/media/drivers/dw100.rst
> > > @@ -20,4 +20,11 @@ match the expected size inherited from the destination image resolution.
> > >   More details on the DW100 hardware operations can be found in
> > >   *chapter 13.15 DeWarp* of IMX8MP_ reference manuel.
> > >   
> > > +The Vivante DW100 m2m driver implements the following driver-specific control:
> > > +
> > > +``V4L2_CID_DW100_MAPPING (integer)``
> > > +    Specifies to DW100 driver its dewarping map (aka LUT) blob as described in
> > > +    *chapter 13.15.2.3 Dewarping Remap* of IMX8MP_ reference manual as an U32
> > > +    dynamic array.
> > > +
> > >   .. _IMX8MP: https://www.nxp.com/webapp/Download?colCode=IMX8MPIEC
> > 
> > This point to a document names "i.MX 8M Plus Applications Processor Datasheet
> > for Industrial Products" which does not contain that reference.
> My bad.. Wrong link. :)
> Will repost with correct link.

Thanks. What I wanted to check is if it actually made sense to expose the
synthetized HW LUT. But for this, one need to share the parameters / algo needed
to generate them. This way we can compare against other popular dewarp
algorithms / API and see if they have something in common.

The issue I see with this control is relate to the message it gives. When adding
controls for the prosperity, we want these control to actually be usable. This
is possible if the documentation makes its usage obvious, or if there is Open
Source userland to support that.

None of this is met, so as a side effect, this looks like NXP sneaking in
private blob control into a publicly maintained Open Source project. This isn't
truly aligned with how V4L2 controls are meant to be. Doing trivial lut
synthesis in the kernel could be fine though.

> > 
> > > diff --git a/include/uapi/linux/dw100.h b/include/uapi/linux/dw100.h
> > > new file mode 100644
> > > index 000000000000..0ef926c61cf0
> > > --- /dev/null
> > > +++ b/include/uapi/linux/dw100.h
> > > @@ -0,0 +1,11 @@
> > > +/* SPDX-License-Identifier: GPL-2.0-only WITH Linux-syscall-note */
> > > +/* Copyright 2022 NXP */
> > > +
> > > +#ifndef __UAPI_DW100_H__
> > > +#define __UAPI_DW100_H__
> > > +
> > > +#include <linux/v4l2-controls.h>
> > > +
> > > +#define V4L2_CID_DW100_MAPPING		(V4L2_CID_USER_DW100_BASE + 1)
> > > +
> > > +#endif
> > 

