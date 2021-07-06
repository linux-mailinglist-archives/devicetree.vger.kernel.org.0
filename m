Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2B0A73BCB39
	for <lists+devicetree@lfdr.de>; Tue,  6 Jul 2021 13:00:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231360AbhGFLDH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 6 Jul 2021 07:03:07 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39772 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231293AbhGFLDH (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 6 Jul 2021 07:03:07 -0400
Received: from mail-io1-xd2d.google.com (mail-io1-xd2d.google.com [IPv6:2607:f8b0:4864:20::d2d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B62EEC061760
        for <devicetree@vger.kernel.org>; Tue,  6 Jul 2021 04:00:28 -0700 (PDT)
Received: by mail-io1-xd2d.google.com with SMTP id d9so24376751ioo.2
        for <devicetree@vger.kernel.org>; Tue, 06 Jul 2021 04:00:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=85+RRGhjODs6lcH6FGoMJhqGI1UPU1GAYsHb+vDqTGI=;
        b=kcovIMeHxj6d6wLhZ9CMLTwalFGptJT2AhB7Kp8+N3lEiQHjcOsi4c2/ggoM58tdcA
         S39evUYCjLYP/6eY51tHdYzEl7GOPaCwr4GDqXkXsPX8vcgOnyZayFPvuuHaqGicqH61
         hz/Nd9JWKB44kz3d3Ng4CIVm8WfbT8v4gGRO0MY0A/XoVjyEgchrXD/v3OQ221bUbNYi
         NLK8xNdebbXAGR9KxoKq23Bz2yrx34YbloODkjeLElxtCbe6P/joEzomSRM0tCH4xJYt
         cIXImUDQsVOe6upPw/A9lDbU7dRsRQjbq6yJYUCpzbGrNfMzTILlcc6ydf2sg7pNfe8X
         wlkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=85+RRGhjODs6lcH6FGoMJhqGI1UPU1GAYsHb+vDqTGI=;
        b=ZX3vvHV17YCu7v0JoZUgCSkocQdXtfxWRIsnlhdKv6UrVm+cb0+rSnfvvHcDIEFz57
         LOpSQ266XlQn/udlDR55+haNzo8qLVidXfYToGazwZTM88lzFdmEKRF6QyBF2rvcYdl5
         ZdVxrOClB4fNJ+P1s9xXF9Fj/fmLZvGxUl4/ygxo79uGK1wvH0S146+CGjooZ1Zm7zIm
         +9RQ34rD8R0S3G1Ae32YWY7it5DgLs1eROFujQo2imFgXVtnsKQRbOY34hYHDs/bpAz/
         u1tVZRlN6sATOm+oc44wZklp2jegTyG56Ir8+u10+u5litwl1VmJoyA4aIX1Xx3Ul9vq
         Sivw==
X-Gm-Message-State: AOAM530WcNDJItA/O+NbSJTTU4DyP6fF04pFo8hXpewlhkOsfe664j2J
        tYLp35OTGLhmT/+diJp+k1axE2clknlX5ivQ7saVog==
X-Google-Smtp-Source: ABdhPJwYqdX4uXaVnVQi0XP4/rzQ+1UfhvfYjksjrP95PYtkRwbQIPBuuu2IAg0m0BTSZ7BHhytyyXcXKrSXS2nUkA0=
X-Received: by 2002:a5d:87d0:: with SMTP id q16mr15428748ios.109.1625569227924;
 Tue, 06 Jul 2021 04:00:27 -0700 (PDT)
MIME-Version: 1.0
References: <1625038079-25815-1-git-send-email-kyrie.wu@mediatek.com>
In-Reply-To: <1625038079-25815-1-git-send-email-kyrie.wu@mediatek.com>
From:   Tzung-Bi Shih <tzungbi@google.com>
Date:   Tue, 6 Jul 2021 19:00:17 +0800
Message-ID: <CA+Px+wVQFK1MXbq6=x7gSfRu8uRp5hbiNgSWtJ-9ok3Lt+vz8A@mail.gmail.com>
Subject: Re: [PATCH v2,0/9] Support jpeg encode for MT8195
To:     "kyrie.wu" <kyrie.wu@mediatek.com>
Cc:     Hans Verkuil <hverkuil-cisco@xs4all.nl>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Bin Liu <bin.liu@mediatek.com>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Tzung-Bi Shih <tzungbi@chromium.org>,
        Project_Global_Chrome_Upstream_Group@mediatek.com,
        linux-media@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org,
        Tomasz Figa <tfiga@chromium.org>, xia.jiang@mediatek.com,
        maoguang.meng@mediatek.com, srv_heupstream@mediatek.com
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Jun 30, 2021 at 3:28 PM kyrie.wu <kyrie.wu@mediatek.com> wrote:
> add component framework to using multi-HW for MT8195 jpeg encode.
Could you add some summary for each patch for getting an overview of the series?

>   dt-bindings: mediatek: Add mediatek, mt8195-jpgenc compatible
>   media: mtk-jpegenc: Add MT8195 JPEG venc driver
>   media: mtk-jpegenc: remove redundant code of irq
>   media: mtk-jpegenc: Refactor jpeg clock interface
>   media: mtk-jpegenc: Generalize jpeg encode irq interfaces
>   media: mtk-jpegenc: Generalize jpegenc HW timeout interfaces
>   media: mtk-jpegenc: Use component framework to manage each hardware
>     information
>   media: mtk-jpegenc: Generalize jpegenc HW operations interfaces
>   media: mtk-jpegenc: Refactor jpegenc device run interface
The series has some consistency issues which would make readers feel
uncomfortable.

For example:
- Whether to capitalize the first characters in the commit messages/titles.
- Whether to add a period at the end of English sentences.
