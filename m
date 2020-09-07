Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3872425F73B
	for <lists+devicetree@lfdr.de>; Mon,  7 Sep 2020 12:06:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728451AbgIGKGT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 7 Sep 2020 06:06:19 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58864 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728404AbgIGKGP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 7 Sep 2020 06:06:15 -0400
Received: from mail-io1-xd44.google.com (mail-io1-xd44.google.com [IPv6:2607:f8b0:4864:20::d44])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0E2FDC061574
        for <devicetree@vger.kernel.org>; Mon,  7 Sep 2020 03:06:15 -0700 (PDT)
Received: by mail-io1-xd44.google.com with SMTP id r25so2447082ioj.0
        for <devicetree@vger.kernel.org>; Mon, 07 Sep 2020 03:06:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=v0OvTuxE+/iMswMQTjQb/bjlIs084TlMlRT8WNmVF+Y=;
        b=1NqE+sdR4ONCLnZ5XhFqnlHSfQVFov4iy/cT+yyxmAzy5+YCr/Ul9KigmS858zeHof
         veerpBJ8XhqPoT84DSedPKvLdYY3GqAGqRsEkjV+NU9bChBpBNA1NZNkxENzA7KPM1cJ
         YbNZSDGYeZOwNGjxpWRPNef161HXLK7nWTU8e4wLNPz62F/si1Y2ll6mGdGWppAmk1hR
         XDf6BujzOkpGItyYi/ysU1ESNG0WrA8+8+xAtGfGZlmB8cW9STc/iJZZuljVuRxIfSg+
         PhJx7H8iMDclSVWwaOTyu7KmLReNaaaD0MY9P/+s2Gt3YrLzIKH9AUN2tCQZJViElB9G
         Vc5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=v0OvTuxE+/iMswMQTjQb/bjlIs084TlMlRT8WNmVF+Y=;
        b=JmPNsR81MrhQGScB+kRISpZeoq0aTIxbLU6eiyQlCtcHdFysO6mVKvcZlo8Qwc3oA7
         o7g1pzotJ1K69J0t6awxsYuVGvUFB38oIhn9TK0nYoyRHc3NhHntf8LlYQQ2QvGpLgZN
         JLSI5b3TSnfzmZ2Npk6bK3KoEY2Z/pSo43yRHlPGdaQjTwg5NhNppcHen0Yviss/uPpk
         sGORqxHLLm210R8le/lWwmulPjXSAOoqJTOY22tu9hezF3yigPArD8C39BwmG4mMZesB
         uwuw+UGIGlG54Yg/gxKm65Gt+0JLB0NDRATf7p/3ayaBWyuGRV+Gkv6uCaJ73T1lRSdb
         VTwA==
X-Gm-Message-State: AOAM531VIk0jU0Yc4Nc5aIrI4X9ac4O5L6k03ciiO1B+y0/+28IFEB9v
        k8olOrW65YBryUPDW8fkkNR6pj1FR2cTV5rm/vXEkw==
X-Google-Smtp-Source: ABdhPJw52QuX8XyBkW5w5YSCJbnGbo22v3h5joTjE50AnRXJMICHttb6i5OzXghJCZwUuJmPrBvIE2wQCbUxcbTWSzI=
X-Received: by 2002:a5d:80d6:: with SMTP id h22mr2869058ior.154.1599473174144;
 Mon, 07 Sep 2020 03:06:14 -0700 (PDT)
MIME-Version: 1.0
References: <20200906151928.881209-1-fparent@baylibre.com> <20200906151928.881209-3-fparent@baylibre.com>
 <1599450232.27773.13.camel@mhfsdcap03>
In-Reply-To: <1599450232.27773.13.camel@mhfsdcap03>
From:   Fabien Parent <fparent@baylibre.com>
Date:   Mon, 7 Sep 2020 12:06:03 +0200
Message-ID: <CAOwMV_wXM9Tt-NhKQ05juvj06reD70AXUNzqWTEMeAgqcmnO0g@mail.gmail.com>
Subject: Re: [PATCH v3 3/3] iommu/mediatek: add support for MT8167
To:     Yong Wu <yong.wu@mediatek.com>
Cc:     iommu@lists.linux-foundation.org,
        DTML <devicetree@vger.kernel.org>, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, joro@8bytes.org,
        Rob Herring <robh+dt@kernel.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        miles.chen@mediatek.com
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

> > +static const struct mtk_iommu_plat_data mt8167_data = {
> > +     .m4u_plat     = M4U_MT8167,
> > +     .flags        = HAS_4GB_MODE | RESET_AXI | HAS_LEGACY_IVRP_PADDR,
>
> The 4GB mode flow was improved at[1] which has just been applied.
>
> If you add 4gb_mode flag but don't have "mt8167-infracfg", the probe may
> be failed.

Looking back at the datasheet I don't think HAS_4GB_MODE should have
been enabled for MT8167 anyway. I just removed it and retested the
patch. I will fix it in v4. Thanks

> [1]
> https://lore.kernel.org/linux-iommu/20200904112117.GC16609@8bytes.org/T/#m613e9926735d07ad004fddbbcedaa50b5afacca1
