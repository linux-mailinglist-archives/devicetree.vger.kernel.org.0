Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 42E4F5B8874
	for <lists+devicetree@lfdr.de>; Wed, 14 Sep 2022 14:43:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229744AbiINMnz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 14 Sep 2022 08:43:55 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38008 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229663AbiINMnx (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 14 Sep 2022 08:43:53 -0400
Received: from mail-ej1-x62c.google.com (mail-ej1-x62c.google.com [IPv6:2a00:1450:4864:20::62c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C77F675FFF
        for <devicetree@vger.kernel.org>; Wed, 14 Sep 2022 05:43:52 -0700 (PDT)
Received: by mail-ej1-x62c.google.com with SMTP id u9so34480408ejy.5
        for <devicetree@vger.kernel.org>; Wed, 14 Sep 2022 05:43:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20210112.gappssmtp.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date;
        bh=mgqw+6JpGXn2oifvzQVlVRMAL4x59CkZWm4PptgSgFk=;
        b=fVa4Ty+UkhM6eyVyz8m/FQl2wVTe94vkm2UAuMPeXqk2kvhGbi9GAU5q1ShPveFCZn
         Y++NRtsmc1f20iIFZZ1jtBAelomaavMORZ7kl661S2hDY2Ki22yd99XeiNU+hMQEsF26
         Ln9uS5aUrilbxCuv/oLwSqf+opxYiQfSkZeRaEXrwweq2TKKtGVw/Un182e4nemq5kcT
         JfpA0jPVg4RpMTyOE8AkuSHuTq2DQBydLaI2Q53HH4lNJi0bpVd7pyNI/kngC85VjiX+
         LB/1ka96RTB0//P+kPGd6+Rdu545gO1GB7WkbahmegUAs2GwUFLC0z7j2NXsp88vjzhl
         wb6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date;
        bh=mgqw+6JpGXn2oifvzQVlVRMAL4x59CkZWm4PptgSgFk=;
        b=GYgtt/wG48W9AwTWUvnP81EKPXcJ6mgjjBMmc9qgd6hzeC0WOatJSiRHNKS8dubCsF
         RuqyWRsQzWeg/z0WLytR/6eFgUGnPHfAVvmijtFVX/4V15SWFdCuOMgP47z9csDg75Sw
         ksTiAR5CPVH4YrsIiVksnVvtG5m2IgiNqnMd1/j+toPatLNgdUMXIlv0xZycgflT54Vz
         BGekyh6Imsog7thPSE0lX2t/GhULJMZ0evoYHEmojLzhoLdxC+37tVW/k/Li/zTvR6Kr
         7YhAiH1kiUMT/9jwQFhV9DAyRkJ/gik81VVgnb2T/VqioRhREbB54LZ5oha0J0B8W6nu
         QElw==
X-Gm-Message-State: ACgBeo1waX5hXKbI1pnA4J8uMnXNHazIqOwLGrE4s0B6+kwM10pA6SzU
        jqw3v5m5NgD7ZaFy4JZI5SVZWFs1bESLkw2Nu9qMSjpFiszN5g==
X-Google-Smtp-Source: AA6agR4aGz/CzCXBPA1eEHSbXj6QZOoC4n4RqZ/g4zieZlX6n+p/yT1Ft7+SAvQM3qQZZ8R1YS123Kdmx+ty0nhB+mQ=
X-Received: by 2002:a17:907:a0c6:b0:77d:7ad3:d05f with SMTP id
 hw6-20020a170907a0c600b0077d7ad3d05fmr10320261ejc.734.1663159431415; Wed, 14
 Sep 2022 05:43:51 -0700 (PDT)
MIME-Version: 1.0
References: <20220913155348.38716-1-martyn.welch@collabora.co.uk> <20220913155348.38716-2-martyn.welch@collabora.co.uk>
In-Reply-To: <20220913155348.38716-2-martyn.welch@collabora.co.uk>
From:   Bartosz Golaszewski <brgl@bgdev.pl>
Date:   Wed, 14 Sep 2022 14:43:40 +0200
Message-ID: <CAMRc=MdSsLfQDGHD0w5GwvYQMZWteY_vwbLB6Y=urVpzNhQJGA@mail.gmail.com>
Subject: Re: [PATCH v4 2/5] dt-bindings: gpio: pca95xx: add entry for pcal6534
 and PI4IOE5V6534Q
To:     Martyn Welch <martyn.welch@collabora.co.uk>
Cc:     Linus Walleij <linus.walleij@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Martyn Welch <martyn.welch@collabora.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Krzysztof Kozlowski <krzk@kernel.org>,
        linux-gpio@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Sep 13, 2022 at 5:54 PM Martyn Welch
<martyn.welch@collabora.co.uk> wrote:
>
> From: Martyn Welch <martyn.welch@collabora.com>
>
> The NXP PCAL6534 is a 34-bit I2C I/O expander similar to the PCAL6524. The
> Diodes PI4IOE5V6534Q is a functionally identical chip provided by Diodes
> Inc.
>
> Signed-off-by: Martyn Welch <martyn.welch@collabora.com>
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> Reviewed-by: Linus Walleij <linus.walleij@linaro.org>
> ---
>

Can you rebase this on top of my for-next branch[1]? We've had some
new models added and the patch no longer applies.

Bart

[1] git://git.kernel.org/pub/scm/linux/kernel/git/brgl/linux.git
