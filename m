Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D69003F4513
	for <lists+devicetree@lfdr.de>; Mon, 23 Aug 2021 08:40:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231843AbhHWGlV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 23 Aug 2021 02:41:21 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33780 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231197AbhHWGlU (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 23 Aug 2021 02:41:20 -0400
Received: from mail-lj1-x236.google.com (mail-lj1-x236.google.com [IPv6:2a00:1450:4864:20::236])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 97237C061575
        for <devicetree@vger.kernel.org>; Sun, 22 Aug 2021 23:40:38 -0700 (PDT)
Received: by mail-lj1-x236.google.com with SMTP id i28so29555078ljm.7
        for <devicetree@vger.kernel.org>; Sun, 22 Aug 2021 23:40:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=dOSScg11+0lHrDw6MS1CV2sNd8OdE1zWDqg1qjqqW2Y=;
        b=PYypPGwhJKWIPHwv0PNNxvgnPr8zgWPvGUeVW/uOkbS0Yv1LkNwjUiYPwyaBu+NxwW
         dYV+82j3pW0jpoHiJeHbehsfiEC8JgTXafrSgSTiLwmlPR+F4eg9qpAJg72XDqbx9Mvc
         gvHQPEr4y/JXHUQ4fJSKsQdp9nRZWGHp+2Lh0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=dOSScg11+0lHrDw6MS1CV2sNd8OdE1zWDqg1qjqqW2Y=;
        b=njTUvUn3+g6yl/UhvxP79C0iUljBH7yrE8uu6q0ACbNRTuQvEGv7x/gfE5njmiuNSu
         SeoiumTUa6aD/zcLg0R1o3/ApAowo8N/8GsGpvxUYjcrt7H024hrCwsBL4wplK53qXK0
         zDetEdUgBT+g/kF8TGFgB7zFNXBJp4ZmQOkqoBhcWh+yE8DKfADX7ThyvQuXUHNDy7rT
         BZXFo2jx6tHbUifavYA4xSyAVV035pNahOUk4D3IqQAhF8ruOT+heWDhtwRie63j1pNe
         o38tHTTiLFQTNkhsFiwXU/IrclVSjJ2DY2M7MYS4tl4EUYPaehHZowBTedq1XAwHj5j6
         xl0g==
X-Gm-Message-State: AOAM531dGEbQANI4CSJTe0QlWBt0siAoXvaCvC/9yJZHYk8AyF9Mb8ie
        k4jg9/oXmFOL637ujruCHCtTC+y1HMmLRVkMgHJlWA==
X-Google-Smtp-Source: ABdhPJzCaNaaScS5j8xwc/H16iJK+VtsRDRaMiPRceRnRRAxbyhImqfGwZYwLIHLdB0yA9X834FjhBCHEBgVDLi4C9I=
X-Received: by 2002:a2e:b0e2:: with SMTP id h2mr25865507ljl.23.1629700837011;
 Sun, 22 Aug 2021 23:40:37 -0700 (PDT)
MIME-Version: 1.0
References: <20210820111504.350-1-chun-jie.chen@mediatek.com> <20210820111504.350-5-chun-jie.chen@mediatek.com>
In-Reply-To: <20210820111504.350-5-chun-jie.chen@mediatek.com>
From:   Chen-Yu Tsai <wenst@chromium.org>
Date:   Mon, 23 Aug 2021 14:40:26 +0800
Message-ID: <CAGXv+5G8WUW5ByA12ELrUvHVshwj2nm2wMLYZeFt82g4C7BXpw@mail.gmail.com>
Subject: Re: [v2 04/24] clk: mediatek: Add API for clock resource recycle
To:     Chun-Jie Chen <chun-jie.chen@mediatek.com>
Cc:     Matthias Brugger <matthias.bgg@gmail.com>,
        Stephen Boyd <sboyd@kernel.org>,
        Nicolas Boichat <drinkcat@chromium.org>,
        Rob Herring <robh+dt@kernel.org>,
        "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE" 
        <linux-arm-kernel@lists.infradead.org>,
        LKML <linux-kernel@vger.kernel.org>,
        "moderated list:ARM/Mediatek SoC support" 
        <linux-mediatek@lists.infradead.org>, linux-clk@vger.kernel.org,
        Devicetree List <devicetree@vger.kernel.org>,
        srv_heupstream <srv_heupstream@mediatek.com>,
        Project_Global_Chrome_Upstream_Group 
        <Project_Global_Chrome_Upstream_Group@mediatek.com>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Aug 20, 2021 at 7:18 PM Chun-Jie Chen
<chun-jie.chen@mediatek.com> wrote:
>
> In order to avoid resource leak when fail clock registartion appears,

Typo. Please fix if you respin a new version.

> so add the common interface to handle it.
>
> Signed-off-by: Chun-Jie Chen <chun-jie.chen@mediatek.com>

Reviewed-by: Chen-Yu Tsai <wenst@chromium.org>
