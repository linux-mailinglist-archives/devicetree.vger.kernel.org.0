Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D71BE3D3D15
	for <lists+devicetree@lfdr.de>; Fri, 23 Jul 2021 18:05:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229969AbhGWPYx (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 23 Jul 2021 11:24:53 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57204 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229806AbhGWPYx (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 23 Jul 2021 11:24:53 -0400
Received: from mail-lj1-x236.google.com (mail-lj1-x236.google.com [IPv6:2a00:1450:4864:20::236])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3B55CC061575
        for <devicetree@vger.kernel.org>; Fri, 23 Jul 2021 09:05:26 -0700 (PDT)
Received: by mail-lj1-x236.google.com with SMTP id u20so1990728ljo.0
        for <devicetree@vger.kernel.org>; Fri, 23 Jul 2021 09:05:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=bA7/ot9UZ5ozCpQrarPaPgau29IefbzZIuxiBz7ToLc=;
        b=i1Us8ierJnzSytIFLQidJ7kAyDZ9zOSyibbZnk/rfWoY4UEf+bSToXy9VYEI1TjApI
         wUxl0CxonXCQCaOn3VKpZSR2dfNHG6gSEzrC7LDw4ZvK/S6i/npb2Kq3UzCOX4VszQAp
         kEfevN/w4NriPJ31dE5QeUOo1qc0artfYh2R6fI5jxO+O2tTCvDG5BgJfDt2KBVFDl41
         ydtb5kttF4gFhxcYRPVVMGE1yc/7p6LDA6plsssmWy+DuhsaZGf1KB5/HwREOzKpoNdS
         Upx1lIv9ym/suqrQQzIr8SksjtHvChLAe7u1jMR+lB5v3iUyQTwL5r54Y+DNyu3bDKHh
         N3rw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=bA7/ot9UZ5ozCpQrarPaPgau29IefbzZIuxiBz7ToLc=;
        b=gjkhTMFJm9lGVeegq9yabzozuhfcrDbqUlKp+hCs0b9XPDGZYzEg4XfcDXyHQSx9gf
         G1ELYH16/p1zV0cleDPJf6NcilEATKmGOSGp0HvDWhaaH3eCJRJMamTizzL9ZM1byaC6
         Xdlinjcsn8tTToDuQSHpeCMyOpN1l2trbP6lnoMiSKrz7W4NXthMhRBBqqQtKP67+yPW
         5XeB60ubIoOnsrruTI1jICesXpaFOg6F3d7x6GCxhMOmQcdyKZum1+sAZs8pCLa9B5Zd
         0GPdnimMjl7YT+WV8CcIz64nLeNwPepnIBYCKg+49t8IBNBR3bwqG/VLnj+UpoXbgy4O
         AS+g==
X-Gm-Message-State: AOAM531nfnvePIc4NYdQgVhjEq6BsmUK9G9OeXR8jYuTHqS1N8C1+/6B
        uPHYHLwHxAaUeQlpkJAiCKlzcVR1ASg48KlQ5/Cndg==
X-Google-Smtp-Source: ABdhPJxo1GQlUl3Gx1ATU7U87gt7yvwVtro8AvOTmb2ym7cXKIummnAcNNoHP5rPOSQYwNuPiDlmxa4jaqyD7RwZIJM=
X-Received: by 2002:a2e:950:: with SMTP id 77mr3739457ljj.438.1627056324543;
 Fri, 23 Jul 2021 09:05:24 -0700 (PDT)
MIME-Version: 1.0
References: <20210607061041.2654568-1-ping.bai@nxp.com> <20210607061041.2654568-2-ping.bai@nxp.com>
In-Reply-To: <20210607061041.2654568-2-ping.bai@nxp.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Fri, 23 Jul 2021 18:05:13 +0200
Message-ID: <CACRpkdb=B644KMoL1R=JVkn-9bYQF+4miie5SAROLhQ9HKkHWA@mail.gmail.com>
Subject: Re: [PATCH v2 2/2] pinctrl: imx8ulp: Add pinctrl driver support
To:     Jacky Bai <ping.bai@nxp.com>
Cc:     Shawn Guo <shawnguo@kernel.org>,
        Dong Aisheng <aisheng.dong@nxp.com>,
        Stefan Agner <stefan@agner.ch>,
        Rob Herring <robh+dt@kernel.org>,
        NXP Linux Team <linux-imx@nxp.com>,
        Fabio Estevam <festevam@gmail.com>,
        Sascha Hauer <kernel@pengutronix.de>,
        "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Jun 7, 2021 at 8:00 AM Jacky Bai <ping.bai@nxp.com> wrote:

> From: Anson Huang <Anson.Huang@nxp.com>
>
> Add i.MX8ULP pinctrl driver support.
>
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> Signed-off-by: Jacky Bai <ping.bai@nxp.com>

Patch applied!

BTW does "ULP" in the name mean "ultra low power" as usual?

Yours,
Linus Walleij
