Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D8299281417
	for <lists+devicetree@lfdr.de>; Fri,  2 Oct 2020 15:34:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2387856AbgJBNeu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 2 Oct 2020 09:34:50 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46048 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726017AbgJBNeu (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 2 Oct 2020 09:34:50 -0400
Received: from mail-pg1-x544.google.com (mail-pg1-x544.google.com [IPv6:2607:f8b0:4864:20::544])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2F8CAC0613D0
        for <devicetree@vger.kernel.org>; Fri,  2 Oct 2020 06:34:48 -0700 (PDT)
Received: by mail-pg1-x544.google.com with SMTP id y14so774726pgf.12
        for <devicetree@vger.kernel.org>; Fri, 02 Oct 2020 06:34:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=0x0f.com; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=JKpKxwAv2Imtn8Ftp+MYPUK+s23vQoh7oPpjdYyQeuo=;
        b=hkIromzMwcDSjGb6JR9UUzVG/W2jWLnpGoELrZB65Z4Z+Hy71DgshiMPPFMLHKerbN
         ZmOosGe3YbAwLjS70Pyx7zsgwPmnHkgDfNKcGpvEndBXFgHuFeMiSmyembr84OVShDpL
         tJSnV/8EMjtYgrgyYGDcgbyl4nOtBTClwoyzQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=JKpKxwAv2Imtn8Ftp+MYPUK+s23vQoh7oPpjdYyQeuo=;
        b=pD7Oh1f5h973GuUgMCw9iD5Tqt0aEWeCY85+oYbuRuDjsAM4RNSabldVyHrqeOX+Tq
         2cPUD8+BDvuxxsuDCHu6q2OGZR7pCQFcBRZhDheaqPkX9cpAZlKrK82zTs/XxtcPnqUD
         9fsU/ikkgXyJrfRm8vpYEU0vs+TIgFhbOCfGf6UsY7ZzkovDiQ/Xj7fyE8PgO9gQFiKK
         B1QZ/GINUnlirCrhf8QswqxQsRVyw/aBzVKpELbirwdfxtjms9nV0lU27oacQiJFt+tP
         +bdUxtPh0vhmceGF/xJLauDDmOY0a9vNSj6Z6Dy2S4QFvysYtfk8VSfw0gCX0NI8DOcr
         F7mw==
X-Gm-Message-State: AOAM533Mh8CL22LP0p3jrkWIvIAbAYg8lCMKOq4bNegMANOVJcOKyNC2
        zQ1fSa/rKZMHjhxrwiBsILMV/YC/MMhFlA==
X-Google-Smtp-Source: ABdhPJwe2HKjxkPmZshuORBLd8pQzKxWJi78FCue97WylE3s3oZXCGbYObpAUhgZJzS8ieKf1B+Sgg==
X-Received: by 2002:a63:144d:: with SMTP id 13mr2218080pgu.153.1601645687731;
        Fri, 02 Oct 2020 06:34:47 -0700 (PDT)
Received: from shiro.work (p1268123-ipngn200803sizuokaden.shizuoka.ocn.ne.jp. [118.13.124.123])
        by smtp.googlemail.com with ESMTPSA id k14sm1708219pjd.45.2020.10.02.06.34.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 02 Oct 2020 06:34:47 -0700 (PDT)
From:   Daniel Palmer <daniel@0x0f.com>
To:     soc@kernel.org
Cc:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        mark-pk.tsai@mediatek.com, arnd@arndb.de, maz@kernel.org,
        Daniel Palmer <daniel@0x0f.com>
Subject: [PATCH v2 5/5] ARM: mstar: Fix up the fallout from moving the dts/dtsi files
Date:   Fri,  2 Oct 2020 22:34:18 +0900
Message-Id: <20201002133418.2250277-6-daniel@0x0f.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20201002133418.2250277-1-daniel@0x0f.com>
References: <20201002133418.2250277-1-daniel@0x0f.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Since the dtsi/dts files have been moved some includes are now
broken so this fixes up the includes so the dtbs build again.

Signed-off-by: Daniel Palmer <daniel@0x0f.com>
---
 arch/arm/boot/dts/mstar-infinity-msc313-breadbee_crust.dts | 2 +-
 arch/arm/boot/dts/mstar-infinity-msc313.dtsi               | 2 +-
 arch/arm/boot/dts/mstar-infinity3-msc313e-breadbee.dts     | 2 +-
 arch/arm/boot/dts/mstar-infinity3-msc313e.dtsi             | 2 +-
 arch/arm/boot/dts/mstar-infinity3.dtsi                     | 2 +-
 arch/arm/boot/dts/mstar-mercury5-ssc8336n-midrived08.dts   | 2 +-
 arch/arm/boot/dts/mstar-mercury5-ssc8336n.dtsi             | 2 +-
 7 files changed, 7 insertions(+), 7 deletions(-)

diff --git a/arch/arm/boot/dts/mstar-infinity-msc313-breadbee_crust.dts b/arch/arm/boot/dts/mstar-infinity-msc313-breadbee_crust.dts
index f24c5580d3e4..f9db2ff86f2d 100644
--- a/arch/arm/boot/dts/mstar-infinity-msc313-breadbee_crust.dts
+++ b/arch/arm/boot/dts/mstar-infinity-msc313-breadbee_crust.dts
@@ -5,7 +5,7 @@
  */
 
 /dts-v1/;
-#include "infinity-msc313.dtsi"
+#include "mstar-infinity-msc313.dtsi"
 
 / {
 	model = "BreadBee Crust";
diff --git a/arch/arm/boot/dts/mstar-infinity-msc313.dtsi b/arch/arm/boot/dts/mstar-infinity-msc313.dtsi
index 42f2b5552c77..3499fde263be 100644
--- a/arch/arm/boot/dts/mstar-infinity-msc313.dtsi
+++ b/arch/arm/boot/dts/mstar-infinity-msc313.dtsi
@@ -4,7 +4,7 @@
  * Author: Daniel Palmer <daniel@thingy.jp>
  */
 
-#include "infinity.dtsi"
+#include "mstar-infinity.dtsi"
 
 / {
 	memory@20000000 {
diff --git a/arch/arm/boot/dts/mstar-infinity3-msc313e-breadbee.dts b/arch/arm/boot/dts/mstar-infinity3-msc313e-breadbee.dts
index 1f93401c8530..f0eda80a95cc 100644
--- a/arch/arm/boot/dts/mstar-infinity3-msc313e-breadbee.dts
+++ b/arch/arm/boot/dts/mstar-infinity3-msc313e-breadbee.dts
@@ -5,7 +5,7 @@
  */
 
 /dts-v1/;
-#include "infinity3-msc313e.dtsi"
+#include "mstar-infinity3-msc313e.dtsi"
 
 / {
 	model = "BreadBee";
diff --git a/arch/arm/boot/dts/mstar-infinity3-msc313e.dtsi b/arch/arm/boot/dts/mstar-infinity3-msc313e.dtsi
index 4e7239afd823..f581b6f89555 100644
--- a/arch/arm/boot/dts/mstar-infinity3-msc313e.dtsi
+++ b/arch/arm/boot/dts/mstar-infinity3-msc313e.dtsi
@@ -4,7 +4,7 @@
  * Author: Daniel Palmer <daniel@thingy.jp>
  */
 
-#include "infinity3.dtsi"
+#include "mstar-infinity3.dtsi"
 
 / {
 	memory@20000000 {
diff --git a/arch/arm/boot/dts/mstar-infinity3.dtsi b/arch/arm/boot/dts/mstar-infinity3.dtsi
index 9b918c802654..9857e2a9934d 100644
--- a/arch/arm/boot/dts/mstar-infinity3.dtsi
+++ b/arch/arm/boot/dts/mstar-infinity3.dtsi
@@ -4,7 +4,7 @@
  * Author: Daniel Palmer <daniel@thingy.jp>
  */
 
-#include "infinity.dtsi"
+#include "mstar-infinity.dtsi"
 
 &imi {
 	reg = <0xa0000000 0x20000>;
diff --git a/arch/arm/boot/dts/mstar-mercury5-ssc8336n-midrived08.dts b/arch/arm/boot/dts/mstar-mercury5-ssc8336n-midrived08.dts
index f24bd8cb8e60..7306b737d9c4 100644
--- a/arch/arm/boot/dts/mstar-mercury5-ssc8336n-midrived08.dts
+++ b/arch/arm/boot/dts/mstar-mercury5-ssc8336n-midrived08.dts
@@ -5,7 +5,7 @@
  */
 
 /dts-v1/;
-#include "mercury5-ssc8336n.dtsi"
+#include "mstar-mercury5-ssc8336n.dtsi"
 
 / {
 	model = "70mai Midrive D08";
diff --git a/arch/arm/boot/dts/mstar-mercury5-ssc8336n.dtsi b/arch/arm/boot/dts/mstar-mercury5-ssc8336n.dtsi
index 7d4a4630c25c..3f5a4c029744 100644
--- a/arch/arm/boot/dts/mstar-mercury5-ssc8336n.dtsi
+++ b/arch/arm/boot/dts/mstar-mercury5-ssc8336n.dtsi
@@ -4,7 +4,7 @@
  * Author: Daniel Palmer <daniel@thingy.jp>
  */
 
-#include "mercury5.dtsi"
+#include "mstar-mercury5.dtsi"
 
 / {
 	memory@20000000 {
-- 
2.27.0

