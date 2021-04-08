Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6F3D535875E
	for <lists+devicetree@lfdr.de>; Thu,  8 Apr 2021 16:45:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231667AbhDHOpb (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 8 Apr 2021 10:45:31 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55682 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231526AbhDHOpa (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 8 Apr 2021 10:45:30 -0400
Received: from mail-ej1-x62e.google.com (mail-ej1-x62e.google.com [IPv6:2a00:1450:4864:20::62e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 32159C061760
        for <devicetree@vger.kernel.org>; Thu,  8 Apr 2021 07:45:18 -0700 (PDT)
Received: by mail-ej1-x62e.google.com with SMTP id a25so3545722ejk.0
        for <devicetree@vger.kernel.org>; Thu, 08 Apr 2021 07:45:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=UiAst+OVExzFrYgr0Ac6llHp4XJRNyzdkv1JER7eoV8=;
        b=q30UFfS5EfnjnF4XSmWJqH/ubPkHWloYQm1hO5l/KluDGQnAt33hAKbMx1e4wHtIGm
         xYrovM7HAcxDMRZzPc5Zqag1CazE9zf3WN9Yxu8ui1cJ+T9akCuQekXt0y1lGYC9JhXt
         d0s2DzFjYJ1KJOPO99GicUacplYOlfTcIlVqw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=UiAst+OVExzFrYgr0Ac6llHp4XJRNyzdkv1JER7eoV8=;
        b=OG2e1nWNgLmiOeApkifZ5JtEU96JuJnNuuG+HPmtPgUPo13N5cWTXkKGat0IyZdo+K
         5rFjKk6iGHvvJBtUAHdkyXor6wP5kT4E+K1U3Ie8jVzymMBqsqoL+2VgtuhW1skx80H6
         I2d5xa6gro3NzHJWLusfTNtkA0jEmEAsM2TmtsDW1dGOL1zMw3JYw46o/Jh3woXN58uc
         qN6BHpxUzjXdRQ9kmLbAKDzDASeSLX1Bgw7KEQ6KRqBEXU2eElOou+PX8ZZhr6p6O+En
         5pkrwLJ8fr72tQdJXx0FDixiHQakE3dOBVIIjGRlSpTbevOhTlal0JXwwNqLZ8LbHlhk
         Nypw==
X-Gm-Message-State: AOAM533t6cuvxb6u7IpalCcn5C8njMMoEKrM7St7PUeqlqZLjeJR9n6M
        oU0GyL2d9bAQgLkcY18KbVlNk+fPJMLJFAmjdLeHZg==
X-Google-Smtp-Source: ABdhPJxkofkeU6cyRKkyyI3iQigf422fSRi/Huh5y/CzNqKuxd/kSIXbN1JyWl5jEBUelSE/9fXnj0sk6h7waoZ1ICU=
X-Received: by 2002:a17:906:a049:: with SMTP id bg9mr10957487ejb.186.1617893116972;
 Thu, 08 Apr 2021 07:45:16 -0700 (PDT)
MIME-Version: 1.0
References: <20210214174453.104616-1-jagan@amarulasolutions.com> <d7f9b241-3cfc-836a-2519-3b6621899108@denx.de>
In-Reply-To: <d7f9b241-3cfc-836a-2519-3b6621899108@denx.de>
From:   Jagan Teki <jagan@amarulasolutions.com>
Date:   Thu, 8 Apr 2021 20:15:04 +0530
Message-ID: <CAMty3ZBMt+bx7ZrCQf0b3wrJUtZVe3CS=8-t_wYZ4+=PwP+mbQ@mail.gmail.com>
Subject: Re: [PATCH v3 1/2] dt-bindings: display: bridge: Add bindings for SN65DSI83/84/85
To:     Claudius Heine <ch@denx.de>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Andrzej Hajda <a.hajda@samsung.com>,
        Neil Armstrong <narmstrong@baylibre.com>,
        Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
        Jonas Karlman <jonas@kwiboo.se>,
        Jernej Skrabec <jernej.skrabec@siol.net>,
        Sam Ravnborg <sam@ravnborg.org>, Marek Vasut <marex@denx.de>,
        devicetree <devicetree@vger.kernel.org>,
        linux-kernel <linux-kernel@vger.kernel.org>,
        dri-devel <dri-devel@lists.freedesktop.org>,
        linux-amarula <linux-amarula@amarulasolutions.com>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Mar 24, 2021 at 7:26 PM Claudius Heine <ch@denx.de> wrote:
>
> Hi Jagan,
>
> On 2021-02-14 18:44, Jagan Teki wrote:
> > SN65DSI83/84/85 devices are MIPI DSI to LVDS based bridge
> > controller IC's from Texas Instruments.
> >
> > SN65DSI83 - Single Channel DSI to Single-link LVDS bridge
> > SN65DSI84 - Single Channel DSI to Dual-link LVDS bridge
> > SN65DSI85 - Dual Channel DSI to Dual-link LVDS bridge
> >
> > Right now the bridge driver is supporting Channel A with single
> > link, so dt-bindings documented according to it.
>
> Do you know when we can expect a v4 for this?
>
> I am currently working on top of your patch set to setup a dual-link
> LVDS bridge of SN65DSI84.

Yes, I'm planning to send v4 this week. will keep you in CC. thanks!

Jagan.
