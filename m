Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2531968ACD6
	for <lists+devicetree@lfdr.de>; Sat,  4 Feb 2023 23:17:24 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231953AbjBDWRW (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 4 Feb 2023 17:17:22 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48672 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230403AbjBDWRV (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 4 Feb 2023 17:17:21 -0500
Received: from mail-ed1-x532.google.com (mail-ed1-x532.google.com [IPv6:2a00:1450:4864:20::532])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9676F1554E
        for <devicetree@vger.kernel.org>; Sat,  4 Feb 2023 14:17:20 -0800 (PST)
Received: by mail-ed1-x532.google.com with SMTP id eq11so8321783edb.6
        for <devicetree@vger.kernel.org>; Sat, 04 Feb 2023 14:17:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlemail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=F0IsnY434H1bb3KX3be4w9cXTO2TYiUaYL3dbmJeKJk=;
        b=T0c5YXFvRx1vpTqoJwrX+lOIoz8r3T+6uV5igAhMjirHyYWnj8bcP0JNd1rbwtaXpp
         BNNiK6w0fzk6KwqlhBuvpkunHxhggCTxtYRQbFmTNpCWUmAOQKYfZMBg7Fg7HKP/byX7
         B1IQG+5S5QDZBCGJzMgvkAirxTuUmVcrHtuHmrntpjltDNSxSoIAtuw8TidGE45bvxh7
         ld2UVA/mT3taVXnd+QV1OQAtzQdX6is1TRLteW6MIZ815HMAfKjKbRNbWlLaQYrSvOOb
         8/FsHHE0UDj6nSPP1T+SG5bJwWupAMTIbmtkBT2P6TPVbijK6Lhu0yOGdO5yYtGw0KTb
         clpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=F0IsnY434H1bb3KX3be4w9cXTO2TYiUaYL3dbmJeKJk=;
        b=cUzR2YMCfbzbJPdJBsc7xvbvgrD2D+LjaWxDFL7GQFnyyCSSvrbf3H7LUUgMTuOB7z
         7s14C1LO9JBAdPLjlnCBqBugdKGX90YzkYdI7AVkavnXjQR6Sxy91GmJmrUZUcLGhHRd
         GkrfCO7IxGp+OS0BtM6I1hsDA5FxofEipuxltCFrfZMqLv9QmGrXj0pH8rb0ZpgS1KOb
         xL7S5kNseYwLzTr+eX61G2gwaEfHWy97yyjDhBHMtDMQ5/Psi9bbMEkCBiGC4MRCPhUq
         uyN3NuOuLvHQVFqe2UkujvunoO4WAoMIa8uPvRN6R1GyoRBSOMZaM0qnzffuP0EUovOv
         Oh7g==
X-Gm-Message-State: AO0yUKXXR05ygGxyGY3MunQht0w5bbItjXTKVbfmHceaOlqCNea8Xo9L
        N6DCybVLXd9K1KJxPSRHtQRY+TYrfotUu9j5p1M=
X-Google-Smtp-Source: AK7set/X/SXpCdNhJkSTiGbv3L6emI554Lhew5OuuV0if7GwWNeDdkzLG0WHhMzb2Oixg/MUcLZ2w3IGdCuHJmbe8q8=
X-Received: by 2002:a05:6402:1110:b0:48e:b978:cf63 with SMTP id
 u16-20020a056402111000b0048eb978cf63mr3865673edv.57.1675549038982; Sat, 04
 Feb 2023 14:17:18 -0800 (PST)
MIME-Version: 1.0
References: <d9721029-780e-09f1-0207-72d3897032a4@gmail.com>
In-Reply-To: <d9721029-780e-09f1-0207-72d3897032a4@gmail.com>
From:   Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date:   Sat, 4 Feb 2023 23:17:08 +0100
Message-ID: <CAFBinCAuKT3Sv-MhaWnm2aoDJLOWy2OGGm4brp3RhOaP11uzsw@mail.gmail.com>
Subject: Re: [PATCH v2] arm64: dts: amlogic: Make mmc host controller
 interrupts level-sensitive
To:     Heiner Kallweit <hkallweit1@gmail.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Kevin Hilman <khilman@baylibre.com>,
        Jerome Brunet <jbrunet@baylibre.com>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>,
        "open list:ARM/Amlogic Meson..." <linux-amlogic@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Jan 26, 2023 at 3:03 PM Heiner Kallweit <hkallweit1@gmail.com> wrote:
>
> The usage of edge-triggered interrupts lead to lost interrupts under load,
> see [0]. This was confirmed to be fixed by using level-triggered
> interrupts.
> The report was about SDIO. However, as the host controller is the same
> for SD and MMC, apply the change to all mmc controller instances.
>
> [0] https://www.spinics.net/lists/linux-mmc/msg73991.html
>
> Fixes: 1499218c80c9 ("arm64: dts: move common G12A & G12B modes to meson-g12-common.dtsi")
> Reported-by: Peter Suti <peter.suti@streamunlimited.com>
> Tested-by: Peter Suti <peter.suti@streamunlimited.com>
> Cc: stable@vger.kernel.org
> Signed-off-by: Heiner Kallweit <hkallweit1@gmail.com>
Tested-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>

Thanks Heiner!
This fixes the rtw88 SDIO wifi card for me on my SM1 SoC based X96 Air
(Gbit variant) after commit 066ecde6d826 ("mmc: meson-gx: add SDIO
interrupt support")


Best regards,
Martin
