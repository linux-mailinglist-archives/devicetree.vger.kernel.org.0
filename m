Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7E2BE3D6D9C
	for <lists+devicetree@lfdr.de>; Tue, 27 Jul 2021 06:44:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234920AbhG0EoD (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 27 Jul 2021 00:44:03 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55412 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234960AbhG0EoA (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 27 Jul 2021 00:44:00 -0400
Received: from mail-pl1-x62f.google.com (mail-pl1-x62f.google.com [IPv6:2607:f8b0:4864:20::62f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B9982C061760
        for <devicetree@vger.kernel.org>; Mon, 26 Jul 2021 21:44:00 -0700 (PDT)
Received: by mail-pl1-x62f.google.com with SMTP id t21so14241955plr.13
        for <devicetree@vger.kernel.org>; Mon, 26 Jul 2021 21:44:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=cDWjDEqi47ElGh7C2oNgk2vsctUysNVRiZueqRzrN1E=;
        b=UHaoDeiHmVbqUuuK2tOuOy6bmjyToLI85HN61nQb2tVZNkd2tjyZnAE0C8ix1OEXHE
         XstQvUClJfmO+QPimqaKYZmvSDcqvIA67u/9Gaj1qIRPHBetk6es9VJuqhZKINhHKAK5
         sctWUmJu06jbfbPNf6YIOTKfznU19MKvKjqiQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=cDWjDEqi47ElGh7C2oNgk2vsctUysNVRiZueqRzrN1E=;
        b=b1of5B38YTbpJAA2Yemb0C5tZDrkqdvESB4wtG/ZLZh+JuO2dIuRyn6IxIQ5cioDOA
         UBB7RWbQQ6U+pvE06R9tRhVNUKYMyHmEyhshQoDX3/wLgHXWbp4lH7cMAnnu8H8OiF0L
         vz9FfnI2368lI4sbLF0PhO2hhoLDeJhPTUcg+IwKR6A3oj4oFUhAjV2jn5vFsgtE5ZYl
         OTprlTp0ge/wc0rZVZltaMoJoBOiyPtYxvOhPGVNnvL+pPwqflh8pFiu/5EB9UMIrQ47
         GX2XS6rIjqk8pJRPeA2xgIguYKWKd5+yGt0ki0P2A/T7xxRMMNjUR4E1Gxpocp2tQJdb
         ynlA==
X-Gm-Message-State: AOAM533vEu9NXOhJLB8YoBaO28H6jy4/MIxBRqK7wBQ5t4zn/97eJGRC
        42uM02Xr2qnc3i6WC2s4kmP3EIIdf2QNZrB2JDp/lw==
X-Google-Smtp-Source: ABdhPJzE5fzikckD6W8BCnYoANGcUYqKRBGEc0+o7U0HuCkBAe7GdNeibY0DL5CaQN96ISl+gJhLzrJ2WX9YBmoTOiU=
X-Received: by 2002:a63:3601:: with SMTP id d1mr21373016pga.299.1627361040343;
 Mon, 26 Jul 2021 21:44:00 -0700 (PDT)
MIME-Version: 1.0
References: <20210726105719.15793-1-chun-jie.chen@mediatek.com> <20210726105719.15793-16-chun-jie.chen@mediatek.com>
In-Reply-To: <20210726105719.15793-16-chun-jie.chen@mediatek.com>
From:   Ikjoon Jang <ikjn@chromium.org>
Date:   Tue, 27 Jul 2021 12:43:49 +0800
Message-ID: <CAATdQgDzh6yME2pDsLuHHMuKA8bfjwHMD5z9yd-VGcdDtBZEPQ@mail.gmail.com>
Subject: Re: [v14 15/21] clk: mediatek: Add MT8192 mdpsys clock support
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

On Mon, Jul 26, 2021 at 7:11 PM Chun-Jie Chen
<chun-jie.chen@mediatek.com> wrote:
>
> Add MT8192 mdpsys clock provider
>
> Signed-off-by: Weiyi Lu <weiyi.lu@mediatek.com>
> Signed-off-by: Chun-Jie Chen <chun-jie.chen@mediatek.com>

Reviewed-by: Ikjoon Jang <ikjn@chromium.org>

(snip)
