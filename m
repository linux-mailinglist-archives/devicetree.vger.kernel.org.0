Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 334C12FA367
	for <lists+devicetree@lfdr.de>; Mon, 18 Jan 2021 15:45:05 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2405118AbhAROoa (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 18 Jan 2021 09:44:30 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57006 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2405122AbhAROoQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 18 Jan 2021 09:44:16 -0500
Received: from mail-lj1-x235.google.com (mail-lj1-x235.google.com [IPv6:2a00:1450:4864:20::235])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BCC25C061575
        for <devicetree@vger.kernel.org>; Mon, 18 Jan 2021 06:43:33 -0800 (PST)
Received: by mail-lj1-x235.google.com with SMTP id w26so18468215ljo.4
        for <devicetree@vger.kernel.org>; Mon, 18 Jan 2021 06:43:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=runo5vK1iqFTp6/RwnDUEbOVNz8ibclO8u1aZro9VKc=;
        b=twoDGBDgrvw/4Z2eIupJoAhRxuYzGgcaExa9KOHpEypH1Vk9381GnGErvyDNSjo8f6
         lW6pf9vgJurz+efm6dJ4OURkT1cE1oVfxeXOOn5+gKc7iC+AIW/nbee7s2JjHZOSpKOm
         r+UDYxdvmLOiKQRfR1AFBtSbWY3X/F9rkgam6a2/uhrIYc9WvZuTiyBAW3Zloz1SJGz9
         dQW/peQUHGiUVkjXQJ3TVBOYM+zTMmf2nSeawPhThpJH+WT5xmQGEpKUBUI3zIO0ecxJ
         hQJD1nMNUfnHh/V1xWVhUBRyf2AY+atyGgy4uyiwYQw5vF3qvBwN0jdAk0+W8h1yJFJD
         ppnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=runo5vK1iqFTp6/RwnDUEbOVNz8ibclO8u1aZro9VKc=;
        b=F4x06zIlt+3YyiDL1n3TKZvszABGkRRNCIunsZeaoyG+0ZrsxS6MisRePlwGjumXqs
         BIKgGBeozQuHGiQpss9w9LeVGDG97ER5OHUJNP4kUveTFWuXLVLOwGB+EkkgIcjIUj5R
         1nhHWN5ZYf8rDihqstFUeYIX4Mmx0VTNSlM79zadhrcamQn+pX5v9e2hzLNJtPovaUxk
         9JwFpb25KRWbRxOP0qrjOUO3A/JwIsse/1fIAHa0wlLstOPn50AwnYBV1HwPAHZxLDv7
         8qdhvZQNUG9jAwJTSG1D3VNxFN9k8Oishm7qm582ZsgqEQ4k8HLz4ZWpduk9hZvMJ0p0
         fI4w==
X-Gm-Message-State: AOAM532ABodDUd2A0r2+/djvPsDBwpoAsAZ28CrffPVpciUivWutDAuY
        xERRvNP8beVGJCChgybnQSGh1N3zOVsTyM+evWwCaA==
X-Google-Smtp-Source: ABdhPJy2OOVKezjRgxxe5iT3gY3n3WlV9ouw3Rb0zCDWbrU5ySb671mcJXZMhaBCBrs5KgGrosV27j0P0GOQijbiL3o=
X-Received: by 2002:a2e:3503:: with SMTP id z3mr30858ljz.74.1610981012277;
 Mon, 18 Jan 2021 06:43:32 -0800 (PST)
MIME-Version: 1.0
References: <20210111054428.3273-1-dqfext@gmail.com> <20210111054428.3273-2-dqfext@gmail.com>
In-Reply-To: <20210111054428.3273-2-dqfext@gmail.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Mon, 18 Jan 2021 15:43:21 +0100
Message-ID: <CACRpkdY8K8N84iAZhDrxPT6+W6Df85h5O+zE5NqW3z4AWvePmw@mail.gmail.com>
Subject: Re: [PATCH net-next 1/2] dt-bindings: net: dsa: add MT7530 GPIO
 controller binding
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

On Mon, Jan 11, 2021 at 6:46 AM DENG Qingfang <dqfext@gmail.com> wrote:

> Add device tree binding to support MT7530 GPIO controller.
>
> Signed-off-by: DENG Qingfang <dqfext@gmail.com>

This is a good way to turn it into a GPIO controller.
Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij
