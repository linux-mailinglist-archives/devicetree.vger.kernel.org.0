Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4B18767F00E
	for <lists+devicetree@lfdr.de>; Fri, 27 Jan 2023 22:00:28 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230516AbjA0VA0 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 27 Jan 2023 16:00:26 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59710 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229933AbjA0VAZ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 27 Jan 2023 16:00:25 -0500
Received: from mail-ej1-x62b.google.com (mail-ej1-x62b.google.com [IPv6:2a00:1450:4864:20::62b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0E7B478ACF
        for <devicetree@vger.kernel.org>; Fri, 27 Jan 2023 13:00:25 -0800 (PST)
Received: by mail-ej1-x62b.google.com with SMTP id vw16so16876505ejc.12
        for <devicetree@vger.kernel.org>; Fri, 27 Jan 2023 13:00:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=djfs4PGRa1CvWKMLKsAcAD0oTIU9m9WrTGUWf83xgvI=;
        b=Mlt+GejfxFYxZRl4TgvhYecgrJ7r2Z/6dau1C24sH4c46kceboL/nH+nWnN6RlgrFJ
         VB8FfyGN8cGJ2t9ZGriQMRFP7KJZbMs6nGXCO4GLPzCeQhqOW9ryzkFfeUz1z+hYlju9
         wnFbobDIj1inUwhY6JmubqeuqazZ8/UdoGrfEUPS8iv7h/lay3vPdX5+KY8T6QfRUlT9
         /YZFl6vckk81awOTrHMUrS6VlQkVVcf6hOUuyMzrfkdOCJr/Cx/y6AyFPYhSSrDSvfZ5
         67kGKmZ3clK9LS8mlz+sCvvhUlojrnyWwpMs64/CMIPbtRnsfBraSAi7BqKRTfF3tKOZ
         TFww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=djfs4PGRa1CvWKMLKsAcAD0oTIU9m9WrTGUWf83xgvI=;
        b=st22X4PCE+R2z5gwEeBF2plclnNqet3+is4LrAnKLudAid4UlcyHMXEFNUss7D7cg6
         0kV27rR1yAWPxjSwlqujVbk3dOJAKmVovlfIzRF+xzK3A0zgHe9kmI8TL1Y6QjDpJl11
         C6TuPpwKuNxujzW3kAIX4OjJnc7tg064ySa1UraaiA8ja1igN7cnprPLLtoAiCx6jgxw
         RI92J9WMK/odc/KfaFlOpB8dShSupexF0r2PHrVwcEcVkFMCZcDSHBND+sGn0L17/gEf
         Yo3nD2YnPxJUJE9c+9oaDk/g1t8SnZiuemeCrN/Zs3+7nY3KSOs1OQEIq5DnpkqDNJGm
         dJ8Q==
X-Gm-Message-State: AO0yUKU8CZAjsZK5PlaQon2O77NP9q3Rn/pCLebxdifsVC13Et5lZcW/
        OaBUzxw8+aZnzZnnYe5LTw7BGK60vnhG5Q==
X-Google-Smtp-Source: AK7set9mMQd5iBzzeDEzNyKR84lEscSavBnXhcfmZFSjVpVHw7P6HLc90KeABnq34XLhOwJnQtSZqA==
X-Received: by 2002:a17:907:3e90:b0:87b:dacb:f0a4 with SMTP id hs16-20020a1709073e9000b0087bdacbf0a4mr3910174ejc.62.1674853223478;
        Fri, 27 Jan 2023 13:00:23 -0800 (PST)
Received: from jernej-laptop.localnet (82-149-19-102.dynamic.telemach.net. [82.149.19.102])
        by smtp.gmail.com with ESMTPSA id t17-20020aa7d711000000b0049dc0123f29sm2876394edq.61.2023.01.27.13.00.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Jan 2023 13:00:22 -0800 (PST)
From:   Jernej =?utf-8?B?xaBrcmFiZWM=?= <jernej.skrabec@gmail.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Chen-Yu Tsai <wens@csie.org>,
        Samuel Holland <samuel@sholland.org>,
        Andre Przywara <andre.przywara@arm.com>
Cc:     linux-sunxi@lists.linux.dev, linux-arm-kernel@lists.infradead.org,
        devicetree@vger.kernel.org
Subject: Re: [PATCH] ARM: dts: sun8i: a83t: bananapi-m3: describe SATA disk regulator
Date:   Fri, 27 Jan 2023 22:00:19 +0100
Message-ID: <5899301.lOV4Wx5bFT@jernej-laptop>
In-Reply-To: <20230120012616.30960-1-andre.przywara@arm.com>
References: <20230120012616.30960-1-andre.przywara@arm.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Dne petek, 20. januar 2023 ob 02:26:16 CET je Andre Przywara napisal(a):
> The Bananapi-M3 has a SATA connector, driven by a USB-to-SATA bridge
> soldered on the board. The power for the SATA device is provided by a
> GPIO controlled regulator. Since the SATA device is behind USB, it has
> no DT node, so we never described this regulator. Instead U-Boot was
> turning this on in a rather hackish way, which we now want to get rid of.
> On top of that it seems fragile to leave this GPIO undescribed, as
> userland could claim it and turn the disk off.
> 
> Add a fixed regulator, controlled by the PD25 GPIO, and mark it as
> always-on. This would mimic the current situation, but in a safer way,
> and would allow U-Boot to drop the CONFIG_SATAPWR enable hack.
> 
> Signed-off-by: Andre Przywara <andre.przywara@arm.com>

Applied, thanks!

Best regards,
Jernej


