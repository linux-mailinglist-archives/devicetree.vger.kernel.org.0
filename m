Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 7BDA43AC19
	for <lists+devicetree@lfdr.de>; Sun,  9 Jun 2019 23:50:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729115AbfFIVua (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 9 Jun 2019 17:50:30 -0400
Received: from mail-lf1-f45.google.com ([209.85.167.45]:39835 "EHLO
        mail-lf1-f45.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725933AbfFIVua (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 9 Jun 2019 17:50:30 -0400
Received: by mail-lf1-f45.google.com with SMTP id p24so5226238lfo.6
        for <devicetree@vger.kernel.org>; Sun, 09 Jun 2019 14:50:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=He8uuSEDC/b/uWidg8RVfT3AGe4hP03AsY17X0DSxgk=;
        b=zlJsT0l/3IuyndfDS2BTaHnjJraASu525KwaMplyFARGp91fxTu7ST6SIuVl4iRefh
         Zw2rTEVnDvjnMuSCPzdUGoVDoRp8QrZ61tK4XFRB4D3Zl0L6VgXr//I766ZqEDgE17BM
         ARN60spGcN65rNvB7ab14R7DSGuQndhDP7PBCgB3CP8DrR7V+VOu1ATbAAdkQfPQj4IY
         quGE/acE6nwNwUq5m4i9HC26SOp56AoTeO2Nuk1flxiykzI9jViwQQchw1hlF1ArhsRC
         N14lVBN37nhxWkXhB1kOBhH6Fg5Nahbz9F5Ozo1lzj8nZbQmTBZ4tBPY5d9h7mtBuiCS
         cZyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=He8uuSEDC/b/uWidg8RVfT3AGe4hP03AsY17X0DSxgk=;
        b=IGrOwHodbBQTK1+xskdjvTxGKpcnKHO58SkrCRr4kDC4YRzmeERE4bPOaGFjcfaqZA
         Au4zwMfH0BWc8lx9hJaynYQJDVd4THQyh4oY5yi58Y+h9KgWTWKDeWgBRy2l+H3LgAfG
         0TVwSWMpxGwNMDLSToy5NSXcAeAzwecsa+b46MoWJpjO/05ZtejALh/atUJaqClLA+Ug
         VLKBquWaFfYxA/7Bl2HUoDLE2GUKnEozzmXWENnLpCHY9k+ytGSDVrwhg/3ND9lfJF/v
         V3ecAjITG1ZzS6AYErXTE/1EnvFPO82ejx9g27yuiRp0q2Xk3KuWcEhMUfR/BPOGEAKL
         Qehg==
X-Gm-Message-State: APjAAAVkgpYZYh7/p2b3xNuFGsSeEv/3eQHXxpiXxILdDTbpdRoRAbF0
        /cqNf9eYAmuj7L64WbXjZRj8B88K0xlpNJ0USwHMkQ==
X-Google-Smtp-Source: APXvYqyf2NDu19vowinqKXukK4VxadyL6zt3qyCVskmgqawUHY4dBR21FjzW4762E23uuSqmCFocFD/qpnabF+6julg=
X-Received: by 2002:a19:dc0d:: with SMTP id t13mr9951237lfg.152.1560117028189;
 Sun, 09 Jun 2019 14:50:28 -0700 (PDT)
MIME-Version: 1.0
References: <20190609180621.7607-1-martin.blumenstingl@googlemail.com> <20190609180621.7607-4-martin.blumenstingl@googlemail.com>
In-Reply-To: <20190609180621.7607-4-martin.blumenstingl@googlemail.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Sun, 9 Jun 2019 23:50:21 +0200
Message-ID: <CACRpkdZCbFiUfW-qOM1Hxuj0e5TC8ViMuiz-VeVjSYP8A9sN3A@mail.gmail.com>
Subject: Re: [RFC next v1 3/5] net: stmmac: use GPIO descriptors in stmmac_mdio_reset
To:     Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Cc:     netdev <netdev@vger.kernel.org>,
        "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
        "open list:ARM/Amlogic Meson..." <linux-amlogic@lists.infradead.org>,
        Bartosz Golaszewski <bgolaszewski@baylibre.com>,
        Giuseppe CAVALLARO <peppe.cavallaro@st.com>,
        Alexandre TORGUE <alexandre.torgue@st.com>,
        Jose Abreu <joabreu@synopsys.com>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        "David S. Miller" <davem@davemloft.net>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        Kevin Hilman <khilman@baylibre.com>,
        Neil Armstrong <narmstrong@baylibre.com>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sun, Jun 9, 2019 at 8:06 PM Martin Blumenstingl
<martin.blumenstingl@googlemail.com> wrote:

> Switch stmmac_mdio_reset to use GPIO descriptors. GPIO core handles the
> "snps,reset-gpio" for GPIO descriptors so we don't need to take care of
> it inside the driver anymore.
>
> The advantage of this is that we now preserve the GPIO flags which are
> passed via devicetree. This is required on some newer Amlogic boards
> which use an Open Drain pin for the reset GPIO. This pin can only output
> a LOW signal or switch to input mode but it cannot output a HIGH signal.
> There are already devicetree bindings for these special cases and GPIO
> core already takes care of them but only if we use GPIO descriptors
> instead of GPIO numbers.
>
> Signed-off-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>

This is in line with how I want the gpiolib to just swallow all quirks,
so:
Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij
