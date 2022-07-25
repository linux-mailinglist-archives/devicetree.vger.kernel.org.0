Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 30B4557FFAA
	for <lists+devicetree@lfdr.de>; Mon, 25 Jul 2022 15:15:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234666AbiGYNPd (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 25 Jul 2022 09:15:33 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43854 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234761AbiGYNPb (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 25 Jul 2022 09:15:31 -0400
Received: from mail-ej1-x62a.google.com (mail-ej1-x62a.google.com [IPv6:2a00:1450:4864:20::62a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 878BC63CE
        for <devicetree@vger.kernel.org>; Mon, 25 Jul 2022 06:15:30 -0700 (PDT)
Received: by mail-ej1-x62a.google.com with SMTP id ss3so20404414ejc.11
        for <devicetree@vger.kernel.org>; Mon, 25 Jul 2022 06:15:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sartura-hr.20210112.gappssmtp.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=mVT8yZV4TWvL4TvozYO47hCUSFhkHXoWVVszcktOGqQ=;
        b=vP9zfh4n4M74tiD5JKly/aNIcgQCMWuVOZiB1yTzHRc6jLJqWvhBY3M8Qc6/aax/LJ
         E4bcewcMvVFRBbNv+5Tc9Ep2o3HIZjCwgYVJ3McMKvrWRkKH4LlyMl0+1RYN/sNDTs+j
         UdB/gnRXd5bdxjEiiwlH8ccCa3tLdLxD//XQAGZkmz1Rxc3IKdwfLcsuwMrwlxYnvHfx
         n/MfhRy+UIZv0SGcTDGdKR0s3VZ84Tz4eDoDFINNaMf4CSRxhYcUVnHWzrv1H++578ZH
         Z/vt2Th4Ej5gXjj+GsnClxcdIOtQcR3APkP/rWlifdS9dykge0UJCxwd5mY5OsDYez5a
         uftw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=mVT8yZV4TWvL4TvozYO47hCUSFhkHXoWVVszcktOGqQ=;
        b=ol+pfMtXkKIOgqYFYVd3PLnNNzPzD1OKepvhCCFKTjdfCTSTv2POoREJdR/PXHYkAc
         CbMENbARHyA/6736tlgJciUmWceVezYmfVBTKlSlli9HIsWaC+JxCzFpwvGnAptTML1d
         VBHI3GAZK8tLmw5+sHrZWQuz56eplhZj3uwwbS6AodhmuP6xYlCZtKyr6uO/Zk//1sCp
         44BeMHCFkXEg/LKjOtVQAaj+w1AxOHxaaz44VhT1fxuG7A3tDJ8w9/4Kmc6mS2I5HJBb
         gagvL8jvyBnIZkwwLRMM5maNz98rjCBMu54dB/34ffhiAb/WWr6n4Xatweln2HWAaVAU
         X5Kw==
X-Gm-Message-State: AJIora/P1LGrR/psNqQNLk2cfkEwKmqcuOut1Iaa1MCQoXWJOlVqbO94
        WvtL/s/NjFctriSV/36FaLwIuNdlAbX61jTG
X-Google-Smtp-Source: AGRyM1uypohEGVVkFCvNKRl1Uk16DSCrPDNX9PVR6wHmQ/6esoTK7rv8zMQSDbhzxT08uztRbVtYjA==
X-Received: by 2002:a17:907:7245:b0:72f:39e7:1207 with SMTP id ds5-20020a170907724500b0072f39e71207mr9967255ejc.201.1658754929034;
        Mon, 25 Jul 2022 06:15:29 -0700 (PDT)
Received: from fedora.robimarko.hr (dh207-96-123.xnet.hr. [88.207.96.123])
        by smtp.googlemail.com with ESMTPSA id h14-20020aa7de0e000000b0043a7404314csm7124969edv.8.2022.07.25.06.15.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Jul 2022 06:15:27 -0700 (PDT)
From:   Robert Marko <robert.marko@sartura.hr>
To:     robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        lars.povlsen@microchip.com, Steen.Hegelund@microchip.com,
        UNGLinuxDriver@microchip.com, arnd@arndb.de,
        alexandre.belloni@bootlin.com, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Cc:     Robert Marko <robert.marko@sartura.hr>
Subject: [PATCH 1/2] arm64: dts: microchip: sparx5: remove PSCI
Date:   Mon, 25 Jul 2022 15:15:20 +0200
Message-Id: <20220725131521.607904-1-robert.marko@sartura.hr>
X-Mailer: git-send-email 2.37.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

PSCI is not implemented on SparX-5 at all, there is no ATF and U-boot
that is shipped does not implement it as well.

I have tried flashing the latest vendor BSP U-boot which did not work.
After contacting Microchip, they confirmed that there is no ATF for the
SoC nor PSCI implementation which is unfortunate in 2022.

So, disable PSCI as otherwise kernel crashes as soon as it tries probing
PSCI with, and the crash is only visible if earlycon is used.

Tested on PCB134 with eMMC (VSC5640EV).

Fixes: 6694aee00a4b ("arm64: dts: sparx5: Add basic cpu support")
Signed-off-by: Robert Marko <robert.marko@sartura.hr>
---
 arch/arm64/boot/dts/microchip/sparx5.dtsi | 5 -----
 1 file changed, 5 deletions(-)

diff --git a/arch/arm64/boot/dts/microchip/sparx5.dtsi b/arch/arm64/boot/dts/microchip/sparx5.dtsi
index 2dd5e38820b1..38da24c1796c 100644
--- a/arch/arm64/boot/dts/microchip/sparx5.dtsi
+++ b/arch/arm64/boot/dts/microchip/sparx5.dtsi
@@ -61,11 +61,6 @@ arm-pmu {
 		interrupt-affinity = <&cpu0>, <&cpu1>;
 	};
 
-	psci {
-		compatible = "arm,psci-0.2";
-		method = "smc";
-	};
-
 	timer {
 		compatible = "arm,armv8-timer";
 		interrupts = <GIC_PPI 13 IRQ_TYPE_LEVEL_LOW>,
-- 
2.37.1

