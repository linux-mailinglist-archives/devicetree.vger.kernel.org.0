Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 343EB631859
	for <lists+devicetree@lfdr.de>; Mon, 21 Nov 2022 02:55:19 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229903AbiKUBzR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 20 Nov 2022 20:55:17 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34974 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229905AbiKUBzM (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 20 Nov 2022 20:55:12 -0500
Received: from mail-ej1-x634.google.com (mail-ej1-x634.google.com [IPv6:2a00:1450:4864:20::634])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4A3E230F7C
        for <devicetree@vger.kernel.org>; Sun, 20 Nov 2022 17:55:08 -0800 (PST)
Received: by mail-ej1-x634.google.com with SMTP id f27so25438601eje.1
        for <devicetree@vger.kernel.org>; Sun, 20 Nov 2022 17:55:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=gAysW166qthpFtRZ9EW6Y4KLPHdWslBVungLYLisyNA=;
        b=ZRBRWoq45blSrBIsZeUEcGgKoTyiBsBgIbXIx9gBoRXZ3isfHzKRuMWAbHxfMZ8Ria
         i54KoxOXJgcZuR8kWiDXANkBtc+D/hKUrwzPYAgFY6v0H/pNeGBmon0e61yaqt8dLCUE
         7xjjino+23/7fckPFV+kZ4ZY3/cuWFTqAXQXka6YpIjKd1mL8MFeZGe9HDi2tX5nxlpW
         TA/xPPa/OTtGS/rfl4nvqC3t9lLHhE15qs2/KT1z4m0LWJ2lvwntAH3ez/CsVT3hpmVP
         pTNjzUL2GEyzASGG4cdhrihanSEjbkGw64DH875rnxT0t60KpikVel093FHWvLZlJtpn
         GQjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=gAysW166qthpFtRZ9EW6Y4KLPHdWslBVungLYLisyNA=;
        b=onBNf5V/l7olUMT12IB0brvTGKegyia28dxUKjRHmVkvtLS24SzNGViUa0Y2rmjfMt
         +x8wvTMUvVzeAQyrKYPBlt3DsAnUVILQnd2s9fMHmm8FcrNNMAVy/QaMt47CGB+1ytY+
         9/WPwRhNG/QI+wmR6nzGeaTOqrFBguVeNgnNBQ2MGKle/hFkS046yn9G1k1n24KN4Jck
         TA/kLZ1EU8ZqWzmV3wCaMcyKBU3sWxAlgG/J+aBPsDL75Uje6DF8qyL8MyzQxfvy+f85
         XFvZGW91D0fb+mStEMS4WmzdXP4uNYLbZCLyUYdkVNnkEBR77ZL/KNFB1ZJP9TOd8bEA
         6Blw==
X-Gm-Message-State: ANoB5plGn6oHaV9rSdNLTRXUf3g7ZFVi7vt8/JYNW6eArAIIAnsqvbU1
        BGa9pP9Z33j3CoJwboGHXqO3lvw1ccnxvC1e
X-Google-Smtp-Source: AA0mqf42ju9Ig9HbCEQ5Tf/VyWWVHTWoYqPNy4F1KF/X0xBB0zr44Zdgv5HAUw2wXJEHDsc4lmFxWA==
X-Received: by 2002:a17:906:34d0:b0:78d:c16e:dfc9 with SMTP id h16-20020a17090634d000b0078dc16edfc9mr13749226ejb.327.1668995706654;
        Sun, 20 Nov 2022 17:55:06 -0800 (PST)
Received: from c64.fritz.box ([2a01:2a8:8108:8301:7643:bec8:f62b:b074])
        by smtp.gmail.com with ESMTPSA id g2-20020a170906538200b00782e3cf7277sm4415513ejo.120.2022.11.20.17.55.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 20 Nov 2022 17:55:06 -0800 (PST)
From:   =?UTF-8?q?Bernhard=20Rosenkr=C3=A4nzer?= <bero@baylibre.com>
To:     devicetree@vger.kernel.org
Cc:     linux-mediatek@lists.infradead.org,
        linux-stm32@st-md-mailman.stormreply.com,
        linux-arm-kernel@lists.infradead.org,
        krzysztof.kozlowski@linaro.org, khilman@baylibre.com,
        mcoquelin.stm32@gmail.com, alexandre.torgue@foss.st.com,
        matthias.bgg@gmail.com
Subject: [PATCH 0/9] Remove the pins-are-numbered DT property
Date:   Mon, 21 Nov 2022 02:54:42 +0100
Message-Id: <20221121015451.2471196-1-bero@baylibre.com>
X-Mailer: git-send-email 2.38.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

During the review of my MT8365 support patchset
(https://lore.kernel.org/linux-mediatek/20221117210356.3178578-1-bero@baylibre.com/),
the issue of the "pins-are-numbered" DeviceTree property has come up.

This property is unique to Mediatek MT65xx and STM32 pinctrls, and
doesn't seem to serve any purpose (both the Mediatek and STM32 drivers
simply refuse to deal with a device unless pins-are-numbered is set to
true).

There is no other use of this property in the kernel or in other projects
using DeviceTrees (checked u-boot and FreeBSD -- in both of those, the
flag is present in Mediatek and STM devicetrees, but not used anywhere).

There is also no known use in userspace (in fact, a userland application
relying on the property would be broken because it would get true on
any Mediatek or STM chipset and false on all others, even though other
chipsets use numbered pins).

This patchset removes all uses of pins-are-numbered.


