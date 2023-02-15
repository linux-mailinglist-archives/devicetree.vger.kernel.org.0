Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 97124697C30
	for <lists+devicetree@lfdr.de>; Wed, 15 Feb 2023 13:49:05 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231751AbjBOMtD (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 15 Feb 2023 07:49:03 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36252 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229677AbjBOMtC (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 15 Feb 2023 07:49:02 -0500
Received: from mail-pl1-x62d.google.com (mail-pl1-x62d.google.com [IPv6:2607:f8b0:4864:20::62d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9BACC360BD
        for <devicetree@vger.kernel.org>; Wed, 15 Feb 2023 04:49:01 -0800 (PST)
Received: by mail-pl1-x62d.google.com with SMTP id jk14so1512445plb.8
        for <devicetree@vger.kernel.org>; Wed, 15 Feb 2023 04:49:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1676465341;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=zJ4BUazyXS0K48fM6Er+hgNzJxPV4473C9yyzDZurhE=;
        b=DnpL/OJbs517pIJBv7UZkQPXuJR8Z2nfHPQPSGrgVEB3AgGXe2/9z+9pl6fRYuEKQM
         WUXCCVLCc7uOKfu6lT8/n27etN4D1EUA1S5awS7D9NnaxpLT3fHsB8AeSUaNPZTJ+rHF
         3Lq7mJgUAF44j3l1vtS++BCkZTin7RWVvctVr5/ejSMFlBostfi8WmjJFAo8t12fBQvz
         +1ZR7z5r4yy6pchXbNEZ0jeqZiHTPQNQu3omoRURf0W0Jj2VTXTJptKR6ZQNjR+Rwy+K
         qGTKHlG5fWbxis6XjSz4CJzknCwL/XpkLOHr6cinqtsRyEotQXxTotW8jO31FcB1DZvk
         wmFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1676465341;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=zJ4BUazyXS0K48fM6Er+hgNzJxPV4473C9yyzDZurhE=;
        b=VwjKwSLZx5yqLHo2BeELBMPoeITNfqZGakX1OUb4NR8KiGjOFgwbjCaWoHCpi3axXP
         cx0EEzgEvEJ2pjLniNRBN3AVLHUAbHh05Wz2LliX2So5bZ2zhX4h3qdYuGjwiOfDcgrH
         qV+BjfSb9mtacxWTCrGUUkIsKp8ZP0fNmJ22NR52Co1aD42zNbj5X17/jonhEjKZ3t8f
         TiL9bADNZQmI/zKUssbJw/zBAVS6/oklmWL6g62CRIrNK6QL32FHjLpc4PfJ6Mwf5A3y
         +QX853wVqo0nqIVmmrE76tTQMxRPtIUV9y6oa9z2EaSbZp7WjudKddi93CY739ac7sfw
         I34Q==
X-Gm-Message-State: AO0yUKXpKTaCoaHUCyBMdVyu3t4blabzUfX3CS6q+Tvduk0l0+CCTZZO
        VRq6uuBE6eVoxxFKK4vX9HS/Nf+jkdHhq3e5kEEWdA==
X-Google-Smtp-Source: AK7set+T7NKsh+QRbmcYjfUFAkz8tVhEKaLuhSPZ8VsL0cW+kM2Wy7wlgaC9MgBB5hg5VOCY6Tga4oo3jt03Pl9STMk=
X-Received: by 2002:a17:903:26d1:b0:199:15c2:99ae with SMTP id
 jg17-20020a17090326d100b0019915c299aemr469271plb.20.1676465341107; Wed, 15
 Feb 2023 04:49:01 -0800 (PST)
MIME-Version: 1.0
References: <15df9ef0-9b73-ca5a-d3cf-0585cd135bc5@gmail.com>
In-Reply-To: <15df9ef0-9b73-ca5a-d3cf-0585cd135bc5@gmail.com>
From:   Ulf Hansson <ulf.hansson@linaro.org>
Date:   Wed, 15 Feb 2023 13:48:24 +0100
Message-ID: <CAPDyKFroB-TULOeia4OyXBW6rWMs7e3_Fp4Uw878Q8Gt=TDfag@mail.gmail.com>
Subject: Re: [PATCH v2 0/3] mmc: support setting card detect interrupt from
 drivers and use it in meson-gx
To:     Heiner Kallweit <hkallweit1@gmail.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Kevin Hilman <khilman@baylibre.com>,
        Jerome Brunet <jbrunet@baylibre.com>,
        Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
        "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>,
        "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>,
        "open list:ARM/Amlogic Meson..." <linux-amlogic@lists.infradead.org>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>
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

On Tue, 14 Feb 2023 at 22:39, Heiner Kallweit <hkallweit1@gmail.com> wrote:
>
> On certain platforms like Amlogic Meson gpiod_to_irq() isn't supported
> due to the design of gpio / interrupt controller. Therefore provide an
> option for drivers to pass the card detect interrupt number
> (retrieved e.g. from device tree) to mmc core.
>
> v2:
> - use another mechanism for passing and storing the cd interrupt
> - add patch 2
>
> Heiner Kallweit (3):
>   mmc: core: support setting card detect interrupt from drivers
>   dt-bindings: mmc: meson-gx: support specifying cd interrupt
>   mmc: meson-gx: support platform interrupt as card detect interrupt
>
>  .../bindings/mmc/amlogic,meson-gx-mmc.yaml      |  2 +-
>  drivers/mmc/core/slot-gpio.c                    | 17 ++++++++++++++++-
>  drivers/mmc/host/meson-gx-mmc.c                 |  5 ++++-
>  include/linux/mmc/slot-gpio.h                   |  1 +
>  4 files changed, 22 insertions(+), 3 deletions(-)
>

Applied for next, thanks!

Kind regards
Uffe
