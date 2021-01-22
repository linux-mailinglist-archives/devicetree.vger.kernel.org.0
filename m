Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2E5D22FFFEA
	for <lists+devicetree@lfdr.de>; Fri, 22 Jan 2021 11:15:15 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727353AbhAVKOE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 22 Jan 2021 05:14:04 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52088 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727808AbhAVKH0 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 22 Jan 2021 05:07:26 -0500
Received: from mail-lf1-x132.google.com (mail-lf1-x132.google.com [IPv6:2a00:1450:4864:20::132])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 85E95C061788
        for <devicetree@vger.kernel.org>; Fri, 22 Jan 2021 02:06:43 -0800 (PST)
Received: by mail-lf1-x132.google.com with SMTP id b26so6724449lff.9
        for <devicetree@vger.kernel.org>; Fri, 22 Jan 2021 02:06:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=53LZGt+p3UglMmJ8LC7owG+jDtMJhUwB3mc3c22vo3w=;
        b=yh/tASQseJelhwA8jiNe7G+W3KDRWW1njEvuW/XSR6hWhLACFO+3sS7ZPZgJ9aST0v
         oFk/pn/i82nx2thugENYmvvL3JfDvOlhHldDiLx+runOC2sJlqzLL9M6NpJvY6PV1pcG
         OgpdD/gayiEOFeOg1e6OJxfd/6GJOOgFxOr68V7TeyWGKerpb/HV/1qyQ9LYPNLPv1+z
         hlWzdt0d0bo4bmizD9krbFveuKWYj0dlkBhxBoucYfvdsWW8jV/8zj/FYyUbfLRBhpJ6
         NgC3ooDGAJiOCtisAeBgSmc0XoZ4oEoOF+SVNjhNdQJd6dAEWnj817BaPGSwMmQ2JGR9
         OYbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=53LZGt+p3UglMmJ8LC7owG+jDtMJhUwB3mc3c22vo3w=;
        b=mx0u1J7ZG1n8d4fsv6Fb8nO/jJVmKB8NdW5uF8/KPyhI/0OkAaKGe6M5wtAExBxsAV
         v995Puyfsev2IxdU+v8czrR0D+dq5R4sbjp1HOfRA3MUODihZLov+CFrHc20H8Q+9ap/
         vMcrKJz4fJo1JOv8s5PuLEfxfoqeQCW1wLFpi6K3j4RMnv2/6ZHi2tVwnNtkMWo/4+sg
         zgRCzLPisWqgglKE9I46XTdd4X3HFLt70kJYqeUYi/020sedcEjiKZeFl/VUlEfMMrTs
         zAIir4qRUfmTma6lIi2ByZVuASCabQr2fkEb01/rPfPtU9t89ziipOLHogdeie/fTjR/
         Vxvw==
X-Gm-Message-State: AOAM532G2dRrNKvyKQfQCqpl+5HNX7o5oRhDPBzC28bP6p6to7sRfovl
        ygpEIDXY1IcsdewlISUhcWEc+D6novU1jEIg7f5rJw==
X-Google-Smtp-Source: ABdhPJyoTle4qxXu3NBqEJlHwN6jTzoBM52s7nfkB0Kj/1T93Ni/LPtdYQD6ZORaUqNYGsjXZQISQSEyffbqb3DhuEk=
X-Received: by 2002:ac2:5c45:: with SMTP id s5mr32690lfp.586.1611310001970;
 Fri, 22 Jan 2021 02:06:41 -0800 (PST)
MIME-Version: 1.0
References: <20210111054428.3273-1-dqfext@gmail.com> <20210111054428.3273-3-dqfext@gmail.com>
 <CACRpkdYA2fWF_1K+2aYoZnBAsm9H3=VHpeT4ZDU5sCdrOUWx=w@mail.gmail.com> <CALW65jbJ2DFqLw-i91y7oRfRhcukHSAS3A0XMuy4kA+1AtLtLQ@mail.gmail.com>
In-Reply-To: <CALW65jbJ2DFqLw-i91y7oRfRhcukHSAS3A0XMuy4kA+1AtLtLQ@mail.gmail.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Fri, 22 Jan 2021 11:06:30 +0100
Message-ID: <CACRpkdZguQkTNtdeELHQ9HPzqrBFdO3NhbxHrQErcefjb-WpHQ@mail.gmail.com>
Subject: Re: [PATCH net-next 2/2] drivers: net: dsa: mt7530: MT7530 optional
 GPIO support
To:     DENG Qingfang <dqfext@gmail.com>
Cc:     Andrew Lunn <andrew@lunn.ch>,
        Vivien Didelot <vivien.didelot@gmail.com>,
        Florian Fainelli <f.fainelli@gmail.com>,
        Vladimir Oltean <olteanv@gmail.com>,
        "David S. Miller" <davem@davemloft.net>,
        Jakub Kicinski <kuba@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Sean Wang <sean.wang@mediatek.com>,
        Landen Chao <Landen.Chao@mediatek.com>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Russell King <linux@armlinux.org.uk>,
        netdev <netdev@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        "moderated list:ARM/Mediatek SoC support" 
        <linux-mediatek@lists.infradead.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        =?UTF-8?Q?Ren=C3=A9_van_Dorst?= <opensource@vdorst.com>,
        Frank Wunderlich <frank-w@public-files.de>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Jan 19, 2021 at 4:20 AM DENG Qingfang <dqfext@gmail.com> wrote:
> On Mon, Jan 18, 2021 at 10:55 PM Linus Walleij <linus.walleij@linaro.org> wrote:
> >
> > So for offset 0..14 this becomes bits
> > 0, 1, 2, 4, 5, 6, 8, 9, 10, 12  ... 18
> >
> > What is the logic in this and is it what you intend?
>
> Yes. Bit 0..2 are phy 0's LED 0..2, bit 4..6 are phy 1's LED 0..2, etc.

OK add a comment and explain how the bits relate
to each PHY and how the lines are arranged per-phy
so it is crystal clear for people reading the driver.

Thanks!
Linus Walleij
