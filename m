Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 41CCA5A2307
	for <lists+devicetree@lfdr.de>; Fri, 26 Aug 2022 10:30:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1343621AbiHZIaK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 26 Aug 2022 04:30:10 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42742 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S245046AbiHZIaI (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 26 Aug 2022 04:30:08 -0400
Received: from mail-ej1-x636.google.com (mail-ej1-x636.google.com [IPv6:2a00:1450:4864:20::636])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5286E9FF4
        for <devicetree@vger.kernel.org>; Fri, 26 Aug 2022 01:30:03 -0700 (PDT)
Received: by mail-ej1-x636.google.com with SMTP id tl26so1063567ejc.9
        for <devicetree@vger.kernel.org>; Fri, 26 Aug 2022 01:30:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc;
        bh=2w7uDDGae7lPC9PBKoaaB26gLASkKWk1Ljox9Qb8l6Q=;
        b=WzlJoUzfNCpYcC/wKzgOZa08JruxJVjED39QeHg1/uZzWWP49D65DM1aFYc3qaKtvn
         Q6zinWKDzFkDnxkWbGAh3BdqVKj2p2Y8GJhTsY/Pxt17M0r3EvJJymiAQrA33yDj5s17
         X9iqJjwU09qVwnXAfOZGVQrRe+vzz3SkUiI7GmHzLQav3BjthDp7VmNiWuFuuAFntQ8c
         meb78ZzYilLV0zjJZ/sdxprNpg3psTxruUB6RB89PizXIEEFmMorRbzKW8fkamtp+eE/
         UP/DeTKxY08moOLhnrFO8NtHOaRtGKMwmVAnVvG2+YiB6+su8G33EAWTxccYf6n5zxDH
         Bt8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc;
        bh=2w7uDDGae7lPC9PBKoaaB26gLASkKWk1Ljox9Qb8l6Q=;
        b=YeAcGg11qKTpnE/A7+09xwbp+N9XnekheWBJVDADnX2+ZZwS+ER3aWIc+6BaY5Ci3B
         +te2fb1Kvx2gnfXyGyHo6ppXceB60pf651dEr/4I03EaCnG8atvTZ/X+AETnMV9MDP+Q
         EcF7DvEvGREICpVjaMsvYzDZSyZQVP7VC6RlIpdrWlc8DJZBCN7FoXOJ+gKtPBEEE/pX
         5RtdDxehErfWWwALKF3QM4GcPUX835wV6iU35AKDZtD2vYEIqXISivwgwvCjFc5sMqfn
         4LHhwFn853wj+Q9VHpCmKq8Qh5edBS4tEfYkLO6hEB+3HH7wsK2mAlPhw1HgwJkU51/P
         d8Hw==
X-Gm-Message-State: ACgBeo0ZvVqykpI1Rvg1Ioyi9AsekX8trls7SR2MZXrguTZj6FBae8ip
        sZ+J62h7PQpVc3zyQ+OsVJv/o202EQToJljgqljsxA==
X-Google-Smtp-Source: AA6agR5Mur9vHmJyu+/jiMMkqB3v9LgJ6NwVlpsA0j4qLjcco/mAHvxbCi0JTgMvXiCAzfETgkWpYo/C46NbmmoWnWI=
X-Received: by 2002:a17:907:6293:b0:73d:b27b:e594 with SMTP id
 nd19-20020a170907629300b0073db27be594mr4929048ejc.526.1661502601587; Fri, 26
 Aug 2022 01:30:01 -0700 (PDT)
MIME-Version: 1.0
References: <20220819190054.31348-1-a-nandan@ti.com> <20220819190054.31348-3-a-nandan@ti.com>
In-Reply-To: <20220819190054.31348-3-a-nandan@ti.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Fri, 26 Aug 2022 10:29:50 +0200
Message-ID: <CACRpkdaktinAJveF_nH9NYYk7mAvnResRzoyuVDVWpwKKq6JOQ@mail.gmail.com>
Subject: Re: [PATCH 2/4] dt-bindings: pinctrl: k3: Introduce pinmux
 definitions for J784s4
To:     Apurva Nandan <a-nandan@ti.com>
Cc:     Nishanth Menon <nm@ti.com>, Vignesh Raghavendra <vigneshr@ti.com>,
        Tero Kristo <kristo@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-gpio@vger.kernel.org,
        Hari Nagalla <hnagalla@ti.com>
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

On Fri, Aug 19, 2022 at 9:01 PM Apurva Nandan <a-nandan@ti.com> wrote:

> Add pinctrl macros for J784s4 SoC. These macro definitions are
> similar to that of J721s2, but adding new definitions to avoid
> any naming confusions in the soc dts files.
>
> checkpatch insists the following error exists:
> ERROR: Macros with complex values should be enclosed in parentheses
>
> However, we do not need parentheses enclosing the values for this
> macro as we do intend it to generate two separate values as has been
> done for other similar platforms.
>
> Signed-off-by: Hari Nagalla <hnagalla@ti.com>
> Signed-off-by: Apurva Nandan <a-nandan@ti.com>

Acked-by: Linus Walleij <linus.walleij@linaro.org>
I guess you will merge these patches together?
Tell me if you rather want that I apply this one patch to the pinctrl tree.

Yours,
Linus Walleij
