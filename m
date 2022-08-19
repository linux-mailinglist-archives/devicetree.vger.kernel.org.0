Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9ECFF59A82C
	for <lists+devicetree@lfdr.de>; Sat, 20 Aug 2022 00:16:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235252AbiHSWNZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 19 Aug 2022 18:13:25 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58720 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232942AbiHSWNY (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 19 Aug 2022 18:13:24 -0400
Received: from mail-ej1-x62d.google.com (mail-ej1-x62d.google.com [IPv6:2a00:1450:4864:20::62d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B6F7BCE11
        for <devicetree@vger.kernel.org>; Fri, 19 Aug 2022 15:13:23 -0700 (PDT)
Received: by mail-ej1-x62d.google.com with SMTP id y13so11169536ejp.13
        for <devicetree@vger.kernel.org>; Fri, 19 Aug 2022 15:13:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc;
        bh=16fAIGzEbw49AZ48+GRIZV4iZqYCUe0NmdYkhGz6SEg=;
        b=eD7eDFBykw9Q5L2Rz1bnauG31uWhhvgzRSgKTzkdL/yvd7d+nYzjACqlpg8hTLOOOF
         LzwH0BhAHiKd8e2qickT3fWHfCNtK4lbIC0PoWTE/kIZgvVcA3W07jkroHUUPOajxr7e
         CbasemjSBSrWUyTs9YeCuPKk7+PSUWK5zPynTe5DpSYXWlUQFmoCnypBgzH80x8w5iW+
         diZE+YUjkqqxJXw4GCT/lAaKLL7MPB3xhG2HJUOSwaxCTtLXRJ7TnpYyfYI6bgz1vvYI
         5aLXQCaUXgxoXLpz2g3pzcXs9v0+Ml6t1tTwjwz6sjiU5Z/XmtpbKYSFQNDefhw2nXfU
         YdHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc;
        bh=16fAIGzEbw49AZ48+GRIZV4iZqYCUe0NmdYkhGz6SEg=;
        b=SyMPWirsxG3IauVHCd/yJ179TjLlP7GVAyinAv8VMkPaahE8k9AvnwmxjolQNpW0Ym
         86kAyXPxOQt0R93xVsqaHy60eu90a4Z3QSop+kt7kTGRZQGb97FW1xNXb9YiowF5hVLY
         qa0/WHg8Gi6eMeVVD2JZuYyeGqylHxu11QE7YXZM5SeFquhF9T6Ja4+1ktn4CCiD4uAA
         rCB60t2472NND3PgMnGisUcEPhrReW9gz2EixdMonp8fWvt2gEICcbtm+obfcNPx3fdH
         l9tZ7IAU6YCu07WkwrrPMceyu7LOeHtNCMh6YIhCpCBU6U0TXkw4lkydha7k9vWfErFA
         UOKA==
X-Gm-Message-State: ACgBeo13gnr+gF4zL7rtMyl4n+ZqZpJOWKE/yoHtJZ8skzH1B8sRP7/8
        dRe0ai7vZLgj5FKOCmkmSoOUvcABdG9mNJo16lU//g==
X-Google-Smtp-Source: AA6agR6exRbXrSWA4PZkprt/ywDmZGOGor6d/7N9S7XW/yyVnnhi3RWm9fYmE4MuuVQubZLREAMzqWQ/74Obz8Kt5gk=
X-Received: by 2002:a17:906:5a71:b0:730:aaa1:a9ec with SMTP id
 my49-20020a1709065a7100b00730aaa1a9ecmr6143409ejc.440.1660947202148; Fri, 19
 Aug 2022 15:13:22 -0700 (PDT)
MIME-Version: 1.0
References: <20220805134908.749935-1-conor.dooley@microchip.com>
In-Reply-To: <20220805134908.749935-1-conor.dooley@microchip.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Sat, 20 Aug 2022 00:13:11 +0200
Message-ID: <CACRpkdb1jnq2C+ke1i-tis-2jMLjxbb14YusMRp607Avm4k6ow@mail.gmail.com>
Subject: Re: [PATCH] MAINTAINERS: add PolarFire SoC dt bindings
To:     Conor Dooley <conor.dooley@microchip.com>
Cc:     Daire McNamara <daire.mcnamara@microchip.com>,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        linux-riscv@lists.infradead.org, Mark Brown <broonie@kernel.org>,
        Wolfram Sang <wsa@kernel.org>,
        Thierry Reding <thierry.reding@gmail.com>,
        =?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= 
        <u.kleine-koenig@pengutronix.de>,
        Jassi Brar <jassisinghbrar@gmail.com>,
        Bartosz Golaszewski <brgl@bgdev.pl>,
        Wolfgang Grandegger <wg@grandegger.com>,
        Marc Kleine-Budde <mkl@pengutronix.de>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Arnd Bergmann <arnd@arndb.de>, Olof Johansson <olof@lixom.net>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Aug 5, 2022 at 3:49 PM Conor Dooley <conor.dooley@microchip.com> wr=
ote:

> So far when I added bindings for the platform I never added them to
> our MAINTAINERS entry. No time like the present to improve the coverage.
>
> Suggested-by: Mark Brown <broonie@kernel.org>
> Signed-off-by: Conor Dooley <conor.dooley@microchip.com>
> ---
> I have another maintainers change queued, I'll send this via soc along
> with it unless there are any objections.
>
> CC: Mark Brown <broonie@kernel.org>
> CC: Wolfram Sang <wsa@kernel.org>
> CC: Thierry Reding <thierry.reding@gmail.com>
> CC: Uwe Kleine-K=C3=B6nig <u.kleine-koenig@pengutronix.de>
> CC: Jassi Brar <jassisinghbrar@gmail.com>
> CC: Linus Walleij <linus.walleij@linaro.org>
> CC: Bartosz Golaszewski <brgl@bgdev.pl>
> CC: Wolfgang Grandegger <wg@grandegger.com>
> CC: Marc Kleine-Budde <mkl@pengutronix.de>
> CC: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> CC: Arnd Bergmann <arnd@arndb.de>
> CC: Olof Johansson <olof@lixom.net>
> CC: Michael Turquette <mturquette@baylibre.com>
> CC: Stephen Boyd <sboyd@kernel.org>

The Subject on this patch is wrong?

Yours,
Linus Walleij
