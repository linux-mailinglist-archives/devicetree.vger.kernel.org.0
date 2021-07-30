Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6D7C13DB5EB
	for <lists+devicetree@lfdr.de>; Fri, 30 Jul 2021 11:32:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230359AbhG3JcI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 30 Jul 2021 05:32:08 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50038 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230462AbhG3JcH (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 30 Jul 2021 05:32:07 -0400
Received: from mail-io1-xd33.google.com (mail-io1-xd33.google.com [IPv6:2607:f8b0:4864:20::d33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4A8C8C0613CF
        for <devicetree@vger.kernel.org>; Fri, 30 Jul 2021 02:32:03 -0700 (PDT)
Received: by mail-io1-xd33.google.com with SMTP id n19so10752262ioz.0
        for <devicetree@vger.kernel.org>; Fri, 30 Jul 2021 02:32:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=f8ZWMHHc2Lzy1so91uQOvvF+YHMcuXp3i590hglYW/0=;
        b=Fx77fDgwTtiSAGHabutbrjOyCZjKbo7MH/4iCNF+bzQi2dSATPXmG9Vu8ojRPSJsed
         IuEP5hk4WZWBzspgjApfNEshHGFbR7QT12J1ByuPTS5EIDGqT8xBg8tnTl95cIKGoNXp
         vxkAaeOKzZx5FUFu4YT8Ad0RuBQqh8K4pMFEWlFBwcpNtI9wIOKwgcpXQKg19clZUrzz
         9+LaqD2QqWicqMe4D6jCjRJlY9p9hcw+lYy6q6h7pXKkx9ev1mwqNzL+pCUEjNRQtCOL
         3KmecR8yZL4z5Ng7535bbfigmn7rXXRTiIbuijeBjZvipdq5sD6fWp/FMKcOoDkfy2Dz
         t5pg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=f8ZWMHHc2Lzy1so91uQOvvF+YHMcuXp3i590hglYW/0=;
        b=F6Ob/zKRwl4OTACMGhF/JxoWlKxO2bfJjBKvLmvXn4dTLuS22yanpfUOuLlSITQzlw
         pF0GU4Nxq9vP/j+OSjQ56P2NVv6kh32egUOjc10qFdcLrGTTidQ/rrjHUh2PEXxwYxNd
         f3PQVAA9RmjPIrtSXFbImDHyd12kQawTkakC7lEYnHvmNOQDGhDtp1fEF8Sg58KdnIC9
         t12da3Illt357Ewb27ZbyluiQvSDbISsnnKrXWumg/gavDmzDk5J2DyzcNuT8nFGsTQf
         h6qJKofHr/FAlFCOqztQnzhy+802JghRM1WDMr14a4gewOy73woJ1BSXHQgaVk+kXHZl
         2/5w==
X-Gm-Message-State: AOAM532wlYmfBPo400/L64j9N25XvPFl2aEdzV8hYZpHxJ5yvXb0/YwI
        M4WFS7/wZeoeTilpF+Pz+KW6Ijf+/Mn/nOdz2cShfg==
X-Google-Smtp-Source: ABdhPJxqDTwLCydinawV1ga0hNzX7YN2mmLocrJgnBJXggjsSyMAMZ/u03ewHGOvI8jHRtI+RmlJVZQlQ8E5E5PrQJg=
X-Received: by 2002:a02:7f12:: with SMTP id r18mr1435455jac.50.1627637522473;
 Fri, 30 Jul 2021 02:32:02 -0700 (PDT)
MIME-Version: 1.0
References: <20210727101051.24418-1-yunfei.dong@mediatek.com> <20210727101051.24418-2-yunfei.dong@mediatek.com>
In-Reply-To: <20210727101051.24418-2-yunfei.dong@mediatek.com>
From:   Tzung-Bi Shih <tzungbi@google.com>
Date:   Fri, 30 Jul 2021 17:31:51 +0800
Message-ID: <CA+Px+wUXmpT6TBOvD9J6ircLQ_X5D=bByOotfk+L7U+sXev3nQ@mail.gmail.com>
Subject: Re: [PATCH v3, 01/15] media: mtk-vcodec: Get numbers of register
 bases from DT
To:     Yunfei Dong <Yunfei.Dong@mediatek.com>
Cc:     Alexandre Courbot <acourbot@chromium.org>,
        Hans Verkuil <hverkuil-cisco@xs4all.nl>,
        Tzung-Bi Shih <tzungbi@chromium.org>,
        Tiffany Lin <tiffany.lin@mediatek.com>,
        Andrew-CT Chen <andrew-ct.chen@mediatek.com>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Tomasz Figa <tfiga@google.com>,
        Hsin-Yi Wang <hsinyi@chromium.org>,
        Fritz Koenig <frkoenig@chromium.org>,
        Irui Wang <irui.wang@mediatek.com>,
        linux-media@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        srv_heupstream@mediatek.com, linux-mediatek@lists.infradead.org,
        Project_Global_Chrome_Upstream_Group@mediatek.com
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Jul 27, 2021 at 06:10:37PM +0800, Yunfei Dong wrote:
> +static int mtk_vcodec_get_reg_bases(struct mtk_vcodec_dev *dev)
> +{
> +     struct platform_device *pdev = dev->plat_dev;
> +     int reg_num, i, ret = 0;
ret don't need to be initialized.

> +     for (i = 0; i < reg_num; i++) {
> +             dev->reg_base[i] = devm_platform_ioremap_resource(pdev, i);
> +             if (IS_ERR((__force void *)dev->reg_base[i])) {
> +                     return PTR_ERR((__force void *)dev->reg_base[i]);
> +             }
{ } can be removed.
