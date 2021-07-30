Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6DB7C3DB8AD
	for <lists+devicetree@lfdr.de>; Fri, 30 Jul 2021 14:36:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238736AbhG3Mgd (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 30 Jul 2021 08:36:33 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40124 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238693AbhG3Mgc (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 30 Jul 2021 08:36:32 -0400
Received: from mail-lf1-x130.google.com (mail-lf1-x130.google.com [IPv6:2a00:1450:4864:20::130])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E160BC0613CF
        for <devicetree@vger.kernel.org>; Fri, 30 Jul 2021 05:36:27 -0700 (PDT)
Received: by mail-lf1-x130.google.com with SMTP id f18so17613161lfu.10
        for <devicetree@vger.kernel.org>; Fri, 30 Jul 2021 05:36:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=a6yoTwLjCZTcp5zCZT5VGKqs4hiUGuvsS21dwOFfXjs=;
        b=lL/dGG0fbS/8In4v2Cc9/dZeUykOnpTSnf91B6+adKwx3DDjpEnWLyL+Gt492N1Gwf
         Ca+al0GksCkCIKIgbVWeLACsrfR5kz9i+7PGn+33GcaHMulDwhGxHtFLVNbsHNuxAJwg
         +os5OwFEp4kx/WsSP4ZbJ6y4lzfSKsRFu5JFdeA3uyf+ldOFDE6ELxKnMdb8ZJCHr7zC
         AH1hL8Uqr/V+SXSRnQ+0dpggaVfLNsubj9g8D7kBiUtcs0ueIPrBfXl8TyUSf8oi4DuC
         aQ+hbt1EIlMGvRSP6OpcePMFe0Xkrc92A0FLJiXrLOEPd0+Id9JIsWTo2yvxtOcHCRUX
         FqKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=a6yoTwLjCZTcp5zCZT5VGKqs4hiUGuvsS21dwOFfXjs=;
        b=Gxg7KtLF9cFiSxb1w+/CtCU04F/lGGqu0j2gh5e674TUBrsrk7bQM/qsQ+Ag5RBwVZ
         P70fUHAbjgTL1QDJkjiIW+Tz1CMFkBennX43NboKD7iQpyEa/jlhFIdYF7eNc1MFVwHp
         N1U5YRHdbinbWIoh7LmYKuem0KRBmTgvL2FUNiv3yyGTI3ByZKO/Xytdpcgo1fopxMIh
         WI3t5u/mUwNsv1IwN+0fcU6eUt82OqHSPEyGXzCqkSzgRjgL7eKxULW1r2UR7sdMOqyT
         t2IYBkp+1JDFjZSHLjvNbHqzGPG/p40IBtTb1v1Hu6JsgGhFGn+4AzJp39pea1yr9w0N
         vtcQ==
X-Gm-Message-State: AOAM5303iFBVZlCUpLfeLfLVBHpJHZ4l2jY3iZd5tje7Cz4DsASBasr6
        kulWMCRQe7uAh7IB2MUQQzGU41+kehm2z/w58BZTkg==
X-Google-Smtp-Source: ABdhPJw0ow6qke/HIvvIMSvtYtQwonfyTTyt6hR9ZCYWU00ixAHsUk61egoYmM2Ut2mEU62KOOmkc3/z5feFHxYzAbY=
X-Received: by 2002:ac2:4c4c:: with SMTP id o12mr1698771lfk.157.1627648586302;
 Fri, 30 Jul 2021 05:36:26 -0700 (PDT)
MIME-Version: 1.0
References: <20210712194422.12405-1-prabhakar.mahadev-lad.rj@bp.renesas.com> <20210712194422.12405-2-prabhakar.mahadev-lad.rj@bp.renesas.com>
In-Reply-To: <20210712194422.12405-2-prabhakar.mahadev-lad.rj@bp.renesas.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Fri, 30 Jul 2021 14:36:15 +0200
Message-ID: <CACRpkdZmQJMdnskELGvunBvXqobCdE5fRB_AnPscVY7-bxz66g@mail.gmail.com>
Subject: Re: [PATCH v2 1/5] dt-bindings: pinctrl: renesas,rzg2l-pinctrl: Add
 DT bindings for RZ/G2L pinctrl
To:     Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Cc:     Geert Uytterhoeven <geert+renesas@glider.be>,
        Rob Herring <robh+dt@kernel.org>,
        Magnus Damm <magnus.damm@gmail.com>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        linux-kernel <linux-kernel@vger.kernel.org>,
        Linux-Renesas <linux-renesas-soc@vger.kernel.org>,
        linux-clk <linux-clk@vger.kernel.org>,
        "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
        Prabhakar <prabhakar.csengg@gmail.com>,
        Biju Das <biju.das.jz@bp.renesas.com>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Jul 12, 2021 at 9:44 PM Lad Prabhakar
<prabhakar.mahadev-lad.rj@bp.renesas.com> wrote:

> Add device tree binding documentation and header file for Renesas
> RZ/G2L pinctrl.
>
> Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
> Reviewed-by: Biju Das <biju.das.jz@bp.renesas.com>

Looks good to me and I essentially trust Geert to review this
driver and eventually merge it and send it by pull request
as well.

Yours,
Linus Walleij
