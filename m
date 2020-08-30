Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 894E5257051
	for <lists+devicetree@lfdr.de>; Sun, 30 Aug 2020 21:55:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726201AbgH3Tzk (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 30 Aug 2020 15:55:40 -0400
Received: from mout.kundenserver.de ([212.227.126.135]:34615 "EHLO
        mout.kundenserver.de" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726179AbgH3Tzj (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 30 Aug 2020 15:55:39 -0400
Received: from buildfff.adridolf.com ([188.192.134.246]) by
 mrelayeu.kundenserver.de (mreue011 [212.227.15.167]) with ESMTPSA (Nemesis)
 id 1Mbzdn-1kjLGp3OcJ-00davd; Sun, 30 Aug 2020 21:55:28 +0200
From:   Adrian Schmutzler <freifunk@adrianschmutzler.de>
To:     Rob Herring <robh+dt@kernel.org>, Ray Jui <rjui@broadcom.com>,
        Scott Branden <sbranden@broadcom.com>,
        bcm-kernel-feedback-list@broadcom.com, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
Subject: [PATCH] ARM: dts: NSP: replace status value "ok" by "okay"
Date:   Sun, 30 Aug 2020 21:54:41 +0200
Message-Id: <20200830195441.798-1-freifunk@adrianschmutzler.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Provags-ID: V03:K1:+/azfOQbnHdYNjoCfHS+N7HGgBp+qNo7qImcgshi0WDZ0b9agaR
 pytkIFOMlrvG+rSudkGr+gZT5zsqYuNNftit9Mzn2agV8v9hL/47H+tYDbsPy+MzEXeKhUa
 7U+WABO5JX6oz8a1SuohaJIagr3CrhyN0qELV0/BXppnd1rFJjBl4Fr2M7bs75qa/Mv+AMK
 Yx+AiTsIqowS6vUd/Xk4Q==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:2gElFqweISE=:7CXpGz63Bc2tj4Z5YbsbCg
 EVj/EZrapvNLzSQGSdTtSVQ4d/Av1421/Czp5LxEBrDONUakKSXw5Y1vMaIw8Ga/FkUU9GvRJ
 q4UxlawF+p7r5rbe6Y1Pl+9CvobDBw6XnKt+WdfzRy9uPzgWY/z1fpztZdlZMAVTNa2MBSXGL
 /oEQIqe8W4SeaF5gCj0Zg39J7a2A3P4lu9s/0YBzn7L/AG93BvsxcMckxqXiBREgaXYfz4h2B
 +elHY2sHSX6KfwyoVBpSxeaKdbbyV7RT4X/3FIxkJNEPEDErA6S36rSfGz6JqKmeBvO+sG8NS
 nfCSqYQlprmSXNOo8008ynMJk0/a6yXE4Rd/Aib4/c+CjBNwa/8S4iotPn2ZL5z5z0CHYxpaL
 U+1a22orayNalob5dqy5DrQlSRRhE1KnLwv1ewp6RiQBGxKvi5OcxbOG53VYo554FWwIk2B99
 hZYxgMJ9cugwZ1sJ/xAh1xDVNIRwo9x7EBwbJEy4wk0SAthNCapWMfYGWFHH9QkLeQXtHI/r9
 IeyT6axAy0DZcjA/BVjdxxHKlnJ9H5MnoAij48cnZfKDPLtn+kHEAjEiK9ZC5EqUdJEJafBqD
 Fz2/xrZnX6AkmdvF+LRQc7299wIad6VaVuwiL3I88Jl8SNTOpDvQ8OUF3ZWeZsbLZmLs1gXEZ
 lQtW3DMfyZSkUOkerJkzNkm+S9Qib2WsBbr77jNsSc9mPNWUXAHLIf/n6AeRNaDmC6rWy+p9n
 Q6Dez6UKo6b/mczGWVtJNmfv+h5bd6JU7tQEAUb7Q3n6dpeLuYtXSAy6ze1IxuQ7IUX1AcXqq
 De/citt6JDwnkwYJzPb/94yWnrY8Uti1uAI9oWXYdNVGa4s4CPtjXR9FlxACy32955bgBVwKp
 d5+NrKT+c67T8IKlPtZQ==
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
 arch/arm/boot/dts/bcm958525xmc.dts | 2 +-
 arch/arm/boot/dts/bcm958625k.dts   | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boot/dts/bcm958525xmc.dts b/arch/arm/boot/dts/bcm958525xmc.dts
index 716da62f5788..21f922dc6019 100644
--- a/arch/arm/boot/dts/bcm958525xmc.dts
+++ b/arch/arm/boot/dts/bcm958525xmc.dts
@@ -196,7 +196,7 @@
 };
 
 &sdio {
-	status = "ok";
+	status = "okay";
 };
 
 &uart0 {
diff --git a/arch/arm/boot/dts/bcm958625k.dts b/arch/arm/boot/dts/bcm958625k.dts
index 7b84b54436ed..7782b61c51a1 100644
--- a/arch/arm/boot/dts/bcm958625k.dts
+++ b/arch/arm/boot/dts/bcm958625k.dts
@@ -208,7 +208,7 @@
 &sdio {
 	bus-width = <4>;
 	no-1-8-v;
-	status = "ok";
+	status = "okay";
 };
 
 &srab {
-- 
2.20.1

