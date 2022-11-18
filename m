Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 40A9662FB9E
	for <lists+devicetree@lfdr.de>; Fri, 18 Nov 2022 18:29:14 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235254AbiKRR3M (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 18 Nov 2022 12:29:12 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60212 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235043AbiKRR3L (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 18 Nov 2022 12:29:11 -0500
Received: from smtp-relay-internal-1.canonical.com (smtp-relay-internal-1.canonical.com [185.125.188.123])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 76EB1186EC
        for <devicetree@vger.kernel.org>; Fri, 18 Nov 2022 09:29:10 -0800 (PST)
Received: from mail-yb1-f200.google.com (mail-yb1-f200.google.com [209.85.219.200])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id AA05B3F2FF
        for <devicetree@vger.kernel.org>; Fri, 18 Nov 2022 17:29:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1668792548;
        bh=D0in/Z5ItBo4bdyVRZYshRBIPhbza+KDsy6dYC3xe9Y=;
        h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
         To:Cc:Content-Type;
        b=OmwWUbclgkrNrUtHXJ4OfK9D68CxkmXUiCMIIuIwxon3ACuKU4CEV+x2hmK4ij4FT
         mAGqvqENg7wOuxnhmpBGaGG2mk46u+47e64ingyn8AAzyKS1/hqx3ua3WjbSMLL5jv
         4bIK8ReEVi06nNr0maVnsN7Ff1YSThUeFpv3tfPgPMjPA69GAqzENnwpoJEVuDN4yf
         6ZagmY1e9kB52qqbinz5cvqEJXTi0ocI6/J5wH+sEB894S8nFX6W7sCryqQnTNMUHk
         nz4B2lVQg9e74P8Y7XdIgKfRKr8unkQApiLeDEQ21JF+Ivd/lzigLYkCyoKh1S3Bz5
         6v44vktGveXSA==
Received: by mail-yb1-f200.google.com with SMTP id a5-20020a25af05000000b006e450a5e507so5071072ybh.22
        for <devicetree@vger.kernel.org>; Fri, 18 Nov 2022 09:29:08 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=D0in/Z5ItBo4bdyVRZYshRBIPhbza+KDsy6dYC3xe9Y=;
        b=jc/jlVv8211l2QT0W+74F1JZq5LBOcv85NDMNPlMWyjwp90tPGARmcsVa2huq7I5yP
         3aUM7K15wvdJ7L7ojQQxUoA3sr9qDgZoEsDp7xEOGt4pi6tJnzqQeJwrRNUlXfKkrDhJ
         0gFKn5CtF0klAKzwXeWBpSTjSJJTHGWkXcwBP+KVGrqVzq8Vbu1sHan1TDQOLKf2r0S6
         UNqjYHjKLesAoM+SsI5qOI8sUQrvWGk+TP5kWLFlMffOWjTVDBjTfmx2/2mcMkWXECgU
         SQsO95dTDZNvuj2OFbQkD2i/p/AhSbEWQy6ukO0hHpdkIxeaK/GxnmF+ssMYC3mhFbV6
         +bAg==
X-Gm-Message-State: ANoB5pnjRpAgaetUjiY7uyogt9qWdiXKsybOSmB8/PINOLUwrnTrS/1v
        TXfMP5ZGcSe243pwf2cZKGURB6tmA7LFZmznstqu1gSNYm7dGSSzzQL759nlG+bWLEJyGEm/s+F
        RT5WExPxcBVS0tNXvtyWby0ZQF5ANqaxmW1RPxw2Zz1rVrW0pLWfe9ng=
X-Received: by 2002:a81:f805:0:b0:378:5e3a:8fad with SMTP id z5-20020a81f805000000b003785e3a8fadmr7407468ywm.78.1668792544555;
        Fri, 18 Nov 2022 09:29:04 -0800 (PST)
X-Google-Smtp-Source: AA0mqf5xnJuotP89nNaWExJLuyVqseyLjsk+palJNHhKiqjsaZh7uoGA0lWccqFwr0budyNZij53O6Nn3CKWVR32m1M=
X-Received: by 2002:a81:f805:0:b0:378:5e3a:8fad with SMTP id
 z5-20020a81f805000000b003785e3a8fadmr7407449ywm.78.1668792544329; Fri, 18 Nov
 2022 09:29:04 -0800 (PST)
MIME-Version: 1.0
References: <20221118011714.70877-1-hal.feng@starfivetech.com> <20221118011714.70877-2-hal.feng@starfivetech.com>
In-Reply-To: <20221118011714.70877-2-hal.feng@starfivetech.com>
From:   Emil Renner Berthing <emil.renner.berthing@canonical.com>
Date:   Fri, 18 Nov 2022 18:28:48 +0100
Message-ID: <CAJM55Z8edRB8U9tn5Ytyb37R-yD=QJ621rziqKDrtXNDppK=ow@mail.gmail.com>
Subject: Re: [PATCH v2 1/8] dt-bindings: riscv: Add StarFive JH7110 SoC and
 VisionFive2 board
To:     Hal Feng <hal.feng@starfivetech.com>
Cc:     linux-riscv@lists.infradead.org, devicetree@vger.kernel.org,
        Conor Dooley <conor@kernel.org>,
        Palmer Dabbelt <palmer@dabbelt.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Albert Ou <aou@eecs.berkeley.edu>,
        Ben Dooks <ben.dooks@sifive.com>,
        Thomas Gleixner <tglx@linutronix.de>,
        Marc Zyngier <maz@kernel.org>, Stephen Boyd <sboyd@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Linus Walleij <linus.walleij@linaro.org>,
        linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, 18 Nov 2022 at 02:17, Hal Feng <hal.feng@starfivetech.com> wrote:
>
> From: Emil Renner Berthing <kernel@esmil.dk>
>
> Add device tree bindings for the StarFive JH7110 RISC-V SoC [1]
> and the VisionFive2 board [2] equipped with it.
>
> [1]: https://doc-en.rvspace.org/Doc_Center/jh7110.html
> [2]: https://doc-en.rvspace.org/Doc_Center/visionfive_2.html
>
> Signed-off-by: Emil Renner Berthing <kernel@esmil.dk>
> Signed-off-by: Hal Feng <hal.feng@starfivetech.com>
> ---
>  Documentation/devicetree/bindings/riscv/starfive.yaml | 4 ++++
>  1 file changed, 4 insertions(+)
>
> diff --git a/Documentation/devicetree/bindings/riscv/starfive.yaml b/Documentation/devicetree/bindings/riscv/starfive.yaml
> index 5b36243fd674..64008c57e31f 100644
> --- a/Documentation/devicetree/bindings/riscv/starfive.yaml
> +++ b/Documentation/devicetree/bindings/riscv/starfive.yaml
> @@ -22,6 +22,10 @@ properties:
>            - const: beagle,beaglev-starlight-jh7100-r0
>            - const: starfive,jh7100
>
> +      - items:
> +          - const: starfive,visionfive-v2

I think StarFive has switched to just calling it VisionFive 2 and not
V2. Please check up on this before committing to the compatible
string.

Also there are going to be different revisions of the VisionFive 2
board, so maybe consider adding eg. starfive,visionfive-2-v1.1 and
starfive,visionfive-2-v1,2b early.

> +          - const: starfive,jh7110
> +
>  additionalProperties: true
>
>  ...
> --
> 2.38.1
>
