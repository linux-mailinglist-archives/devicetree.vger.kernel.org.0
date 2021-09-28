Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1CCBA41B3D6
	for <lists+devicetree@lfdr.de>; Tue, 28 Sep 2021 18:27:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241748AbhI1Q2v (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 28 Sep 2021 12:28:51 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51864 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S241702AbhI1Q2u (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 28 Sep 2021 12:28:50 -0400
Received: from mail-ed1-x534.google.com (mail-ed1-x534.google.com [IPv6:2a00:1450:4864:20::534])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F0DD8C06161C
        for <devicetree@vger.kernel.org>; Tue, 28 Sep 2021 09:27:10 -0700 (PDT)
Received: by mail-ed1-x534.google.com with SMTP id v10so81349480edj.10
        for <devicetree@vger.kernel.org>; Tue, 28 Sep 2021 09:27:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sartura-hr.20210112.gappssmtp.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=67xaAhWDXBwAaZYIwVCY4AOv7Ek7bCXFI3RMNuf3tPo=;
        b=cizCCnzAoVlOmKKR4NiyqAvMwk16w9hrH/ufsqREGQsQTyV/gppCXqIPhEe+MjR9qi
         6cEkxhuzigHNoumRWhDut+QggEj0PT3ijWsIPUaUKa5PKmFufGKO1OKCe3n5LuKvVYcx
         /85W52HGANBS7pK2EpP1VQbHmPdnFCcr1oH6zP2O2NfRio7J67cJ0uAMGcmIA14H596z
         iLXIKolRkxwoWVQGIGi4kefvhpOYsB2Lg6m67y6IoVmhyzSI9bT0+ivof/ugU1t22K4b
         4cvzVs6wzHQUE1N/ECi8f6xrigBelP+fFeeKVdPfB3E2eyM3JcF5q3V+JyqUwS0W1Sb5
         r6PA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=67xaAhWDXBwAaZYIwVCY4AOv7Ek7bCXFI3RMNuf3tPo=;
        b=Yw8g5P09LmsHArQD6zEk0fcCrH1/yhp34PWTwYb2RVOtYl2tAGMRo0kOr0ooqYtSca
         robyvHfkiqL8ofgCXUMxNnlPNQGoXTk8nAhLtSNarTkyklT6860WYQpaMvF1kvLHL+72
         T/HbbCq82O+f638yYVoGRHJMlWyjwbujALIZWL98PRkURna2a63BXXdudgALSXILqCI3
         rEX9sfX0VOFILYBG1XFDeRy2OADi8M9LpRonCriPFN6kVGz9mOBwnyI5MV8cn6LMHCZ2
         GFRQyBvT+Ft3+WY1a6QW+eVkirQwoWPA5gxO2odz0pd7nBxylwhYlV4d/MfjS9nVlVj6
         cvxg==
X-Gm-Message-State: AOAM531RyWLNy0NyFjd10Czq24Rrf6Fm+47gbPp3bw78hY+RiFSB8NDx
        0jDhdAA33g+/5NXuFnVK5oKk+A==
X-Google-Smtp-Source: ABdhPJyE7OuPLUXYBsDhaszNhk8HM6o5WwVVGNJDPA15kj12YgfLTXY1y84pX/0E7+bF80e1ZDUePA==
X-Received: by 2002:a50:cf02:: with SMTP id c2mr8564759edk.325.1632846429596;
        Tue, 28 Sep 2021 09:27:09 -0700 (PDT)
Received: from fedora.. (dh207-96-123.xnet.hr. [88.207.96.123])
        by smtp.googlemail.com with ESMTPSA id n23sm12579876edw.75.2021.09.28.09.27.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 Sep 2021 09:27:09 -0700 (PDT)
From:   Robert Marko <robert.marko@sartura.hr>
To:     andrew@lunn.ch, gregory.clement@bootlin.com,
        sebastian.hesselbarth@gmail.com, robh+dt@kernel.org,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, pali@kernel.org
Cc:     Robert Marko <robert.marko@sartura.hr>
Subject: [PATCH v2 1/3] arm64: dts: marvell: espressobin-ultra: fix SPI-NOR config
Date:   Tue, 28 Sep 2021 18:27:02 +0200
Message-Id: <20210928162704.687513-1-robert.marko@sartura.hr>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

SPI config for the SPI-NOR is incorrect and completely breaking
reading/writing to the onboard SPI-NOR.

SPI-NOR is connected in the single(x1) IO mode and not in the quad
(x4) mode.
Also, there is no need to override the max frequency from the DTSI
as the mx25u3235f that is used supports 104Mhz.

Signed-off-by: Robert Marko <robert.marko@sartura.hr>
---
 arch/arm64/boot/dts/marvell/armada-3720-espressobin-ultra.dts | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/arch/arm64/boot/dts/marvell/armada-3720-espressobin-ultra.dts b/arch/arm64/boot/dts/marvell/armada-3720-espressobin-ultra.dts
index c5eb3604dd5b..610ff6f385c7 100644
--- a/arch/arm64/boot/dts/marvell/armada-3720-espressobin-ultra.dts
+++ b/arch/arm64/boot/dts/marvell/armada-3720-espressobin-ultra.dts
@@ -71,10 +71,6 @@ &sdhci1 {
 
 &spi0 {
 	flash@0 {
-		spi-max-frequency = <108000000>;
-		spi-rx-bus-width = <4>;
-		spi-tx-bus-width = <4>;
-
 		partitions {
 			compatible = "fixed-partitions";
 			#address-cells = <1>;
-- 
2.31.1

