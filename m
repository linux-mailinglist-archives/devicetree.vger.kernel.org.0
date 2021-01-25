Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id EECF3302562
	for <lists+devicetree@lfdr.de>; Mon, 25 Jan 2021 14:17:05 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728704AbhAYNPC (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 25 Jan 2021 08:15:02 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56796 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728685AbhAYNOC (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 25 Jan 2021 08:14:02 -0500
Received: from mail-lf1-x12f.google.com (mail-lf1-x12f.google.com [IPv6:2a00:1450:4864:20::12f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5D96BC06178B
        for <devicetree@vger.kernel.org>; Mon, 25 Jan 2021 05:13:17 -0800 (PST)
Received: by mail-lf1-x12f.google.com with SMTP id m22so17653047lfg.5
        for <devicetree@vger.kernel.org>; Mon, 25 Jan 2021 05:13:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=dkjGH+G3sbPs0AwBpKTZTNMo6PAnhVg3Vk9O+oPBcYo=;
        b=Jh7/FEpR91Kn0N8agvzoZbDt8Vo0Re5umfDss3QUmF1BVvSaj9lIq8UbWi6u8L58yZ
         DZA92Cn7qbWCqYz+j1NHBTG9c95BbJLfjZbNc+pHZqcNlBjqsl2f930JkVnnekbroya/
         Pan4OWOrhztzpXYSMxzPpkCTRDLqxWFcnqDGUIyMiYCLgt+7Sf2HKwR6WGphRoXg+IY7
         NioWkdeZjyDA17yR1tK0y8Ze1vyNNDByrWKrewGm+9VSIHFtkyCC+5uIrIwx/gNTBdKf
         4bYbf3cNy0fKzaUDFkIO1IUc3smoFFfFAop5sisWtetjF7iKYE4KGd/KvXhrF/aGLwoS
         3R7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=dkjGH+G3sbPs0AwBpKTZTNMo6PAnhVg3Vk9O+oPBcYo=;
        b=N6+Msfc2Fm+injXC9Mg1k9vkCWkDpxA5TFxPsYERKcgF+F+IAHLgQ5uiTm4lcfPocJ
         KEFlV+2sh1D4XCstawgFLCII3eCz3Ete87Kkmm8c87Q2p9PSF3l801NTdqWUTk/eLI61
         ODbsHsjf8VmlKabXJML2OcqLv2ng69J3iX5MkPOWw1I7DvNaK/m/9Qt7GUKDyFuoDWlF
         2GzRDv/Yn/xmRXZJe6NhNf58MeaeXDk42l2JeC2bQuMq7YeQyT8ah+d78iSr0pYgVL1A
         N/qgwBjvuJ0kAuZXAFDhx95Cwi5EZXbug/ipUeKUqJZtZ1o0hv7tTJ3oCDTXCKQvd401
         v1JA==
X-Gm-Message-State: AOAM532qpIR9l6F+A2HgNoijdZ+ReAB/bo5Gw4untzRVDK7j1ckD04b3
        lYRoVmNOe6N11/HHf4UJSrpSF3zAq0ouoIcQ48UvbA==
X-Google-Smtp-Source: ABdhPJxb7i93hzji/0XqwZuGFblpA4aj5dMHr9srYEFMDhw8118iclkxarMinp3+461hMdPJxmB4BxSJZ/B8GxjDcRU=
X-Received: by 2002:ac2:5c45:: with SMTP id s5mr250905lfp.586.1611580395894;
 Mon, 25 Jan 2021 05:13:15 -0800 (PST)
MIME-Version: 1.0
References: <20210125044322.6280-1-dqfext@gmail.com> <20210125044322.6280-2-dqfext@gmail.com>
In-Reply-To: <20210125044322.6280-2-dqfext@gmail.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Mon, 25 Jan 2021 14:13:05 +0100
Message-ID: <CACRpkdag3P7yGVmzkcdi8zw=3WJFNDDTQDOWujBB54YgFZJ22g@mail.gmail.com>
Subject: Re: [PATCH net-next v2 1/2] dt-bindings: net: dsa: add MT7530 GPIO
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
        Bartosz Golaszewski <bgolaszewski@baylibre.com>,
        netdev <netdev@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
        "moderated list:ARM/Mediatek SoC support" 
        <linux-mediatek@lists.infradead.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        Frank Wunderlich <frank-w@public-files.de>,
        =?UTF-8?Q?Ren=C3=A9_van_Dorst?= <opensource@vdorst.com>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Jan 25, 2021 at 5:43 AM DENG Qingfang <dqfext@gmail.com> wrote:

> Add device tree binding to support MT7530 GPIO controller.
>
> Signed-off-by: DENG Qingfang <dqfext@gmail.com>

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij
