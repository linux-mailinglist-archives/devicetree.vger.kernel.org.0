Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B2B3C33A8E6
	for <lists+devicetree@lfdr.de>; Mon, 15 Mar 2021 00:44:22 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229578AbhCNXno (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 14 Mar 2021 19:43:44 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58640 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229602AbhCNXnQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 14 Mar 2021 19:43:16 -0400
Received: from mail-lf1-x136.google.com (mail-lf1-x136.google.com [IPv6:2a00:1450:4864:20::136])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 126E9C061762
        for <devicetree@vger.kernel.org>; Sun, 14 Mar 2021 16:43:15 -0700 (PDT)
Received: by mail-lf1-x136.google.com with SMTP id x4so47389535lfu.7
        for <devicetree@vger.kernel.org>; Sun, 14 Mar 2021 16:43:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=F+5ScLWA/ADeBe/oMOOUSI5PFgHlHPjBcYld0NBl47Q=;
        b=mbbr0Gj+pc1thMUzjA1Ykk4g0qVlesZ5yqBWQGQZQ2BMYA0ANKnd1T6YXtXZdx1N/G
         BfK/HjcmtQCs4xNPI8gBj6iZYPwlfVMNci2z1lqWXYYTgbragAxRXxn3rJ7d2LRczwU1
         zN43uYH2VSA1XOZQuq/89CLQKVP083Z8667YuHlylKu1JCM0fGeP9h7erm8CvuIMYiN0
         DZ9OQkJ8MOHgwiV/uRf8kJQiCOZUSjE3OAakapMqvSAVZaTlkbZbvdi2b15l1msSLjog
         NVJiYuuba2Zi8W7Nmt6Q755DrPAUx8eJGtLiLB4CMaNhU2PbDWuMKiozcoLsWxpd9cCe
         NMXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=F+5ScLWA/ADeBe/oMOOUSI5PFgHlHPjBcYld0NBl47Q=;
        b=C0+TY2OzxErE6aFgfrm6odCsv1nYKrdy1IA5XPRKIx9w61QZeGccWM4OZmBg0susNm
         u3cLU8NBbVkk9JbF0C2jQLkUAuzE9ypIyQrekiTu597zboApDWDgd+Wt2jJpTC6jLUhn
         NpM/5M+Y1gFzkVkA46nj2KQvxSzdxAhhv1gwdYa7GaQngahALQX+5xzT6KKAsh5GNfC5
         qgCj7MENn1hjBq16VIkXCyRJIfw+MiYOi5PMDcIkshFEnrNnNcJL4snwpKXCEejAAVRf
         dgZsIagAA36Lno/e/QsBmmqta9SZlZZyGANdMNO5x+xs9RyF/fTIFuFkIwC3n9h4Y22o
         88LA==
X-Gm-Message-State: AOAM532MCVnV43IP3Ak59WTZDyPUD6vGs4qMSpWbXb/ZcW7sBNcbnSQ7
        3Cc7wO6V6oxcTAcXhvgOTa2t8Sad3LMgef70UQBcXg==
X-Google-Smtp-Source: ABdhPJzerti5+ixXGgGBHTSWzHl1Vc2msbMBqZNpmT3OP2WcE0GvfaNHIVnZGogSqwojo3DvpEfcwtLV+K6K/yYstfw=
X-Received: by 2002:a05:6512:243:: with SMTP id b3mr6380364lfo.529.1615765392236;
 Sun, 14 Mar 2021 16:43:12 -0700 (PDT)
MIME-Version: 1.0
References: <20210313215302.4076765-1-linus.walleij@linaro.org> <CAGRGNgU_C6keHC_Ty3iruJc5cwsBGJRRBm8DWH91fHjygPv0fg@mail.gmail.com>
In-Reply-To: <CAGRGNgU_C6keHC_Ty3iruJc5cwsBGJRRBm8DWH91fHjygPv0fg@mail.gmail.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Mon, 15 Mar 2021 00:43:01 +0100
Message-ID: <CACRpkdbHfH=+m3EJ9CBGkQ3rh6MGtKy4ixk3fgu15rxEzMg5dw@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: Convert the BCM4329 bindings to YAML and extend
To:     Julian Calaby <julian.calaby@gmail.com>
Cc:     Arend van Spriel <aspriel@gmail.com>,
        Franky Lin <franky.lin@broadcom.com>,
        Hante Meuleman <hante.meuleman@broadcom.com>,
        Chi-hsien Lin <chi-hsien.lin@infineon.com>,
        Wright Feng <wright.feng@infineon.com>,
        Chung-hsien Hsu <chung-hsien.hsu@infineon.com>,
        linux-wireless <linux-wireless@vger.kernel.org>,
        brcm80211-dev-list.pdl@broadcom.com,
        SHA-cyfmac-dev-list@infineon.com,
        linux-mmc <linux-mmc@vger.kernel.org>,
        devicetree <devicetree@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sun, Mar 14, 2021 at 1:05 AM Julian Calaby <julian.calaby@gmail.com> wrote:

> I don't know if this is necessary for SDIO, but should the non-4329
> compatibles have the 4329 compatible as an alternative?

I can, and I guess I should add it, as I grep:ed and saw this:

arch/arm/boot/dts/qcom-msm8974-lge-nexus5-hammerhead.dts
compatible = "brcm,bcm4339-fmac", "brcm,bcm4329-fmac";

So from more to less specific.

Yours,
Linus Walleij
