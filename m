Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 12BC8255A97
	for <lists+devicetree@lfdr.de>; Fri, 28 Aug 2020 14:51:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729471AbgH1Mvk (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 28 Aug 2020 08:51:40 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40636 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729484AbgH1Mvf (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 28 Aug 2020 08:51:35 -0400
Received: from mail-lj1-x243.google.com (mail-lj1-x243.google.com [IPv6:2a00:1450:4864:20::243])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6F7ECC061232
        for <devicetree@vger.kernel.org>; Fri, 28 Aug 2020 05:51:34 -0700 (PDT)
Received: by mail-lj1-x243.google.com with SMTP id h19so1138982ljg.13
        for <devicetree@vger.kernel.org>; Fri, 28 Aug 2020 05:51:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=RSrvv0FJmitf6q9JxmYipGO4Y6PZy6cFkX1VzqR3xEU=;
        b=Pf4uaxGE3D9QkcwZ3m7v40UpPYGsLMXlPXzxXdofFxgCOrudLrDJjKqDtapXdZT1me
         U/qpgdyHur4b2ylpfOmLYfGRbbgioYR4DE8hUX9n3OD1PsJjx4bY6DfOPPLZ+nR7uoPR
         t2fPwIQzvGmoNipg0tib+zvmAuyzH0asX7NHoXYzOS+c1S9GjWZHK3ZfK4tTEAShELZn
         UQgYkmIIjXX9+QwSVHsgwAXyE2t1Y98bukfmK6CGzaKFvQbixk0LvK3eWs+XS6UxLeZr
         H6WwkkQfXpaJarmhsieD/FOJieotOGDuhvpWyJnLOHQ5bvJH2PkEoyOghCRX7loqwBdo
         Wlxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=RSrvv0FJmitf6q9JxmYipGO4Y6PZy6cFkX1VzqR3xEU=;
        b=q2fvxLFiTZe12UO5pTI5lpDIs7y9PcRaS5vuWJN93gbh9jGCDSSo+dJ30Pyc2YJaL7
         vk6trP3xytGYiO9p6ZSixTNaF/fqmAlm0DTIOzsB7BoOm9JvkpqPSzNTXNhlLVGrPvAR
         o2K1WHgMCGUL51DSCk2avgfVq/mkVsJlD+2C9oCHGWdZlYh6/8pw/txCtc13/IIbq6xH
         hb9sraL8H8jrI6sHf6i/ziop3ktUdg/yzhxB7LN+bJvCc3g/zySyJZ4ibWSn0h7YiUOb
         +B3eV6EIapUzgZKVPutYFU7gmXbYAiRADVqVtrqhs4orJhtPBaBNOkF5tuMrZ+TsUgSg
         5+uQ==
X-Gm-Message-State: AOAM533T4HBjWRIGJdxsrER6PBQRARhvIhH4LzNewrdi+71BWG3JgPuI
        ETX9axu1OILqEE0j+qhrSTk+6FnVg4VYQmsDtxF73w==
X-Google-Smtp-Source: ABdhPJzTyH+jeLvxiBsauaVxTH5hij7/x8BNA+Ly/857QQXdScYFOsf9kjoayIwSsdP0TIKRwlItOzGM4zkgBEGoiX8=
X-Received: by 2002:a2e:b80b:: with SMTP id u11mr872506ljo.286.1598619091424;
 Fri, 28 Aug 2020 05:51:31 -0700 (PDT)
MIME-Version: 1.0
References: <20200825193536.7332-1-krzk@kernel.org>
In-Reply-To: <20200825193536.7332-1-krzk@kernel.org>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Fri, 28 Aug 2020 14:51:20 +0200
Message-ID: <CACRpkdb4j2kJvpY23G-os9gTktZW5HT287MsvMZxC=ovgn_9LQ@mail.gmail.com>
Subject: Re: [PATCH v3 00/19] dt-bindings / arm64: Cleanup of i.MX 8 bindings
To:     Krzysztof Kozlowski <krzk@kernel.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Bartosz Golaszewski <bgolaszewski@baylibre.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        NXP Linux Team <linux-imx@nxp.com>,
        Ulf Hansson <ulf.hansson@linaro.org>,
        Miquel Raynal <miquel.raynal@bootlin.com>,
        Mark Rutland <mark.rutland@arm.com>,
        Thierry Reding <thierry.reding@gmail.com>,
        Anson Huang <Anson.Huang@nxp.com>,
        Li Yang <leoyang.li@nxp.com>, Han Xu <han.xu@nxp.com>,
        Frank Li <frank.li@nxp.com>, Fugang Duan <fugang.duan@nxp.com>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        linux-mmc <linux-mmc@vger.kernel.org>,
        linux-mtd@lists.infradead.org, linux-pwm@vger.kernel.org,
        "open list:SERIAL DRIVERS" <linux-serial@vger.kernel.org>,
        Linux PM list <linux-pm@vger.kernel.org>,
        LINUXWATCHDOG <linux-watchdog@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Aug 25, 2020 at 9:35 PM Krzysztof Kozlowski <krzk@kernel.org> wrote:

> This is a v3 of cleanup of i.XM 8 bindings and DTSes.

If you are going to be working a lot on Freescale SoC code going forward
I wouldn't mind if you could add yourself as maintainer for the
Freescale pin controller and GPIO at least, I already have high trust
in you in general so if the Freescale maintainers also have that I think you
should just sign up as maintainer. This makes it easier to do pull requests
and things like that.

Yours,
Linus Walleij
