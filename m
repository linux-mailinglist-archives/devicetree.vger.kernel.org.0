Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5395250FFBB
	for <lists+devicetree@lfdr.de>; Tue, 26 Apr 2022 15:56:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1351290AbiDZN6o (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 26 Apr 2022 09:58:44 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51196 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232625AbiDZN6n (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 26 Apr 2022 09:58:43 -0400
Received: from mail-yw1-x112f.google.com (mail-yw1-x112f.google.com [IPv6:2607:f8b0:4864:20::112f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4A1ADDCAAA
        for <devicetree@vger.kernel.org>; Tue, 26 Apr 2022 06:55:36 -0700 (PDT)
Received: by mail-yw1-x112f.google.com with SMTP id 00721157ae682-2f7d7e3b5bfso69637107b3.5
        for <devicetree@vger.kernel.org>; Tue, 26 Apr 2022 06:55:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=tGnnsOro0fTXcSX75g0Ywninw1vwEOc38VMslUYvHZE=;
        b=ou4OCBxLogQNNf8C6zhUpKLSHiGc3WCvh0CNrGET0ELwEcHPQyIO8lythpvVt5NhYa
         oCBY1DvCQmYF6ZQ4TEu/nyUUUKhzFEdtRquDmZejzk2utI8slhzSQjnwZIdzdy0R3P8L
         flPjin7Npxygkx5yX4hYsC2z70tKosRQWT3nQw5gB4QB0vZ68iXUZCg38XyB3+r31Bv9
         VtZ4jrKnnjvRl4Ywdnq+xwintuDuIj6GDGeuws5SP2Gq4UT72BzRD238stCxkyNEM5N3
         3GKEKyo1nl4pJ95rtndCzYE9PnhYNnqtCxC2mYqsFaArqkgfkOErCyhGIlJdG6urxNEt
         3kFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=tGnnsOro0fTXcSX75g0Ywninw1vwEOc38VMslUYvHZE=;
        b=FpeNmifwMM+4RyvddJqbVt9oDN2U7fUGGv4CZLkXogi1xNNN3/OYoN3kGSvRW7sF/x
         Y1uteivzepisQAIUVaJy3+fcknB+ncBi8AXUm08RypzY+QFA1f1ZDccSYeKXWi/VRbqE
         a/PobkBb7Pqsc/HSclaBDWfuU5+vcUNqAA/p1K1BWcRKiQkktbjMzvA66bG6lt/TsW5W
         rtLGsCt2lnUQ2O6FqcSsM6XLRNiCX32gsUhONZ7M+qI1Vtmiugc4v+FfSSDnJg3GWTu7
         D2miOqBtSGmuGS4zJCiMnyWANNRRQ1R4riiiUb4FtxQ5jQ3efxk8fRWPgvzYw+0TK8+8
         LsNg==
X-Gm-Message-State: AOAM530YDpK03VOZmvlGTIQFrDZUNIliVsOLW37M1PEFVrwzVC0aA55U
        mJtt3NWqSDk/7tQBE7uGu6GrH4YaAfbM0nuIE7CIgw==
X-Google-Smtp-Source: ABdhPJwaDHorEVacERGa/V+qc+V5d8PTrwAODlB0texVMiYzB5A4RvNHZtZNRufKjNleEX1dYBFdKo0sZDhbnGGNlik=
X-Received: by 2002:a0d:d101:0:b0:2eb:4bd7:bcc1 with SMTP id
 t1-20020a0dd101000000b002eb4bd7bcc1mr22378985ywd.495.1650981335233; Tue, 26
 Apr 2022 06:55:35 -0700 (PDT)
MIME-Version: 1.0
References: <20220425063120.10135-1-a-govindraju@ti.com>
In-Reply-To: <20220425063120.10135-1-a-govindraju@ti.com>
From:   Ulf Hansson <ulf.hansson@linaro.org>
Date:   Tue, 26 Apr 2022 15:54:58 +0200
Message-ID: <CAPDyKFrXogNFhdyHbo_KF3uA0nTc_MRV3tvv3v6Q+K3-KhsO=Q@mail.gmail.com>
Subject: Re: [PATCH v2 0/2] MMC: Add quirk to set the TESTCD bit
To:     Aswath Govindraju <a-govindraju@ti.com>
Cc:     Vignesh Raghavendra <vigneshr@ti.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Adrian Hunter <adrian.hunter@intel.com>,
        linux-mmc@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, 25 Apr 2022 at 08:31, Aswath Govindraju <a-govindraju@ti.com> wrote:
>
> The following series of patches add support for setting TESTCD bit
> when SDCD line is connected to the controller, in the sdhci_am654.c
> driver.
>
> Changes since v1:
> - Rephrased the commit message in patch 1 to decribe the hardware
>   and not the sw support
> - Made the reset function static in patch 2
>
> Aswath Govindraju (1):
>   dt-bindings: mmc: sdhci-am654: Add flag to force setting of TESTCD bit
>
> Vignesh Raghavendra (1):
>   drivers: mmc: sdhci_am654: Add the quirk to set TESTCD bit
>
>  .../devicetree/bindings/mmc/sdhci-am654.yaml  |  7 ++++++
>  drivers/mmc/host/sdhci_am654.c                | 23 ++++++++++++++++++-
>  2 files changed, 29 insertions(+), 1 deletion(-)
>

Applied for next, thanks!

Kind regards
Uffe
