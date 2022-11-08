Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2151A620D2D
	for <lists+devicetree@lfdr.de>; Tue,  8 Nov 2022 11:24:39 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233326AbiKHKYh (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 8 Nov 2022 05:24:37 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51130 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233103AbiKHKYg (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 8 Nov 2022 05:24:36 -0500
Received: from mail-ej1-x630.google.com (mail-ej1-x630.google.com [IPv6:2a00:1450:4864:20::630])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 69F911C133
        for <devicetree@vger.kernel.org>; Tue,  8 Nov 2022 02:24:35 -0800 (PST)
Received: by mail-ej1-x630.google.com with SMTP id y14so37325307ejd.9
        for <devicetree@vger.kernel.org>; Tue, 08 Nov 2022 02:24:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=BTTHBNjBtTpYDRiI+nagl9P0lankquzjvOptk3WzP7A=;
        b=o4IaTT6mhB9aAAypocUuyM2wEnWmwMci2CqOIhamCcZJft7dfV07Yi/lxD5tqDaSyd
         L2aWt7W6dKFVwLMl0fk8yoK6DgH8pD7V5Zf5XWEVf72mnA8oxAvDjwoJoZ7GG0AvLKR6
         E87H251kjTeHwZYlaHZ8+LeUlvEP4+cxss1jZZ68MvMsX8bZWHk4zc7O5usiF1WHi3xE
         yj79OrOl0aAjhm2JJt62dC7OzxEqFLr9MnJGKcVx9Uu3CNJaShSn4u1A+vvB6t1V/Sue
         ZbWEKlTDwTGsAxRQbqqrax+WkjN5H1Tt0Kn2iGd44eAnKt6oU7ieLXP4qyfSduLnbjI9
         ixbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=BTTHBNjBtTpYDRiI+nagl9P0lankquzjvOptk3WzP7A=;
        b=Moc48HKHGzCoEf87Yt9f7h3sencSo4dGqmbTEJpj/RuV9v267LSCtIO8eoKtXEOMjx
         9rTzqm6F5sp23r6YVKBVPrPK2gumhkiiwG0xnaPM5JAneG7KTzFSo7t2wrjNGPVgNGMG
         RW3XHe0D8RL52faMnelqmPy76IMvXWrpzkKo8y3lL1tNdH/kxASMKUNkzAI0GT8m9UC7
         n6XVTf/IqTKBFDjLPgF5Lu823ZcDIaR64n5hRaf5YCzhtrbOAJejLeqD8gXYb1PteTTo
         rb5R28Rte6egD9LW6yrE31gq7bZZl/9Pe3PcocEjgab+4vXlbWg0/iXmL4+h6LjGFIuB
         qLCQ==
X-Gm-Message-State: ANoB5pkNx5BVs4xVnzi+KDRe6CkE1NMNvKpKnIGtlLlEdHkGuLWL37SF
        2iL7sVAY8oG83K1iAj2zYpWw9F4/anVTKCGHtLbtvQ==
X-Google-Smtp-Source: AA0mqf5MOcAk17Z/aFvf+7ny+bpNY81RyNBA5Z+fpcYISwJidn/J6X0PdTakonxMEwooWMgTwTgz96R8CVOZ3Cwd1/U=
X-Received: by 2002:a17:906:6acc:b0:7ae:658c:ee45 with SMTP id
 q12-20020a1709066acc00b007ae658cee45mr10466302ejs.190.1667903074024; Tue, 08
 Nov 2022 02:24:34 -0800 (PST)
MIME-Version: 1.0
References: <20221027130859.1444412-1-shenwei.wang@nxp.com> <20221027130859.1444412-2-shenwei.wang@nxp.com>
In-Reply-To: <20221027130859.1444412-2-shenwei.wang@nxp.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Tue, 8 Nov 2022 11:24:23 +0100
Message-ID: <CACRpkdbrnxmHv-rn7fiuMkH=asK2D82fdiUUgdqk70Hs9V4b9g@mail.gmail.com>
Subject: Re: [PATCH v4 1/5] arm64: dts: imx8dxl-ss-lsio: add gpio-ranges property
To:     Shenwei Wang <shenwei.wang@nxp.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Bartosz Golaszewski <brgl@bgdev.pl>,
        Dong Aisheng <aisheng.dong@nxp.com>,
        Jacky Bai <ping.bai@nxp.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        Peng Fan <peng.fan@nxp.com>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        imx@lists.linux.dev
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Oct 27, 2022 at 3:09 PM Shenwei Wang <shenwei.wang@nxp.com> wrote:

> add gpio-ranges property for imx8dxl soc.
>
> Signed-off-by: Shenwei Wang <shenwei.wang@nxp.com>
> Reviewed-by: Peng Fan <peng.fan@nxp.com>

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Please put this into the i.MX SoC tree.

(If that doesn't work tell me and I can queue it in the pinctrl tree)

Yours,
Linus Walleij
