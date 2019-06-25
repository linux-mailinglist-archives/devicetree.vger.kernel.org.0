Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 02971526D7
	for <lists+devicetree@lfdr.de>; Tue, 25 Jun 2019 10:40:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730637AbfFYIkO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 25 Jun 2019 04:40:14 -0400
Received: from mail-lj1-f193.google.com ([209.85.208.193]:45661 "EHLO
        mail-lj1-f193.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726504AbfFYIkN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 25 Jun 2019 04:40:13 -0400
Received: by mail-lj1-f193.google.com with SMTP id m23so15334335lje.12
        for <devicetree@vger.kernel.org>; Tue, 25 Jun 2019 01:40:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=ejxOd2mS2m5aGppcIAyiv0cZFZaSK9s/NYtz62kszvs=;
        b=wxQwoaSkbLLPQJPL+BoL1Icf1FXMBP7ECaYVSMRazAL/TZoV5FN//Ms7trRiw+SuQd
         581CzTIQTx/N9fE/sUXLZ7PfZgODwh0P87yWl+eKphHagimtQhjRUDz0I9oMrRT3Rdlx
         WrZho37U3od1bUGfg1nka8v2ot5UPnsBTSgHDliSu3xpGEfq6UlYG4A4Zj9hwI10Ql0K
         0hcqQDO+Gs8C1fHcg+250AaE3Dt+ta0TLprAYJt2lTuyAOO7Ca9iNKoZLmOHRMm4T8on
         wR07J71PBuWBLFz8YcY3eSEEwtH/PX+v6KA7LIsYG8EonQf7uo3yNxz4rPvnIQ2c8+Eq
         H2Zw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=ejxOd2mS2m5aGppcIAyiv0cZFZaSK9s/NYtz62kszvs=;
        b=mW4FNZ3DzM151D/HLO/Y/7DWK/HBZnz0YotMNPHXWtfQJPIfsH0W34lSfwKQ6GQydX
         fsV/4M9Bh5+TElLw9XGsC8BWHiDNyCMlUHDns3FMVuX1GUG6LFVJwifZHfH6k2CFMS82
         ddJng8/cxs65x9FEha0alub9xGO/C34o8ZQtEkNaJAmTnm0/edxq+ucl74um7BccELc5
         Az6j8s/UAZjDSwITSoot2QGcYL4JrxSH9TbaLegCgjs4yUt2hkvImfFcNAIjKL+6lZYE
         Vr1TfrvP3weIUQSKXwusrtqTsEldTWlJcWKQjFsB4QZf7H0Fxt31KcI6YU2r3CVFh5fV
         Mc5Q==
X-Gm-Message-State: APjAAAWADShRCRyLa30iF3v4Ov4M7LBUB39D5DFygQraIe8HoXrZTiz5
        b/AaQ61RgklyAfb86ZJp0Py50pMKZ1nOxRFo9sNhYQ==
X-Google-Smtp-Source: APXvYqyB4Z1lLvFvTlYxXutc/tB2HRL2IRjyx5/sUSP/WDd11DGWzAgBW9dlPUP+BvKIc2buVVM1H0owHVNURRDGGzY=
X-Received: by 2002:a2e:8195:: with SMTP id e21mr60880342ljg.62.1561452011834;
 Tue, 25 Jun 2019 01:40:11 -0700 (PDT)
MIME-Version: 1.0
References: <20190611122535.23583-1-Anson.Huang@nxp.com>
In-Reply-To: <20190611122535.23583-1-Anson.Huang@nxp.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Tue, 25 Jun 2019 10:40:00 +0200
Message-ID: <CACRpkdYsunrq7CY4HhosxH-MVxBGLqLPGnraqx1=_gZ8DxYZLQ@mail.gmail.com>
Subject: Re: [PATCH V2 1/3] dt-bindings: imx: Add pinctrl binding doc for i.MX8MN
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
> Add binding doc for i.MX8MN pinctrl driver.
>
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> Acked-by: Dong Aisheng <aisheng.dong@nxp.com>

Patch applied.

Yours,
Linus Walleij
