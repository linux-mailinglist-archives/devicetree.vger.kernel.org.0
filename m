Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1773A5A22E2
	for <lists+devicetree@lfdr.de>; Fri, 26 Aug 2022 10:22:53 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S245414AbiHZIWu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 26 Aug 2022 04:22:50 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56764 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S245096AbiHZIWm (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 26 Aug 2022 04:22:42 -0400
Received: from mail-ej1-x62a.google.com (mail-ej1-x62a.google.com [IPv6:2a00:1450:4864:20::62a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4B962D4BE0
        for <devicetree@vger.kernel.org>; Fri, 26 Aug 2022 01:22:41 -0700 (PDT)
Received: by mail-ej1-x62a.google.com with SMTP id lx1so1727535ejb.12
        for <devicetree@vger.kernel.org>; Fri, 26 Aug 2022 01:22:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc;
        bh=FkjE6GGUo5m4bQQxcxS9cC2SHMb+1PtXHXgXEs/AakI=;
        b=J8AHzY00e7vOUMndst4CE5NEyNLo1kreuduD834orDAuKaERoW0ZAXNbuR3ArhAzO2
         wBC1P8YXH5CjHjXL1vK0NgP/x1bDu5ZyJCdIv2gWrFbDSqL6XUGwHjmRC1h1VAMp2RYe
         RvIMIrdUR3n6KgZFv5dV6aR7bvu9Tv1rwSCzLS79DJIXo9sQ8eyPi3X8Ob8edyPwQozE
         Jh+vetNalim7teCGBzeV7lfRV0jg3QFoAyqeb3Me8vX7w9EP84IR7GWyckggefRzW5SY
         MJ6/+D6I1arLhHdd1ACPyYbo9Hb3vJfCapwmhD2PJ/bHiD9SNuGoZSfXWSnwyfZess7u
         q5JQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc;
        bh=FkjE6GGUo5m4bQQxcxS9cC2SHMb+1PtXHXgXEs/AakI=;
        b=tvujyW68Hs/FjODbDnWTppCu6meJodbNhPuSX75IsM/8x8QCwnFE2vhWZ/f6nRAqRe
         JWiCOfkEOdqqDYgnE34Jhq/jBiTwk5LfSJ1ozMFDIG/S+KU8sGaecummwLcEqafmLXq0
         BV7qqlmb/9f8VwnagmQ3b8vZIMs+7Cm1LtfTaU0yIcaPRKfa8EOuiTacOLbqL7kbEO9U
         jzYB/8v1BTyVtDrr2JzR8mX2FBxwEzniyAt+JMqMw01lqsAh3EVEWxAex+L28GxGL9xV
         zpVUjlz5ur0MRd5M7+T4KFvOCTGLilE9/CrE1QvD2pZS6JNaMUlqfFtghy55hBk1qgKO
         C2Hw==
X-Gm-Message-State: ACgBeo3k3LVdUNaXgvlD/I5F4xo/gUFFp5FfgHk069vjp61UePyDZyFp
        OlGXaTI5HS90E4UlaLKKAnnp5aTM9MZUESxo4jCkRQ==
X-Google-Smtp-Source: AA6agR7vmSRcjidQzAHSj1ZN34Lh2USrc196LGQSLvsjNYigmEaK006EtBkxYxY4U4QIcbVPUgQlNM6zCi1SJk5BKGU=
X-Received: by 2002:a17:907:6293:b0:73d:b27b:e594 with SMTP id
 nd19-20020a170907629300b0073db27be594mr4913613ejc.526.1661502159873; Fri, 26
 Aug 2022 01:22:39 -0700 (PDT)
MIME-Version: 1.0
References: <20220805134908.749935-1-conor.dooley@microchip.com>
 <CACRpkdb1jnq2C+ke1i-tis-2jMLjxbb14YusMRp607Avm4k6ow@mail.gmail.com> <9056a25e-930d-7ac7-25c8-169d43191974@microchip.com>
In-Reply-To: <9056a25e-930d-7ac7-25c8-169d43191974@microchip.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Fri, 26 Aug 2022 10:22:28 +0200
Message-ID: <CACRpkdYJC-Wxq_xqAmisavuq3+d7_f5p0f1_EbZy-uPy2kip1g@mail.gmail.com>
Subject: Re: [PATCH] MAINTAINERS: add PolarFire SoC dt bindings
To:     Conor.Dooley@microchip.com
Cc:     Daire.McNamara@microchip.com, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, linux-riscv@lists.infradead.org,
        broonie@kernel.org, wsa@kernel.org, thierry.reding@gmail.com,
        u.kleine-koenig@pengutronix.de, jassisinghbrar@gmail.com,
        brgl@bgdev.pl, wg@grandegger.com, mkl@pengutronix.de,
        gregkh@linuxfoundation.org, arnd@arndb.de, olof@lixom.net,
        mturquette@baylibre.com, sboyd@kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sat, Aug 20, 2022 at 12:21 AM <Conor.Dooley@microchip.com> wrote:
> On 19/08/2022 23:13, Linus Walleij wrote:

> >
> > The Subject on this patch is wrong?
>
> How so?

It says it adds bindings but it adds a maintainer for the bindings.
Which is implicit since it is patching MAINTAINERS.

No big deal, sorry for an early morning OCD-thing from my side.

Yours,
Linus Walleij
