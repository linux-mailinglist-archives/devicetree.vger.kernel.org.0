Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 29E52257053
	for <lists+devicetree@lfdr.de>; Sun, 30 Aug 2020 22:00:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726179AbgH3UAN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 30 Aug 2020 16:00:13 -0400
Received: from mout.kundenserver.de ([217.72.192.75]:50917 "EHLO
        mout.kundenserver.de" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726155AbgH3UAL (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 30 Aug 2020 16:00:11 -0400
Received: from buildfff.adridolf.com ([188.192.134.246]) by
 mrelayeu.kundenserver.de (mreue106 [212.227.15.183]) with ESMTPSA (Nemesis)
 id 1MLQl3-1jvlp33UrD-00IQv3; Sun, 30 Aug 2020 22:00:02 +0200
From:   Adrian Schmutzler <freifunk@adrianschmutzler.de>
To:     Brijesh Singh <brijeshkumar.singh@amd.com>,
        Suravee Suthikulpanit <suravee.suthikulpanit@amd.com>,
        Tom Lendacky <thomas.lendacky@amd.com>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org
Subject: [PATCH] arm64: dts: amd: replace status value "ok" by "okay"
Date:   Sun, 30 Aug 2020 21:59:18 +0200
Message-Id: <20200830195918.999-1-freifunk@adrianschmutzler.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Provags-ID: V03:K1:6T3SVkUgM1VLP19tEfn5IrUUDoLUa3kZQ1iu8Jeno864FwDajQP
 uoo8cHW7IEBpRzw6omC4LqO21MVZvy7dLJEAlYRE5fLo49ujiSTzSsPkzTvmWe7ozn0A85V
 nvUDWqUTiGURj/j4wRM4Jg42CQXtI5cO7p6ugh7naLfhxZjxdlguRXeCiCVcJV1uHfnpnlk
 vFGCMwpbOyFul59LfvLxQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:Eet5ilGEEhY=:5/h/XE+qrrXoCmfn4hE+Be
 JNDZmjY4PCEJGR+gQPmkrWVbCfzL+f9+raJFvJFUxcHpOULebhi1YI6x5Fu3l6LFqBe1E7aUC
 3bgXlge6klxjcKkd9CE/Kn6io/s0yhWa3yCPtQi8kOTcLZQLGz/O1eXjNK/lopdu9RzyMDY6o
 uysz2sRnFEbLpsW/ju1kU8NCGBquVifg3AHMJd/PNQ/0s6IBB3EOGBwDKdUHmGwwOZ2sHsFug
 XD6yolgk8zWEuuqlqEE88FhLppEanOLxd0hksrcsmqZ4BdS6H5t5OsmUnINfPzeYmoHQskwQQ
 yrvU5WHv6f8nWlDB5QnOqj5POrGTAKS1W0sNA8r4hrMxsBmFiLu+NTdQT6ET6+sjg7jUoTRXj
 6TQFcrplDkSoeVu6r2icGDyk4BYbEi2FAvgkcZSD2rW3omwTfvt6LlVpF21/k/ZHBYDU2Wihl
 JLJZyGGmzvN+1KvE8owcRaa4/1zsWp8pVqU3ABpHeafvXGjyLt6oNQ/g2yHXZ/rtQH5QiMpfp
 E5ue88lTSOsrWHX2huM6/ARoXip4+GyE1CTY7JDS68ljwsTfP+yhXFyWGsmanYorwf0ZRH0M8
 y3b0LbK2kjwyLqtfd47PTzLtfTiMxCrhQ31yqXwVzlDw+LKsgjQdnLPWQipVxWd46ijGQPAKI
 HW9tJfotn8Cap+EXrZTUtPQWtEi7stujsU74ZiKgzqlX5tEKYHitp0Bx6aCRqyso7uxrU6K35
 sfv4ERMnq9/2P+SZ6KuCg07gyOog7+D9y/+LcQ4zXaFdAzFGaCHqFeYb2uRXKdtErv4Az3TfX
 hFGdc40L/gpvAJ6lsLbNR4d8QqlO5S25XERJxMNkzu4mD8Y7jYrz0Tf69AKieW3mI88n8OQY9
 44X3W87yTP/7j/wZ0xZg==
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

While the DT parser recognizes "ok" as a valid value for the
"status" property, it is actually mentioned nowhere. Use the
proper value "okay" instead, as done in the majority of files
already.

Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>
---
 .../boot/dts/amd/amd-overdrive-rev-b0.dts     | 22 ++++++++---------
 .../boot/dts/amd/amd-overdrive-rev-b1.dts     | 24 +++++++++----------
 arch/arm64/boot/dts/amd/amd-overdrive.dts     | 14 +++++------
 arch/arm64/boot/dts/amd/husky.dts             | 20 ++++++++--------
 4 files changed, 40 insertions(+), 40 deletions(-)

diff --git a/arch/arm64/boot/dts/amd/amd-overdrive-rev-b0.dts b/arch/arm64/boot/dts/amd/amd-overdrive-rev-b0.dts
index 8e341be9a399..a77f19ac63cd 100644
--- a/arch/arm64/boot/dts/amd/amd-overdrive-rev-b0.dts
+++ b/arch/arm64/boot/dts/amd/amd-overdrive-rev-b0.dts
@@ -25,7 +25,7 @@
 };
 
 &ccp0 {
-	status = "ok";
+	status = "okay";
 	amd,zlib-support = <1>;
 };
 
