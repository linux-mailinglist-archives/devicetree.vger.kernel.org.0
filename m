Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2C74065884C
	for <lists+devicetree@lfdr.de>; Thu, 29 Dec 2022 02:17:53 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232809AbiL2BRv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 28 Dec 2022 20:17:51 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59926 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232576AbiL2BRp (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 28 Dec 2022 20:17:45 -0500
Received: from mail-oa1-x35.google.com (mail-oa1-x35.google.com [IPv6:2001:4860:4864:20::35])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3F5F113FB6
        for <devicetree@vger.kernel.org>; Wed, 28 Dec 2022 17:17:44 -0800 (PST)
Received: by mail-oa1-x35.google.com with SMTP id 586e51a60fabf-14fe0e9ed11so10442474fac.2
        for <devicetree@vger.kernel.org>; Wed, 28 Dec 2022 17:17:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=ixA9W8XqPnix6OFS8YpArw2B1Pc9LLgSvQgcRoVKRQo=;
        b=A1vnhAFwghOOaEkyo7UWqlNRdusHq404JD/XnuaYyxyi5IjHJsnHrKaHQBrXbXKSQx
         r7AXlg1K//B2VuKaovRROfMcE/3Ve4CPDFHpx1F4ogqqhI3D+uHvapHKmMgDqJt6NeiZ
         pU4b2QJENpu+TppsXsM70jKU0gwwZ3KPBQ/A+SmmlNSOiWkc2uhVEy1tn5EScR4c7v0o
         1VbJ/pS0stOwCjQCn64FxM8/BHWfpJRadWXAfwCuwNZlp6Q3scsy1mZNnp8whhAdclLT
         kgB/cNs+Ed9JPN+ti0juFcT97FnC1JctXvtO+L2JgBJ3ZXtGYKiXqH2dsdOBjWZRZCRh
         M7fg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ixA9W8XqPnix6OFS8YpArw2B1Pc9LLgSvQgcRoVKRQo=;
        b=Vqd5kmseVGUBiV3lEIzQbOj2IwJ1CAhOFDdrIzbXqx0P3zlBKt9mYLerg8ta4jIYWh
         ctYMbXU22DhujhyhQBCeUjGxgCmh/MSIwEe5DR7eXSYicjY4gQ5Kw43qz0JZNW8KwwEF
         IFQq51lV5PfgNs6c3SV7rI+YEymQvO1JdmtCGm5/UEx/q2oPAvazlCDrz6EXOaHewokW
         7o8PFITM3MMEs9zpoQqsWNOcLKzlHgIKp1p8kT3CAd6M+gub6zYpYRQG7AYPtY8oqE80
         5COIK92uU3z+pNwt9uOZ65sqySW1/k4SbMT2TWjpqONsxHmG6nbSXcMyjqyb7GG/z4Ab
         8GVA==
X-Gm-Message-State: AFqh2koua9vJQAggPjpUFW18cQDXhKYXNKY1NTFF8yTS97Q9HFicFWgV
        2cpRQPZOpo/ttMBOj7JOTD0WRUQKhiU0imgbWirY5A==
X-Google-Smtp-Source: AMrXdXvMwAKkQmu13nPm8UywOPZZSGCtWf78IOypPnnje548y5Terld/dyQmIO9TLejaupCLEoLawVhK4/veL6JGyMM=
X-Received: by 2002:a05:6870:6c0b:b0:13b:96fc:18c1 with SMTP id
 na11-20020a0568706c0b00b0013b96fc18c1mr1775773oab.291.1672276663420; Wed, 28
 Dec 2022 17:17:43 -0800 (PST)
MIME-Version: 1.0
References: <20221215213206.56666-1-biju.das.jz@bp.renesas.com>
In-Reply-To: <20221215213206.56666-1-biju.das.jz@bp.renesas.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Thu, 29 Dec 2022 02:19:37 +0100
Message-ID: <CACRpkdZCEvpLAWvH7pCLH7KwbDMzz0EN+4HbxVGfFPi_C1b8+g@mail.gmail.com>
Subject: Re: [PATCH v5 0/9] Add RZ/G2L POEG support
To:     Biju Das <biju.das.jz@bp.renesas.com>,
        Drew Fustini <dfustini@baylibre.com>,
        Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Geert Uytterhoeven <geert+renesas@glider.be>,
        Thierry Reding <thierry.reding@gmail.com>,
        =?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= 
        <u.kleine-koenig@pengutronix.de>,
        linux-renesas-soc@vger.kernel.org, linux-gpio@vger.kernel.org,
        devicetree@vger.kernel.org,
        Chris Paterson <Chris.Paterson2@renesas.com>,
        Biju Das <biju.das@bp.renesas.com>,
        Prabhakar Mahadev Lad <prabhakar.mahadev-lad.rj@bp.renesas.com>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Dec 15, 2022 at 10:32 PM Biju Das <biju.das.jz@bp.renesas.com> wrote:

> This patch series add support for controlling output disable function using sysfs.

What's wrong with using the debugfs approach Drew implemented in
commit 6199f6becc869d30ca9394ca0f7a484bf9d598eb
"pinctrl: pinmux: Add pinmux-select debugfs file"
?

Something driver specific seems like a bit of a hack, does it not?

If this should go into sysfs we should probably create something
generic, such as a list of stuff to be exported as sysfs switches.

It generally also looks really dangerous, which is another reason
for keeping it in debugfs. It's the big hammer to hurt yourself with,
more or less.

Yours,
Linus Walleij
