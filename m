Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B053F25FE13
	for <lists+devicetree@lfdr.de>; Mon,  7 Sep 2020 18:06:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730004AbgIGQF7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 7 Sep 2020 12:05:59 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58062 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729988AbgIGQFt (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 7 Sep 2020 12:05:49 -0400
Received: from mail-il1-x141.google.com (mail-il1-x141.google.com [IPv6:2607:f8b0:4864:20::141])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 494BCC061575
        for <devicetree@vger.kernel.org>; Mon,  7 Sep 2020 09:05:48 -0700 (PDT)
Received: by mail-il1-x141.google.com with SMTP id x2so12903644ilm.0
        for <devicetree@vger.kernel.org>; Mon, 07 Sep 2020 09:05:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=2YNH7orOHt08+yKQJLjaMtOTfyyp0xF6Fs1etZL+bHo=;
        b=V+/+cxJ23jlTHZSidq42rKHPp74ha5NEqxBN/sAaIX0NzKXxvRR3DCaTk2LL6w69vX
         hp5dk3EcV6CyVydHsSCgL9GkxgMgaKzHVf8naeiZiz/RkVdtAW7CS/EzUO5rYvpKTQ7d
         Iq/n3cjiz8XIiwEAmilNEQzhUGBq/TScPvJ2cScLfCMtY1PoIhpgOEyO3/OP9f5mqNhY
         gjp08yumv3i0LiNqXGmmzfqRvFdbRiRm3Wfpgn9cgn4XBkeIGKM5pYLbGLTSawomKagx
         QKQAZQduXFR9PMaAnPFn1qFTOp/KeSZYOHwK6RIqyNIqXXREmFTFsnmioNSiz/JFtWKM
         r6Gw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=2YNH7orOHt08+yKQJLjaMtOTfyyp0xF6Fs1etZL+bHo=;
        b=FebrQtb/1/K8U9n+Z9dJ9jH7zXS/8BjefMl0FN4Y/h5hDNwOcl+OkG9H+Iiln15398
         zL9ilirXTXgjUT23evMbKzop3Gn/BHfXEQfK6dfxZ5BygxWlPNhc2UQPR5U+91RFJwlV
         7J+zEpSqpkeJ8eOJZJtEDYxyvf82n2uRJboiMMNnYgfToftjWAwdE6NFcepsijjM2JHx
         8vO9+mQziyvlXlEm9Do2Cp7nqr0o6pVoaGqQ0kAIPm+w7JfYXZfGetzrzxxEpw/VpBOr
         83mDTkzW3ydaeyhVnYTcXHbq/ygAMMZeCyGKHzN2cTExMVuVzzsM7t6yWdRm7kFRqqyv
         ffwQ==
X-Gm-Message-State: AOAM531qUz4AuKUXdT6ir1bbfVWiyd4Xe/fYkE6xFI1h+lOsuGDQIu7b
        HbIDLfj9QrwjuU+bD6mOTodgpX0NAzruCuh5qtH4jw==
X-Google-Smtp-Source: ABdhPJy1SJ48pTuQ4hoOcMXqVi7KI0IYuGLLgOn6zubuNITr+5WPd1s2pbjpICAVAqJk1uA+zLCZu2U0jMg9eNYqPDM=
X-Received: by 2002:a92:d144:: with SMTP id t4mr8930571ilg.88.1599494747757;
 Mon, 07 Sep 2020 09:05:47 -0700 (PDT)
MIME-Version: 1.0
References: <20200907125646.1946282-1-fparent@baylibre.com> <CAAOTY_9HYvxEygv-oz9wf+JjiSfp+Zn1u5okMftz3SncfK0G5A@mail.gmail.com>
In-Reply-To: <CAAOTY_9HYvxEygv-oz9wf+JjiSfp+Zn1u5okMftz3SncfK0G5A@mail.gmail.com>
From:   Fabien Parent <fparent@baylibre.com>
Date:   Mon, 7 Sep 2020 18:05:35 +0200
Message-ID: <CAOwMV_xEEt+m+LuL_3dF2J8rp4m4gn2T8AR5nGLi0sDoiOC=RQ@mail.gmail.com>
Subject: Re: [PATCH 1/2] dt-bindings: clock: mediatek: add bindings for MT8167 clocks
To:     Chun-Kuang Hu <chunkuang.hu@kernel.org>
Cc:     "moderated list:ARM/Mediatek SoC support" 
        <linux-mediatek@lists.infradead.org>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        linux-clk@vger.kernel.org,
        linux-kernel <linux-kernel@vger.kernel.org>,
        DTML <devicetree@vger.kernel.org>,
        Stephen Boyd <sboyd@kernel.org>, masahiroy@kernel.org,
        Krzysztof Kozlowski <krzk@kernel.org>,
        CK Hu <ck.hu@mediatek.com>, Rob Herring <robh+dt@kernel.org>,
        mars.cheng@mediatek.com, macpaul.lin@mediatek.com,
        Enric Balletbo i Serra <enric.balletbo@collabora.com>,
        mtk01761 <wendell.lin@mediatek.com>,
        Owen Chen <owen.chen@mediatek.com>,
        Matthias Brugger <matthias.bgg@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Chun-Kuang,

> Why don't you add compatible of "mediatek,mt8167-mmsys"?

I forgot to remove 'mmsys' from the commit message. I decided to add
the documentation as part of the series that add support for MT8167 to
drivers/soc/mediatek/mtk-mmsys.c.

If you think it would be better to document it here I can add the
bindings in the V2.
