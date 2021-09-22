Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4FF964145A5
	for <lists+devicetree@lfdr.de>; Wed, 22 Sep 2021 11:57:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234616AbhIVJ7V (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 22 Sep 2021 05:59:21 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49184 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234413AbhIVJ7V (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 22 Sep 2021 05:59:21 -0400
Received: from mail-lf1-x129.google.com (mail-lf1-x129.google.com [IPv6:2a00:1450:4864:20::129])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 55115C061757
        for <devicetree@vger.kernel.org>; Wed, 22 Sep 2021 02:57:51 -0700 (PDT)
Received: by mail-lf1-x129.google.com with SMTP id x27so9668965lfu.5
        for <devicetree@vger.kernel.org>; Wed, 22 Sep 2021 02:57:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=5zPFLKdwxEQ81o/wg7gBk+tb/obGKRy8ThoN2UKg148=;
        b=FgS4Cst9PhmI+ylUCDv/S8Jwho3iMZN6S7wLDxLWtfTUVEOcGUs9EqWASkMndVYxwU
         /IoGAqAowTA2uVRKJ3ZR7G6mIOOx3vJL7C2XLeL45qX4o7yRu6zeW32VsITeT0Ugwnju
         vbi+j/UbmDeRoGap7sFoCSh/Y3Mji5RCPczOQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=5zPFLKdwxEQ81o/wg7gBk+tb/obGKRy8ThoN2UKg148=;
        b=kVxlJC6iWLj+2kDGEVeA88VA1GY5V+KMFJC4JLbelwK/sZ3TDzFARYQh0Xg0gRHmsY
         6S7ZqhzXyqT6m5NI4wUXx55IYS7r3tJYE6+nCPApjf1okCXQTT0XZWnf1QlstbJoypdL
         G9qtFbBrhLwMyNmj1XpKjNVUqOTsA8gy60+xWWvpRqFbQeavrFtB8Kibu1bVisHWSoHl
         shvL3ZLqdjiOa5BPdlLG1bLyAS4kGQjvFH3sfUlH4GKw1uVTEi8w2jIgM4Xap2Whg5RF
         cAGwrM9ou8en+9UmpL157yEpqkdxn7b7M3O82GScoztc9oBk7aqn5PL8Ia+jV/BUG3Eh
         rSPQ==
X-Gm-Message-State: AOAM53079C/cY7bjPGi8/cAXEW6eXjEO0QaDnDlAJnMRcKGpmY0eaE6u
        EGf7xdonHS8OxMiAP83V3X5unZh13o5gCtYBKaJTRLpmIiM=
X-Google-Smtp-Source: ABdhPJwZLSMZ4vH/uiWlXM/0D55iZGTePsjP293/G8LySD8PaTBNULi2fm0jDPKEeSDfde0cJX66xJG5b1IxF1qccqM=
X-Received: by 2002:a2e:4b09:: with SMTP id y9mr27182090lja.201.1632304669689;
 Wed, 22 Sep 2021 02:57:49 -0700 (PDT)
MIME-Version: 1.0
References: <20210922025640.11600-1-zhiyong.tao@mediatek.com> <20210922025640.11600-6-zhiyong.tao@mediatek.com>
In-Reply-To: <20210922025640.11600-6-zhiyong.tao@mediatek.com>
From:   Chen-Yu Tsai <wenst@chromium.org>
Date:   Wed, 22 Sep 2021 17:57:38 +0800
Message-ID: <CAGXv+5Fs696ZM2+QEUf8+zoxrh1e4n8Ke5xoijJWDu0_xWOr7A@mail.gmail.com>
Subject: Re: [PATCH v13 5/5] pinctrl: mediatek: add rsel setting on MT8195
To:     Zhiyong Tao <zhiyong.tao@mediatek.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Linus Walleij <linus.walleij@linaro.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Sean Wang <sean.wang@kernel.org>,
        srv_heupstream <srv_heupstream@mediatek.com>,
        hui.liu@mediatek.com, Light Hsieh <light.hsieh@mediatek.com>,
        Biao Huang <biao.huang@mediatek.com>,
        Hongzhou Yang <hongzhou.yang@mediatek.com>,
        Sean Wang <sean.wang@mediatek.com>,
        Seiya Wang <seiya.wang@mediatek.com>,
        Devicetree List <devicetree@vger.kernel.org>,
        LKML <linux-kernel@vger.kernel.org>,
        "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE" 
        <linux-arm-kernel@lists.infradead.org>,
        "moderated list:ARM/Mediatek SoC support" 
        <linux-mediatek@lists.infradead.org>,
        "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Sep 22, 2021 at 11:07 AM Zhiyong Tao <zhiyong.tao@mediatek.com> wrote:
>
> I2C pins's resistance value can be controlled by rsel register.
> This patch provides rsel (resistance selection) setting on MT8195
>
> Signed-off-by: Zhiyong Tao <zhiyong.tao@mediatek.com>

Reviewed-by: Chen-Yu Tsai <wenst@chromium.org>
