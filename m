Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 21B1947F506
	for <lists+devicetree@lfdr.de>; Sun, 26 Dec 2021 04:30:08 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230482AbhLZDaE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 25 Dec 2021 22:30:04 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47830 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230356AbhLZDaE (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 25 Dec 2021 22:30:04 -0500
Received: from mail-ot1-x32f.google.com (mail-ot1-x32f.google.com [IPv6:2607:f8b0:4864:20::32f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2B87AC061759
        for <devicetree@vger.kernel.org>; Sat, 25 Dec 2021 19:30:04 -0800 (PST)
Received: by mail-ot1-x32f.google.com with SMTP id 45-20020a9d0a30000000b0058f1a6df088so16079833otg.4
        for <devicetree@vger.kernel.org>; Sat, 25 Dec 2021 19:30:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=YmEWLgcwPX/M/aA7pjXCRvXDNINS6I3lsTZEUUwzH6Y=;
        b=KfUZB/fRaCyYZetpaRnu3K1awKQjhlrJhT3OoaLsokHmjz9GO0xkTc2uLp8I7rpAk4
         sbvr1+DNIn1uRKhMH9xm7au/m3O+dj33/oLGfivsAXwLq64zYLNEFXewK4isCNt34pxc
         JWL2JKfdXdmZP/6aZhUWpbtvN9eizF3CF3jhIuJy/YK9kwZq0b5wEtui9gHgpxZyKjuk
         pTku0FX89mYdxXIpKsF4b7UTvIy63uj/EIv35A1bl51YgPuGX9UDIqop5Y5enPC8myv3
         DLtDikk9y4hYUutPMAoQjE2O2lVovEPnOaSi7JijvisR3jPQ87faTxAe9KMfvGnR1at5
         VzeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=YmEWLgcwPX/M/aA7pjXCRvXDNINS6I3lsTZEUUwzH6Y=;
        b=n+toh5pk+GbIFbSHunTxi0a8uAZlYPCSC9nO6TFAsRMvL5ilAAn3DhLf4nyRYVbwgI
         7LufEqKFAuEDakEgGA85ZoFyFw6vaRKM5+K7BjxW7XZ16Kcdf+1HMmrgmnRyhZY1MRs9
         r5wRN+yh8qqu1++OXrNpf7HfhDLbJtECxjMCxJOmHITLSX/ZmUjg39/+Mnt6kRHMYbOD
         GyyuMcj+YvKhlvohUY7B8DXLuuqfomCzGqeV68VlkiKzHSW1a6/14o14m7x5e7GamMB7
         Y4TcmF+FKoN5L79yiXS5Dr6I1GXrvc1L+vAJ9+lHu8SsahZd0BpXj6TTFy70bvfs3Sol
         p39Q==
X-Gm-Message-State: AOAM5314u/UEVM8CPbkGb7kvuJE4567mH/G8sJEEkkdQvp932/Uct47s
        /3YBwRLAojExo+6CBYfeJQrf0zNAxWatxvu/LzU0HcdlZPs=
X-Google-Smtp-Source: ABdhPJyYVyfe6hGE0NMy3yrkHpyDOj9Ksh8PUStF6RXF6p4WpJrbiEZkOIQOSQxopbzZSN8TDgso2M99kWfJWDgLuxw=
X-Received: by 2002:a9d:a42:: with SMTP id 60mr8961227otg.179.1640489403276;
 Sat, 25 Dec 2021 19:30:03 -0800 (PST)
MIME-Version: 1.0
References: <20211223181741.3999-1-f.fainelli@gmail.com>
In-Reply-To: <20211223181741.3999-1-f.fainelli@gmail.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Sun, 26 Dec 2021 04:29:51 +0100
Message-ID: <CACRpkda_6Uwzoxiq=vpftusKFtQ8_Qbtoau9Wtm_AM8p3BqpVg@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: net: dsa: Fix realtek-smi example
To:     Florian Fainelli <f.fainelli@gmail.com>
Cc:     devicetree@vger.kernel.org, Arnd Bergmann <arnd@arndb.de>,
        Olof Johansson <olof@lixom.net>,
        =?UTF-8?B?QXLEsW7DpyDDnE5BTA==?= <arinc.unal@arinc9.com>,
        Stephen Rothwell <sfr@canb.auug.org.au>,
        Andrew Lunn <andrew@lunn.ch>,
        Vivien Didelot <vivien.didelot@gmail.com>,
        Vladimir Oltean <olteanv@gmail.com>,
        "David S. Miller" <davem@davemloft.net>,
        Jakub Kicinski <kuba@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        "open list:NETWORKING DRIVERS" <netdev@vger.kernel.org>,
        open list <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Dec 23, 2021 at 7:17 PM Florian Fainelli <f.fainelli@gmail.com> wrote:

> The 'ports' node is not supposed to have a 'reg' property at all, in
> fact, doing so will lead to dtc issuing warnings looking like these:
>
> arch/arm/boot/dts/bcm47094-asus-rt-ac88u.dts:109.4-14: Warning (reg_format): /switch/ports:reg: property has invalid length (4 bytes) (#address-cells == 2, #size-cells == 1)
> arch/arm/boot/dts/bcm47094-asus-rt-ac88u.dtb: Warning (pci_device_reg): Failed prerequisite 'reg_format'
> arch/arm/boot/dts/bcm47094-asus-rt-ac88u.dtb: Warning (pci_device_bus_num): Failed prerequisite 'reg_format'
> arch/arm/boot/dts/bcm47094-asus-rt-ac88u.dtb: Warning (i2c_bus_reg): Failed prerequisite 'reg_format'
> arch/arm/boot/dts/bcm47094-asus-rt-ac88u.dtb: Warning (spi_bus_reg): Failed prerequisite 'reg_format'
> arch/arm/boot/dts/bcm47094-asus-rt-ac88u.dts:106.9-149.5: Warning (avoid_default_addr_size): /switch/ports: Relying on default #address-cells value
> arch/arm/boot/dts/bcm47094-asus-rt-ac88u.dts:106.9-149.5: Warning (avoid_default_addr_size): /switch/ports: Relying on default #size-cells value
>
> Fix the example by remove the stray 'reg' property.
>
> Reported-by: Stephen Rothwell <sfr@canb.auug.org.au>
> Fixes: 3b3b6b460f78 ("net: dsa: Add bindings for Realtek SMI DSAs")
> Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>

Ooops thanks for fixing this! (Wouldn't happen if we converted
it to YAML...)
Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij
