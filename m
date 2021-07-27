Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0AF933D6D8E
	for <lists+devicetree@lfdr.de>; Tue, 27 Jul 2021 06:41:33 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234867AbhG0Ela (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 27 Jul 2021 00:41:30 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54782 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234813AbhG0El3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 27 Jul 2021 00:41:29 -0400
Received: from mail-pj1-x1029.google.com (mail-pj1-x1029.google.com [IPv6:2607:f8b0:4864:20::1029])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E9101C061757
        for <devicetree@vger.kernel.org>; Mon, 26 Jul 2021 21:41:28 -0700 (PDT)
Received: by mail-pj1-x1029.google.com with SMTP id g23-20020a17090a5797b02901765d605e14so3157770pji.5
        for <devicetree@vger.kernel.org>; Mon, 26 Jul 2021 21:41:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=qE4/SqkNnix+M7ct3sQdpg0XGV25TlRZol1gYI9jQFI=;
        b=SCeefJ6MY5kkt/BX3+hEMJXuqVRb7DbGmYWeLSrICIWjinaN+FKm5jW6v4DshennXn
         NTVN6p9TA9qhHO+woUgxz8TUN2f6WiPKk3E5Evj5azRnV5IxJPiQOLSJMWij4QT/13J8
         ZndpPOVcaTZ7xjSKLLzoWlCVq2dmtPo+XgR8w=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=qE4/SqkNnix+M7ct3sQdpg0XGV25TlRZol1gYI9jQFI=;
        b=YG1uhqcerllsPqm8UnPeinVWhpA2YytFiK2gST5htgQQm8BCHkoz9fm3MKnIJG5FGY
         1/80FXT2B6lDd1dYI3iHTc3BvIgIrU5ujBsTwtMP+ipEPyzVsWPoz8fEM2QUJP8LZvPC
         RIggo512Dj2ClpTHubWaSD4X6DvJte3WNjuFbzwYm7dpvKBS8crJ+K8HMcOi5ZynR4SA
         0BceDtng9fK02/qzSf6UXu9mIa+57q7WwKEF9ejX8rRK5/g7yQjHY4d8bWjGZDAyhqyU
         ZZSYr5AQreyJ3uTYiOEY9EplwNVfyEqWCyINhqqnpvkwrK76VT/RY+qm48cFjYIGuKhG
         VCcw==
X-Gm-Message-State: AOAM533AWEBtt+UOxWMPH7ADM821ADo+b8bqtyu/eYwnJ+KizRWpUZ3T
        GIEsWw9sIgLFEnEoBJyrQxolNrCRarF/mc8prXondw==
X-Google-Smtp-Source: ABdhPJxtKF+/H1IGS0dCsxbFgQ/EnNk+IvHAoHpsU0C9gCRh2mE2O3I3otmdRgeARUulaPAzYLSWEqGjBM75ihdgrEI=
X-Received: by 2002:a17:90a:8403:: with SMTP id j3mr2300678pjn.112.1627360888489;
 Mon, 26 Jul 2021 21:41:28 -0700 (PDT)
MIME-Version: 1.0
References: <20210726105719.15793-1-chun-jie.chen@mediatek.com> <20210726105719.15793-12-chun-jie.chen@mediatek.com>
In-Reply-To: <20210726105719.15793-12-chun-jie.chen@mediatek.com>
From:   Ikjoon Jang <ikjn@chromium.org>
Date:   Tue, 27 Jul 2021 12:41:17 +0800
Message-ID: <CAATdQgDJhe7BvNHs0FgckMaS+XSDco4mGAyjAq6PrMFwpeL=bg@mail.gmail.com>
Subject: Re: [v14 11/21] clk: mediatek: Add MT8192 camsys clock support
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

On Mon, Jul 26, 2021 at 7:08 PM Chun-Jie Chen
<chun-jie.chen@mediatek.com> wrote:
>
> Add MT8192 camsys and camsys raw clock providers
>
> Signed-off-by: Weiyi Lu <weiyi.lu@mediatek.com>
> Signed-off-by: Chun-Jie Chen <chun-jie.chen@mediatek.com>

Reviewed-by: Ikjoon Jang <ikjn@chromium.org>

(snip)
