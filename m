Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 85C48387C36
	for <lists+devicetree@lfdr.de>; Tue, 18 May 2021 17:17:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1343962AbhERPSZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 18 May 2021 11:18:25 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38046 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1343775AbhERPSZ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 18 May 2021 11:18:25 -0400
Received: from mail-wm1-x336.google.com (mail-wm1-x336.google.com [IPv6:2a00:1450:4864:20::336])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5CBACC061756
        for <devicetree@vger.kernel.org>; Tue, 18 May 2021 08:17:07 -0700 (PDT)
Received: by mail-wm1-x336.google.com with SMTP id o127so5630587wmo.4
        for <devicetree@vger.kernel.org>; Tue, 18 May 2021 08:17:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=5XLrgKcPuW2RG/QFYOJNs7m0wLKHrRqbQaYGQgA+6jA=;
        b=g4AInn37TKs+rHdDQiuIinOGabpILvy3qmlYk+SMzlruGluvo8uixEh+z7/Q3IlxwY
         J8L5kcP7Gg98g4ZrWIWmypriG/Euzb3ff9fJQPZc9XT+wIJbxSkZNuyFiGdkFnLR6B35
         cgymxAK/Td0s0WPtICoFOWX81nwn5sj8kgCgtv2CX2RjZS8L0H2VrEbdJUBU1kKXRpOp
         AJB6rXjYYdG/xFrZ8cLcTjN/3EiHBgcFYjUG+bwSdaAfYDuk8jTyMsDy0aD+kpUfTVgL
         /yhKhKpOitAziTeotUeLd2dos6v9vz8Tiz78it7ANeOA6LJutPEZa9uHYmM9VrgGHGCK
         /LKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=5XLrgKcPuW2RG/QFYOJNs7m0wLKHrRqbQaYGQgA+6jA=;
        b=mJEVAt4FIL2g6iFuYzAbfFdkLMAfI6/QKC/c8YKU3T8dEFekCJS35Uq2aPxmv2STiG
         FEIz0RH56wtxYyw4W8vo775ew4ONYMlBqEUOFcSbGLLlGCprx7rRQLaVexBaa8f6aU8r
         3sF0c4t41zve5bPOm40WFnYjobaPGNLOpNyexnyAgM1we2/Usnr7wzAUxAyq0tKp23QB
         BZcdxZSwgq3O1jeuV3yo2eRVd9LmkfdOBSfwrEuefgK85Hivwi6kTrmWMo5f7evO8wns
         Lsu5KWwuBed1C0p6UxFNEUdMEAJZ4DQnBTsQUIg3BK+2nOVO+c8OsyHxGGoVhM9uqIMc
         dSKw==
X-Gm-Message-State: AOAM533UOHl2+MhG1aMZoxVjJEXiHkUu6wZ9t+oXq31Ow7fNw7Alsf98
        vjA3a3iBpBy7XcsrC+09ijqdBA==
X-Google-Smtp-Source: ABdhPJz9tQZ2SLQ0Asp0Uyces/FpCqs/O53si9jg9n0aLuVZ+a18Wfv+jVeWz87PqJ4uQIK8K0pFXA==
X-Received: by 2002:a7b:c778:: with SMTP id x24mr5463476wmk.23.1621351025895;
        Tue, 18 May 2021 08:17:05 -0700 (PDT)
Received: from localhost.localdomain (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.googlemail.com with ESMTPSA id z9sm18005808wmi.17.2021.05.18.08.17.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 18 May 2021 08:17:05 -0700 (PDT)
From:   Corentin Labbe <clabbe@baylibre.com>
To:     davem@davemloft.net, herbert@gondor.apana.org.au,
        linus.walleij@linaro.org, linux@armlinux.org.uk,
        robh+dt@kernel.org, ulli.kroll@googlemail.com
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-crypto@vger.kernel.org, linux-kernel@vger.kernel.org,
        Corentin Labbe <clabbe@baylibre.com>
Subject: [PATCH 0/5] crypto: add gemini/sl3516 crypto driver
Date:   Tue, 18 May 2021 15:16:50 +0000
Message-Id: <20210518151655.125153-1-clabbe@baylibre.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The gemini SL3516 SoC has a crypto IP.
This serie had support for it.

Corentin Labbe (5):
  db-dinding: crypto: Add DT bindings documentation for sl3516-ce
  crypto: Add sl3516 crypto engine
  ARM: dts: gemini: add crypto node
  ARM: gemini_config: enable sl3516-ce crypto
  MAINTAINERS: add gemini crypto sl3516-ce

 .../crypto/cortina,sl3516-crypto.yaml         |  50 ++
 MAINTAINERS                                   |   7 +
 arch/arm/boot/dts/gemini.dtsi                 |   8 +
 arch/arm/configs/gemini_defconfig             |   1 +
 drivers/crypto/Kconfig                        |  19 +
 drivers/crypto/Makefile                       |   1 +
 drivers/crypto/gemini/Makefile                |   2 +
 drivers/crypto/gemini/sl3516-ce-cipher.c      | 388 +++++++++++++
 drivers/crypto/gemini/sl3516-ce-core.c        | 535 ++++++++++++++++++
 drivers/crypto/gemini/sl3516-ce-rng.c         |  61 ++
 drivers/crypto/gemini/sl3516-ce.h             | 349 ++++++++++++
 11 files changed, 1421 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/crypto/cortina,sl3516-crypto.yaml
 create mode 100644 drivers/crypto/gemini/Makefile
 create mode 100644 drivers/crypto/gemini/sl3516-ce-cipher.c
 create mode 100644 drivers/crypto/gemini/sl3516-ce-core.c
 create mode 100644 drivers/crypto/gemini/sl3516-ce-rng.c
 create mode 100644 drivers/crypto/gemini/sl3516-ce.h

-- 
2.26.3

