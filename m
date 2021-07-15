Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 091AB3C96F3
	for <lists+devicetree@lfdr.de>; Thu, 15 Jul 2021 06:09:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231739AbhGOEM0 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 15 Jul 2021 00:12:26 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52276 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234736AbhGOEM0 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 15 Jul 2021 00:12:26 -0400
Received: from mail-lf1-x12f.google.com (mail-lf1-x12f.google.com [IPv6:2a00:1450:4864:20::12f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 51750C06175F
        for <devicetree@vger.kernel.org>; Wed, 14 Jul 2021 21:09:32 -0700 (PDT)
Received: by mail-lf1-x12f.google.com with SMTP id i5so7432042lfe.2
        for <devicetree@vger.kernel.org>; Wed, 14 Jul 2021 21:09:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=CEt6lKkjHocGT1UvacGfqPdf29QklnGYfkIPIEqqVHI=;
        b=F4VTmhkSwveM3DHG0/pF2zRjpCYl+mduFoZTP7r5v7JaqMeXp+57FIOQ1JCSeEVkGN
         2y9cZXVKVgEwQHl4N4mh6X5qTHRvl28V4wc32a5bulIQe7eiH1fu87aAlDoLsNqDeadl
         75YwBiOnP7AT8XXyAuR7ZAB5PlUuKf1gaLRD4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=CEt6lKkjHocGT1UvacGfqPdf29QklnGYfkIPIEqqVHI=;
        b=TEzjqsZxC/zHhCNkjzS/nE9ycoKMoYGn9c48SU0h0SitpzXuFjQgTwzIP/2YQivOng
         mUJXlzkZ76QBX73876BCZBhbGD0uAe+M863IgWHiEHb0AbPgUhzkKrSBUxdOYCLY9sKu
         rzHCFkXJ8OozLmB06rqfAr3Tv5SqBXsXrG+ohBc5XjgsYXxByejxujnDxvxTKD/2V4R4
         lZVdo3WmC6o0qsKTUUJAwhoRHNJ/UL1NeHnB1BPFSsk1B7ZAfGw6TISmRNjScjsV71F1
         JyeUDyoOxDCR/w7S/pZQ0WFWP9/9dAR0eB6cWzQyYHWkhTXlopzWG3bI50bIFegZj8d8
         qEnQ==
X-Gm-Message-State: AOAM533vg3cYF2P9ACdOxXEzq7hyzZU1ocgn+8Yb/6z/tlLElFmM2d8J
        K71QaWGhYhdtbkuGQFCkX+ZcYMOW4lv/f+Kw/ZSe0Q==
X-Google-Smtp-Source: ABdhPJwqCmyH6ZnTwT5c8CV8V+cNkvnOuCmcEV/TVgLIgrOJW28DIUFEhAkgyKrDovGADulwZVXMXJKsCJyWIiiu69Q=
X-Received: by 2002:a05:6512:1303:: with SMTP id x3mr1441515lfu.276.1626322170104;
 Wed, 14 Jul 2021 21:09:30 -0700 (PDT)
MIME-Version: 1.0
References: <1626316157-24935-1-git-send-email-kewei.xu@mediatek.com> <1626316157-24935-2-git-send-email-kewei.xu@mediatek.com>
In-Reply-To: <1626316157-24935-2-git-send-email-kewei.xu@mediatek.com>
From:   Chen-Yu Tsai <wenst@chromium.org>
Date:   Thu, 15 Jul 2021 12:09:19 +0800
Message-ID: <CAGXv+5Gr_PSw4XAe9VkdAH=JnJXe=yeH0Gu16qSheuJbmWgi+w@mail.gmail.com>
Subject: Re: [PATCH 1/8] dt-bindings: i2c: update bindings for MT8195 SoC
To:     Kewei Xu <kewei.xu@mediatek.com>
Cc:     wsa@the-dreams.de, Matthias Brugger <matthias.bgg@gmail.com>,
        Rob Herring <robh+dt@kernel.org>, linux-i2c@vger.kernel.org,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        LKML <linux-kernel@vger.kernel.org>,
        linux-mediatek@lists.infradead.org,
        srv_heupstream <srv_heupstream@mediatek.com>,
        leilk.liu@mediatek.com, qii.wang@mediatek.com,
        qiangming.xia@mediatek.com, ot_daolong.zhu@mediatek.com
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Jul 15, 2021 at 10:31 AM Kewei Xu <kewei.xu@mediatek.com> wrote:
>
> Add a DT binding documentation for the MT8195 soc.
>
> Signed-off-by: Kewei Xu <kewei.xu@mediatek.com>

Please remember to pick up tags from other reviewers.

ChenYu
