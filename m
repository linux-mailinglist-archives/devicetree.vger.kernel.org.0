Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id E7426526DE
	for <lists+devicetree@lfdr.de>; Tue, 25 Jun 2019 10:41:03 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730745AbfFYIlD (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 25 Jun 2019 04:41:03 -0400
Received: from mail-lf1-f67.google.com ([209.85.167.67]:36785 "EHLO
        mail-lf1-f67.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1730316AbfFYIlC (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 25 Jun 2019 04:41:02 -0400
Received: by mail-lf1-f67.google.com with SMTP id q26so12047286lfc.3
        for <devicetree@vger.kernel.org>; Tue, 25 Jun 2019 01:41:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=F+Ki1qmJ5eAYa7yLUWjWU9Nv/mbLfvJhA0V0d9PA+8E=;
        b=rAWNyHEHEaCNvRsh5wPaYUtzUB3cAGDkLwRIzl40TysW8RkU/swQ8kySGKpi4sOKQs
         fIeen3XxnFkLEPa9x5VOmp8OwFyw83x+UbkI8uu3851gKMJ1VO7vqI3QsJWqQGycq/fV
         nEpHLD++m1/6YY/q9kM/lHDlrC1JPUN8y6O5ZApXnQR/nxJ43G03XHOIWCQuPs/qQoy3
         /xEWHx4f8xym92jqMChrXqmRXm4eYeCWUwhgAX/ou/HFqAUzfU89mErWSzTCvgZVW0tE
         Ri/gd8Al0RGUTtJvMCVx9TeC8T/9Dq6vEI82wVBarh95pdf0g/VRS9yUBmUr6VhKn2ZF
         OUXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=F+Ki1qmJ5eAYa7yLUWjWU9Nv/mbLfvJhA0V0d9PA+8E=;
        b=cPrewc+IeX4h9X88Tw/Z/g6UL708Ah41s0PX6rMWxqPwmZv79AvQ30EK/zFkBU3iVR
         SxTNbHSm63mkSymGO0/nS0dVNwpKB6C8YortJBjhJ6Q7u5460mjYEKSxLzHBV7GP6vtx
         2NVW84tzTnIlX+XCEvH3BFSSvsCh/dSsXTDOm2qvxP76CXinAaz/qzj/DdxWPdgqDlsp
         ZHObwyRBYumLvGaX+ahW9yoz7ww6pGULnhOzw8xAlaq9eIx/zwJfjK+IEDlyaS2dRst7
         yiZ+xfJEiXOFwDHWbuR4GKxSY+g8PYjBpfxpDQEWcuIXP8/YMKkDV3HNetNlSWuOT15W
         N0fA==
X-Gm-Message-State: APjAAAVikC9JJQL+LxRnTCLJycnyoPxQQ05otcH5tzHNQFiooHTXj/OR
        bN3mMPUPD9Hwuej+C9RnEdOGj7CkroQAQ+RxaKM9sw==
X-Google-Smtp-Source: APXvYqz77Z3Mlo0zQC0urLqRnamltUCd0egBwhvs7M18tlhawrJdORa2pZ6fQz9y4Utqsjds40jeglQU0O0j2VJGOwo=
X-Received: by 2002:a19:dc0d:: with SMTP id t13mr51472630lfg.152.1561452060873;
 Tue, 25 Jun 2019 01:41:00 -0700 (PDT)
MIME-Version: 1.0
References: <20190611122535.23583-1-Anson.Huang@nxp.com> <20190611122535.23583-2-Anson.Huang@nxp.com>
In-Reply-To: <20190611122535.23583-2-Anson.Huang@nxp.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Tue, 25 Jun 2019 10:40:49 +0200
Message-ID: <CACRpkdZhaAxP1rYdXx88zd=13Z_OZU8Ze_+zQegywkTp7N+QtA@mail.gmail.com>
Subject: Re: [PATCH V2 2/3] pinctrl: freescale: Add i.MX8MN pinctrl driver support
To:     Anson Huang <Anson.Huang@nxp.com>
Cc:     Dong Aisheng <aisheng.dong@nxp.com>,
        Fabio Estevam <festevam@gmail.com>,
        Shawn Guo <shawnguo@kernel.org>,
        Stefan Agner <stefan@agner.ch>,
        Sascha Hauer <kernel@pengutronix.de>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will.deacon@arm.com>,
        Maxime Ripard <maxime.ripard@bootlin.com>,
        Olof Johansson <olof@lixom.net>,
        Simon Horman <horms+renesas@verge.net.au>,
        Jagan Teki <jagan@amarulasolutions.com>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Leonard Crestez <leonard.crestez@nxp.com>,
        Dinh Nguyen <dinguyen@kernel.org>,
        Enric Balletbo i Serra <enric.balletbo@collabora.com>,
        "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        NXP Linux Team <Linux-imx@nxp.com>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Jun 11, 2019 at 2:24 PM <Anson.Huang@nxp.com> wrote:

> From: Anson Huang <Anson.Huang@nxp.com>
>
> Add the pinctrl driver support for i.MX8MN.
>
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> Acked-by: Dong Aisheng <aisheng.dong@nxp.com>
> ---
> Changes since V1:
>         - Fix some nitpicks like sorting the change in alphabet order
>           and improve the headfile included.

Patch applied.

Yours,
Linus Walleij
