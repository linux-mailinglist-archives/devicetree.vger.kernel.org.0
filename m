Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CC1636A6488
	for <lists+devicetree@lfdr.de>; Wed,  1 Mar 2023 02:04:31 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229549AbjCABEb (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 28 Feb 2023 20:04:31 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60144 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229509AbjCABEa (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 28 Feb 2023 20:04:30 -0500
Received: from mail-ed1-x535.google.com (mail-ed1-x535.google.com [IPv6:2a00:1450:4864:20::535])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C4B962448D
        for <devicetree@vger.kernel.org>; Tue, 28 Feb 2023 17:04:28 -0800 (PST)
Received: by mail-ed1-x535.google.com with SMTP id cy6so47600761edb.5
        for <devicetree@vger.kernel.org>; Tue, 28 Feb 2023 17:04:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=jms.id.au; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=d4OrUOl51NPQf5S1PMv0oO+zYb0X1S9MmPzIm8SUt+E=;
        b=LD/KmWHqfartLmkLJt7gHl5eGHb7wHaDCmWPOru/WQV/XzmSkvRwmwUpo/cdsuM/e4
         LuKGXKskm9LBLx6ShF8U3PXcAFDYfQlbfpEMeHd8fJRhz38h0/WAyi/270I9IAsY38je
         UD55B20H2G9dVQ2qBSR8dqeQsEEHYK0K8WfBU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=d4OrUOl51NPQf5S1PMv0oO+zYb0X1S9MmPzIm8SUt+E=;
        b=5hdyOuVMyZbwzveKt+UWicMklxvY/M9J2lfUMD3hTf9OdMQVUdCNXXtefSkolwDyc8
         pGzhgMSbtYwiq8x3YqTsHw7QNcnf213NC2nhVTEPVsQZ7RQ+ac7ktCtJBwTtND+P9fBZ
         2tkoUemjk9I0ZnAWZPfIuyXdAJu8Ptdqp4oCq+C9pQgM613bePO9c6jLvLaIUHUphR1V
         /k0IdRJ23VzKu62NPP711TctHBDIMX8O+C9XlFJ3GPhxpZw9mZVg9oVKbRwQomOhfR36
         yqQAR60OQJS1y+MlFu9mFxnRrAOZdI7+1U10EZKCWqIVAVRe0nvl/YNWrRtu/RPX1TZn
         io8Q==
X-Gm-Message-State: AO0yUKV63rtoHipiDrpFHaJ/PJURhOQI8yo8pH6B0pLZ/WysMzZycqgi
        dia1VX6hyAUQbPzrkZg5qK9dCftAfdfEj20BcE4=
X-Google-Smtp-Source: AK7set+fLFqpaxP5q+miLeUyFfMGmV4RfJfEWRXJHRxOJeZuwqCAnyyTGPu4fdOX8uAmhcaCsX/0mtIygdv83fTuqrQ=
X-Received: by 2002:a50:9f6a:0:b0:4ad:7439:cecb with SMTP id
 b97-20020a509f6a000000b004ad7439cecbmr2688575edf.7.1677632667191; Tue, 28 Feb
 2023 17:04:27 -0800 (PST)
MIME-Version: 1.0
References: <cover.1676532146.git.jk@codeconstruct.com.au>
In-Reply-To: <cover.1676532146.git.jk@codeconstruct.com.au>
From:   Joel Stanley <joel@jms.id.au>
Date:   Wed, 1 Mar 2023 01:04:15 +0000
Message-ID: <CACPK8Xd0k8EKR1v4NVmgb6yp3Zh5hUyVyoxsyk0NTx9MF80oYQ@mail.gmail.com>
Subject: Re: [PATCH 0/4] i3c: Add support for ast2600 i3c controller
To:     Jeremy Kerr <jk@codeconstruct.com.au>
Cc:     linux-i3c@lists.infradead.org,
        Alexandre Belloni <alexandre.belloni@bootlin.com>,
        Vitor Soares <ivitro@gmail.com>, linux-aspeed@lists.ozlabs.org,
        devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Dylan Hung <dylan_hung@aspeedtech.com>,
        Andrew Jeffery <andrew@aj.id.au>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
        HEADER_FROM_DIFFERENT_DOMAINS,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,
        SPF_PASS autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, 16 Feb 2023 at 07:42, Jeremy Kerr <jk@codeconstruct.com.au> wrote:
>
> The AST2600 SoC hardware includes a set of i3c controllers, based on the
> designware i3c core, plus some global registers for SoC integration.
>
> This series adds support for these i3c controllers, through the existing
> dw i3c master controller driver, by adding a set of platform-specific
> hooks to handle the global register configuration. This also gives us a
> way to add any future hardware-specific behaviours.
>
> We also need a DT binding to describe the ast2600-specific hardware.
> Since this involves new (mandatory) properties, I have added this as a
> separate binding rather than add a new compat string to the dw binding.
>
> The dt-binding example depends on a prior submission to the dt binding
> headers:
>
>   https://lore.kernel.org/linux-devicetree/cover.1676294433.git.jk@codeconstruct.com.au/
>
> Full support for the global regmap will land with this queued mfd change:
>
>   https://git.kernel.org/pub/scm/linux/kernel/git/lee/mfd.git/commit/?id=cf2271843de835839e91c5c036492a87085af756
>
> Of course, any queries/comments/etc are most welcome.

Reviewed-by: Joel Stanley <joel@jms.id.au>

>
> Cheers,
>
>
> Jeremy
>
> Jeremy Kerr (4):
>   dt-bindings: i3c: Add AST2600 i3c controller
>   i3c: dw: Add platform operations
>   i3c: dw: Add AST2600 platform ops
>   i3c: dw: Add compatible string for ASPEED AST2600 BMC platform
>
>  .../bindings/i3c/aspeed,ast2600-i3c.yaml      |  73 ++++++++
>  drivers/i3c/master/dw-i3c-master.c            | 165 +++++++++++++++++-
>  2 files changed, 232 insertions(+), 6 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/i3c/aspeed,ast2600-i3c.yaml
>
> --
> 2.39.1
>
