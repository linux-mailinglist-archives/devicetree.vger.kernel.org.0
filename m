Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id AD04C135A53
	for <lists+devicetree@lfdr.de>; Thu,  9 Jan 2020 14:39:32 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728298AbgAINjZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 9 Jan 2020 08:39:25 -0500
Received: from mail-wm1-f53.google.com ([209.85.128.53]:54153 "EHLO
        mail-wm1-f53.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725839AbgAINjY (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 9 Jan 2020 08:39:24 -0500
Received: by mail-wm1-f53.google.com with SMTP id m24so2959232wmc.3
        for <devicetree@vger.kernel.org>; Thu, 09 Jan 2020 05:39:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=monstr-eu.20150623.gappssmtp.com; s=20150623;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=jefvAhdoN3UgGXE+/GJYxeZcqaINGsrauh5HiUc9SKE=;
        b=FX03olbdaMwjq0QX1vku2430i8PqYnGFl/yHiDYfyz2aXtozJouHqMTLNstihuaAJm
         L0LtTLK8/r2PpVi+EmKGA7NQAj9pndbSRwe3vRP9UKAEr1mkAYB+4ym04gJslw/GGQOS
         E+2T7l57hXSczLtq7RGxEZ/WzuMPou9/7SNqB4NfXURbf5p7Sud9wJVChFOr5qrxhPBi
         jXbWU6SL605TfBbaHzBZeDasYDw8oOUMyUYQyfW5ULeoz4RJi6PLRpTlcpc1yFZSy1N5
         UexALQmf7bJ18J0XI3KCC4YBM/C6GhYmlAQDRhilvPP3qbrX2OBc4tKXsJgzxaXyiW6V
         rLYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:content-transfer-encoding;
        bh=jefvAhdoN3UgGXE+/GJYxeZcqaINGsrauh5HiUc9SKE=;
        b=ADAYY7ccDlaGx2wuwFKJT5rVbO0t+Cjn7CS241RaT1MICmDnnmnEoKTN0npul6TjPj
         IU6iYmlaT22Yp1UUqicpVMwAhAgNdSz4JcrXU+LDehWs8Qq8zMwBz9idNGlWEGf+1ApJ
         IicuvpssWciJ+5fS2/UOzHT0FwTbbjD1rlHu9wqUGdrvwzSNL77A9TGSHjVcUXWzbZ6D
         La7iNxz83/V6/ZVgRCwqEJ7rVjWbPPfJZusuZZ2RyHczfMubfpL71mHzPOtHKcfTvYgr
         HcvcY9TkFnpojdECdZcN7Bzs1p6WanS42ld3vMpV9xXz6ZRcz0u9Ko/a9prQ3i1Tk/kQ
         rKOg==
X-Gm-Message-State: APjAAAWAPX564+l24FtI6k9HQ1EeB7CEY6sJxUKaKpcG/ozhHTskmTSh
        3pXgetJ4n9YIBamkCT3fxMD2Og==
X-Google-Smtp-Source: APXvYqxIHYCHekeETdVXxsgFVv8p5nrAUCoaoagczmqG8qo/8aCZYJcOinlwacLZu9ja4n6Mve8MFA==
X-Received: by 2002:a1c:6755:: with SMTP id b82mr4938237wmc.126.1578577162830;
        Thu, 09 Jan 2020 05:39:22 -0800 (PST)
Received: from localhost (nat-35.starnet.cz. [178.255.168.35])
        by smtp.gmail.com with ESMTPSA id o4sm8255006wrx.25.2020.01.09.05.39.21
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Thu, 09 Jan 2020 05:39:22 -0800 (PST)
From:   Michal Simek <michal.simek@xilinx.com>
To:     linux-arm-kernel@lists.infradead.org
Cc:     Anurag Kumar Vulisha <anurag.kumar.vulisha@xilinx.com>,
        Harini Katakam <harini.katakam@xilinx.com>,
        Mark Rutland <mark.rutland@arm.com>,
        Rajan Vaja <rajan.vaja@xilinx.com>,
        Rob Herring <robh+dt@kernel.org>,
        Venkatesh Yadav Abbarapu <venkatesh.abbarapu@xilinx.com>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH 3/6] arm64: zynqmp: Setup clock-output-names for si570 chips
Date:   Thu,  9 Jan 2020 14:39:12 +0100
Message-Id: <7d46b2e92382df23996d95254fa025faccac7dae.1578577147.git.michal.simek@xilinx.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <cover.1578577147.git.michal.simek@xilinx.com>
References: <cover.1578577147.git.michal.simek@xilinx.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

If there are more instances of si570 clock-output-names property
should be used for differentiation of clock output.
The patch is adding this optional properties for all zynqmp boards with
si570 chip.

Signed-off-by: Michal Simek <michal.simek@xilinx.com>
---

 arch/arm64/boot/dts/xilinx/zynqmp-zcu102-revA.dts | 2 ++
 arch/arm64/boot/dts/xilinx/zynqmp-zcu106-revA.dts | 2 ++
 arch/arm64/boot/dts/xilinx/zynqmp-zcu111-revA.dts | 2 ++
 3 files changed, 6 insertions(+)

diff --git a/arch/arm64/boot/dts/xilinx/zynqmp-zcu102-revA.dts b/arch/arm64/boot/dts/xilinx/zynqmp-zcu102-revA.dts
index c96e8416fa7e..845671447f60 100644
--- a/arch/arm64/boot/dts/xilinx/zynqmp-zcu102-revA.dts
+++ b/arch/arm64/boot/dts/xilinx/zynqmp-zcu102-revA.dts
@@ -389,6 +389,7 @@ si570_1: clock-generator@5d { /* USER SI570 - u42 */
 				temperature-stability = <50>;
 				factory-fout = <300000000>;
 				clock-frequency = <300000000>;
+				clock-output-names = "si570_user";
 			};
 		};
 		i2c@3 {
@@ -402,6 +403,7 @@ si570_2: clock-generator@5d { /* USER MGT SI570 - u56 */
 				temperature-stability = <50>; /* copy from zc702 */
 				factory-fout = <156250000>;
 				clock-frequency = <148500000>;
+				clock-output-names = "si570_mgt";
 			};
 		};
 		i2c@4 {
diff --git a/arch/arm64/boot/dts/xilinx/zynqmp-zcu106-revA.dts b/arch/arm64/boot/dts/xilinx/zynqmp-zcu106-revA.dts
index ae62fe4287c2..822de6f04725 100644
--- a/arch/arm64/boot/dts/xilinx/zynqmp-zcu106-revA.dts
+++ b/arch/arm64/boot/dts/xilinx/zynqmp-zcu106-revA.dts
@@ -388,6 +388,7 @@ si570_1: clock-generator@5d { /* USER SI570 - u42 */
 				temperature-stability = <50>;
 				factory-fout = <300000000>;
 				clock-frequency = <300000000>;
+				clock-output-names = "si570_user";
 			};
 		};
 		i2c@3 {
@@ -401,6 +402,7 @@ si570_2: clock-generator@5d { /* USER MGT SI570 - u56 */
 				temperature-stability = <50>; /* copy from zc702 */
 				factory-fout = <156250000>;
 				clock-frequency = <148500000>;
+				clock-output-names = "si570_mgt";
 			};
 		};
 		i2c@4 {
diff --git a/arch/arm64/boot/dts/xilinx/zynqmp-zcu111-revA.dts b/arch/arm64/boot/dts/xilinx/zynqmp-zcu111-revA.dts
index b3c29947d6b3..022c732005ee 100644
--- a/arch/arm64/boot/dts/xilinx/zynqmp-zcu111-revA.dts
+++ b/arch/arm64/boot/dts/xilinx/zynqmp-zcu111-revA.dts
@@ -304,6 +304,7 @@ si570_1: clock-generator@5d { /* USER SI570 - u47 */
 				temperature-stability = <50>;
 				factory-fout = <300000000>;
 				clock-frequency = <300000000>;
+				clock-output-names = "si570_user";
 			};
 		};
 		i2c@3 {
@@ -317,6 +318,7 @@ si570_2: clock-generator@5d { /* USER MGT SI570 - u49 */
 				temperature-stability = <50>;
 				factory-fout = <156250000>;
 				clock-frequency = <148500000>;
+				clock-output-names = "si570_mgt";
 			};
 		};
 		i2c@4 {
-- 
2.24.0

