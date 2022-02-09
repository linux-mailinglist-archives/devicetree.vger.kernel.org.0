Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A066C4AF137
	for <lists+devicetree@lfdr.de>; Wed,  9 Feb 2022 13:17:25 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232758AbiBIMRR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 9 Feb 2022 07:17:17 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34180 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233656AbiBIMQo (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 9 Feb 2022 07:16:44 -0500
Received: from mail-wr1-x436.google.com (mail-wr1-x436.google.com [IPv6:2a00:1450:4864:20::436])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6E958DF48F0F
        for <devicetree@vger.kernel.org>; Wed,  9 Feb 2022 04:04:02 -0800 (PST)
Received: by mail-wr1-x436.google.com with SMTP id d27so3649236wrc.6
        for <devicetree@vger.kernel.org>; Wed, 09 Feb 2022 04:04:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=LuQ+t7txbXIU7O+D0qY3XOtYqJoUWTZj2gqA0c0RP1Y=;
        b=V2NqRr+XhvuOeZj+iuQVuPoiizd+ZriYPR7aMPdWrE3EWBIyxJGVJzC4vJ0UpFj4DX
         LIRcNuILzPkd/h7V5szegEdmHFmifdGrnVJdZlbvO7bybg6vnJKBwx9lvd3Zm/FhSOnT
         lyIgubYyaTBAFy2KasuqKboyHAMOf0u9UFcb/GnzdTH6tYF5Qfk3Y0qIVJ+/8p80vpk1
         XvxqvLUh3NvLBovLbV/BkoIvQs0jQlwiUTWdHZ1ImCa3BOsr0iN6kSVE3jY8Ccr9pvuR
         pizhiOGfzD7TUksGiJygVa+714ibkvQmXcMYE7u5oBMJ4x44OBbDJXyJp4Nh2MZ07MuI
         fdEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=LuQ+t7txbXIU7O+D0qY3XOtYqJoUWTZj2gqA0c0RP1Y=;
        b=44RknHUiuxSzF+j1FtfQS/nYtasNqfgQ3yIu6yYkWtfScij7zN5q0A0UqkxoZRgtsz
         AZQah7HOnUW6loiy+Zbd1B7D+wDOPfKYn//fQDr30AnbOmJVFC2496Vacgc3rhP7Hbx1
         bulOY4vHTTanx6X7fXWUfWGnr5Xny2D3aGT0dYdH6qA6LBzCqrWSiwPHaLEhbcSqPJ2Z
         gUF5nliP2B/J7QLZHHjr2aDqkzanUbtroQZvrx4RVFDG3bqTD1rytzRTFuga6ril544B
         wOrlHMTATd3RQKfdLzHFnZKeM1DfCMXKUqnlWGYeX/0UDbdaBrhCWlX14Oxpu3iFZh9a
         ThwQ==
X-Gm-Message-State: AOAM530xTuEAPqaFPZ8P5mUdNlKBUxIakwn9oACM4PsixX3zUnaOGUWr
        tpTi3DBuUOSUp0fXKQBsTMDBRg==
X-Google-Smtp-Source: ABdhPJwQMhdX+Yxksxzbkh3C+D0HAP+5HMpyzJPfMag6iT/NNqvVOLmInZKwunnyDJNHU+/k4cxKDQ==
X-Received: by 2002:a5d:6d88:: with SMTP id l8mr1781243wrs.458.1644408241021;
        Wed, 09 Feb 2022 04:04:01 -0800 (PST)
Received: from localhost.localdomain (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.googlemail.com with ESMTPSA id l26sm1062989wms.24.2022.02.09.04.04.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 09 Feb 2022 04:04:00 -0800 (PST)
From:   Corentin Labbe <clabbe@baylibre.com>
To:     heiko@sntech.de, krzysztof.kozlowski@canonical.com,
        robh+dt@kernel.org
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
        Corentin Labbe <clabbe@baylibre.com>
Subject: [PATCH v2] ARM: dts: rk3288: fix a typo on crypto-controller
Date:   Wed,  9 Feb 2022 12:03:55 +0000
Message-Id: <20220209120355.1985707-1-clabbe@baylibre.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

crypto-controller had a typo, fix it.
In the same time, rename it to just crypto

Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
---
Change since v1:
- rename crypto-controller to crypto

 arch/arm/boot/dts/rk3288.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/rk3288.dtsi b/arch/arm/boot/dts/rk3288.dtsi
index aaaa61875701..45a9d9b908d2 100644
--- a/arch/arm/boot/dts/rk3288.dtsi
+++ b/arch/arm/boot/dts/rk3288.dtsi
@@ -971,7 +971,7 @@ i2s: i2s@ff890000 {
 		status = "disabled";
 	};
 
-	crypto: cypto-controller@ff8a0000 {
+	crypto: crypto@ff8a0000 {
 		compatible = "rockchip,rk3288-crypto";
 		reg = <0x0 0xff8a0000 0x0 0x4000>;
 		interrupts = <GIC_SPI 48 IRQ_TYPE_LEVEL_HIGH>;
-- 
2.34.1

