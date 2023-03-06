Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 31C066AC0E4
	for <lists+devicetree@lfdr.de>; Mon,  6 Mar 2023 14:29:12 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230023AbjCFN3K (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 6 Mar 2023 08:29:10 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40426 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229822AbjCFN3J (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 6 Mar 2023 08:29:09 -0500
Received: from mail-yb1-xb33.google.com (mail-yb1-xb33.google.com [IPv6:2607:f8b0:4864:20::b33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 13CF111145
        for <devicetree@vger.kernel.org>; Mon,  6 Mar 2023 05:29:08 -0800 (PST)
Received: by mail-yb1-xb33.google.com with SMTP id t39so8081396ybi.3
        for <devicetree@vger.kernel.org>; Mon, 06 Mar 2023 05:29:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1678109347;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=wdQ6uUXw6eLlqKNPq8Dwry7lvb1Ttr+GrRVdC8+muhc=;
        b=l2ZAfX/DEvwxQ2Y8xyQQKr4rCOExDvn8sOpBNCt5+XjYpH0mB1IwSGmmArkULngJme
         gKXkybkiivT1JpXF6SmaEKUZpD9Zcu4jxcL/oe4mrgpjywjTzaVQFvH7iP1+dXjpnNES
         MsnXD50DsGXnXbq1kBoSIFTZx1xNSd6BWvbG6OHiqwkraELFxDn6HuLb8sc2Vaa0fJ2C
         glFElm0T6lcrhpeRzfzpP/Of3PWT0egmhJQ1w9lZtGiKivcWdwdCBAW9k3erryYOFT2U
         8TRNoZT5mW+P/p1V/B2x8iky/xL5DtD0L6WBiilMuOiJKAY/Me5BM7bRKumyAksmRn4f
         /3iA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678109347;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=wdQ6uUXw6eLlqKNPq8Dwry7lvb1Ttr+GrRVdC8+muhc=;
        b=0r/NdWddvb7ec+Ix6uOtS1UN+U3Wm9Ntkzb0b5rshUld/hs5MOeFpCo2iBNYEDxzhm
         R1I/b115f1xLqyTrwCEHOoVXWdHh4T6mrXKRrjj5w3HxEP4BSzVkRzhWzoSquWKRxPQT
         acF6DA9O/6elKhN66q+kQ9jdPDkHbM6d3UrjwkZnYkrEzF6HvCgz2KCF6siOeSCPo4Uy
         DzbfHPD7MeyQzmfNzWFlUHgW1og46vRQsTFlFmICDxx/bpiwD75PJHcyDRloGZDyslZD
         oJPe/bLmTpoz7z3U8xUnv1LoXr8Shko6mANAcyieDYzeyyRU+hNbCk1M7i+T8Q+5ziKx
         WcsQ==
X-Gm-Message-State: AO0yUKVTlhW8rtcxpEoE4teyJNWthcZ8437cTMNSL+MNpqwOhJlGB/tR
        yAcEYaGq1IcONC/2uMzi9gXYNTCFoME4iMCbzy4AKQ==
X-Google-Smtp-Source: AK7set+OiQbj6mLBs96xasjZbpT5NcfAb8pHkprzWfrKaEEsFheZ9Lhi42qtELHmboMFGuSw2/wd+NFyZSXiKZJmSfA=
X-Received: by 2002:a5b:38a:0:b0:ac9:cb97:bd0e with SMTP id
 k10-20020a5b038a000000b00ac9cb97bd0emr4934384ybp.5.1678109347288; Mon, 06 Mar
 2023 05:29:07 -0800 (PST)
MIME-Version: 1.0
References: <20230220023320.3499-1-clin@suse.com>
In-Reply-To: <20230220023320.3499-1-clin@suse.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Mon, 6 Mar 2023 14:28:56 +0100
Message-ID: <CACRpkdYknZo3Q7_CeSkOL2XwwAmKERskx24o-toaVy=rs0Yf5Q@mail.gmail.com>
Subject: Re: [PATCH v5 0/3] Add pinctrl support for S32 SoC family
To:     Chester Lin <clin@suse.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        =?UTF-8?Q?Andreas_F=C3=A4rber?= <afaerber@suse.de>, s32@nxp.com,
        linux-gpio@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Larisa Grigore <larisa.grigore@nxp.com>,
        Ghennadi Procopciuc <Ghennadi.Procopciuc@oss.nxp.com>,
        Andrei Stefanescu <andrei.stefanescu@nxp.com>,
        Radu Pirea <radu-nicolae.pirea@nxp.com>,
        Matthias Brugger <mbrugger@suse.com>
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

On Mon, Feb 20, 2023 at 3:33 AM Chester Lin <clin@suse.com> wrote:

> Here I want to introduce a new patch series, which aims to support IOMUX
> functions provided by SIUL2 [System Integration Unit Lite2] on S32 SoCs,
> such as S32G2. This series is originally from NXP's implementation on
> nxp-auto-linux repo[1] and it will be required by upstream kernel for
> supporting a variety of devices on S32 SoCs which need to config PINMUXs,
> such as PHYs and MAC controllers.
>
> Thanks,
> Chester
>
> Changes in v5:
> - dt-bindings: No change
> - driver:
>   - Refactor register r/w access based on REGMAP_MMIO and regmap APIs.
>   - Tag PM functions with '__maybe_unused'.
>   - Add mask check while parsing pin ID from a pinmux value.
>   - Simplify s32_pinconf_mscr_* functions.

This looks really good any no more comments arrived, so patches are applied
for v6.4!

Thanks for your work on this so far Chester! (I suppose there will be
maintenance
for this family going forward.)

Yours,
Linus Walleij
