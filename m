Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C12A43A131F
	for <lists+devicetree@lfdr.de>; Wed,  9 Jun 2021 13:45:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234494AbhFILrd (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 9 Jun 2021 07:47:33 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58352 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234267AbhFILrc (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 9 Jun 2021 07:47:32 -0400
Received: from mail-wm1-x32a.google.com (mail-wm1-x32a.google.com [IPv6:2a00:1450:4864:20::32a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3C79BC06175F
        for <devicetree@vger.kernel.org>; Wed,  9 Jun 2021 04:45:29 -0700 (PDT)
Received: by mail-wm1-x32a.google.com with SMTP id f16-20020a05600c1550b02901b00c1be4abso4080501wmg.2
        for <devicetree@vger.kernel.org>; Wed, 09 Jun 2021 04:45:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=monstr-eu.20150623.gappssmtp.com; s=20150623;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=R/3HZeObvFzaodz0f51dPqwRxwzWlJkXtgOWwyFJYTE=;
        b=Jh1ZfgwevTKVlcRoffLLON05ol0p1wNKWclXF76B9EE9LwKMs+A8lNSPwR6E50vbxV
         WDUb/gM6c8Gg42Nv65TKHBYr0bTV7UrLSQhw7n76itx+9nfRrTVt67mNTlct3e/8vwKt
         2OqxtICfk7R6+Hno/mSuTLyFQqKtmhBou+0JS+YSvx7CLEUlRXdcJm14vxe3IY0Xy9n7
         g49oZOhBhjh8gtZzIG3E8OT+uFDmehmYmS88m8N2Ju0dYkuA3kuVSEC5i5TIK9BvxNOK
         0dyGqIh8PSo8OGh2xlJaceFfNKVYwUXQiNICCS8dW+RXwbs9h361duUsOliDlwyn2hWx
         SwIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:content-transfer-encoding;
        bh=R/3HZeObvFzaodz0f51dPqwRxwzWlJkXtgOWwyFJYTE=;
        b=VEjp31pG4VGLplmWI+1Iy12SSgMATXnTluaXaid6xhKK9yQzhg9Nep/D3kw5VQFx4J
         lY5YFm80r2/DQHeYRAvgIyj8P0IQ9ZbaNrz9tc74Sq51znHMc7ElLi5SKw9WY9q4oBWn
         ejPKw9q4CpIzXCee7kHpfMi3l8M94UmTMb3zH12M+YRMRvSNQSHUpo3CPrcoWm5ovK51
         zOt9IzEf8Zi+cYTdiYYpl3cm3WrDItp6op68FL538tIXHSfPaILkx2QNcHbdtvXzjiC3
         CSsLVKvDg0t+jCeIBvVgZPchJrda16GOGny8aW1Xh1o8Lrv/jYKGyEiGcUNauXNXtUoI
         AAyQ==
X-Gm-Message-State: AOAM533xq2czriPfAlYBPHee/dJZvwU5D5UmVFi4zRYdDhwWyu5jw8OJ
        qcLDlsv9i6gbWYgPlthH8CY83n3uWiwaE0H5
X-Google-Smtp-Source: ABdhPJwobdDEXRoGGhM2Kp9aITq138OtfIvhQ2lRd36EZs79rSc6YTuaKJVMRqf9WRWUPFQAjrVbKA==
X-Received: by 2002:a1c:7c13:: with SMTP id x19mr9399617wmc.96.1623239127802;
        Wed, 09 Jun 2021 04:45:27 -0700 (PDT)
Received: from localhost ([2a02:768:2307:40d6::45a])
        by smtp.gmail.com with ESMTPSA id o22sm5810994wmc.17.2021.06.09.04.45.27
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 09 Jun 2021 04:45:27 -0700 (PDT)
Sender: Michal Simek <monstr@monstr.eu>
From:   Michal Simek <michal.simek@xilinx.com>
To:     linux-kernel@vger.kernel.org, monstr@monstr.eu,
        michal.simek@xilinx.com, git@xilinx.com,
        Viresh Kumar <viresh.kumar@linaro.org>
Cc:     Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
Subject: [PATCH 04/31] arm64: zynqmp: Fix irps5401 device nodes
Date:   Wed,  9 Jun 2021 13:44:40 +0200
Message-Id: <10bf5f9e7a18579626fb1850e3a8a7476ba6f2ed.1623239033.git.michal.simek@xilinx.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <cover.1623239033.git.michal.simek@xilinx.com>
References: <cover.1623239033.git.michal.simek@xilinx.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

- Add compatible string for irps5401 chip.
- Do not use irps54012 as device node which is not correct.
- Fix addresses of irps5401/u180 on zcu104 revisions.

Signed-off-by: Michal Simek <michal.simek@xilinx.com>
---

 arch/arm64/boot/dts/xilinx/zynqmp-zcu104-revA.dts | 10 ++++++----
 arch/arm64/boot/dts/xilinx/zynqmp-zcu111-revA.dts |  9 ++++++---
 2 files changed, 12 insertions(+), 7 deletions(-)

diff --git a/arch/arm64/boot/dts/xilinx/zynqmp-zcu104-revA.dts b/arch/arm64/boot/dts/xilinx/zynqmp-zcu104-revA.dts
index 99896db6b8ca..5c35edd736aa 100644
--- a/arch/arm64/boot/dts/xilinx/zynqmp-zcu104-revA.dts
+++ b/arch/arm64/boot/dts/xilinx/zynqmp-zcu104-revA.dts
@@ -157,11 +157,13 @@ i2c@2 {
 			#address-cells = <1>;
 			#size-cells = <0>;
 			reg = <2>;
-			irps5401_43: irps54012@43 { /* IRPS5401 - u175 */
-				reg = <0x43>;
+			irps5401_43: irps5401@43 { /* IRPS5401 - u175 */
+				compatible = "infineon,irps5401";
+				reg = <0x43>; /* pmbus / i2c 0x13 */
 			};
-			irps5401_4d: irps54012@4d { /* IRPS5401 - u180 */
-				reg = <0x4d>;
+			irps5401_44: irps5401@44 { /* IRPS5401 - u180 */
+				compatible = "infineon,irps5401";
+				reg = <0x44>; /* pmbus / i2c 0x14 */
 			};
 		};
 
diff --git a/arch/arm64/boot/dts/xilinx/zynqmp-zcu111-revA.dts b/arch/arm64/boot/dts/xilinx/zynqmp-zcu111-revA.dts
index d4b68f0d0098..68b758e40f80 100644
--- a/arch/arm64/boot/dts/xilinx/zynqmp-zcu111-revA.dts
+++ b/arch/arm64/boot/dts/xilinx/zynqmp-zcu111-revA.dts
@@ -326,13 +326,16 @@ i2c@2 {
 			#address-cells = <1>;
 			#size-cells = <0>;
 			reg = <2>;
-			irps5401_43: irps54012@43 { /* IRPS5401 - u53 check these */
+			irps5401_43: irps5401@43 { /* IRPS5401 - u53 check these */
+				compatible = "infineon,irps5401";
 				reg = <0x43>;
 			};
-			irps5401_44: irps54012@44 { /* IRPS5401 - u55 */
+			irps5401_44: irps5401@44 { /* IRPS5401 - u55 */
+				compatible = "infineon,irps5401";
 				reg = <0x44>;
 			};
-			irps5401_45: irps54012@45 { /* IRPS5401 - u57 */
+			irps5401_45: irps5401@45 { /* IRPS5401 - u57 */
+				compatible = "infineon,irps5401";
 				reg = <0x45>;
 			};
 			/* u68 IR38064 +0 */
-- 
2.31.1

