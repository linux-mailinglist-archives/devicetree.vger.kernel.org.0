Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 738603D6D9D
	for <lists+devicetree@lfdr.de>; Tue, 27 Jul 2021 06:44:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234997AbhG0Eog (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 27 Jul 2021 00:44:36 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55558 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234801AbhG0Eof (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 27 Jul 2021 00:44:35 -0400
Received: from mail-pl1-x62d.google.com (mail-pl1-x62d.google.com [IPv6:2607:f8b0:4864:20::62d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 293E8C061757
        for <devicetree@vger.kernel.org>; Mon, 26 Jul 2021 21:44:35 -0700 (PDT)
Received: by mail-pl1-x62d.google.com with SMTP id e14so14418363plh.8
        for <devicetree@vger.kernel.org>; Mon, 26 Jul 2021 21:44:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=Upw3Kqn05tBN6OFp46vi1aIozZmbzcynjmLNKwgK9po=;
        b=gmugk18f4PMAnQoxaFPvxBgivCKZbUuZkqcDUby/i98d7b9mBsBeFnXnEp/X9Tiieu
         JckgJXJSmLdT/PVRLt3m5n5MomEp6aMIzhfofL7ilEqv0xRd5YsKE8AEWqX+B0TLgYHJ
         ijecndFTtmrZ/kGQEV0mzd+c9Q/bvjRHqDfEw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=Upw3Kqn05tBN6OFp46vi1aIozZmbzcynjmLNKwgK9po=;
        b=J3NGpi0paS/EGLWa2UqJ+Py6/RHfoWzo9Az/lql1/caM0uKLw8J4PjTbwflyp7R4PS
         l2nfr8y/Y1W65Q+kKggxAsZsby9IwLzcEVSOG/5kVrmRBxnJM9gKu1F9cBy5VJo5CbUn
         qOIru5IJF4bN2yjdRU/9N5r8PUFhx0IPAXDRLO3NZ192nOTgks1Em4IHnNn3OXF/KcCn
         QpLpM/szU9gRJuxfv1WGKeMKZh5FxWFYtXR+VNzxzIrRB5df7R17TfWXyUIjUVUsKdb7
         ffVsS3wCRwHVP2ie5q0+By9a8LLPQ6vByk8YyzJ8skttTgW3B869/HYk0zsV4jgdq1RP
         BsBg==
X-Gm-Message-State: AOAM530VeQXHaxylb3IIW6S3ulMJWnIuQ+mMm/JJwDe+FnO+UBZFSuW6
        gAHAa1ZBPZ4EnrPMci/bc46Qo4/DETXnnssbUw4rUQ==
X-Google-Smtp-Source: ABdhPJyZyDPgsADtQXma5p4ApMONsh5r1xW3sEcgGcnCFWSzk3ZBPkyUa/IuSLHWVrLfUjjrIU8rcRz6q4kHA6Sc2g8=
X-Received: by 2002:a63:8f04:: with SMTP id n4mr21092441pgd.317.1627361074754;
 Mon, 26 Jul 2021 21:44:34 -0700 (PDT)
MIME-Version: 1.0
References: <20210726105719.15793-1-chun-jie.chen@mediatek.com> <20210726105719.15793-17-chun-jie.chen@mediatek.com>
In-Reply-To: <20210726105719.15793-17-chun-jie.chen@mediatek.com>
From:   Ikjoon Jang <ikjn@chromium.org>
Date:   Tue, 27 Jul 2021 12:44:24 +0800
Message-ID: <CAATdQgDwQtqbYyUXo1c7sufwchGqZ7CntB1eHhksNVfSZ68hmg@mail.gmail.com>
Subject: Re: [v14 16/21] clk: mediatek: Add MT8192 mfgcfg clock support
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
        <Project_Global_Chrome_Upstream_Group@mediatek.com>,
        Weiyi Lu <weiyi.lu@mediatek.com>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Jul 26, 2021 at 7:09 PM Chun-Jie Chen
<chun-jie.chen@mediatek.com> wrote:
>
> Add MT8192 mfgcfg clock provider
>
> Signed-off-by: Weiyi Lu <weiyi.lu@mediatek.com>
> Signed-off-by: Chun-Jie Chen <chun-jie.chen@mediatek.com>

Reviewed-by: Ikjoon Jang <ikjn@chromium.org>

(snip)
