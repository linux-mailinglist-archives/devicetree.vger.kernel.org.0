Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3AE76413FE5
	for <lists+devicetree@lfdr.de>; Wed, 22 Sep 2021 05:08:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230328AbhIVDKR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 21 Sep 2021 23:10:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41132 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230138AbhIVDKQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 21 Sep 2021 23:10:16 -0400
Received: from mail-lf1-x129.google.com (mail-lf1-x129.google.com [IPv6:2a00:1450:4864:20::129])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 16066C061574
        for <devicetree@vger.kernel.org>; Tue, 21 Sep 2021 20:08:47 -0700 (PDT)
Received: by mail-lf1-x129.google.com with SMTP id z24so5740264lfu.13
        for <devicetree@vger.kernel.org>; Tue, 21 Sep 2021 20:08:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=jvDHJ7BpWxgug9U9vBbLk1VQrGHUm2D+G+8DLCbP+bY=;
        b=Sfgsur3unKHCxqZ719aFss9Iu86/cxn/VrdBaa7t0sVfZbZ04ROT6DUvvF3it4orPq
         3LhMVXZA4pU7CBnxGrS9DyBiNXXr8/bOw7ZL2Uij+QQ8/Clst6kCbXd+thMELOx3WWFv
         hoOf9UsOV81dDEkVI1gPR5gR17doBuWVXzTDc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=jvDHJ7BpWxgug9U9vBbLk1VQrGHUm2D+G+8DLCbP+bY=;
        b=mT+cbOAUB3A2ucISQuXVRtRC5/jUrPRL3qAxdZ0J8qRQfVV8b0rvq3l020fgmE04zJ
         kvAtDKLV05P0KyDja12Qw+KEpcPU7ySyvpLWthNPhG+Em3IZsa7epsHbzXO0fYmL8TSq
         iJvjozXJcY+AeMX+g1cg3+H25lVjsT+dEwjNrKKx7uY/y6yf8OP5FT4qXploBJxUIgsu
         iJ3Al9brlrER9imLtBn2Yxl85VZYFlW5vQtPosvNeApRhTnoUh7Qz5wd6zc4fwR63XQQ
         Q6tL0d4MXxpeujWIV9dU7lSK02yzrU4TxjhCoC59x3vouSgpRvpw4wXRBfbue21lay0C
         rOfQ==
X-Gm-Message-State: AOAM5303Zxe4KvoS6j5vs1/9O0nc7ZGbQ93D2UTVMFMR5EE17pmcWYp2
        yaS6j+h+L5IJnP/4P1GYMbX5cYmGa4vn3uP5tBkpMQ==
X-Google-Smtp-Source: ABdhPJwXu6UxZE2/bkKplxqrHu28gVpzzYxNZSK+7DKxIotOikhK8OfyyvyApfd/1hOqHv5/p6JsHHkF9q5bI3DOZ6s=
X-Received: by 2002:ac2:4c4e:: with SMTP id o14mr27470353lfk.482.1632280125364;
 Tue, 21 Sep 2021 20:08:45 -0700 (PDT)
MIME-Version: 1.0
References: <20210922025640.11600-1-zhiyong.tao@mediatek.com> <20210922025640.11600-4-zhiyong.tao@mediatek.com>
In-Reply-To: <20210922025640.11600-4-zhiyong.tao@mediatek.com>
From:   Chen-Yu Tsai <wenst@chromium.org>
Date:   Wed, 22 Sep 2021 11:08:34 +0800
Message-ID: <CAGXv+5G9cW8uNnaUDzoAOWdy4Rw1Kgm6D7jFhHY2rE_vW4JGFw@mail.gmail.com>
Subject: Re: [PATCH v13 3/5] pinctrl: mediatek: fix coding style
To:     Zhiyong Tao <zhiyong.tao@mediatek.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Linus Walleij <linus.walleij@linaro.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Sean Wang <sean.wang@kernel.org>,
        srv_heupstream <srv_heupstream@mediatek.com>,
        hui.liu@mediatek.com, Light Hsieh <light.hsieh@mediatek.com>,
        Biao Huang <biao.huang@mediatek.com>,
        Hongzhou Yang <hongzhou.yang@mediatek.com>,
        Sean Wang <sean.wang@mediatek.com>,
        Seiya Wang <seiya.wang@mediatek.com>,
        Devicetree List <devicetree@vger.kernel.org>,
        LKML <linux-kernel@vger.kernel.org>,
        "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE" 
        <linux-arm-kernel@lists.infradead.org>,
        "moderated list:ARM/Mediatek SoC support" 
        <linux-mediatek@lists.infradead.org>,
        "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Sep 22, 2021 at 10:58 AM Zhiyong Tao <zhiyong.tao@mediatek.com> wrote:
>
> Fix Camel spelling coding style to avoid checkpatch
> warning in a following patch.
>
> Signed-off-by: Zhiyong Tao <zhiyong.tao@mediatek.com>

Reviewed-by: Chen-Yu Tsai <wenst@chromium.org>
