Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 16A554FDFC6
	for <lists+devicetree@lfdr.de>; Tue, 12 Apr 2022 14:30:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1351307AbiDLMZQ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 12 Apr 2022 08:25:16 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39376 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1349476AbiDLMZH (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 12 Apr 2022 08:25:07 -0400
Received: from mail-yb1-xb33.google.com (mail-yb1-xb33.google.com [IPv6:2607:f8b0:4864:20::b33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7330474852
        for <devicetree@vger.kernel.org>; Tue, 12 Apr 2022 04:30:59 -0700 (PDT)
Received: by mail-yb1-xb33.google.com with SMTP id i20so11375157ybj.7
        for <devicetree@vger.kernel.org>; Tue, 12 Apr 2022 04:30:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fooishbar-org.20210112.gappssmtp.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=MNFVKn/6sR+qJy1xjZwLhojWhMEBJZkIZm88XzONGOA=;
        b=SUoVFIXk4pDqXz8Tq1K1xwH2XlZWTHANCuN+6KitrpI3nIKG2d0pu7xkhSg3nBrfI1
         xVAsTmxL6vqGZiOkavmCI6X3wsKyuvOWGmaVW/5JeMpyFInytcQCF0+0d3TOJ8s8cWs+
         DmhJpIgUZaoR1eoFXp+Wx000g1S4y1ogcfs+LUkGiRk/HbbCK6L7bNdGtnaToRIBcqnv
         77YlMyPmmeMDT8v5adrU7oLY65D6kKA2h4gXNcN+2tRNM9EBaCux4UH8aRvls9E4W1Fp
         vNd63tq9B6dDowT6+YHjNQ5t+wBQHDRsbRxaQrNy4PZC4Rca7YV8JlIqyFVgjpL3/c4+
         ILUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=MNFVKn/6sR+qJy1xjZwLhojWhMEBJZkIZm88XzONGOA=;
        b=3Q2ExXQUxiery1wGr2ohAWQkI+vWRM4qrkZreWdLxgagrVPQk5VTFIaECCTh/7lIeD
         1TRGlvrDryyFuCuskYTNsZUPOMM3EDMe3mKODHxxvZYJPfk3pBHMTspiZl+DDEoNk03z
         ErxGEXW/rYBjEICRPaEC7rYy2J8jOM1M+3iNpl7gkUJV8qudsFGUEcMBQYTcaZrewbiq
         NA1Io6qXuTlaMm34Q9i7OTPn8/YZjr3MDRXhbXcREfn6dDq7KniwnO7cyeQxedxkcjRL
         aIqzg+ZcnjH/VikBVba6tIZWymQGU5OkM+OaNs63MH2i2g0iDNFg5Slt7ktxle0pwpGp
         wL7g==
X-Gm-Message-State: AOAM530X9fVequXWTyO3KTC6UJ2E7bQ3qVhDD9uDSXQaooRbEpt2YJf1
        blSeCjn7PtzLDLVVUalyXV/WhAb+Jj1N6g77pqB+Jw==
X-Google-Smtp-Source: ABdhPJzaCS5ELmQS0Du4Km9AA/DbhyZFWNBRY9Z4RZEpdJfWE7QMeMYVpX+cQLO72zcuzJ6OCR7NHEZH7VJR/v4kpAU=
X-Received: by 2002:a25:b7c8:0:b0:633:5650:781e with SMTP id
 u8-20020a25b7c8000000b006335650781emr25046546ybj.466.1649763058611; Tue, 12
 Apr 2022 04:30:58 -0700 (PDT)
MIME-Version: 1.0
References: <20220328151116.2034635-1-s.hauer@pengutronix.de>
 <FB201567-AE5A-4242-82F1-7C55D8F111EA@gmail.com> <20220401125205.GL4012@pengutronix.de>
 <5420D26D-34FD-4637-B602-F6271E38BB8D@gmail.com> <BA4C591F-D115-43D2-BF59-A75B29889E50@gmail.com>
 <20220408080748.GA2387@pengutronix.de> <20220408120021.GO4012@pengutronix.de>
 <B3E76A7A-9B62-4E6F-9472-00B6298689C5@gmail.com> <20220411090800.GR4012@pengutronix.de>
 <5929E7A7-776E-4BCB-92C8-A1CE05774FE3@gmail.com> <20220412075034.GS4012@pengutronix.de>
 <e2ef484b60fe9c5fc077240a26bd18275974dc4a.camel@pengutronix.de> <EF0F8E87-2618-4E5E-807D-259FEEC0FB24@gmail.com>
In-Reply-To: <EF0F8E87-2618-4E5E-807D-259FEEC0FB24@gmail.com>
From:   Daniel Stone <daniel@fooishbar.org>
Date:   Tue, 12 Apr 2022 12:30:46 +0100
Message-ID: <CAPj87rNatQ9KjDSnYQTh4+FOUcPTerbzH3m8AuAF_BPbM1xxGg@mail.gmail.com>
Subject: Re: [PATCH v9 00/23] drm/rockchip: RK356x VOP2 support
To:     Piotr Oniszczuk <piotr.oniszczuk@gmail.com>
Cc:     Lucas Stach <l.stach@pengutronix.de>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        Benjamin Gaignard <benjamin.gaignard@collabora.com>,
        Peter Geis <pgwipeout@gmail.com>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Sandy Huang <hjc@rock-chips.com>,
        dri-devel@lists.freedesktop.org,
        "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
        Lucas Stach <lst@pengutronix.de>,
        Michael Riesch <michael.riesch@wolfvision.net>,
        kernel@pengutronix.de, Andy Yan <andy.yan@rock-chips.com>,
        "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, 12 Apr 2022 at 11:14, Piotr Oniszczuk <piotr.oniszczuk@gmail.com> w=
rote:
> > Wiadomo=C5=9B=C4=87 napisana przez Lucas Stach <l.stach@pengutronix.de>=
 w dniu 12.04.2022, o godz. 10:10:
> > 1. The application feeds a wrong modifier list to the GBM
> > implementation, as it may have queried another plane in the assumption
> > that supported modifiers are uniform across all planes.
>
> This will be cardinal design error.
> (keeping in mind we have multiple producers (GPU/video decoder) and multi=
ple consumers (base & overlay DRM planes)
>
>
> > 2. The GBM implementation (Panfrost) actually allocates a surface
> > instead of failing the allocation, even if it does not support any
> > combination of the provided format and modifier list.
>
> Testing Sacha patch (see today's email from Sascha) i'm getting
>
> Qt: EGL Error : Could not create the egl surface: error =3D 0x3009
>
> i'm reading this as: Qt tries allocate EGL surface and EGL returns error.
> or i'm wrong?

Correct, that's EGL_BAD_MATCH. There are very few ways that can
happen; by far the most likely is that Qt has chosen an EGLConfig
which does not correctly correspond to the format. (If it was an
impossible format/modifier combination, then this would be already
caught when allocating the gbm_surface.)

Either way, it seems quite clear that the VOP2 driver is totally fine
here, and that you have a Qt (likely) or Mesa (tbh less likely) issue
to debug to get the app working.

Cheers,
Daniel
