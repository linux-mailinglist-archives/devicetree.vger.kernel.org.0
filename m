Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3975D3D6DA5
	for <lists+devicetree@lfdr.de>; Tue, 27 Jul 2021 06:46:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234870AbhG0EqI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 27 Jul 2021 00:46:08 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55932 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229563AbhG0EqH (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 27 Jul 2021 00:46:07 -0400
Received: from mail-pl1-x631.google.com (mail-pl1-x631.google.com [IPv6:2607:f8b0:4864:20::631])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4DF09C061764
        for <devicetree@vger.kernel.org>; Mon, 26 Jul 2021 21:46:08 -0700 (PDT)
Received: by mail-pl1-x631.google.com with SMTP id c11so14321139plg.11
        for <devicetree@vger.kernel.org>; Mon, 26 Jul 2021 21:46:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=lQui5Bn1AetwvRytXDb4JDYFQOZL+N4GRQAdei53URs=;
        b=Th5t3G/Ufa2Ob7SpZUUyIAqxOzwb4tOZFM+k1JoB0DhM88V1pL4Yr0MkoWzKCRp8OS
         tqH8uIZnwJTKC1IkFWUfKxGxMcqRPyUn6Tqb4bCPhxgQgSaqQuyODZ7itTLs/L8/O/AD
         F6uVySNBTaE7l2hLFTzeKgys751X40fDx1XBE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=lQui5Bn1AetwvRytXDb4JDYFQOZL+N4GRQAdei53URs=;
        b=fzVsJVc4vvaqRrchmMWE9PwEGAFR+uy5RlzWoGI5gw4v59YT5ZfvMYkkWHZD9aLq8e
         soza3y6t81ZExBBnykJ2XlAl2Q8wbtUfxxO0boJRRvRSwPCV7ivz3+wxgS3KcdqGfX8h
         /ZH1s7upcODKPRDddksIiFskqdBddiEV5mGSLSKvYtY+LXzegfD6BQxpJbpOmB0VG5YJ
         ePt69v9I/NLBCa9hMPtUFW82hth8oRFHIvLy9AxoOUJkmpfAWgBR4xREJXJHGywM+TAv
         15eUGWulsKBC5aWYkmpyeTd3wIeMseYvaXtBgZGhic0OkFZmmSrW3zCwmKXLPHlx/1uO
         3kVA==
X-Gm-Message-State: AOAM531IqpkshEgLDagiUBrLZwfgVXMPNSdErGijjBOj4QBg67WuFDrv
        R3EV4CivonnBL6vQXyS02l6vvuc9FFmRwHwvk3eoRQ==
X-Google-Smtp-Source: ABdhPJyHwFZ5Iqv3unP+z+8lBwV8+TrKOxTRo0U3vA0SXeGCBVMXgm55Ilu8NwejZFEDdz1+OD/t38J49y/2dvAffKs=
X-Received: by 2002:a17:90b:2251:: with SMTP id hk17mr2395627pjb.126.1627361167866;
 Mon, 26 Jul 2021 21:46:07 -0700 (PDT)
MIME-Version: 1.0
References: <20210726105719.15793-1-chun-jie.chen@mediatek.com> <20210726105719.15793-19-chun-jie.chen@mediatek.com>
In-Reply-To: <20210726105719.15793-19-chun-jie.chen@mediatek.com>
From:   Ikjoon Jang <ikjn@chromium.org>
Date:   Tue, 27 Jul 2021 12:45:57 +0800
Message-ID: <CAATdQgDeXHhFQY8ktOYTaeZGUTuNrJOSuPSC5kuBASS7_8hsgw@mail.gmail.com>
Subject: Re: [v14 18/21] clk: mediatek: Add MT8192 msdc clock support
To:     Chun-Jie Chen <chun-jie.chen@mediatek.com>
Cc:     Matthias Brugger <matthias.bgg@gmail.com>,
        Stephen Boyd <sboyd@kernel.org>,
        Nicolas Boichat <drinkcat@chromium.org>,
        Rob Herring <robh+dt@kernel.org>,
        "moderated list:ARM/Mediatek SoC support" 
        <linux-arm-kernel@lists.infradead.org>,
        open list <linux-kernel@vger.kernel.org>,
        "moderated list:ARM/Mediatek SoC support" 
        <linux-mediatek@lists.infradead.org>, linux-clk@vger.kernel.org,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        srv_heupstream <srv_heupstream@mediatek.com>,
        Project_Global_Chrome_Upstream_Group 
        <Project_Global_Chrome_Upstream_Group@mediatek.com>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Jul 26, 2021 at 7:00 PM Chun-Jie Chen
<chun-jie.chen@mediatek.com> wrote:
>
> Add MT8192 msdc and msdc top clock providers
>
> Signed-off-by: Weiyi Lu <weiyi.lu@mediatek.com>
> Signed-off-by: Chun-Jie Chen <chun-jie.chen@mediatek.com>

Reviewed-by: Ikjoon Jang <ikjn@chromium.org>

(snip)
