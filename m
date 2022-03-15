Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 190C54D9B6D
	for <lists+devicetree@lfdr.de>; Tue, 15 Mar 2022 13:43:33 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S245326AbiCOMon (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 15 Mar 2022 08:44:43 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35514 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235627AbiCOMom (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 15 Mar 2022 08:44:42 -0400
Received: from mail-yw1-x1136.google.com (mail-yw1-x1136.google.com [IPv6:2607:f8b0:4864:20::1136])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6369033EAD
        for <devicetree@vger.kernel.org>; Tue, 15 Mar 2022 05:43:30 -0700 (PDT)
Received: by mail-yw1-x1136.google.com with SMTP id 00721157ae682-2dbd97f9bfcso199606887b3.9
        for <devicetree@vger.kernel.org>; Tue, 15 Mar 2022 05:43:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fooishbar-org.20210112.gappssmtp.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=zM7PG/RdRHw9f6iBibZ0hDNw+hF+S/2aL5rwx9V5Hc4=;
        b=nR1qrXaPmooiwTywf1pOo2XV8jI1aj+ALhV1WYrZn8Bzit9fW9AkhOG0+z7MOxAjh1
         iqTMLE8f8HzEoR35CgDLZzU0x1YPDlaLtonEqs9Iy91kn52Z/+eCH6IkbFQPKpsL45/t
         ihJl/3hcliojHC4Bba1/Y7IsjIJX9NCsJ/zUG5GKDT/Wcn7YD0Uwgq2a0kK4ye807Bc5
         78oVtw5/voG4BakSHOOLW+RH2YpWTZMd21BFkVgioDCwuQq/aj2Wu9gsTzuO67FFaNIu
         VT9DNke3Hl0zWtAQr554hmchGXyzYveuj+5IJd0+2DUzQ8gqm4qCnQ4KtLqSAJuenwaI
         eFvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=zM7PG/RdRHw9f6iBibZ0hDNw+hF+S/2aL5rwx9V5Hc4=;
        b=gtkdhmjulxjFxsz7Kr/+cs9u0Uj2uppqcB8XLiHQpwu38V4C9Tsr/tO7tQdF84zjnK
         6ZdJs17kqQqV4eQ1FJpO02mdb9MVdLEsVtvb5tVBoM705Qi/R1M+Gr/8uLzPwpqFQ8l7
         HNI9jSBMPCyuLzI1SPajA30gegQYI3wNmCr2wdcv1Wn/2mTuTSyVnH9OhxrBzj/PnZyR
         xJMyyp3GvjDVILbFVkt+gEQvBBJ4sMEKq6uA/vkSh+po6Ip+FRLWpxj5GtQwY/foO3Qk
         qI401eO0oAoKCc1VipLWqHMdV5iEQFJGrJP3v9pKbrXm3ukZjq0rfnR96IgXf5OxCTGQ
         A6iA==
X-Gm-Message-State: AOAM530x0DAbkGiaXPM2wNCs+8AXu1W2+DLF/OXTfarpddiZ5mg7K7JF
        7PqEtSccqggh8JBvrCJ0wC8JqhJVTa9tepnnnNnfEn4PWvoyuA==
X-Google-Smtp-Source: ABdhPJyazqAxW0/G7WqBT80tfyS+1LBtCC3BjhRKfI/GlPsN1UNW//Fy3MNB2ipKA2wpPQtmC2JXOlJLZOMZ75di+uk=
X-Received: by 2002:a81:1182:0:b0:2dc:4e58:da41 with SMTP id
 124-20020a811182000000b002dc4e58da41mr24091863ywr.268.1647348209540; Tue, 15
 Mar 2022 05:43:29 -0700 (PDT)
MIME-Version: 1.0
References: <20220311083323.887372-1-s.hauer@pengutronix.de>
 <20220311083323.887372-23-s.hauer@pengutronix.de> <9ec29d9b-8197-98fb-c612-5c842e4212c4@rock-chips.com>
In-Reply-To: <9ec29d9b-8197-98fb-c612-5c842e4212c4@rock-chips.com>
From:   Daniel Stone <daniel@fooishbar.org>
Date:   Tue, 15 Mar 2022 12:43:18 +0000
Message-ID: <CAPj87rM4StzGMqPfK=j5p0-mY2=ENZnZWx9QDL_jo8SzNTXWTQ@mail.gmail.com>
Subject: Re: [PATCH v8 22/24] drm: rockchip: Add VOP2 driver
To:     Andy Yan <andy.yan@rock-chips.com>
Cc:     Sascha Hauer <s.hauer@pengutronix.de>,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        Benjamin Gaignard <benjamin.gaignard@collabora.com>,
        Sandy Huang <hjc@rock-chips.com>,
        linux-rockchip@lists.infradead.org,
        Michael Riesch <michael.riesch@wolfvision.net>,
        kernel@pengutronix.de, Peter Geis <pgwipeout@gmail.com>,
        linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Andy,

On Tue, 15 Mar 2022 at 06:46, Andy Yan <andy.yan@rock-chips.com> wrote:
> On 3/11/22 16:33, Sascha Hauer wrote:
> > The driver is tested with HDMI and MIPI-DSI display on a RK3568-EVB
> > board. Overlay support is tested with the modetest utility. AFBC support
> > on the cluster windows is tested with weston-simple-dmabuf-egl on
> > weston using the (yet to be upstreamed) panfrost driver support.
>
> Do we need some modification to test AFBC by weston-simple-dma-egl ?
>
> I have a buildroot system with weston-10.0.9 and mesa 21.3.5.
>
> After launch weston, I run weston-simple-dmabuf-egl, but from the output
>
> of sys/kernel/debug/dri/0/state, the weston is still use Smart0-win0,
> which is
>
> a non-AFBC window.
>
> Do i need to modify the vop2 driver to set one Cluster window as primary
> plane?

Are you using the open-source Panfrost driver, or the proprietary Arm
DDK? The DDK was previously using some non-standard modifier tokens
which have since been corrected upstream.

You can see from running `weston-debug drm-backend` (if you start
Weston with `--debug`) the output as it tries to put client surfaces
on to overlay planes, and why it can or cannot.

For Weston's own composited output (used when it cannot place client
surfaces on to planes), it will just use whatever the KMS driver
declares as the primary plane. Weston does not have any logic to say
'oh, this plane is AFBC and AFBC is better, so I will use this as my
primary plane': we just follow what the kernel tells us.

Cheers,
Daniel
