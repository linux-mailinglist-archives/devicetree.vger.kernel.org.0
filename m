Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 66E083F58AF
	for <lists+devicetree@lfdr.de>; Tue, 24 Aug 2021 09:10:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230477AbhHXHLZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 24 Aug 2021 03:11:25 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59264 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231868AbhHXHLY (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 24 Aug 2021 03:11:24 -0400
Received: from mail-io1-xd2a.google.com (mail-io1-xd2a.google.com [IPv6:2607:f8b0:4864:20::d2a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8FE01C061757
        for <devicetree@vger.kernel.org>; Tue, 24 Aug 2021 00:10:39 -0700 (PDT)
Received: by mail-io1-xd2a.google.com with SMTP id q3so7681470iot.3
        for <devicetree@vger.kernel.org>; Tue, 24 Aug 2021 00:10:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=LgRucL3K4cUFafkmcwegDWstDciTynvkAhKij7AEIBk=;
        b=XjwCcBqTjO8zbpgRAvkXX4cEK21t+nleXjTkL4VzdxxdLsNvjwNcndFWSg6JlrSwJq
         bpSdGFO+BrTrAT8Vmftfwj9hkT+k9VzKKyZauDR/U1vyuv5aWPiz/wR4BLCxKVgR0+Ar
         HAtZRuWjONau0qmolRjDQ0es97dtHpDqC2jDM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=LgRucL3K4cUFafkmcwegDWstDciTynvkAhKij7AEIBk=;
        b=nPg1bmTyXGGg2xyaoXmXtFQvXFTQSmOVfBl+ZiuoDhYwXEELSUV3wXIcFjhoAw0ZPc
         1n2Uj1TKOZoEzo6wkouqkvp/Nv1tbPNzPK6c2yl4iIabKiYASjR49zVPVi45nFLB/O/Z
         UBNA+UuSPU05i/dnfZWbq+oWPGf2AMGAeXuB2FU9jMr0gjQS33Nnia3zhWJj1ElhAyxL
         6xOd/SzaDXABWU4h5p7gKtrRqZ/PZjDAbpsdEyN+yc4ZhOrk8AQqMgk91pJKFAWLjQ0U
         BAywXROCnE5TLCvWChSz2MbpN5WaUi7ulB2LKTBZms/yzkmdlhXf2o+RiSeSPwthXXRb
         P2Zg==
X-Gm-Message-State: AOAM531IGTCtVV/4vAYF42GkmwlXwCSqBVIifV0G6pO7h3YI0he31X+8
        7oiofsTcohJeq/NJCwuo48izCBY5YIpv36FpYATCCA==
X-Google-Smtp-Source: ABdhPJxa8cXPwlwxMitmLNqhhcUpAXaFNNqqlX3QkiCbaPVcTW2lKOWSXVoLKeh/GHZwtAyAQE/miho2FRPpMMPkaXY=
X-Received: by 2002:a05:6602:341:: with SMTP id w1mr29896459iou.40.1629789038867;
 Tue, 24 Aug 2021 00:10:38 -0700 (PDT)
MIME-Version: 1.0
References: <20210813065324.29220-1-yong.wu@mediatek.com> <20210813065324.29220-12-yong.wu@mediatek.com>
In-Reply-To: <20210813065324.29220-12-yong.wu@mediatek.com>
From:   Hsin-Yi Wang <hsinyi@chromium.org>
Date:   Tue, 24 Aug 2021 15:10:12 +0800
Message-ID: <CAJMQK-hkufqh2vaEKcuO+k0v2SzpCHcyZuEqrvJ__rrAek2P0A@mail.gmail.com>
Subject: Re: [PATCH v2 11/29] iommu/mediatek: Always pm_runtime_get while tlb flush
To:     Yong Wu <yong.wu@mediatek.com>
Cc:     Joerg Roedel <joro@8bytes.org>, Rob Herring <robh+dt@kernel.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Will Deacon <will@kernel.org>,
        Robin Murphy <robin.murphy@arm.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        Evan Green <evgreen@chromium.org>,
        Tomasz Figa <tfiga@google.com>,
        Tomasz Figa <tfiga@chromium.org>,
        "moderated list:ARM/Mediatek SoC support" 
        <linux-mediatek@lists.infradead.org>, srv_heupstream@mediatek.com,
        Devicetree List <devicetree@vger.kernel.org>,
        lkml <linux-kernel@vger.kernel.org>,
        "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE" 
        <linux-arm-kernel@lists.infradead.org>,
        iommu@lists.linux-foundation.org, youlin.pei@mediatek.com,
        Nicolas Boichat <drinkcat@chromium.org>, anan.sun@mediatek.com,
        chao.hao@mediatek.com
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Aug 13, 2021 at 2:57 PM Yong Wu <yong.wu@mediatek.com> wrote:
>
> Prepare for 2 HWs that sharing pgtable in different power-domains.
>
> The previous SoC don't have PM. Only mt8192 has power-domain,
> and it is display's power-domain which nearly always is enabled.
>
> When there are 2 M4U HWs, it may has problem.
> In this function, we get the pm_status via the m4u dev, but it don't
> reflect the real power-domain status of the HW since there may be other
> HW also use that power-domain.
>
> Currently we could not get the real power-domain status, thus always
> pm_runtime_get here.
>
> Prepare for mt8195, thus, no need fix tags here.
>
> This patch may drop the performance, we expect the user could
> pm_runtime_get_sync before dma_alloc_attrs which need tlb ops.

Can you check if there are existing users that need to add this change?


>
> Signed-off-by: Yong Wu <yong.wu@mediatek.com>
> ---
<snip>
