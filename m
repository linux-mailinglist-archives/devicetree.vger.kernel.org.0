Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5E82B3FA17C
	for <lists+devicetree@lfdr.de>; Sat, 28 Aug 2021 00:27:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232137AbhH0W2I (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 27 Aug 2021 18:28:08 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45794 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232106AbhH0W2G (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 27 Aug 2021 18:28:06 -0400
Received: from mail-lj1-x22a.google.com (mail-lj1-x22a.google.com [IPv6:2a00:1450:4864:20::22a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1D721C061796
        for <devicetree@vger.kernel.org>; Fri, 27 Aug 2021 15:27:17 -0700 (PDT)
Received: by mail-lj1-x22a.google.com with SMTP id w4so13930192ljh.13
        for <devicetree@vger.kernel.org>; Fri, 27 Aug 2021 15:27:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=j7gpQi41GfWLDXk4SQxK9/VZniTBJC2H4vXHd3mpxDI=;
        b=WFxEVwSr8C6nLqlA8hjmllPCkqrXNfl3PX28AgXhRIR5Z8JQ3SLzbRDIp3GPKPz7VF
         iB6DvFxHiF0mFSeA6FBVui9GCutIhRPL27sc4o8psNzDFpvmKXqbBX9myqbSgjRjtZ9+
         KAFDpwncXr1u/EuAHo49LikyGbVTg7IBvArPu9NXb39otOMgzIdHb0NfBn1+/6Bs6eFR
         +RudzMivSJZHYzsbokC2OAH8fMQvM0dhcGszjR4gTz9gX0K6boz5TMKG9GB7e310xv3F
         pIMDrZSDXcmgzNyuVHYcAPOhuwfXU4nPaizyxsvgXXd3/O3799neJXr8GtokkzysFv0H
         bw0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=j7gpQi41GfWLDXk4SQxK9/VZniTBJC2H4vXHd3mpxDI=;
        b=Y1pWJQoRe1NBWL2Wt5C+LrF5cfzkJrqD7dvOOsYLltvHN2rrZ4/2DaRkTWZuuzXu2B
         DmZu8g/9wTNh6//KEPNxaIT7aSvJQj7U8k3984jOvXINB6/jAMS3JUN6M1rNEBbWAz06
         5ro3/xeQP6OgpVdGwEnAr5TCxPnIl/sAyY2w1cdcEl+DWPJONoFouE29Ed9NwMW10PsT
         oZ/opQEQOuFzmU9ssMOAyCffC+juFVLyMJYYYN0wbBDEMVYIKogrLztEE0PR8miixf4y
         GFDPIHEfdSFH3vDTZpiHRGgtlyLe8hWijsNbejfzSjrYTlNs9yxs+NSEYDRnUIL2P4Vs
         XA8A==
X-Gm-Message-State: AOAM533IWdb6iICtsL4384WYTmkPmi7/yPwXF9WcPpSAuHfuJHu4vmYX
        gjOBuT/EbwPaiRH4+llt4qxq3+5zqbY7aydukdU66g==
X-Google-Smtp-Source: ABdhPJzIQZQRIagSRKqyBrJ/0H7R9Wa+WarQ5IW/cVSBxNQOcWMQ2Ne+O9eNE6w8uOrVyxiok8aJlKsRW9oefCnC4Es=
X-Received: by 2002:a2e:7d11:: with SMTP id y17mr9565604ljc.368.1630103235393;
 Fri, 27 Aug 2021 15:27:15 -0700 (PDT)
MIME-Version: 1.0
References: <20210822193145.1312668-1-alvin@pqrs.dk> <20210822193145.1312668-6-alvin@pqrs.dk>
In-Reply-To: <20210822193145.1312668-6-alvin@pqrs.dk>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Sat, 28 Aug 2021 00:27:04 +0200
Message-ID: <CACRpkdaUM_M5GAt6MruYBKTSTsYbN6sEYY=7Oz-fQzgzq+81ug@mail.gmail.com>
Subject: Re: [RFC PATCH net-next 5/5] net: phy: realtek: add support for
 RTL8365MB-VC internal PHYs
To:     =?UTF-8?Q?Alvin_=C5=A0ipraga?= <alvin@pqrs.dk>
Cc:     Andrew Lunn <andrew@lunn.ch>,
        Vivien Didelot <vivien.didelot@gmail.com>,
        Florian Fainelli <f.fainelli@gmail.com>,
        Vladimir Oltean <olteanv@gmail.com>,
        "David S. Miller" <davem@davemloft.net>,
        Jakub Kicinski <kuba@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Heiner Kallweit <hkallweit1@gmail.com>,
        Russell King <linux@armlinux.org.uk>,
        Michael Rasmussen <mir@bang-olufsen.dk>,
        =?UTF-8?Q?Alvin_=C5=A0ipraga?= <alsi@bang-olufsen.dk>,
        netdev <netdev@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        linux-kernel <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sun, Aug 22, 2021 at 9:32 PM Alvin =C5=A0ipraga <alvin@pqrs.dk> wrote:

> From: Alvin =C5=A0ipraga <alsi@bang-olufsen.dk>
>
> The RTL8365MB-VC ethernet switch controller has 4 internal PHYs for its
> user-facing ports. All that is needed is to let the PHY driver core
> pick up the IRQ made available by the switch driver.
>
> Signed-off-by: Alvin =C5=A0ipraga <alsi@bang-olufsen.dk>

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij
