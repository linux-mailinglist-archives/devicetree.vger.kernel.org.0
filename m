Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A78E22F3A65
	for <lists+devicetree@lfdr.de>; Tue, 12 Jan 2021 20:29:57 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2406826AbhALT2Z (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 12 Jan 2021 14:28:25 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45180 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2436701AbhALT2Z (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 12 Jan 2021 14:28:25 -0500
Received: from mail-lf1-x133.google.com (mail-lf1-x133.google.com [IPv6:2a00:1450:4864:20::133])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C5B9EC061575
        for <devicetree@vger.kernel.org>; Tue, 12 Jan 2021 11:27:39 -0800 (PST)
Received: by mail-lf1-x133.google.com with SMTP id x20so5038892lfe.12
        for <devicetree@vger.kernel.org>; Tue, 12 Jan 2021 11:27:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=hKTSpDfKtm2J7NPZJmGTw9jFWR3Z6vmcstohRtxdXoo=;
        b=gnUVD+FTms2fjmK0/tSmkdlpBIy/FJiRxmQxihKmQmNsaJoeCOfXZLYfVcuDYNGJTz
         OVJ1QJnoiBHCtWcLXx8yu94K1P9N3ycY6AdgB4iXVOpaiH0JZFVxBKzS10SN8ImAGIOm
         VO8ue24Qs6gNpq5BeRgh6y3b4eDX9Ik0sZW4WukEdUOatn6YHH7kQNAQq0++Mi0ye+ki
         UUphhX8qYQvefM9/bQM9QlFCAi3gxLCQ6q492VQ+AxLgmmX2V+oB1JGIaOfE5S8SSgKI
         K5XQvxI8bN+jpPbQmpqya3bSQJfVyRO5Y7JhE1XX7aKFu4aLrb0VHulNvZ+wX751x51a
         2vWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=hKTSpDfKtm2J7NPZJmGTw9jFWR3Z6vmcstohRtxdXoo=;
        b=ERxO4nTnHme5lJ6ZjlAdfCdzfxcCa1jVhw+XHEp+xDn1aFlJJ0GSTI3xOZ2j3ltGQt
         PxIsgRmU8izY3oRsvn8bGpX1LRHo10kS8RBhr8p6QjFUrCrVU7Sx3ymcrGWaomAo+Qp9
         PlBd667FxmMRYF3j2PiIbRNkVX0vlclzTj6fFycK1TroJZdXoBGOyevni2B/cUZVkL7U
         g2qdmLvBpKLfJPtxjN5QglTzDotAgK/v+wvz4CEAQ1JhsiU27stGCp9AyVl2qsh/iA4a
         zpWMxRP462CFZccUXpfaXIJtn3xRHTiO4FdCCSlT3l78/Bqiw5DIekdHh0Lpkt1Ly60j
         18Pg==
X-Gm-Message-State: AOAM533M5DvC2TP2GlqmwWdDgNBr2NZfcb1KeTorGF6eNPNepn+kHlgK
        8GCe4NJQ0E6WkTzSKwfe5c4C1PKAVnBf1w==
X-Google-Smtp-Source: ABdhPJzmjpqJ/eT5TZ+0+q0vOs2foeFhMNRq/W5I16hUFDLKmI1liwX9ZgstPEVWW0o+3oXihgi8rg==
X-Received: by 2002:a19:48c3:: with SMTP id v186mr170605lfa.3.1610479658291;
        Tue, 12 Jan 2021 11:27:38 -0800 (PST)
Received: from localhost.lan (ip-194-187-74-233.konfederacka.maverick.com.pl. [194.187.74.233])
        by smtp.gmail.com with ESMTPSA id n20sm505024lfh.133.2021.01.12.11.27.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 12 Jan 2021 11:27:37 -0800 (PST)
From:   =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
To:     Florian Fainelli <f.fainelli@gmail.com>
Cc:     bcm-kernel-feedback-list@broadcom.com,
        Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>
Subject: [PATCH] arm64: dts: broadcom: bcm4908: describe PMB block
Date:   Tue, 12 Jan 2021 20:27:23 +0100
Message-Id: <20210112192723.751-1-zajec5@gmail.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Rafał Miłecki <rafal@milecki.pl>

PMB (Power Management Bus) controls powering connected devices (e.g.
PCIe, USB, SATA). In BCM4908 it's a part of the PROCMON block.

Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
---
Florian: this patch is based on top of the
[PATCH] arm64: dts: broadcom: bcm4908: describe internal switch
one. Both modify "ranges".
---
 .../boot/dts/broadcom/bcm4908/bcm4908.dtsi      | 17 ++++++++++++++++-
 1 file changed, 16 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/broadcom/bcm4908/bcm4908.dtsi b/arch/arm64/boot/dts/broadcom/bcm4908/bcm4908.dtsi
index 0b44f32fdef1..882953885bfc 100644
--- a/arch/arm64/boot/dts/broadcom/bcm4908/bcm4908.dtsi
+++ b/arch/arm64/boot/dts/broadcom/bcm4908/bcm4908.dtsi
@@ -108,7 +108,7 @@ soc {
 		compatible = "simple-bus";
 		#address-cells = <1>;
 		#size-cells = <1>;
-		ranges = <0x00 0x00 0x80000000 0xd0000>;
+		ranges = <0x00 0x00 0x80000000 0x281000>;
 
 		usb@c300 {
 			compatible = "generic-ehci";
@@ -213,6 +213,21 @@ phy12: phy@c {
 				};
 			};
 		};
+
+		procmon: syscon@280000 {
+			compatible = "simple-mfd";
+			reg = <0x280000 0x1000>;
+			ranges;
+
+			#address-cells = <1>;
+			#size-cells = <1>;
+
+			power-controller@2800c0 {
+				compatible = "brcm,bcm4908-pmb";
+				reg = <0x2800c0 0x40>;
+				#power-domain-cells = <1>;
+			};
+		};
 	};
 
 	bus@ff800000 {
-- 
2.26.2

