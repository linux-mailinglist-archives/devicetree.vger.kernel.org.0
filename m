Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 984F7383D75
	for <lists+devicetree@lfdr.de>; Mon, 17 May 2021 21:32:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233582AbhEQTdf (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 17 May 2021 15:33:35 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52610 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233552AbhEQTdf (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 17 May 2021 15:33:35 -0400
Received: from mail-wm1-x32a.google.com (mail-wm1-x32a.google.com [IPv6:2a00:1450:4864:20::32a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3BBA3C061756
        for <devicetree@vger.kernel.org>; Mon, 17 May 2021 12:32:18 -0700 (PDT)
Received: by mail-wm1-x32a.google.com with SMTP id z130so4181679wmg.2
        for <devicetree@vger.kernel.org>; Mon, 17 May 2021 12:32:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=o1MWPbCmhKRlzL0yQboMxEH1Vw5Cn+akoWVJYorN7PI=;
        b=gMdukzhdloaqM5m8ubf2QsTgloFt0oz4um3ZEfJnC6cRrLb4WDhRkOO8MNcXJ94tzK
         OsESwrpQ+vzWnStApEaLzk1FMuLyLEIdf/9Z90xd3FZNVj06J2RkE1n9bxgY6fe/8Ncq
         oMgmF2/Lb4Ef9gxGuRWxbug+9XbrOFu3dztlMNhzuKM4goSO9cB79LOp8yCHrch6G5z1
         HWJ0aecZ9uoZonwBT8M6tSqtz9Xl2UXBHAhYliIpdVymj8MLW0MqFmKaLA5Z/2EOyLDb
         5P2DbcnKIVCSr2++Fcqi4xE4GWwqr7q4xAfJua5M+zhShrrYAB1xyMBmX/O5KdCAXWia
         kKvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=o1MWPbCmhKRlzL0yQboMxEH1Vw5Cn+akoWVJYorN7PI=;
        b=opF8R66nfNC4iVitGRiGp53hdo91BAOxx8ffjJNfKIgkofkisEnQ5JIkNFvc1Iq7JT
         VWHUg6jSICAeWc0hPXOfXYrbEBPYjeTG6lEMIjOOjF/I8ybe/60ybYgDm1AsfkV4bDCz
         p8QajsS8GipVrmWCiUlSsXgIYklwU+3fJ/Fm+KWY/2d0JL/voo6/jCsWmT6Z/OcYBRIz
         ZnXD4Qww0FQHGN9Vl4JpFqkc+XW3wqABTKXoAzafIhIbQmKO+CsODv9BXumBWz1VG6q3
         gqOJCczWkhRNusU4rWIlauB9k3LArzkbt9xflKO74nloobYAf0ZrJbtITGO7Ls451XyI
         Um2Q==
X-Gm-Message-State: AOAM5334esqyI0MCMBsLqvxyNyM6JTPwCb/4Ww7jV+NJ78N9AL3/cT2X
        SobGBhyHebipC0lB/UsJOwkOzw==
X-Google-Smtp-Source: ABdhPJwsv8iDnA2SN4nduILJwkjwb9WmpT/ZkNYhNGWcTPOkmyY9kui9eXiLhc780cUiLjBIdSA3DQ==
X-Received: by 2002:a1c:1f84:: with SMTP id f126mr617294wmf.189.1621279936942;
        Mon, 17 May 2021 12:32:16 -0700 (PDT)
Received: from localhost.localdomain (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.googlemail.com with ESMTPSA id e10sm18928907wrw.20.2021.05.17.12.32.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 17 May 2021 12:32:16 -0700 (PDT)
From:   Corentin Labbe <clabbe@baylibre.com>
To:     arnd@arndb.de, linus.walleij@linaro.org, olof@lixom.net,
        robh+dt@kernel.org, soc@kernel.org, ulli.kroll@googlemail.com
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org, Corentin Labbe <clabbe@baylibre.com>
Subject: [PATCH 0/5] ARM: gemini: add two more board
Date:   Mon, 17 May 2021 19:32:00 +0000
Message-Id: <20210517193205.691147-1-clabbe@baylibre.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

I have two boards with a SL3516 SoC. Both are NAS box.

Corentin Labbe (5):
  ARM: dts: gemini: add labels for USB, IDE, flash and ethernet
  dt-bindings: add vendor prefix for edimax
  dt-bindings: add vendor prefix for ssi
  ARM: gemini: add device tree for edimax NS2502
  ARM: gemini: add device tree for ssi1328

 .../devicetree/bindings/vendor-prefixes.yaml  |   4 +
 arch/arm/boot/dts/Makefile                    |   2 +
 arch/arm/boot/dts/gemini-ns2502.dts           | 141 +++++++++++++++
 arch/arm/boot/dts/gemini-ssi1328.dts          | 162 ++++++++++++++++++
 arch/arm/boot/dts/gemini.dtsi                 |  12 +-
 5 files changed, 315 insertions(+), 6 deletions(-)
 create mode 100644 arch/arm/boot/dts/gemini-ns2502.dts
 create mode 100644 arch/arm/boot/dts/gemini-ssi1328.dts

-- 
2.26.3

