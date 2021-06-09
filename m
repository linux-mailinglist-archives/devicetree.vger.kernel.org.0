Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 50E683A1355
	for <lists+devicetree@lfdr.de>; Wed,  9 Jun 2021 13:48:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239375AbhFILtz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 9 Jun 2021 07:49:55 -0400
Received: from mail-wm1-f50.google.com ([209.85.128.50]:53857 "EHLO
        mail-wm1-f50.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239445AbhFILtF (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 9 Jun 2021 07:49:05 -0400
Received: by mail-wm1-f50.google.com with SMTP id h3so3811690wmq.3
        for <devicetree@vger.kernel.org>; Wed, 09 Jun 2021 04:47:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=monstr-eu.20150623.gappssmtp.com; s=20150623;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=GrRo1AeZoDDEDA6M/EqmswKct0DqVxPXdJgVJq+2YZA=;
        b=GY1qLpbWuYmVm5FKBkxdLJUYsQPIfp10KhFKTtabDOkCaV1zDUJgQrtK7jqo2nLWP4
         hjGtKmO3E4E/NVtw+e4F+ErynuqwTXZon7DW2gjWN37rp5VyopASRC8Y3wrOoYBtc2J2
         PyyaP8z1hkHOMWn5i1DinqIzKkhM8R7fqVve3XhhaT7q2WNybF5TuSYQhw+Owa5Gs2VF
         o2t/orxFwEw5whdS+to0NJU2fpgrE9SZrELgcawgdnoI6Ty+uEsyWGjSJV0Kj0yVnEXS
         VR+QgEbLYa6ZlLaz3T9tqQG3hEyh8X8Cy2DADxtlEKdPKEjyhKo6DxYnXnFwv7A6KU7s
         Z/YA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:content-transfer-encoding;
        bh=GrRo1AeZoDDEDA6M/EqmswKct0DqVxPXdJgVJq+2YZA=;
        b=HvYeZMPu5Hhorkgnjtgc7Qk7Vx1usizc7fKcE3z8uGfz/83097e3RGMtAiFTIB3ZxU
         /6z2ZCEGd3fqP30CfuoqahAa9hY+7m3gB0U2ZsVtQozgdNZP1kT6urYH10DZZXBG12Cz
         I5nOveID3wxF/cMTZTAO3xuXzuH7ojdcklKYdfO5daRp+YSyekmr5Kt6RJ6aq2KY7uR4
         pKxaMpJRRld3HmuljT8lIle6BefSBYKP/Plaz4lsNV34mhcBkXyCdt/5YewR6LCe6SzJ
         gZ0AnfcEsbqAtkCYBlYdYqXObppy1JLKbB9JPG6pWK10WgOQLmicBjIsFhEinNX2yk0D
         oW4w==
X-Gm-Message-State: AOAM533lBmOxSTQX/uCN77P9wImZK9BwF7HgbMLvtja6SMMKYWDzizmw
        SxsiAMZYL123dBq83CyGWcd67A==
X-Google-Smtp-Source: ABdhPJzzRtdjN5kgvGMcASKTrOWnR3p3hRAf6VvL5a3Smakef4Dv1FTRQLIMC6Y3h8ZSd1Juy0kiow==
X-Received: by 2002:a05:600c:ada:: with SMTP id c26mr8515903wmr.189.1623239170763;
        Wed, 09 Jun 2021 04:46:10 -0700 (PDT)
Received: from localhost ([2a02:768:2307:40d6::45a])
        by smtp.gmail.com with ESMTPSA id r2sm23913166wrv.39.2021.06.09.04.46.10
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 09 Jun 2021 04:46:10 -0700 (PDT)
Sender: Michal Simek <monstr@monstr.eu>
From:   Michal Simek <michal.simek@xilinx.com>
To:     linux-kernel@vger.kernel.org, monstr@monstr.eu,
        michal.simek@xilinx.com, git@xilinx.com,
        Viresh Kumar <viresh.kumar@linaro.org>
Cc:     Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
Subject: [PATCH 29/31] arm64: zynqmp: Remove description for 8T49N287 and si5382 chips
Date:   Wed,  9 Jun 2021 13:45:05 +0200
Message-Id: <b63c4a6feee6e92b578efd94f98cb1eaeaf00874.1623239033.git.michal.simek@xilinx.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <cover.1623239033.git.michal.simek@xilinx.com>
References: <cover.1623239033.git.michal.simek@xilinx.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Based on commit 73d677e9f379 ("arm64: dts: zynqmp: Remove si5328 device
nodes") also remove description for clock chips which don't have Linux
driver yet.

Signed-off-by: Michal Simek <michal.simek@xilinx.com>
---

 arch/arm64/boot/dts/xilinx/zynqmp-zcu104-revA.dts | 4 +---
 arch/arm64/boot/dts/xilinx/zynqmp-zcu104-revC.dts | 4 +---
 arch/arm64/boot/dts/xilinx/zynqmp-zcu111-revA.dts | 4 +---
 3 files changed, 3 insertions(+), 9 deletions(-)

diff --git a/arch/arm64/boot/dts/xilinx/zynqmp-zcu104-revA.dts b/arch/arm64/boot/dts/xilinx/zynqmp-zcu104-revA.dts
index 048df043b45c..86fff3632c7d 100644
--- a/arch/arm64/boot/dts/xilinx/zynqmp-zcu104-revA.dts
+++ b/arch/arm64/boot/dts/xilinx/zynqmp-zcu104-revA.dts
@@ -160,9 +160,7 @@ i2c@1 {
 			#address-cells = <1>;
 			#size-cells = <0>;
 			reg = <1>;
-			clock_8t49n287: clock-generator@6c { /* 8T49N287 - u182 */
-				reg = <0x6c>;
-			};
+			/* 8T49N287 - u182 */
 		};
 
 		i2c@2 {
diff --git a/arch/arm64/boot/dts/xilinx/zynqmp-zcu104-revC.dts b/arch/arm64/boot/dts/xilinx/zynqmp-zcu104-revC.dts
index c21d9612ce04..2a872d439804 100644
--- a/arch/arm64/boot/dts/xilinx/zynqmp-zcu104-revC.dts
+++ b/arch/arm64/boot/dts/xilinx/zynqmp-zcu104-revC.dts
@@ -184,9 +184,7 @@ i2c@1 {
 			#address-cells = <1>;
 			#size-cells = <0>;
 			reg = <1>;
-			clock_8t49n287: clock-generator@6c { /* 8T49N287 - u182 */
-				reg = <0x6c>;
-			};
+			/* 8T49N287 - u182 */
 		};
 
 		i2c@2 {
diff --git a/arch/arm64/boot/dts/xilinx/zynqmp-zcu111-revA.dts b/arch/arm64/boot/dts/xilinx/zynqmp-zcu111-revA.dts
index 4dc315ee91b7..dac5ba67a160 100644
--- a/arch/arm64/boot/dts/xilinx/zynqmp-zcu111-revA.dts
+++ b/arch/arm64/boot/dts/xilinx/zynqmp-zcu111-revA.dts
@@ -475,9 +475,7 @@ i2c@4 {
 			#address-cells = <1>;
 			#size-cells = <0>;
 			reg = <4>;
-			si5382: clock-generator@69 { /* SI5382 - u48 */
-				reg = <0x69>;
-			};
+			/* SI5382 - u48 */
 		};
 		i2c@5 {
 			#address-cells = <1>;
-- 
2.31.1

