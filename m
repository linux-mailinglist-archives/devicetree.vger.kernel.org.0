Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A1FA93D6DAF
	for <lists+devicetree@lfdr.de>; Tue, 27 Jul 2021 06:47:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235066AbhG0ErY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 27 Jul 2021 00:47:24 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56248 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234924AbhG0ErX (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 27 Jul 2021 00:47:23 -0400
Received: from mail-pj1-x1031.google.com (mail-pj1-x1031.google.com [IPv6:2607:f8b0:4864:20::1031])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D1F2CC061757
        for <devicetree@vger.kernel.org>; Mon, 26 Jul 2021 21:47:23 -0700 (PDT)
Received: by mail-pj1-x1031.google.com with SMTP id m2-20020a17090a71c2b0290175cf22899cso3195336pjs.2
        for <devicetree@vger.kernel.org>; Mon, 26 Jul 2021 21:47:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=KZrbt9yR8hbrQ8uYyC/1sSAYUKzr6dRf2IBuVuefs44=;
        b=M9rmhyJs0OAWFelfhkQwSWB48PlkyYfaxXouNKWkCTVZK5xj1A5A07a2FTc+WX50vx
         X9FWYB5LhBrtwtqOkD3mwjzsfFTNcUAiTalq8AU305lAgHdmskc6dPLVGWnAkhwxIhya
         qTtn3xB6e/XzKGTGhf5NqtsbbnhSwHgbTd71k=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=KZrbt9yR8hbrQ8uYyC/1sSAYUKzr6dRf2IBuVuefs44=;
        b=SK6ZErXcdwFex3uyPlAvy/SK6c1C+/gDUyZjPj0WhQowvrb6xFE2ozn0ORdHVXZsu7
         os1WLoNzfNKDLqovHeSJJMopiIturfKdkNoJ339TmbMvyDOm1IIbUVNkav4qGBz0X6WM
         /8YWL4rq3d7SDgaCs6oDe+iSkbsV3oVVzxoMVh0pNdRrUmTUbNzcrU14P90uyft6hTnK
         gI3pPVPBRLevAkR+tkS4DdSGQ1XRu5UR/ZzqfM5jmTZC63QtqIsiC5QDXjSF5gBXlb5j
         fJaVMbJyqTAsgouZFt82UKggoQhGYA6a71BcFTKClpzfJqo7MptLoQlYZTX4/kLAy6GW
         SrZA==
X-Gm-Message-State: AOAM530VAYFneiZ9jNwCmiFwQdZYc2LtqwB288/Z47vp91UDMTT5DEpc
        uxfQw0p0zQ/K81w7xB6QX2EXnnWuAGx2hRbTO4eLpA==
X-Google-Smtp-Source: ABdhPJyMrzz2w0ZyuzNoS3umV6X1k23qvdWBuG/YbXZPQ68RCfZGsiO8UslIzHyStg5/1car2IaVGcpVboN/TDltUzc=
X-Received: by 2002:a17:90a:8403:: with SMTP id j3mr2318141pjn.112.1627361243434;
 Mon, 26 Jul 2021 21:47:23 -0700 (PDT)
MIME-Version: 1.0
References: <20210726105719.15793-1-chun-jie.chen@mediatek.com> <20210726105719.15793-21-chun-jie.chen@mediatek.com>
In-Reply-To: <20210726105719.15793-21-chun-jie.chen@mediatek.com>
From:   Ikjoon Jang <ikjn@chromium.org>
Date:   Tue, 27 Jul 2021 12:47:12 +0800
Message-ID: <CAATdQgCzVffmJ=CQ0JqFQPjreySQNUsfNamjP05m8Jq+e5g=gQ@mail.gmail.com>
Subject: Re: [v14 20/21] clk: mediatek: Add MT8192 vdecsys clock support
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

On Mon, Jul 26, 2021 at 7:11 PM Chun-Jie Chen
<chun-jie.chen@mediatek.com> wrote:
>
> Add MT8192 vdecsys and vdecsys soc clock providers
>
> Signed-off-by: Weiyi Lu <weiyi.lu@mediatek.com>
> Signed-off-by: Chun-Jie Chen <chun-jie.chen@mediatek.com>

Reviewed-by: Ikjoon Jang <ikjn@chromium.org>

(snip)
