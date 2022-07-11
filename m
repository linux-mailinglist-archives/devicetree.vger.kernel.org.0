Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2B28456D8E2
	for <lists+devicetree@lfdr.de>; Mon, 11 Jul 2022 10:52:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229908AbiGKIwq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 11 Jul 2022 04:52:46 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33626 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230526AbiGKIw2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 11 Jul 2022 04:52:28 -0400
Received: from mail-yb1-xb33.google.com (mail-yb1-xb33.google.com [IPv6:2607:f8b0:4864:20::b33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E7E9F21801
        for <devicetree@vger.kernel.org>; Mon, 11 Jul 2022 01:51:45 -0700 (PDT)
Received: by mail-yb1-xb33.google.com with SMTP id i14so7665196yba.1
        for <devicetree@vger.kernel.org>; Mon, 11 Jul 2022 01:51:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=oCCoYwA6Xo79naahfzsaqUYKymVR7vZ6x0VBH0fAwSY=;
        b=KgEpwlYUjIxPqeS0n1sMwZBjNPdUGNT7O1KFsaFMxULZXFtpTO8+uI9BZEYUHrRhui
         E8xp9H6xkVf85Kf+anAroUSLxAlLsdeaVP2oe4C+cKgVUzFx6MCdlLLx7bOR7BNP56r7
         6d/FTvKCyYdFWnq1/TuI1gsqcnK8xJnCad9oEVp29nzWHRCXGkkLTSPVPt/MS17Rabch
         Z9wmqlW1fjc6VOog/E8ERKDe85VDa7RWtdBRtKIH5ROz2fSdJ+qFoVAI+mBOMsqqgtg6
         3miyB9HB0oSt8v7XQU9TwU/2IPoP/O42NWPtN5K/wHbkaRMbQghXlLtD+PEysiATUfJt
         aziQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=oCCoYwA6Xo79naahfzsaqUYKymVR7vZ6x0VBH0fAwSY=;
        b=YbmrWoiEKYPhoZaWMpZkk4jI0XlxjFZd7a9ZXFz/fSzZFf9g1UqQ4t3Wy6tByHn3fG
         C30fMITC0/DYtKIV8Pdia7tcvWIWsy5Aq46/vO6RiGG+Cg7N2hHOIjc+48vWZOqfX/Mc
         XIIIW+CWmuzKUDJI4Rqz95VfElxRLz15xr9kzTDcrGHTMKuF5H+/jpObVdCCjCRh1Kod
         lXH4F5zRQKwo9ZWxiBLsSZOl40fZErVT9Xe/cyWjGqao0m+NWt9nRQq7Hhrlop9SDRXx
         uILSyEnD1xpJjYATBdYDNemmkIllXSo0+MVBi0IWLyQkvZUK6hVi6cTbWxKkD2jkJ6Cr
         SE1g==
X-Gm-Message-State: AJIora8u73eDCnhOWwQYrDh/wnXd02f5nLLTs5R6RVPdXCne4OxlxJSN
        cIqDVTKsSv1os2gPa0Reod50z42iWhlevxQpexPxuA==
X-Google-Smtp-Source: AGRyM1uKbHI7q/R1gcPw/USyJqnRHCFtiAlgKUxoTaKXXMmcR+q5YmNfBJ71fCB3vqnDWcXf+Df9409dWttXpSjB83I=
X-Received: by 2002:a25:d07:0:b0:66e:6c0e:a2d1 with SMTP id
 7-20020a250d07000000b0066e6c0ea2d1mr14553827ybn.369.1657529504905; Mon, 11
 Jul 2022 01:51:44 -0700 (PDT)
MIME-Version: 1.0
References: <20220708105235.3983266-1-andre.przywara@arm.com>
In-Reply-To: <20220708105235.3983266-1-andre.przywara@arm.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Mon, 11 Jul 2022 10:51:33 +0200
Message-ID: <CACRpkdYPgFeVJurZyPnWQg2jQGvBSybrNxWDXBF4W32p_HD1_Q@mail.gmail.com>
Subject: Re: [PATCH v13 0/7] arm64: sunxi: Allwinner H616 SoC DT support
To:     Andre Przywara <andre.przywara@arm.com>
Cc:     Chen-Yu Tsai <wens@csie.org>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        Samuel Holland <samuel@sholland.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-sunxi@lists.linux.dev, linux-kernel@vger.kernel.org
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

On Fri, Jul 8, 2022 at 12:52 PM Andre Przywara <andre.przywara@arm.com> wrote:

> only some minor changes this time in the .dtsi, addressing the comments,
> many thanks to Jernej and Samuel for that! Also adding the R-b tags.

> Andre Przywara (7):
>   dt-bindings: pinctrl: sunxi: Make interrupts optional
>   dt-bindings: pinctrl: sunxi: allow vcc-pi-supply

These two (patches 2 & 4) applied to the pinctrl tree, I suppose it
is what I'm supposed to do?

If they end up also applied to the SoC tree it's not the end of the
world.

Yours,
Linus Walleij
