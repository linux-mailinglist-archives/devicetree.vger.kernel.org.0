Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DF56D6F0954
	for <lists+devicetree@lfdr.de>; Thu, 27 Apr 2023 18:12:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S244171AbjD0QMd (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 27 Apr 2023 12:12:33 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50144 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S243532AbjD0QMc (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 27 Apr 2023 12:12:32 -0400
Received: from mail-ej1-x630.google.com (mail-ej1-x630.google.com [IPv6:2a00:1450:4864:20::630])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1896D3589
        for <devicetree@vger.kernel.org>; Thu, 27 Apr 2023 09:12:30 -0700 (PDT)
Received: by mail-ej1-x630.google.com with SMTP id a640c23a62f3a-95678d891d6so1592598066b.1
        for <devicetree@vger.kernel.org>; Thu, 27 Apr 2023 09:12:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20221208.gappssmtp.com; s=20221208; t=1682611948; x=1685203948;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=HMqYIMvxQzMeNZyvXScd0d9ZjZQUVmBHnaHMVur7PZI=;
        b=47g0X7BSbMbvv9L/Q9QUepC51/0/TQau9ztKHNIjZPRAu18BfSZwcYUZVenNlbaewp
         NiPe9w4TDMscaoknOdvTZvqMxgBuUlKkNmelAbA/YIopx4I29Mfd1897kyLRP88TVqmc
         8TFGrit4A0yflaIwe9JWcFsSul9heo5Du7IOoDFp+xVjVcCrm2Re6YVcjNu3brkYiqUb
         ZitjrlWKTlpSCbK0VTC6LjRaG8a16ADuC4RtEungg1SLxdCt8myxiqRtn82yGIavrB4Y
         mPjJo85tc81DLj8iZiLNJbtICwphoW9xH3sS7FsuxGd2WSaiRd8iICINbz1zs0LioeNr
         Vhkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682611948; x=1685203948;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=HMqYIMvxQzMeNZyvXScd0d9ZjZQUVmBHnaHMVur7PZI=;
        b=LjfyEGi/+cgpWFO3/YQVZRo59y0XGqmt5oJYdkqIywC7t9+C7kdUh/x/TN9Couwe4j
         s/ybradB57RehuNchjZSmMBgQIDvLjD1+I6l4AZc8UzdFRC8yI71gaefMeV1zg1+wcNP
         czhgebqaUzaeYV7vaM0VjYnhLsIae5Nq46mMx4FY/cRw4fsLNDhXam2HbFxPMSxMJoIy
         WRQS49i1KiH6q2X8ztflm1YYrevKeggJTP+ZGdcM22CNSc2t+OucGnohwQzFHnBa25Ht
         bNDrpo3ARclUmRRkMi8TJdQXpOcwmxZ27ntAnUNSHbzwKX2wwmal39DFp8qglE2kHeaV
         AH2g==
X-Gm-Message-State: AC+VfDxlj9qa2xOAAg1OvKQfRV/DMVnql1CGd7Iy5MnO4+kpGnkxCJvL
        kCwpOazpADKXBvLBPepo+GOJ+47/BKvmC6xJ7Wts+w==
X-Google-Smtp-Source: ACHHUZ7WBBja5Lx65Estj/dqaAZRltQnKHCN4a4WPD9RhhPeRBS3LNkizwx+3dPAR0i1nU1Vxk1z0Q==
X-Received: by 2002:a17:907:3e1a:b0:957:db05:a35d with SMTP id hp26-20020a1709073e1a00b00957db05a35dmr2670020ejc.48.1682611948580;
        Thu, 27 Apr 2023 09:12:28 -0700 (PDT)
Received: from brgl-uxlite.. ([195.167.132.10])
        by smtp.gmail.com with ESMTPSA id l18-20020a1709060e1200b0094f3338129asm10144096eji.141.2023.04.27.09.12.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 27 Apr 2023 09:12:28 -0700 (PDT)
From:   Bartosz Golaszewski <brgl@bgdev.pl>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
Subject: [PATCH] arm64: dts: qcom: sa8775p: add the watchdog node
Date:   Thu, 27 Apr 2023 18:12:18 +0200
Message-Id: <20230427161218.201828-1-brgl@bgdev.pl>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>

Now that the hypervisor issue is fixed, we can add the watchdog node
for sa8775p platforms.

Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
---
 arch/arm64/boot/dts/qcom/sa8775p.dtsi | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sa8775p.dtsi b/arch/arm64/boot/dts/qcom/sa8775p.dtsi
index badabf79c6ef..0737ba38fefe 100644
--- a/arch/arm64/boot/dts/qcom/sa8775p.dtsi
+++ b/arch/arm64/boot/dts/qcom/sa8775p.dtsi
@@ -1008,6 +1008,13 @@ intc: interrupt-controller@17a00000 {
 			redistributor-stride = <0x0 0x20000>;
 		};
 
+		watchdog@17c10000 {
+			compatible = "qcom,apss-wdt-sa8775p", "qcom,kpss-wdt";
+			reg = <0x0 0x17c10000 0x0 0x1000>;
+			clocks = <&sleep_clk>;
+			interrupts = <GIC_SPI 0 IRQ_TYPE_LEVEL_HIGH>;
+		};
+
 		memtimer: timer@17c20000 {
 			compatible = "arm,armv7-timer-mem";
 			reg = <0x0 0x17c20000 0x0 0x1000>;
-- 
2.39.2

