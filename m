Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 780262FA465
	for <lists+devicetree@lfdr.de>; Mon, 18 Jan 2021 16:19:37 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2405667AbhARPSK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 18 Jan 2021 10:18:10 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36144 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2405652AbhARPSD (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 18 Jan 2021 10:18:03 -0500
Received: from mail-lj1-x22e.google.com (mail-lj1-x22e.google.com [IPv6:2a00:1450:4864:20::22e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 01119C061574
        for <devicetree@vger.kernel.org>; Mon, 18 Jan 2021 07:17:21 -0800 (PST)
Received: by mail-lj1-x22e.google.com with SMTP id f17so18535129ljg.12
        for <devicetree@vger.kernel.org>; Mon, 18 Jan 2021 07:17:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=OPHysYtc2Ia3boQBkdrxKp3u8wFOYlTnKE670xk1qic=;
        b=uASd1yt9xDQj6nOnol2L3fD+lTE8+WkyK7zXRZAFxthqbIdrutyIs8T/hnHOLykAqu
         ggI83IRMSWxt00dCyj/yJB6fO5UZPYYkX1qjBtRbrGqzFYsUF4D/6ANwrT7/6XAgi0yO
         Uw9U1wjsnfWyoNr+EHobaJX+YRQxw4CrjYtTPCTyt3E8v5zAkpf2wMlu93SbQRSkIM6w
         LGKk8RLuKsJAYEIviZ0R6dc37RszKaAqB/xyXcZTLpX7c0pmTgMjHD8UAp+vCPOTwvAP
         WHeES4etsDJRXi++S3YlVugvkhK54ukWLT+Ifx61zWHoEtqgHLJhGFqGsgCPe9yNkCd8
         S6YA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=OPHysYtc2Ia3boQBkdrxKp3u8wFOYlTnKE670xk1qic=;
        b=loGt8+qCOOxqiqHB8xISuwnzJZDA81xmHF9fm/SP47NMO/7DbqHAzgSwfY56MLgOf7
         bJB3YjNVEA6EG6zNZ3pOKjW+P1f6mp4TexjfmDxh9ODKf0ZclrKib7vwCTpk9zDj/WGG
         e2HCT0CiJn0RkDMZY3Upx03HM67z59pX+WhSWkj/VuuVsDaedXt0qh+a7j31McQ9daWL
         K6VZcf6mviG2sNpzLooy5lK0rrsiIfNEYap8YUl4nGKYvCf58sBQAbOYS4lDPUwTZTg4
         Las0LALigES1VUE1Vezh3RMx7QPPUk62WS4TlzbwCXV/RKvSgZiihe/DiRainvukDZoV
         4y0Q==
X-Gm-Message-State: AOAM530DkPD2RvwPpEAJgO7O7LdJmSBczVGqbVaW6NWy3+RrMg0ydZ6z
        rAhAglMs5jGrJ3LgA2Frx7Ynl/GAoTY9QL6pCXgsw1De2Po=
X-Google-Smtp-Source: ABdhPJwDOWG8CktHHb9ktt+7yg2eWonewdywZRxtch9+AFYDZBR09JofcA2Ik+l/XzSoYjsPxXUwkXszzWkhlPcxEiw=
X-Received: by 2002:a2e:586:: with SMTP id 128mr60244ljf.273.1610983039544;
 Mon, 18 Jan 2021 07:17:19 -0800 (PST)
MIME-Version: 1.0
References: <20210115164658.187681-1-u.kleine-koenig@pengutronix.de> <20210115164658.187681-3-u.kleine-koenig@pengutronix.de>
In-Reply-To: <20210115164658.187681-3-u.kleine-koenig@pengutronix.de>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Mon, 18 Jan 2021 16:17:08 +0100
Message-ID: <CACRpkdYj9s5mM8i9Exao+XHMj71-GH1VQ_HBYQo_7sgrvtvPtA@mail.gmail.com>
Subject: Re: [PATCH v2 2/3] dt-bindings: gpio: pca953x: Document new supported
 chip pca9506
To:     =?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= 
        <u.kleine-koenig@pengutronix.de>
Cc:     Bartosz Golaszewski <bgolaszewski@baylibre.com>,
        Rob Herring <robh+dt@kernel.org>,
        Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
        "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
        Sascha Hauer <kernel@pengutronix.de>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Jan 15, 2021 at 5:47 PM Uwe Kleine-K=C3=B6nig
<u.kleine-koenig@pengutronix.de> wrote:

> The previous patch added support for this chip. Add its name to the list
> of allowed compatibles.
>
> Signed-off-by: Uwe Kleine-K=C3=B6nig <u.kleine-koenig@pengutronix.de>

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij
