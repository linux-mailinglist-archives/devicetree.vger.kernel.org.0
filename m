Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id F08CE5B88DF
	for <lists+devicetree@lfdr.de>; Wed, 14 Sep 2022 15:13:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229821AbiINNND (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 14 Sep 2022 09:13:03 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46840 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229899AbiINNNA (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 14 Sep 2022 09:13:00 -0400
Received: from mail-wm1-x330.google.com (mail-wm1-x330.google.com [IPv6:2a00:1450:4864:20::330])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4658F520BC
        for <devicetree@vger.kernel.org>; Wed, 14 Sep 2022 06:12:58 -0700 (PDT)
Received: by mail-wm1-x330.google.com with SMTP id bd26-20020a05600c1f1a00b003a5e82a6474so11482420wmb.4
        for <devicetree@vger.kernel.org>; Wed, 14 Sep 2022 06:12:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date;
        bh=c+CXqJzxevLGaFZnXFMUkD0mAJpWpY3HHP1XZ4X/APE=;
        b=u+XT01IjaCLCz8d+8m02RUkMURuAC7Y57T1yTElVAjMz9t6zu9QTskZ5/QAmrc65fk
         lSi/+v5aP2KayImK4B6PQOyCfqr422Y/WnQZZMKdLnyBKnRaDW118CY5G8nnn4yzS84Y
         F2ZQBm+0A+DPolf9fdy4KYUeGvJiBd7S5fkVlnJx1NoDK/vWe+/NqmcHWiWbtDq5OoiB
         +/40yL0rksS9xZhUCsMiCJqryi6y50sPhTWQtMYdiRtei42pIpTMo9rmdope+0sUSVoV
         f8582kLOEaWVVhco8EAP9WW3fKhgqLEBrj5NqpyEMw9ZT3waIpijMBbB5Hcv5/weOgm/
         mgTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date;
        bh=c+CXqJzxevLGaFZnXFMUkD0mAJpWpY3HHP1XZ4X/APE=;
        b=dUoBgWFSZhDJ8rWaB2aISLxfQdbpsLb08qsSDKJsMZVFGV9EEXe7wf8YFLEqZQal48
         fyVz668deqzfnfBhUnzeWJxXVMRQT1be6UciE3mr+ANZgyVlDZeYyhNYAK5aKmiIYXzu
         L+t7rfPJRjBwCxfuz45lbfFr+ltsrCX++ZkKuwdsPf9gNIcyIc4ToGiiPC3DyJlfYFE2
         NrDe4RqhP6S5Z30KgzEem9H7eoe1fZmWlw7TaK1oXAQchMWi+tD/xWr1MSGVfXs4KzSu
         wBWn24jb9NSy6fYwbjOxQmZgzJuFOaEoqDeIlOl3OIF7347Zh5T00LFMQ8zBrly+gVZ+
         6tkQ==
X-Gm-Message-State: ACgBeo0tEj/jXZsKvwK1lxCm7zM0wlRJUhpqPphO81XhmhmSgrP+0i23
        hi5R90SaXvBITJ/j03rzD2WWd0hRse9aXMv7
X-Google-Smtp-Source: AA6agR6AhmsKmw9U1RIEhuPZ5xg6Jj809FQ9MFO5psrfyvEWyVwyGP/mSb/5Gtm2SZ+pZAziD10o8A==
X-Received: by 2002:a05:600c:1ca0:b0:3a8:41cf:a31f with SMTP id k32-20020a05600c1ca000b003a841cfa31fmr3115606wms.161.1663161176590;
        Wed, 14 Sep 2022 06:12:56 -0700 (PDT)
Received: from localhost.localdomain (210.145.15.109.rev.sfr.net. [109.15.145.210])
        by smtp.googlemail.com with ESMTPSA id c6-20020adffb46000000b0022acb7195aesm970605wrs.33.2022.09.14.06.12.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Sep 2022 06:12:56 -0700 (PDT)
From:   Amjad Ouled-Ameur <aouledameur@baylibre.com>
To:     Rob Herring <robh+dt@kernel.org>
Cc:     Amjad Ouled-Ameur <aouledameur@baylibre.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: 
Date:   Wed, 14 Sep 2022 15:12:19 +0200
Message-Id: <20220914131219.18236-1-aouledameur@baylibre.com>
X-Mailer: git-send-email 2.37.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Subject: [PATCH] arm64: dts: mediatek: mt8183: remove thermal zones without
 trips.

Thermal zones without trip point are not registered by thermal core.

tzts1 ~ tzts6 zones of mt8183 were intially introduced for test-purpose
only but are not supposed to remain on DT.

Remove the zones above and keep only cpu_thermal.

Signed-off-by: Amjad Ouled-Ameur <aouledameur@baylibre.com>
---
 arch/arm64/boot/dts/mediatek/mt8183.dtsi | 57 ------------------------
 1 file changed, 57 deletions(-)

diff --git a/arch/arm64/boot/dts/mediatek/mt8183.dtsi b/arch/arm64/boot/dts/mediatek/mt8183.dtsi
index 9d32871973a2..f65fae8939de 100644
--- a/arch/arm64/boot/dts/mediatek/mt8183.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8183.dtsi
@@ -1182,63 +1182,6 @@ THERMAL_NO_LIMIT
 					};
 				};
 			};
-
-			/* The tzts1 ~ tzts6 don't need to polling */
-			/* The tzts1 ~ tzts6 don't need to thermal throttle */
-
-			tzts1: tzts1 {
-				polling-delay-passive = <0>;
-				polling-delay = <0>;
-				thermal-sensors = <&thermal 1>;
-				sustainable-power = <5000>;
-				trips {};
-				cooling-maps {};
-			};
-
-			tzts2: tzts2 {
-				polling-delay-passive = <0>;
-				polling-delay = <0>;
-				thermal-sensors = <&thermal 2>;
-				sustainable-power = <5000>;
-				trips {};
-				cooling-maps {};
-			};
-
-			tzts3: tzts3 {
-				polling-delay-passive = <0>;
-				polling-delay = <0>;
-				thermal-sensors = <&thermal 3>;
-				sustainable-power = <5000>;
-				trips {};
-				cooling-maps {};
-			};
-
-			tzts4: tzts4 {
-				polling-delay-passive = <0>;
-				polling-delay = <0>;
-				thermal-sensors = <&thermal 4>;
-				sustainable-power = <5000>;
-				trips {};
-				cooling-maps {};
-			};
-
-			tzts5: tzts5 {
-				polling-delay-passive = <0>;
-				polling-delay = <0>;
-				thermal-sensors = <&thermal 5>;
-				sustainable-power = <5000>;
-				trips {};
-				cooling-maps {};
-			};
-
-			tztsABB: tztsABB {
-				polling-delay-passive = <0>;
-				polling-delay = <0>;
-				thermal-sensors = <&thermal 6>;
-				sustainable-power = <5000>;
-				trips {};
-				cooling-maps {};
-			};
 		};
 
 		pwm0: pwm@1100e000 {
-- 
2.37.3

