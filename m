Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id AC3793AD3F5
	for <lists+devicetree@lfdr.de>; Fri, 18 Jun 2021 22:55:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234249AbhFRU5x (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 18 Jun 2021 16:57:53 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48198 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234250AbhFRU5w (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 18 Jun 2021 16:57:52 -0400
Received: from mail-wr1-x434.google.com (mail-wr1-x434.google.com [IPv6:2a00:1450:4864:20::434])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0FC6BC061574
        for <devicetree@vger.kernel.org>; Fri, 18 Jun 2021 13:55:42 -0700 (PDT)
Received: by mail-wr1-x434.google.com with SMTP id n7so12127108wri.3
        for <devicetree@vger.kernel.org>; Fri, 18 Jun 2021 13:55:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=qLy32YRyoZ5czfNPvX937n5z68mS5Dt/8atvgtKFvwQ=;
        b=o/CxikdrQRF61Z372ZRwM8wBTTiCxbifjXJIC3UGwCkgtcL13kW7xV0v/vTJs2Sr3F
         vlPtDKAg8kJYDqOmDjgxNdAFaCR04GmBfkXNUhPrev9TOHVMZeL2+Wfov/QhfOVKLFOG
         jegTkNUcslewWDomJoVX0T5ZLe11r3JNKcolewJTcbOv3wd/6iWA2vA/rjaZhwb41Szx
         DioqP02R44mK7ygcc3qEswJDNyUigoT/UOHVudcQEn0rfOEvffu5wczNPas/qR+79Svl
         BmP/XDKP2/FnlaZ7ShvOX9ZXNhkXWdEbRYqVl2JDUslwtDVdmgSvGyWu1DVzK3CtcCat
         P4NA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=qLy32YRyoZ5czfNPvX937n5z68mS5Dt/8atvgtKFvwQ=;
        b=iRk7kuFG+LW8wXlV8CSJdmjRqjiLzywXgie//fsUBIwA/LHz+Lp6LwOD7xP9AjY2Eg
         vYWpZzrb7DlRn0RB44x/VJUeLIcEp0CO9xkxz+2+k12/pTCu/HYKCEsLKUHWd0uONLhN
         JUTk8e4rzhy3+kaaTSRsa/1/AeklaZM3SNEGgQkabH3OyH3izcdFjdsRVzdTkCgPaZil
         Vgqc3mc5TfmhWGWjSgmx7MYeVLLJTTa1S56kIN0pNNQ/sZU8EYfj2pGveXXeIrYlI+Kx
         n4wOIn/I0ZW0AKBcKW/MXRaHL9jwfsKXizXtCoAmZ/d+BnoaGY2iyBbtdwnqFOpB67oN
         t47A==
X-Gm-Message-State: AOAM531KlNCmbI3K/yX3znwUjWzbMKQTlaoSkOOlJcm7o9TJAQVL72Rk
        tblCSRFiTpYWEPM7pjbmmzjHvA==
X-Google-Smtp-Source: ABdhPJwvWUKDVSAk9UEA2yUXUvp1Q8PkiE4s34baCHlp7pzILntItWvnWGhPX6sz0+OyVzlYwdJe+g==
X-Received: by 2002:adf:ee52:: with SMTP id w18mr14828957wro.37.1624049740671;
        Fri, 18 Jun 2021 13:55:40 -0700 (PDT)
Received: from localhost.localdomain (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.googlemail.com with ESMTPSA id j12sm9745476wrt.69.2021.06.18.13.55.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 18 Jun 2021 13:55:40 -0700 (PDT)
From:   Corentin Labbe <clabbe@baylibre.com>
To:     arnd@arndb.de, linus.walleij@linaro.org, olof@lixom.net,
        robh+dt@kernel.org, soc@kernel.org, ulli.kroll@googlemail.com
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org, Corentin Labbe <clabbe@baylibre.com>
Subject: [PATCH v2 0/5] ARM: gemini: add two more board
Date:   Fri, 18 Jun 2021 20:55:28 +0000
Message-Id: <20210618205533.1527384-1-clabbe@baylibre.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

I have two boards with a SL3516 SoC. Both are NAS box.

Changes since v1:
- ssi1328 use now redboot-fis partitions
- added pinctrl as asked by Linus Walleij

Corentin Labbe (5):
  ARM: dts: gemini: add labels for USB, IDE, flash and ethernet
  dt-bindings: add vendor prefix for edimax
  dt-bindings: add vendor prefix for ssi
  ARM: gemini: add device tree for edimax NS2502
  ARM: gemini: add device tree for ssi1328

 .../devicetree/bindings/vendor-prefixes.yaml  |   4 +
 arch/arm/boot/dts/Makefile                    |   2 +
 arch/arm/boot/dts/gemini-ns2502.dts           | 148 ++++++++++++++++++
 arch/arm/boot/dts/gemini-ssi1328.dts          | 138 ++++++++++++++++
 arch/arm/boot/dts/gemini.dtsi                 |  12 +-
 5 files changed, 298 insertions(+), 6 deletions(-)
 create mode 100644 arch/arm/boot/dts/gemini-ns2502.dts
 create mode 100644 arch/arm/boot/dts/gemini-ssi1328.dts

-- 
2.31.1

