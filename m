Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 444996C0557
	for <lists+devicetree@lfdr.de>; Sun, 19 Mar 2023 22:16:25 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230063AbjCSVQX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 19 Mar 2023 17:16:23 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59848 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230053AbjCSVQV (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 19 Mar 2023 17:16:21 -0400
Received: from mail-yb1-xb30.google.com (mail-yb1-xb30.google.com [IPv6:2607:f8b0:4864:20::b30])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 11107B461
        for <devicetree@vger.kernel.org>; Sun, 19 Mar 2023 14:16:20 -0700 (PDT)
Received: by mail-yb1-xb30.google.com with SMTP id x198so1170194ybe.9
        for <devicetree@vger.kernel.org>; Sun, 19 Mar 2023 14:16:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1679260579;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=umIKUZ29cWxRGLpplScGRMR85hsAlE3Adfx/LlasVhM=;
        b=CPgf7pIk/Lnkd8dmhIq8WFWJ6BLyq6+kGzIfKmtwXfzlt6kxOq+vyAL8X4bCK1iR3Q
         iI3bTgb55U+aMHk1J0DgzxXKaavtjILeOujbhHokL2gZ/DGhvklPkLQorKzCM8cKXNSX
         mH8IdtmZzoE0UjJlfkmvQ5ZzynMQW3xYlqNCjEGJbb5nfq6GYkbuiRcPcc3AutwclR21
         FSxDUsCtHWw9ulreB79I49s9OO/yykd220i5H/7eLfkuJeFqCB78ZslFFxwGWUtQIAMu
         7ttFNZM+NUfJoUwRduR6Iu0sohA7gqSwv+/dkMrlBLqqPMcaBKKmLc3GgvjMI3QRK3fD
         JC/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679260579;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=umIKUZ29cWxRGLpplScGRMR85hsAlE3Adfx/LlasVhM=;
        b=zBFBpr4yJO8iSucBe+c+AdLEd6FZFG1EzpmeWo2LbL2yLau95BGK+GnJk4AxwS6Gcj
         1ffMk1aDq8WK0SkJnGbFgEZed5Ois+ujtRuMsMWBzfTQHNfK89m/rJCrrqb7zxHS3H0k
         TQ9P8tMNGtgcXwtlbuWBSE1sVTWvIliBCE0JyvD5p9Fis85ofam1c0QTfbWO+wylSqC0
         KdCnLNMtmp6i03XiC0VSC5iCjQtGcRfVLZ84FvFF5iRuFyeSXCWXzGXcju8iJ6mo17NO
         cCK6Di3/Qf2MTNc6b99dYM7cYUGNTe9didfaTeOOBB2apU/x+Dzb6u6ELyGAMGkrOZYg
         7w/A==
X-Gm-Message-State: AO0yUKWezSbuABDaS4Nrf0rKHacvOFxoNFM2rVdCPnlo7Pk/d9WVF1lG
        MCV8uVgdw+1fDQDlHaAvuGYBssMz8+409gEZuebhHg==
X-Google-Smtp-Source: AK7set/LQSqDHQohlcpzt0xizcE65fZwUUP3xQclwBlvRoXqfTwlv5UpIYbuGW13MOMcV9w5zxaHwatEJucTRxSnE5c=
X-Received: by 2002:a25:9786:0:b0:b61:14c8:90fd with SMTP id
 i6-20020a259786000000b00b6114c890fdmr4033253ybo.4.1679260579212; Sun, 19 Mar
 2023 14:16:19 -0700 (PDT)
MIME-Version: 1.0
References: <20230317233634.3968656-1-robh@kernel.org>
In-Reply-To: <20230317233634.3968656-1-robh@kernel.org>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Sun, 19 Mar 2023 22:16:07 +0100
Message-ID: <CACRpkdbn=B1O2AyOq9DhgQ4Kw-mSytkj0rpJCKVGC51_rTeAHA@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: rtc: Drop unneeded quotes
To:     Rob Herring <robh@kernel.org>
Cc:     Alessandro Zummo <a.zummo@towertech.it>,
        Alexandre Belloni <alexandre.belloni@bootlin.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Chen-Yu Tsai <wens@csie.org>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        Samuel Holland <samuel@sholland.org>,
        Nicolas Ferre <nicolas.ferre@microchip.com>,
        Claudiu Beznea <claudiu.beznea@microchip.com>,
        Florian Fainelli <f.fainelli@gmail.com>,
        Broadcom internal kernel review list 
        <bcm-kernel-feedback-list@broadcom.com>,
        Hans Ulli Kroll <ulli.kroll@googlemail.com>,
        Avi Fishman <avifishman70@gmail.com>,
        Tomer Maimon <tmaimon77@gmail.com>,
        Tali Perry <tali.perry1@gmail.com>,
        Patrick Venture <venture@google.com>,
        Nancy Yuen <yuenn@google.com>,
        Benjamin Fair <benjaminfair@google.com>,
        Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        Alexandre Torgue <alexandre.torgue@foss.st.com>,
        linux-rtc@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev,
        linux-kernel@vger.kernel.org, openbmc@lists.ozlabs.org,
        linux-stm32@st-md-mailman.stormreply.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sat, Mar 18, 2023 at 12:36=E2=80=AFAM Rob Herring <robh@kernel.org> wrot=
e:

> Cleanup bindings dropping unneeded quotes. Once all these are fixed,
> checking for this can be enabled in yamllint.
>
> Signed-off-by: Rob Herring <robh@kernel.org>

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij
