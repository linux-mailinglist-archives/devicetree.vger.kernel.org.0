Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id EBC006911E4
	for <lists+devicetree@lfdr.de>; Thu,  9 Feb 2023 21:09:40 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229634AbjBIUJj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 9 Feb 2023 15:09:39 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53162 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229602AbjBIUJi (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 9 Feb 2023 15:09:38 -0500
Received: from mail-wr1-x42e.google.com (mail-wr1-x42e.google.com [IPv6:2a00:1450:4864:20::42e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 89D5B15568
        for <devicetree@vger.kernel.org>; Thu,  9 Feb 2023 12:09:28 -0800 (PST)
Received: by mail-wr1-x42e.google.com with SMTP id ba1so3001378wrb.5
        for <devicetree@vger.kernel.org>; Thu, 09 Feb 2023 12:09:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:subject:from:cc:to:content-language
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ivRUe9zls1JZIzyc5R+BpzslXzUdcr2xi24o8k2S5k4=;
        b=OEBKzLwTS6oBpGKL+HM53KbzdkGPWvgNA/DiOObQt16SJE5OzQ9YzoXgvGzxQU9hkM
         S57BdE24DNEKZUGFoZrZwo534r/oleDBMFqa9udB+7WCj618EOCM8yXY00pjovh8EglC
         YHSFNMV7CL7ryIaKPTFB7WYfU7ao+LbYX8MmGu+1zktH94O8ELhDkFyh566u4ILcdW7y
         wfgX5igA89Znq4BxTZN3NuuzIg39cgmHXujlkjOUxxvgiUdgEzGRfrifkBggGxTxOxev
         UfB9b1luvLkfjM70xSgClJyZQplphsWxWIK7m9HvHyea0lrJOm6F6XX3pKiLCcZDGLR+
         ZOAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:subject:from:cc:to:content-language
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=ivRUe9zls1JZIzyc5R+BpzslXzUdcr2xi24o8k2S5k4=;
        b=PRy1hMR0EpWIDYbKrbgL+PD9y8tk1BTK+t3dVx+xFtOa14SunyrDEr1GqU2vB6K1Ll
         6WPvbktZf5Alyvda5WNn5s9IYnheFKz4BszVAapE7O5gZH5flyaxhZFO/MmxxqKk7wbe
         ZZISZVpLOnVRq304uqvNwNLtLKdtsfgJOwrJuzvv+nA+EK4b2kr3xQ5lAK3lH6KP8HGb
         BizLxwVe2o00krEAcZ9KFUmHTg/oX3cxIavs5Ed/NcDKQAKynqdbNdG3o1tQc6gGWL3V
         nhstohZ/Ut86VFILwgF6px3bKP1DYwl392/hhsxahGuELb8K0MuzSzwQv8M47gjQeuP0
         omkg==
X-Gm-Message-State: AO0yUKUd/MvzcOFBi0Ao3J92xO+aqu1lo7cxMweQaiTEqfZHpQ06cXus
        raqDdXGIldNFAYavTnZDOBA=
X-Google-Smtp-Source: AK7set87nmOwJrTeYysHyQMijn98Hi07IKrg5T4D3ytrT20sGWygUYA78XeJO8D1Id/wuzK6KBxcow==
X-Received: by 2002:a05:6000:12cb:b0:2c3:ea6a:74d3 with SMTP id l11-20020a05600012cb00b002c3ea6a74d3mr11934914wrx.23.1675973366919;
        Thu, 09 Feb 2023 12:09:26 -0800 (PST)
Received: from ?IPV6:2a01:c23:c4df:e300:c146:1250:ead2:43ad? (dynamic-2a01-0c23-c4df-e300-c146-1250-ead2-43ad.c23.pool.telefonica.de. [2a01:c23:c4df:e300:c146:1250:ead2:43ad])
        by smtp.googlemail.com with ESMTPSA id d14-20020adff2ce000000b002bc7fcf08ddsm1939537wrp.103.2023.02.09.12.09.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 09 Feb 2023 12:09:26 -0800 (PST)
Message-ID: <8a99341b-8546-8f90-c9a5-087d927cac48@gmail.com>
Date:   Thu, 9 Feb 2023 21:09:25 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.2
Content-Language: en-US
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Kevin Hilman <khilman@baylibre.com>,
        Jerome Brunet <jbrunet@baylibre.com>,
        Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Cc:     "open list:ARM/Amlogic Meson..." <linux-amlogic@lists.infradead.org>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>,
        Nan Li <nan.li@amlogic.com>,
        Vyacheslav Bocharov <adeep@lexina.in>
From:   Heiner Kallweit <hkallweit1@gmail.com>
Subject: [PATCH 0/3] arm64: dts: amlogic: Make mmc host controller interrupts
 level-sensitive
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-1.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The usage of edge-triggered interrupts lead to lost interrupts under load,
see [0]. This was confirmed to be fixed by using level-triggered
interrupts.
The report was about SDIO. However, as the host controller is the same
for SD and MMC, apply the change to all mmc controller instances.

[0] https://www.spinics.net/lists/linux-mmc/msg73991.html

This series replaces the prior "TEST"-annotated patch.

Heiner Kallweit (3):
  arm64: dts: meson-axg: Make mmc host controller interrupts
    level-sensitive
  arm64: dts: meson-g12-common: Make mmc host controller interrupts
    level-sensitive
  arm64: dts: meson-gx: Make mmc host controller interrupts
    level-sensitive

 arch/arm64/boot/dts/amlogic/meson-axg.dtsi        | 4 ++--
 arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi | 6 +++---
 arch/arm64/boot/dts/amlogic/meson-gx.dtsi         | 6 +++---
 3 files changed, 8 insertions(+), 8 deletions(-)

-- 
2.39.1

