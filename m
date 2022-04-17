Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7BA6F504A1D
	for <lists+devicetree@lfdr.de>; Mon, 18 Apr 2022 01:41:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234728AbiDQXoU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 17 Apr 2022 19:44:20 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60240 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231216AbiDQXoT (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 17 Apr 2022 19:44:19 -0400
Received: from mail-yw1-x112e.google.com (mail-yw1-x112e.google.com [IPv6:2607:f8b0:4864:20::112e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B822F65CE
        for <devicetree@vger.kernel.org>; Sun, 17 Apr 2022 16:41:42 -0700 (PDT)
Received: by mail-yw1-x112e.google.com with SMTP id 00721157ae682-2f19fdba41fso914597b3.3
        for <devicetree@vger.kernel.org>; Sun, 17 Apr 2022 16:41:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=kBWZvPDWX8dbAUSP9kssP0OC5V7ojEsXZQypRCglwc8=;
        b=Qx+qxtMoZeSgNogDFYJh5SF2f0K6X0VV9WKxQUJkvnKGJu91Fi4w4niV6q1HQvbgc9
         vLxUpuLsvc64PfYVJ3cE7EBA53R/mMWzFtZKpkBLSRmXr/+UwWySzfBkA/NRif55VCMz
         3Ho1pXKRfbkFn9kvX+zzWzEKg5f2fiJfKbrQk74Nvi2kJtw2B82iUK6SA8BWf5lQ/Eef
         wOsecoWRiuPK4xJJrzFK8gDSNKO6btFmnIpk0A9BZmE+OVuu0wfWsML4kAudfkohS20k
         JHg1qWc1FW52TCVttj1tUGqO8PaqM0Osdjj6nLzFppzmlnEUz1Cxn5dshpbK4wGPgz1g
         4vrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=kBWZvPDWX8dbAUSP9kssP0OC5V7ojEsXZQypRCglwc8=;
        b=6zHFekXZOxcEvchD8mXfB4zr2+J1AdAe6QBJdJ+WK3gbbI2XpExIuWT8yvY9dN0/ja
         4fg+2jPuUsB+bWvDphOISOyP6zTEDerY8agBwIZfbINwattA5suo6BHZdKbqYJOYDeK5
         3WlXlfRkF4RiMhTBlXQJ3/0N+orC2By5xsq+kUE36p87+qSjDKQk3/YbKSJzlXhmjfcN
         hTnhTrfw2On0Kct3sMVhUCWaJyksp/B7vJf7yIuEF+rha8i4URgY8R4YJ4I1sgeUP5V7
         yZSti8Z4vxxqbpJVvuE/jU92Lz2kbpvcBt5wjIguIbSjHpYDi+3cgJZemUPawpLgmxVV
         5crg==
X-Gm-Message-State: AOAM533vgK1YWXNJARr4+cC2do8l2HOSAmyWf/uVIYTrXWQnxKcQ+sSE
        w+WV9xZwqCjvSQe1PjU+UWT6WWC0wO9CL4kNZau6EKaAVM4=
X-Google-Smtp-Source: ABdhPJzJDVt2Bv5XZp3mPzI0kj0ziWyK55YlE1BNID97fc+BtketIWe7wHtz5A5WteeOs/qIagWPMO5U3Gueu3b3KMI=
X-Received: by 2002:a81:1d48:0:b0:2f1:8ebf:25f3 with SMTP id
 d69-20020a811d48000000b002f18ebf25f3mr2363390ywd.118.1650238901925; Sun, 17
 Apr 2022 16:41:41 -0700 (PDT)
MIME-Version: 1.0
References: <20220319204628.1759635-1-michael@walle.cc> <20220319204628.1759635-7-michael@walle.cc>
In-Reply-To: <20220319204628.1759635-7-michael@walle.cc>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Mon, 18 Apr 2022 01:41:30 +0200
Message-ID: <CACRpkdbrw7Hjt9mB9pr_iNsGi71g_d8BGhpT_ih1RVgKJ5U0qQ@mail.gmail.com>
Subject: Re: [PATCH v3 6/6] dt-bindings: pinctrl: convert ocelot-pinctrl to
 YAML format
To:     Michael Walle <michael@walle.cc>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        Lars Povlsen <lars.povlsen@microchip.com>,
        Steen Hegelund <Steen.Hegelund@microchip.com>,
        Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
        Gregory CLEMENT <gregory.clement@bootlin.com>,
        Paul Burton <paulburton@kernel.org>,
        Quentin Schulz <quentin.schulz@bootlin.com>,
        Antoine Tenart <atenart@kernel.org>,
        Kavyasree Kotagiri <kavyasree.kotagiri@microchip.com>,
        Nicolas Ferre <nicolas.ferre@microchip.com>,
        "David S . Miller" <davem@davemloft.net>,
        UNGLinuxDriver@microchip.com, linux-gpio@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-mips@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sat, Mar 19, 2022 at 9:47 PM Michael Walle <michael@walle.cc> wrote:

> Convert the ocelot-pinctrl device tree binding to the new YAML format.
>
> Additionally to the original binding documentation, add interrupt
> properties which are optional and already used on several SoCs like
> SparX-5, Luton, Ocelot and LAN966x but were not documented before.
>
> Also, on the sparx5 and the lan966x SoCs there are two items for the
> reg property.
>
> Signed-off-by: Michael Walle <michael@walle.cc>

So is this single patch something I should apply to the pin control tree?
If you want to merge it all through ARM SoC go ahead:
Acked-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij
