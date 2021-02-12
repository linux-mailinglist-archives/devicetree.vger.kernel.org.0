Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C92F9319C16
	for <lists+devicetree@lfdr.de>; Fri, 12 Feb 2021 10:47:33 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229905AbhBLJrM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 12 Feb 2021 04:47:12 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33894 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230100AbhBLJrJ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 12 Feb 2021 04:47:09 -0500
Received: from mail-lf1-x12e.google.com (mail-lf1-x12e.google.com [IPv6:2a00:1450:4864:20::12e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 301B8C061756
        for <devicetree@vger.kernel.org>; Fri, 12 Feb 2021 01:46:27 -0800 (PST)
Received: by mail-lf1-x12e.google.com with SMTP id d3so12192592lfg.10
        for <devicetree@vger.kernel.org>; Fri, 12 Feb 2021 01:46:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=i4ca59SdGEVnFSofi3ZXoX6JlgB2eaV3/YrXqwVKM8w=;
        b=Yy351HLBZUge4sG9PBG2oLCjXOrReyEUMGZdK7mNji7JwMOZqqljspFEyf0HEKVnDc
         ZkyxPuWz5lXXja33P/NlPIJ1NSZGsATcWJKqtMtded81fkJO3ebDhCrDsWb5Np3hwtGL
         WBzhe6ZboL8lBI0ymtSQTMaQfMpmzV+MRwTEOEQw8uCiUwDC3woGumorSBeK6WiQzcoU
         8YwJhBQQKfJAF8+Np3v/9GniuaaJm68pfN/arA/yqwy2xeQnxLIpWNjngsbpUYPWpiqs
         m4EXb4OfhBGb/HP4e9Iql22pw0jzeap/xgK6NHLr6KTupqokL+Wywa/xLc6IOUUmmRDd
         mBlg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=i4ca59SdGEVnFSofi3ZXoX6JlgB2eaV3/YrXqwVKM8w=;
        b=Ch0kvNYbkk15WHCdPKkRxaMObTe8ohZCWrmcjyfQmsS+S+CmdpRpDzEs4JnELB4fqh
         rKNIFCAJqMZ/kN5PoDejkxHHS0b/8J7cx1Aw5wv7fjfTG36b0uOagsd9EG5o89zpHUEt
         K8837ta5smKhXygH7+R7qkTh+au7zw5KwpDNqlQkqkaVXbfFcJXBh6hLUF5wdT3PGxUp
         RSI7ouYhHXAScuupqQ8cfZgiMGYZMN3z2k72gUXE3w6liAQPNtz2UPPEN+uNiF9UXAkJ
         Bgmz/hJDPFaHU4uLt9BdYVbFwRgHE1morZA4Ny1Q4+FmnLS2jOZtcekyu3vndvEGMzCu
         dLjQ==
X-Gm-Message-State: AOAM533NJQV+isNZzAg8xAFvDqNT1+/bANSWBqR3dQIHz3mDANn8H5wJ
        f03GNGqpLj2r7nV69F5Cnol209DCwo+90nIqmmwOrw==
X-Google-Smtp-Source: ABdhPJwIYedS7M45SGCJ9oNwPA/7hLc3LJLJFqoY2yYENbG6825pEXbq5JXjPw2/Djuva+5uHhN7aTJfuFaSNzpMinQ=
X-Received: by 2002:a19:70e:: with SMTP id 14mr1094188lfh.157.1613123185577;
 Fri, 12 Feb 2021 01:46:25 -0800 (PST)
MIME-Version: 1.0
References: <20210204125718.1646082-1-geert+renesas@glider.be>
In-Reply-To: <20210204125718.1646082-1-geert+renesas@glider.be>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Fri, 12 Feb 2021 10:46:14 +0100
Message-ID: <CACRpkdadDRXa=Hv7dkaTL5pU5hYANQicKgTUhE7jEu6m81Hqvw@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: pinctrl: Group tuples in pin control properties
To:     Geert Uytterhoeven <geert+renesas@glider.be>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Dong Aisheng <aisheng.dong@nxp.com>,
        Fabio Estevam <festevam@gmail.com>,
        Shawn Guo <shawnguo@kernel.org>,
        Stefan Agner <stefan@agner.ch>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Sean Wang <sean.wang@kernel.org>,
        Tomasz Figa <tomasz.figa@gmail.com>,
        Krzysztof Kozlowski <krzk@kernel.org>,
        Sylwester Nawrocki <s.nawrocki@samsung.com>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        "moderated list:ARM/Mediatek SoC support" 
        <linux-mediatek@lists.infradead.org>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        linux-samsung-soc <linux-samsung-soc@vger.kernel.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Feb 4, 2021 at 7:02 PM Geert Uytterhoeven
<geert+renesas@glider.be> wrote:

> To improve human readability and enable automatic validation, the tuples
> in "pinctrl-*" properties should be grouped using angle brackets.
>
> Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>

Patch applied.

Yours,
Linus Walleij
