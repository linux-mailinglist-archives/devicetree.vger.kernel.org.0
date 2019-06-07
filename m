Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id EFEC739749
	for <lists+devicetree@lfdr.de>; Fri,  7 Jun 2019 23:04:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1731144AbfFGVEf (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 7 Jun 2019 17:04:35 -0400
Received: from mail-lj1-f193.google.com ([209.85.208.193]:42456 "EHLO
        mail-lj1-f193.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1731059AbfFGVEf (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 7 Jun 2019 17:04:35 -0400
Received: by mail-lj1-f193.google.com with SMTP id t28so2880409lje.9
        for <devicetree@vger.kernel.org>; Fri, 07 Jun 2019 14:04:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=vkU0CLA4zd7U+4w/MeYB7MsnfkDi0Po4BQ8jWMFBUjo=;
        b=Bl3VdEFDNRcw68lQN2+iAhPiWw5DQMPXg2SfOdO0jMkLGnBZ+uzq2sVjmQ4vaHAbG4
         yNaYAP/1r/yIlm+Vay8Wsve+dfOIcTk28G0cVRmtAwbrROgC3Dyj8uSlyUDJNpKeM1wL
         EBMTqw5WMOWJKdh3wSd10dvEDiZK+z1gGAbKjQrBjE6N7MCrUY9X5KM/bZYvdjcRZ424
         gdJXbrG19WOm+xi1E8pcpR2k4g5NwCTXuPQO1pXeFt8zefmVKfKGIXKgKIHsdyV+XrUH
         AIsp1mw/e21lcxOHA2q/t59+syFLF30vm0Vl1BbVgLnQG/sILfmw0yuI/keT7LFF3F9f
         Ghqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=vkU0CLA4zd7U+4w/MeYB7MsnfkDi0Po4BQ8jWMFBUjo=;
        b=a3pPOWlAlUvYaNNWii+sHGH/+FQhDtOeOFwObDhKf6Ug7w2ApgBlCp+3AanG03OO+6
         ykBiHC6CLgcG4EaVv8J9aSzeYmdFZs94Cv6IoeKSd6Pn+0pjXCtfD28TNqXAG/d5CrFs
         ZE2/kPXlfwcxNNd18QcSfgDdm7gPTaFCIbJwHfo/dFR7wrrMqmhmz5NzLLnugU3JW/tR
         SngsxA+O/NWZwncbf6/+U1NtBqHBHtmghM0c5gjSY7U4IBq+g1tGqhZLnBzyXPYDvEOZ
         799g6YOMz8lUm8FmVcPokZk/79Zalr6xTy6/jzx7ghM9dBvxQHWlVJP0g5BgYaLjbHbO
         xEzg==
X-Gm-Message-State: APjAAAXOVlgL2GQEMiylRurXTstDVuDJAl86sxVgNCne3bKzsmhmZYXp
        ngnN/AWCdQ8KUw4LTNdih+3XiZfFnWg8n2fIaALyLQ==
X-Google-Smtp-Source: APXvYqyCQqq/sYVcHyrozCmhdkems9DE56UaaALAZIcDJuvLRmL+KVL12nZblAfJci6jVwnq/iR/eVswn8WPsSelqws=
X-Received: by 2002:a2e:5bdd:: with SMTP id m90mr19782540lje.46.1559941473627;
 Fri, 07 Jun 2019 14:04:33 -0700 (PDT)
MIME-Version: 1.0
References: <20190530030546.9224-1-Anson.Huang@nxp.com>
In-Reply-To: <20190530030546.9224-1-Anson.Huang@nxp.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Fri, 7 Jun 2019 23:04:25 +0200
Message-ID: <CACRpkdY-35o378Ka+4bgeSPjmq6P8DM872sgTxq2X3dDP9XZHQ@mail.gmail.com>
Subject: Re: [PATCH 1/3] dt-bindings: imx: Add pinctrl binding doc for i.MX8MN
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
        Leonard Crestez <leonard.crestez@nxp.com>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
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

On Thu, May 30, 2019 at 5:04 AM <Anson.Huang@nxp.com> wrote:

> From: Anson Huang <Anson.Huang@nxp.com>
>
> Add binding doc for i.MX8MN pinctrl driver.
>
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>

Looks mostly OK to me, but I'd like the maintainers to review,
so Dong et al please look at this!

> +Required properties:
> +- compatible: "fsl,imx8mn-iomuxc"

So should this not be "nxp,imx8mn-iomuxc"
or "nxp,freescale-imx8mn-iomuxc" or something these
days? The vendor name is nxp is it not.

I was complaining to the DT maintainers at one point that
these companies seem to buy each other left and right
so this vendor nomenclature is dubious, but I guess at least
it should reflect the vendor that produced the chip or something.

If everyone is happy with "fsl,*" I will not complain though.
(i.e. if the maintainers ACK it.)

Yours,
Linus Walleij
