Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2FAE936A3AD
	for <lists+devicetree@lfdr.de>; Sun, 25 Apr 2021 02:25:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229969AbhDYAZW (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 24 Apr 2021 20:25:22 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57976 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229687AbhDYAZU (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 24 Apr 2021 20:25:20 -0400
Received: from mail-lf1-x134.google.com (mail-lf1-x134.google.com [IPv6:2a00:1450:4864:20::134])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A0139C061574
        for <devicetree@vger.kernel.org>; Sat, 24 Apr 2021 17:24:39 -0700 (PDT)
Received: by mail-lf1-x134.google.com with SMTP id 4so22984619lfp.11
        for <devicetree@vger.kernel.org>; Sat, 24 Apr 2021 17:24:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=5WR8dQYJUa1XML4lYiw3V24xbNj3qpJxpfUKdL6UNik=;
        b=kdRWdV+xz0cGtFlHE81ER9+UqoZz84Ss/7eSXeLS9dnQvp1YfVW+NZ1ZDQa4cYVCrO
         UZa6oP5V3cYYSzq/Atn0hj+97/omWtlKrgGbqWBpE0CcUg72Q4Gqt4h1KVS/uG2IAKEc
         E+5ZveE+BQrH/0O8AQWyhX6yXfHECChjVDP9KaJDvD55WtyH3qZL6p3YSkLpgih7DWnK
         Dq/louH0Te+3y6wKVaTcYGpHgzLJ3WE8OcN+2yvYKaCbI4ZAES/9vtaPpR14JQ5jBX/a
         aaXMB1oAdkwz6J4oMWZL73Omeqf13LMk1OLlqAITdzT+Ll+jsOw0wm9Kve17HeylFVr3
         RQlg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=5WR8dQYJUa1XML4lYiw3V24xbNj3qpJxpfUKdL6UNik=;
        b=RkBeqRg5zrWG6K66t4MoMVJCFr7Wdt1BPxJSTDtS3s2OLxM67YPcd5rEbPQ2CqbPN9
         sgy9PpuZaGEBhx2EUI7Lf95UjRuQWlTv9+OyOz5DYv6czFAqIrWEO8tJWYyp05npAtDz
         vwq7V87tA/ma0fl5r9U5JWF/WK9bdx+HRnevGNqb4yXePX3nCSCnsMWrHeVflMHMZy54
         jf4S2sKi2YmW+6zcklJwY3dk+FbBicVe3FUJ6IAdAaAG+h4b5WHRyegZyCMWBqk7fEfa
         n1YiojSvGSz/vw2o2UyVIsjJO49hKVz+7e5Yu7FgOP7VTVJSAXgRSrIFVroOgfrbQcV5
         4x2g==
X-Gm-Message-State: AOAM532xDhTKThwdScM2FRFr+q9w1xAF4o0Do4S47awukzXAV/cAkaGc
        oHr5P3ARE0riQDnieArs7L8e4GRve9iaNSDNxaIb1g==
X-Google-Smtp-Source: ABdhPJyk1el2iJEAC5nGKFSLU5jZj2NH8WDX6XF2wkPJJGPT8WIqVYlrHEACs4H7/ZQB1SxqPQ8XQ3wLL7hgEfYkeaw=
X-Received: by 2002:a05:6512:3a85:: with SMTP id q5mr7406490lfu.465.1619310278090;
 Sat, 24 Apr 2021 17:24:38 -0700 (PDT)
MIME-Version: 1.0
References: <20210423082208.2244803-1-linus.walleij@linaro.org> <YILeb1OyrE0k0PyY@lunn.ch>
In-Reply-To: <YILeb1OyrE0k0PyY@lunn.ch>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Sun, 25 Apr 2021 02:24:26 +0200
Message-ID: <CACRpkdZp8OYyQtuhRqGmjc2gVpmjyBMFivHbk3xBiQk5NKbbww@mail.gmail.com>
Subject: Re: [PATCH 1/3 net-next v3] net: ethernet: ixp4xx: Add DT bindings
To:     Andrew Lunn <andrew@lunn.ch>, Rob Herring <robh+dt@kernel.org>
Cc:     netdev <netdev@vger.kernel.org>,
        "David S . Miller" <davem@davemloft.net>,
        Heiner Kallweit <hkallweit1@gmail.com>,
        Russell King <linux@armlinux.org.uk>,
        Zoltan HERPAI <wigyori@uid0.hu>,
        Raylynn Knight <rayknight@me.com>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Apr 23, 2021 at 4:49 PM Andrew Lunn <andrew@lunn.ch> wrote:

> (...) it should be impossible for multiple devices to
> instantiate an MDIO bus. But with device tree, is that still true?
> Should there be validation that only one device has an MDIO bus in its
> device tree?

This would be more of a question to Rob.

I am "OK" at writing YAML but not great.

If I were to express that out of 3 nodes in the DT one and only
one *must* contain a certain subnode, but it doesn't matter
which one, I have no idea how to express that.

Since the abstract syntax in YAML is pretty much stateless
this beats me.

Yours,
Linus Walleij
