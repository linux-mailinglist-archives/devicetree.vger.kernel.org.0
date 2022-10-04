Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 393035F4094
	for <lists+devicetree@lfdr.de>; Tue,  4 Oct 2022 12:12:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230079AbiJDKMg (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 4 Oct 2022 06:12:36 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34204 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229757AbiJDKMa (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 4 Oct 2022 06:12:30 -0400
Received: from mail-wr1-x432.google.com (mail-wr1-x432.google.com [IPv6:2a00:1450:4864:20::432])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 43E5C2873B
        for <devicetree@vger.kernel.org>; Tue,  4 Oct 2022 03:12:28 -0700 (PDT)
Received: by mail-wr1-x432.google.com with SMTP id a3so8293207wrt.0
        for <devicetree@vger.kernel.org>; Tue, 04 Oct 2022 03:12:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date;
        bh=BloqKd6NAIvqrSiSmUgDRaqMds0uLArY/YBt5zObz4I=;
        b=4cjvYR+ZpIexqEStMAw9XshGpcQ39DsAXy1EfPd/uHVgYLZHkHyxw9/SjDcvjCGU1v
         E3gg7c1opMA7J45OYgS4s+ViyljWaU7U6oLfQS5f264o30QIW7PLnxO+nM8nsy5WIEE5
         ZyqbZ6ohHYladwfBC8QHiKa5rwOPvkPQ9BkQ9jYNWUe3L1Juu84E/c/CaE2p8gZWZdt+
         VJmX8GscKVzG9RNStEJLObuTmTYikvop3uyTdb8jvIyXjlhTxCkVzahrWY0lMyhVru7u
         Q/unmEfK1S2DrioycCo9NTH8Is2Hru3oIQMsqXoWie3sdV2siFOCRo6O21c6W6LSOpuX
         e4ag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date;
        bh=BloqKd6NAIvqrSiSmUgDRaqMds0uLArY/YBt5zObz4I=;
        b=4qCLmPPpyAwI4XrQmjWB0K3Kzod5pCiQSFTJDhMTpZLNMlKG/k3aLT6WYihYZl5r5p
         WrXfNJzYRizZ+zU6J7DlcCI8irlcgT60EqsBg19Le/EndqYTMTwRDY6u//TFhGt27Bx7
         vhDgs1f8Gm1wyUIzmEDnfj3Z6vrOMfpkozHSq0n/IYkzMq+cBokCa4RLSXhDvij9P/Vt
         fRafJlTRc0N4f1O13JtmY1ZMz9VUV77rSAWuz3z6YFhtDRAc/VNp8/zHsUCq4e8C8lrJ
         xRfNkF6uJu/l2BE16immCteAPBDMqEqAJiuovHeJ6xbx4aKl89ewrn+1sXmCnpOUVyw5
         TnYw==
X-Gm-Message-State: ACrzQf21K577PhGM4Nzaayvi7L0Xpwf0iykEVBTm13fQ7FWBh7etwzII
        aJCNTOBhx+hmKAer0JLR6LUpCQ==
X-Google-Smtp-Source: AMsMyM4z0GVOpeWluvLFxqq0rLN9WkcvWHxSt6dxe4VukX794D7JBWk+aaRPxtXyhslKxe3oLPtscQ==
X-Received: by 2002:a5d:6da9:0:b0:22e:53bd:31c1 with SMTP id u9-20020a5d6da9000000b0022e53bd31c1mr1110802wrs.358.1664878346581;
        Tue, 04 Oct 2022 03:12:26 -0700 (PDT)
Received: from localhost.localdomain (210.145.15.109.rev.sfr.net. [109.15.145.210])
        by smtp.googlemail.com with ESMTPSA id y14-20020adfe6ce000000b0022c96d3b6f2sm15252214wrm.54.2022.10.04.03.12.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 04 Oct 2022 03:12:26 -0700 (PDT)
From:   Amjad Ouled-Ameur <aouledameur@baylibre.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Matthias Brugger <matthias.bgg@gmail.com>
Cc:     Amjad Ouled-Ameur <aouledameur@baylibre.com>,
        linux-mediatek@lists.infradead.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH v3] arm64: dts: mediatek: mt8183: disable thermal zones without trips.
Date:   Tue,  4 Oct 2022 12:11:30 +0200
Message-Id: <20221004101130.17256-1-aouledameur@baylibre.com>
X-Mailer: git-send-email 2.37.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Thermal zones without trip point are not registered by thermal core.

tzts1 ~ tzts6 zones of mt8183 were intially introduced for test-purpose
only.

Disable the zones above and keep only cpu_thermal enabled.

Signed-off-by: Amjad Ouled-Ameur <aouledameur@baylibre.com>
---
 arch/arm64/boot/dts/mediatek/mt8183.dtsi | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/arch/arm64/boot/dts/mediatek/mt8183.dtsi b/arch/arm64/boot/dts/mediatek/mt8183.dtsi
index 9d32871973a2..53f7a0fbaa88 100644
--- a/arch/arm64/boot/dts/mediatek/mt8183.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8183.dtsi
@@ -1191,6 +1191,7 @@ tzts1: tzts1 {
 				polling-delay = <0>;
 				thermal-sensors = <&thermal 1>;
 				sustainable-power = <5000>;
+				status = "disabled";
 				trips {};
 				cooling-maps {};
 			};
@@ -1200,6 +1201,7 @@ tzts2: tzts2 {
 				polling-delay = <0>;
 				thermal-sensors = <&thermal 2>;
 				sustainable-power = <5000>;
+				status = "disabled";
 				trips {};
 				cooling-maps {};
 			};
@@ -1209,6 +1211,7 @@ tzts3: tzts3 {
 				polling-delay = <0>;
 				thermal-sensors = <&thermal 3>;
 				sustainable-power = <5000>;
+				status = "disabled";
 				trips {};
 				cooling-maps {};
 			};
@@ -1218,6 +1221,7 @@ tzts4: tzts4 {
 				polling-delay = <0>;
 				thermal-sensors = <&thermal 4>;
 				sustainable-power = <5000>;
+				status = "disabled";
 				trips {};
 				cooling-maps {};
 			};
@@ -1227,6 +1231,7 @@ tzts5: tzts5 {
 				polling-delay = <0>;
 				thermal-sensors = <&thermal 5>;
 				sustainable-power = <5000>;
+				status = "disabled";
 				trips {};
 				cooling-maps {};
 			};
@@ -1236,6 +1241,7 @@ tztsABB: tztsABB {
 				polling-delay = <0>;
 				thermal-sensors = <&thermal 6>;
 				sustainable-power = <5000>;
+				status = "disabled";
 				trips {};
 				cooling-maps {};
 			};
-- 
2.37.3

