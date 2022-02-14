Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 62A904B4D05
	for <lists+devicetree@lfdr.de>; Mon, 14 Feb 2022 12:11:35 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1349297AbiBNKx5 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 14 Feb 2022 05:53:57 -0500
Received: from mxb-00190b01.gslb.pphosted.com ([23.128.96.19]:43276 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1348966AbiBNKxu (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 14 Feb 2022 05:53:50 -0500
Received: from mail-pf1-x431.google.com (mail-pf1-x431.google.com [IPv6:2607:f8b0:4864:20::431])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1B4037C14C
        for <devicetree@vger.kernel.org>; Mon, 14 Feb 2022 02:18:33 -0800 (PST)
Received: by mail-pf1-x431.google.com with SMTP id g1so8616371pfv.1
        for <devicetree@vger.kernel.org>; Mon, 14 Feb 2022 02:18:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=YUDVx4TIFTRbJIuv2rupyK084bb2oTVATeZ8Fn6KFXI=;
        b=Vy5TjXpR1UvKyYsGrQDajSEdq6i7nkBrs9dNkT8ZOiRnZH7iyE4oeURkMBOCh00XOL
         yj1cTNcNbUutaQQX2/qLgSLKlQ17IGKHKIwi1Dz9PkMqdGMt4ShElCGNHNNinwT6mHPK
         oMptJF1N2bFC6U+Eyf21jelIvX6riTkU8CImg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=YUDVx4TIFTRbJIuv2rupyK084bb2oTVATeZ8Fn6KFXI=;
        b=CvtWZnquWQKLuAu7ZqmVIO3p+qbt1ca1bxJ1899Zb0vDTgzRFUFRUWyTLiqf5AsXJF
         shLzq5TJbhGe5pJqqgBJvqd/1k3kc695rxl4X6DAlbFLm0IIGcmZfqwu7Xy4X4FTOect
         8gol1wMuI5PsDUiRc2gwyQ6xHqJiBcDRIY3FocekX/yz1bVp2/ecHgmZ72XW3gJmiMMa
         llNefcM+b1CvuMIu70JggKgiFbqmwQ8H71iwJvfXlFQmxgaUZgNnV58XPFHUTWnWMpVK
         Ge6CMBpebMx5zjcMRUcyZPgnUZhyEQ1vLOC6ChSsj5W5/t8YxfpPv78YJdt4AzmkAuPo
         r6/w==
X-Gm-Message-State: AOAM531Nh8HwvKaFLlqpgvZGUWErB8rm+Pa37sHMXCiWEXp1eDxEvIaf
        YkHdd96DIloJrtK8wOeW4mK2CmWV7j7OSTcXKu1egjjpS7RX0A==
X-Google-Smtp-Source: ABdhPJxouA9SM/xEm/8Xf2lg3Blaymfy9tRI6GOkeimZwqJOmKMUcENtZWCPXUvxeGblbu9sGRovxCTfui1pdv1kxmo=
X-Received: by 2002:a92:d90b:: with SMTP id s11mr3230734iln.105.1644833901824;
 Mon, 14 Feb 2022 02:18:21 -0800 (PST)
MIME-Version: 1.0
References: <20220213063151.3321331-1-hsinyi@chromium.org> <7efb2a87-1b8e-5bab-651f-ffa21ea8d716@collabora.com>
In-Reply-To: <7efb2a87-1b8e-5bab-651f-ffa21ea8d716@collabora.com>
From:   Hsin-Yi Wang <hsinyi@chromium.org>
Date:   Mon, 14 Feb 2022 18:17:56 +0800
Message-ID: <CAJMQK-hCD7sCTODV_WPxC_eX27XQ3dWyhHJjp96KWNjzuPvquw@mail.gmail.com>
Subject: Re: [PATCH v3 1/2] drm/panel: Add inx Himax8279d MIPI-DSI LCD panel driver
To:     AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>
Cc:     Sam Ravnborg <sam@ravnborg.org>,
        Thierry Reding <thierry.reding@gmail.com>,
        linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
        David Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>,
        xiazhengqiao <xiazhengqiao@huaqin.corp-partner.google.com>,
        devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Feb 14, 2022 at 6:10 PM AngeloGioacchino Del Regno
<angelogioacchino.delregno@collabora.com> wrote:
>
> Il 13/02/22 07:31, Hsin-Yi Wang ha scritto:
> > From: xiazhengqiao <xiazhengqiao@huaqin.corp-partner.google.com>
> >
> > Add STARRY 2081101QFH032011-53G 10.1" WUXGA TFT LCD panel
> >
> > Signed-off-by: xiazhengqiao <xiazhengqiao@huaqin.corp-partner.google.com>
> > Signed-off-by: Hsin-Yi Wang <hsinyi@chromium.org>
>
> I have no way of testing this driver but the code itself looks good to me,
> so, strictly for the code:
>
> Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
>

This driver is used by ASUS Chromebook Detachable CZ1 [1]. The dts
will be accepted after this panel is accepted.

[1] https://patchwork.kernel.org/project/linux-mediatek/patch/20211213162856.235130-1-hsinyi@chromium.org/

> > ---
> > v2->v3:
> > rebase to next-20220211
> > ---
> >   drivers/gpu/drm/panel/Kconfig                 |   9 +
> >   drivers/gpu/drm/panel/Makefile                |   1 +
> >   .../gpu/drm/panel/panel-innolux-himax8279d.c  | 515 ++++++++++++++++++
> >   3 files changed, 525 insertions(+)
> >   create mode 100644 drivers/gpu/drm/panel/panel-innolux-himax8279d.c
> >
