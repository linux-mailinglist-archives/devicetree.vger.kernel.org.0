Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CE7752A7CEF
	for <lists+devicetree@lfdr.de>; Thu,  5 Nov 2020 12:26:33 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730373AbgKEL0c (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 5 Nov 2020 06:26:32 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44134 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1730257AbgKEL0b (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 5 Nov 2020 06:26:31 -0500
Received: from mail-ed1-x530.google.com (mail-ed1-x530.google.com [IPv6:2a00:1450:4864:20::530])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 593D6C0613CF
        for <devicetree@vger.kernel.org>; Thu,  5 Nov 2020 03:26:31 -0800 (PST)
Received: by mail-ed1-x530.google.com with SMTP id t11so1111381edj.13
        for <devicetree@vger.kernel.org>; Thu, 05 Nov 2020 03:26:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=semihalf-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=iSxmQF561iTHdGCA/cHum/Fv1sq0ROCzHR9p5rpuQPE=;
        b=Tj3+jhEassI/I2HH7WsRmbxOzIhZDV9sWuz+HQwTn3NHNoAH0nXilClUWzee7xM8MR
         TBSE2dxkKaCkNpVcdl6870CqaQcwIMfEAYFb+XaVaRlqrrA72ucxBrlTxYATlfRRrpxR
         t4lajGzvmjJEHmni3VlztTQFJ1q9q4i08KhP4Yn8f4UtIk3i+fuLFrdTrt5bWIPz3/Bs
         toRT5mRT5d8+8drbJgIMYCNW7BjrebF6xSE4SYPG8dviS/rmLun7y8vZJacnPlFV2Z4E
         bcV4xXi0RA2kY1UcqD3pao6tHBPlinWf/e3KZ8Lh/EkE8g6n3BYptgGNWm0J0sl/cjWE
         r9tg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=iSxmQF561iTHdGCA/cHum/Fv1sq0ROCzHR9p5rpuQPE=;
        b=gKP5v9YVu/l0Uj81Im9DdbbhqYFjqbTN+67UslhFm7Cl8vtfSgy+MgvEpY2mMdos8H
         tJFx3+TTHxAd10TlCnJeD0F57yAf2TUMZJdWKwapSya2+EaI7y/ULkW/4Y04FjudFzKb
         dJheyCEbwn9tI5KfjZGmoZDFC75DbIXMrfNiczt5WWXUmM3buJ1oBm+3c4x/g2Tg8RlB
         jXIhpw5ur7+HySDhvHxE27/I0zdLQPL5Dbl6mjSBSzXPaP4dD+7xFdPNFinKNg5Xd6mb
         fZunUQGbRqxgiiuiSX41V0mQzP+ymEfRzujBT3yUu8zv7nSRs0ImwusoRCY3J9ZBviH0
         a2Ew==
X-Gm-Message-State: AOAM532O/uZxLSLUvPAf0NzIfGF/FcAtC/wLY2drHngTM9OaWl8EdOz4
        zBBJV+MCbTQBbkbH0o7gpN9nGw==
X-Google-Smtp-Source: ABdhPJzkyFaXymPlZnIpRWWGlYJiJMDYR6NbVs4zbOo5E/L4R2m209MTtI9Iq+RX0cMyQcqsN396kQ==
X-Received: by 2002:aa7:c358:: with SMTP id j24mr2033015edr.265.1604575589996;
        Thu, 05 Nov 2020 03:26:29 -0800 (PST)
Received: from localhost.localdomain ([83.68.95.66])
        by smtp.gmail.com with ESMTPSA id d11sm700072edu.2.2020.11.05.03.26.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Nov 2020 03:26:29 -0800 (PST)
From:   Tomasz Nowicki <tn@semihalf.com>
To:     will@kernel.org, robin.murphy@arm.com, joro@8bytes.org,
        gregory.clement@bootlin.com, robh+dt@kernel.org, hannah@marvell.com
Cc:     linux-kernel@vger.kernel.org, iommu@lists.linux-foundation.org,
        devicetree@vger.kernel.org, catalin.marinas@arm.com,
        nadavh@marvell.com, linux-arm-kernel@lists.infradead.org,
        mw@semihalf.com, d.odintsov@traviangames.com,
        stable@vger.kernel.org, Tomasz Nowicki <tn@semihalf.com>
Subject: [PATCH 1/1] arm64: dts: marvell: keep SMMU disabled by default for Armada 7040 and 8040
Date:   Thu,  5 Nov 2020 12:26:02 +0100
Message-Id: <20201105112602.164739-1-tn@semihalf.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

FW has to configure devices' StreamIDs so that SMMU is able to lookup
context and do proper translation later on. For Armada 7040 & 8040 and
publicly available FW, most of the devices are configured properly,
but some like ap_sdhci0, PCIe, NIC still remain unassigned which
results in SMMU faults about unmatched StreamID (assuming
ARM_SMMU_DISABLE_BYPASS_BY_DEFAUL=y).

Since there is dependency on custom FW let SMMU be disabled by default.
People who still willing to use SMMU need to enable manually and
use ARM_SMMU_DISABLE_BYPASS_BY_DEFAUL=n (or via kernel command line)
with extra caution.

Fixes: 83a3545d9c37 ("arm64: dts: marvell: add SMMU support")
Cc: <stable@vger.kernel.org> # 5.9+
Signed-off-by: Tomasz Nowicki <tn@semihalf.com>
---
 arch/arm64/boot/dts/marvell/armada-7040.dtsi | 4 ----
 arch/arm64/boot/dts/marvell/armada-8040.dtsi | 4 ----
 2 files changed, 8 deletions(-)

diff --git a/arch/arm64/boot/dts/marvell/armada-7040.dtsi b/arch/arm64/boot/dts/marvell/armada-7040.dtsi
index 7a3198cd7a07..2f440711d21d 100644
--- a/arch/arm64/boot/dts/marvell/armada-7040.dtsi
+++ b/arch/arm64/boot/dts/marvell/armada-7040.dtsi
@@ -15,10 +15,6 @@ / {
 		     "marvell,armada-ap806";
 };
 
-&smmu {
-	status = "okay";
-};
-
 &cp0_pcie0 {
 	iommu-map =
 		<0x0   &smmu 0x480 0x20>,
diff --git a/arch/arm64/boot/dts/marvell/armada-8040.dtsi b/arch/arm64/boot/dts/marvell/armada-8040.dtsi
index 79e8ce59baa8..22c2d6ebf381 100644
--- a/arch/arm64/boot/dts/marvell/armada-8040.dtsi
+++ b/arch/arm64/boot/dts/marvell/armada-8040.dtsi
@@ -15,10 +15,6 @@ / {
 		     "marvell,armada-ap806";
 };
 
-&smmu {
-	status = "okay";
-};
-
 &cp0_pcie0 {
 	iommu-map =
 		<0x0   &smmu 0x480 0x20>,
-- 
2.25.1

