Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3AD56311984
	for <lists+devicetree@lfdr.de>; Sat,  6 Feb 2021 04:11:32 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231452AbhBFDIw (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 5 Feb 2021 22:08:52 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44130 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231831AbhBFDC5 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 5 Feb 2021 22:02:57 -0500
Received: from mail-ua1-x92b.google.com (mail-ua1-x92b.google.com [IPv6:2607:f8b0:4864:20::92b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 37A25C061786
        for <devicetree@vger.kernel.org>; Fri,  5 Feb 2021 19:02:10 -0800 (PST)
Received: by mail-ua1-x92b.google.com with SMTP id c44so807990uad.12
        for <devicetree@vger.kernel.org>; Fri, 05 Feb 2021 19:02:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=vuPLugpx3nVqN901hZhHAJ68fe+2jLjEwlOR0tJDXYA=;
        b=F6opSYqv6jZOIDMw2g1ehsjaiUwtHudjb08fDacbv/EDpLlwSpy4IMI9fFhh8IsrUR
         6z2eJKGywevwZfoGwCPGT5Nm9kzq//cAUkMjmj4ttLr0H4RuMnf0xAHFZ3WXDK2CX4Jv
         kxl/y2itpTtbDt2HwFVoyjCBpFYEnW27WBFeQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=vuPLugpx3nVqN901hZhHAJ68fe+2jLjEwlOR0tJDXYA=;
        b=GBCp7VKgpyxz0MLFVmbeSnwfu5kwMyX9FZHLtssM3DKKgngYhdtqu2MeYgIjhqIuUo
         sDij72leAHrNfj5sytLnsT9C93n9ua8V1oHK1hDzG4GBp9Ter61KOeWA/YV7BFWVY6G8
         XqVEQSB2Ot9TSy1ccslUa/ASQHPlqHOt427ONx07S+NgbWYMIOB9hZ7oYyW7gGU4JPT+
         /f2ijs6/ZfHo6NO6zgzcIbP9m5PeLWdAyBUZJcIJYJuIgj93pMVPxnjcKujDCr+GujOQ
         H/NHz4MRDl+I9rhDdKO0It8HeT9jMhUYxLdp54AfcoIY+vj6ZqtRrsvZ0JFY8CAmBpJm
         fB5Q==
X-Gm-Message-State: AOAM5334HMcb88E3rmAyToWjbRB50zt/h22FovfuIbQyyzov6gLCcxTL
        TnzvZzgTZrxPSxAMq9mIE6cpmMhhESFi40t7G/wpAw==
X-Google-Smtp-Source: ABdhPJx8dqL+kHCdeyZ4DlETrA6syQ9QDsjU5KGZ5QnyvgeCk+5tYIv9ZfqZvBXd6LQikBo/7yMyvzQGpgRlw96uTRc=
X-Received: by 2002:ab0:20d:: with SMTP id 13mr2631762uas.27.1612580529357;
 Fri, 05 Feb 2021 19:02:09 -0800 (PST)
MIME-Version: 1.0
References: <20210126011759.1605641-1-drinkcat@chromium.org>
 <20210126091747.v11.1.Ie74d3355761aab202d4825ac6f66d990bba0130e@changeid> <20210205175543.GA3363048@robh.at.kernel.org>
In-Reply-To: <20210205175543.GA3363048@robh.at.kernel.org>
From:   Nicolas Boichat <drinkcat@chromium.org>
Date:   Sat, 6 Feb 2021 11:01:57 +0800
Message-ID: <CANMq1KAshVgWPp=4KpjkwfAD=N4ZOw0xBCZHkfGob-TY0RCGew@mail.gmail.com>
Subject: Re: [PATCH v11 1/4] dt-bindings: gpu: mali-bifrost: Add Mediatek MT8183
To:     Rob Herring <robh@kernel.org>
Cc:     Rob Herring <robh+dt@kernel.org>,
        "moderated list:ARM/Mediatek SoC support" 
        <linux-mediatek@lists.infradead.org>,
        Hsin-Yi Wang <hsinyi@chromium.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Fei Shao <fshao@chromium.org>,
        linux-arm Mailing List <linux-arm-kernel@lists.infradead.org>,
        Devicetree List <devicetree@vger.kernel.org>,
        David Airlie <airlied@linux.ie>,
        lkml <linux-kernel@vger.kernel.org>,
        Boris Brezillon <boris.brezillon@collabora.com>,
        dri-devel <dri-devel@lists.freedesktop.org>,
        Tomeu Vizoso <tomeu.vizoso@collabora.com>,
        Alyssa Rosenzweig <alyssa.rosenzweig@collabora.com>,
        Steven Price <steven.price@arm.com>,
        Kristian Kristensen <hoegsberg@chromium.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sat, Feb 6, 2021 at 1:55 AM Rob Herring <robh@kernel.org> wrote:
>
> On Tue, 26 Jan 2021 09:17:56 +0800, Nicolas Boichat wrote:
> > Define a compatible string for the Mali Bifrost GPU found in
> > Mediatek's MT8183 SoCs.
> >
> > Signed-off-by: Nicolas Boichat <drinkcat@chromium.org>
> > ---
> >
> > Changes in v11:
> >  - binding: power-domain-names not power-domainS-names
> >
> > Changes in v10:
> >  - Fix the binding to make sure sram-supply property can be provided.
> >
> > Changes in v9: None
> > Changes in v8: None
> > Changes in v7: None
> > Changes in v6:
> >  - Rebased, actually tested with recent mesa driver.
> >
> > Changes in v5:
> >  - Rename "2d" power domain to "core2"
> >
> > Changes in v4:
> >  - Add power-domain-names description
> >    (kept Alyssa's reviewed-by as the change is minor)
> >
> > Changes in v3: None
> > Changes in v2: None
> >
> >  .../bindings/gpu/arm,mali-bifrost.yaml        | 28 +++++++++++++++++++
> >  1 file changed, 28 insertions(+)
> >
>
>
> Please add Acked-by/Reviewed-by tags when posting new versions. However,
> there's no need to repost patches *only* to add the tags. The upstream
> maintainer will do that for acks received on the version they apply.
>
> If a tag was not added on purpose, please state why and what changed.

There were changes in v11, I thought you'd want to review again?

Anyway, I can resend a v12 with all the Rb/Ab if that works better for you.

>
