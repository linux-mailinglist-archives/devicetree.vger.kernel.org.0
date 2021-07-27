Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 18BB13D7434
	for <lists+devicetree@lfdr.de>; Tue, 27 Jul 2021 13:22:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236345AbhG0LWO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 27 Jul 2021 07:22:14 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33278 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236284AbhG0LWN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 27 Jul 2021 07:22:13 -0400
Received: from mail-pj1-x1031.google.com (mail-pj1-x1031.google.com [IPv6:2607:f8b0:4864:20::1031])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0241FC061757
        for <devicetree@vger.kernel.org>; Tue, 27 Jul 2021 04:22:14 -0700 (PDT)
Received: by mail-pj1-x1031.google.com with SMTP id l19so17333031pjz.0
        for <devicetree@vger.kernel.org>; Tue, 27 Jul 2021 04:22:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=A9OpObOhNKRT1oPCp9Nu/AHOlXXiMYSXBYlg8dkzJ3E=;
        b=DiqnuquaXJwP3eaObksalDscAsH+YhayozsjW33Um66W84C9i6JolTO8sPjpHayoGX
         Ust6aHXUxkBKmmpQzgoYt0z4noDFlUKo7Aid+kRozpswPZwPI+u+dMdkK0nlTuOhLjBF
         ZdQ2JagFO3TqOd+66LDEiQ1243a2V6zstmblM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=A9OpObOhNKRT1oPCp9Nu/AHOlXXiMYSXBYlg8dkzJ3E=;
        b=Nz+oyTNf8zI2yUuBgx0tDIXRamVTpTnRDbbmHI9jNrbefg35bjvUOXhe4cokcM2lSq
         mRfghr3YmLSb4yN8TtE++vX9uMSzCniPGnsq04fCDI5RBoO5/gcjN/qScq55Wxj8akqV
         xGyqjG0g77PsjbTCEFKi0notbQ51aPbHfXc5Hu+3F1uP5cGe5GaDp7iMZzebxGOguoeu
         BeQZFvXaeP9D+k0eFMzQ89S4x0n1VggE875HJbUCS3WT19BoaS7CgaeQfaTHkwbThHrZ
         ra6jAZnowuyc9NiMSlgmlVg8w5SeGlLcnMuj+4tAUz+kDax3FyvkhKOBo+SEgNC7EqwV
         9Odw==
X-Gm-Message-State: AOAM532hy4njMvXbKi6rLa3CqC2SIlP/gJYQIXTM8n8PVRroXIa8F3vQ
        uxKTJmv85JlPOE+b+Gy2tozOZg==
X-Google-Smtp-Source: ABdhPJxj1u4Gxg84zfPYkvKEg+0aPmJrlpRhck/HakTm5IhumkZ5XEl0Y2WzjGh2P9uFjnQZaZYWQw==
X-Received: by 2002:a17:90a:f86:: with SMTP id 6mr3889825pjz.68.1627384933489;
        Tue, 27 Jul 2021 04:22:13 -0700 (PDT)
Received: from hsinyi-z840.tpe.corp.google.com ([2401:fa00:1:10:5176:76cc:2193:9b8f])
        by smtp.gmail.com with ESMTPSA id 20sm3506467pfh.15.2021.07.27.04.22.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Jul 2021 04:22:13 -0700 (PDT)
From:   Hsin-Yi Wang <hsinyi@chromium.org>
To:     Matthias Brugger <matthias.bgg@gmail.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Enric Balletbo Serra <eballetbo@gmail.com>,
        eizan@chromium.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH v3 1/2] arm64: dts: mt8183: kukui: Use aliases to mmc nodes
Date:   Tue, 27 Jul 2021 19:22:07 +0800
Message-Id: <20210727112208.2508675-1-hsinyi@chromium.org>
X-Mailer: git-send-email 2.32.0.432.gabb21c7263-goog
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

fa2d0aa96941 ("mmc: core: Allow setting slot index via device tree alias")
allows the use of aliases to number SD/MMC slots. This patch use aliases
to mmc nodes so the partition name for eMMC and SD card will be consistent
across boots.

Signed-off-by: Hsin-Yi Wang <hsinyi@chromium.org>
Reviewed-by: Chen-Yu Tsai <wenst@chromium.org>
Tested-by: Enric Balletbo i Serra <enric.balletbo@collabora.com>
---
v2->v3: fix indentation error and add more commit message.
---
 arch/arm64/boot/dts/mediatek/mt8183-kukui.dtsi | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/boot/dts/mediatek/mt8183-kukui.dtsi b/arch/arm64/boot/dts/mediatek/mt8183-kukui.dtsi
index ae549d55a94fc..8e9cf36a9a41a 100644
--- a/arch/arm64/boot/dts/mediatek/mt8183-kukui.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8183-kukui.dtsi
@@ -13,6 +13,8 @@
 / {
 	aliases {
 		serial0 = &uart0;
+		mmc0 = &mmc0;
+		mmc1 = &mmc1;
 	};
 
 	chosen {
-- 
2.32.0.432.gabb21c7263-goog