@@ -33,39 +33,39 @@
  * NOTE: In Rev.B, gpio0 is reserved.
  */
 &gpio1 {
-	status = "ok";
+	status = "okay";
 };
 
 &gpio2 {
-	status = "ok";
+	status = "okay";
 };
 
 &gpio3 {
-	status = "ok";
+	status = "okay";
 };
 
 &gpio4 {
-	status = "ok";
+	status = "okay";
 };
 
 &i2c0 {
-	status = "ok";
+	status = "okay";
 };
 
 &i2c1 {
-	status = "ok";
+	status = "okay";
 };
 
 &pcie0 {
-	status = "ok";
+	status = "okay";
 };
 
 &spi0 {
-	status = "ok";
+	status = "okay";
 };
 
 &spi1 {
-	status = "ok";
+	status = "okay";
 	sdcard0: sdcard@0 {
 		compatible = "mmc-spi-slot";
 		reg = <0>;
@@ -80,7 +80,7 @@
 };
 
 &ipmi_kcs {
-	status = "ok";
+	status = "okay";
 };
 
 &smb0 {
diff --git a/arch/arm64/boot/dts/amd/amd-overdrive-rev-b1.dts b/arch/arm64/boot/dts/amd/amd-overdrive-rev-b1.dts
index 92cef05c6b74..09fc9c3ac60f 100644
--- a/arch/arm64/boot/dts/amd/amd-overdrive-rev-b1.dts
+++ b/arch/arm64/boot/dts/amd/amd-overdrive-rev-b1.dts
@@ -25,7 +25,7 @@
 };
 
 &ccp0 {
-	status = "ok";
+	status = "okay";
 	amd,zlib-support = <1>;
 };
 
@@ -33,43 +33,43 @@
  * NOTE: In Rev.B, gpio0 is reserved.
  */
 &gpio1 {
-	status = "ok";
+	status = "okay";
 };
 
 &gpio2 {
-	status = "ok";
+	status = "okay";
 };
 
 &gpio3 {
-	status = "ok";
+	status = "okay";
 };
 
 &gpio4 {
-	status = "ok";
+	status = "okay";
 };
 
 &i2c0 {
-	status = "ok";
+	status = "okay";
 };
 
 &i2c1 {
-	status = "ok";
+	status = "okay";
 };
 
 &pcie0 {
-	status = "ok";
+	status = "okay";
 };
 
 &sata1 {
-	status = "ok";
+	status = "okay";
 };
 
 &spi0 {
-	status = "ok";
+	status = "okay";
 };
 
 &spi1 {
-	status = "ok";
+	status = "okay";
 	sdcard0: sdcard@0 {
 		compatible = "mmc-spi-slot";
 		reg = <0>;
@@ -84,7 +84,7 @@
 };
 
 &ipmi_kcs {
-	status = "ok";
+	status = "okay";
 };
 
 &smb0 {
diff --git a/arch/arm64/boot/dts/amd/amd-overdrive.dts b/arch/arm64/boot/dts/amd/amd-overdrive.dts
index 41b3a6c0993d..56f27c71a15b 100644
--- a/arch/arm64/boot/dts/amd/amd-overdrive.dts
+++ b/arch/arm64/boot/dts/amd/amd-overdrive.dts
@@ -19,31 +19,31 @@
 };
 
 &ccp0 {
-	status = "ok";
+	status = "okay";
 };
 
 &gpio0 {
-	status = "ok";
+	status = "okay";
 };
 
 &gpio1 {
-	status = "ok";
+	status = "okay";
 };
 
 &i2c0 {
-	status = "ok";
+	status = "okay";
 };
 
 &pcie0 {
-	status = "ok";
+	status = "okay";
 };
 
 &spi0 {
-	status = "ok";
+	status = "okay";
 };
 
 &spi1 {
-	status = "ok";
+	status = "okay";
 	sdcard0: sdcard@0 {
 		compatible = "mmc-spi-slot";
 		reg = <0>;
diff --git a/arch/arm64/boot/dts/amd/husky.dts b/arch/arm64/boot/dts/amd/husky.dts
index 7acde34772cb..f68c95fe0e90 100644
--- a/arch/arm64/boot/dts/amd/husky.dts
+++ b/arch/arm64/boot/dts/amd/husky.dts
@@ -25,7 +25,7 @@
 };
 
 &ccp0 {
-	status = "ok";
+	status = "okay";
 	amd,zlib-support = <1>;
 };
 
@@ -33,39 +33,39 @@
  * NOTE: In Rev.B, gpio0 is reserved.
  */
 &gpio1 {
-	status = "ok";
+	status = "okay";
 };
 
 &gpio2 {
-	status = "ok";
+	status = "okay";
 };
 
 &gpio3 {
-	status = "ok";
+	status = "okay";
 };
 
 &gpio4 {
-	status = "ok";
+	status = "okay";
 };
 
 &i2c0 {
-	status = "ok";
+	status = "okay";
 };
 
 &i2c1 {
-	status = "ok";
+	status = "okay";
 };
 
 &pcie0 {
-	status = "ok";
+	status = "okay";
 };
 
 &spi0 {
-	status = "ok";
+	status = "okay";
 };
 
 &spi1 {
-	status = "ok";
+	status = "okay";
 	sdcard0: sdcard@0 {
 		compatible = "mmc-spi-slot";
 		reg = <0>;
-- 
2.20.1

