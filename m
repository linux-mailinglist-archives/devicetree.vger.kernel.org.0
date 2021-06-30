Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 23A7E3B8113
	for <lists+devicetree@lfdr.de>; Wed, 30 Jun 2021 13:09:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234161AbhF3LMW (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 30 Jun 2021 07:12:22 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38144 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229882AbhF3LMW (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 30 Jun 2021 07:12:22 -0400
Received: from mail-lj1-x233.google.com (mail-lj1-x233.google.com [IPv6:2a00:1450:4864:20::233])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5884AC061756
        for <devicetree@vger.kernel.org>; Wed, 30 Jun 2021 04:09:53 -0700 (PDT)
Received: by mail-lj1-x233.google.com with SMTP id u20so2687338ljo.12
        for <devicetree@vger.kernel.org>; Wed, 30 Jun 2021 04:09:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=Rm4+AwW3LWH2YQHGgTfNo9gJL+afdzfJtfRIoJfvAJc=;
        b=IE4nSEae0+ZNPzwJoKlwld0IYMdDWkixjHhLI3tUBqdFmS+a6KK5cYvjzyrNiwZmdF
         Z0m6eXqZtwFMVuQd3GrlSzs2UcjhKOZHgP0a2+UvPrLvGf6REbtdTFZU1RZeiK+YMpi+
         XfOkbN6NpLc+GUcqYnxdCqJta/t/pBzt1xKP0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=Rm4+AwW3LWH2YQHGgTfNo9gJL+afdzfJtfRIoJfvAJc=;
        b=TP2NLggMW3476iCuaQi9MfQOaW7orX6MQtdkw/uj3CLbcocHh6TUfFoy4QkFoke879
         uOP47ePHaO0b4yzXsCxkJC2Yju4RSLEZ2ebIw3sGFmfvK8z/AJrJ2c+KdjIYBw2Gu+5N
         em1372qKB8kvDuadAIhH7ta5V/0i9r0I+A2pnCefH93EQnA1/QeAo2e98NezpFY4rl1S
         TG/Fnn1ODeQlGo5xKB//mHPX3EOED8+3j4eK3rQVLoHG97ZXZgFK1mMq4Hir9f8jeF0l
         WGHfX0prVQhBAF6OgmFkYG6j3/M9KatyOuyjdcKy6TlHdS75pkfBcp7ifM7lPMpusi/k
         WQmg==
X-Gm-Message-State: AOAM533rpzRQPfqdOv4Am1R62l9GS+wj6c1eXZy+HTFSeguchePLvJt+
        yakY+0DVVdNfcfD+3DmsfNnz3VN95+9/3VzmIYW4jA==
X-Google-Smtp-Source: ABdhPJzHKuADQa+MobKZ58Bk27asyyFyPDlClM32paRLGxROtq0/z4kqJ9wzvBtX+VJ0lDLBPbqJCGectO03IhUHOfg=
X-Received: by 2002:a05:651c:32e:: with SMTP id b14mr7332089ljp.251.1625051391558;
 Wed, 30 Jun 2021 04:09:51 -0700 (PDT)
MIME-Version: 1.0
References: <20210616224743.5109-1-chun-jie.chen@mediatek.com>
 <20210616224743.5109-4-chun-jie.chen@mediatek.com> <CAGXv+5F2zTcqnjH2ud38vUD149KJtgxhPQME2Mk6-vGtQv+2YQ@mail.gmail.com>
 <ff6179e8-06f9-fbba-c704-a74381c2149a@gmail.com>
In-Reply-To: <ff6179e8-06f9-fbba-c704-a74381c2149a@gmail.com>
From:   Chen-Yu Tsai <wenst@chromium.org>
Date:   Wed, 30 Jun 2021 19:09:40 +0800
Message-ID: <CAGXv+5FXuMnhsnytLYKKA9YE97bps7KnkDNADvv8f_wdTqnrfg@mail.gmail.com>
Subject: Re: [PATCH 03/22] clk: mediatek: Fix corner case of tuner_en_reg
To:     Matthias Brugger <matthias.bgg@gmail.com>
Cc:     Chun-Jie Chen <chun-jie.chen@mediatek.com>,
        Stephen Boyd <sboyd@kernel.org>,
        Nicolas Boichat <drinkcat@chromium.org>,
        Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        linux-mediatek@lists.infradead.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, srv_heupstream@mediatek.com,
        Project_Global_Chrome_Upstream_Group@mediatek.com
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Jun 30, 2021 at 6:53 PM Matthias Brugger <matthias.bgg@gmail.com> wrote:
>
>
>
> On 30/06/2021 09:31, Chen-Yu Tsai wrote:
> > On Thu, Jun 17, 2021 at 7:01 AM Chun-Jie Chen
> > <chun-jie.chen@mediatek.com> wrote:
> >>
> >> On MT8195, tuner_en_reg is moved to register offest 0x0.
> >> If we only judge by tuner_en_reg, it may lead to wrong address.
> >> Add tuner_en_bit to the check condition. And it has been confirmed,
> >> on all the MediaTek SoCs, bit0 of offset 0x0 is always occupied by
> >> clock square control.
> >>
> >> Signed-off-by: Chun-Jie Chen <chun-jie.chen@mediatek.com>
> >
> > Reviewed-by: Chen-Yu Tsai <wenst@chromium.org>
> >
> > Though you might want to consider converting these types of checks into feature
> > flags.
> >
>
> Yes I think adding a feature flag is the way to go. Luckily there are only a few
> SoCs that will need updates at the same time.

I also see that the different clock modules are tied together using only clock
names written in the drivers, instead of clock references in the device tree.

Unfortunately reworking this would likely require a lot more work. I previously
did a bit of internal reworking for the sunxi drivers. While not the same, I
think the plumbing required is comparable.

ChenYu
