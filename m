Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 99B99E3ED4
	for <lists+devicetree@lfdr.de>; Fri, 25 Oct 2019 00:09:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730236AbfJXWJQ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 24 Oct 2019 18:09:16 -0400
Received: from www.linuxtv.org ([130.149.80.248]:40686 "EHLO www.linuxtv.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1730139AbfJXWJQ (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Thu, 24 Oct 2019 18:09:16 -0400
X-Greylist: delayed 1176 seconds by postgrey-1.27 at vger.kernel.org; Thu, 24 Oct 2019 18:09:15 EDT
Received: from mchehab by www.linuxtv.org with local (Exim 4.84_2)
        (envelope-from <mchehab@linuxtv.org>)
        id 1iNkzC-0002tM-Oj; Thu, 24 Oct 2019 21:49:38 +0000
From:   Mauro Carvalho Chehab <mchehab+samsung@kernel.org>
Date:   Thu, 24 Oct 2019 21:44:25 +0000
Subject: [git:media_tree/master] media: ad5820: DT new compatible devices
To:     linuxtv-commits@linuxtv.org
Cc:     Pavel Machek <pavel@ucw.cz>, Rob Herring <robh@kernel.org>,
        Sakari Ailus <sakari.ailus@linux.intel.com>,
        Ricardo Ribalda Delgado <ribalda@kernel.org>,
        devicetree@vger.kernel.org
Mail-followup-to: linux-media@vger.kernel.org
Forward-to: linux-media@vger.kernel.org
Reply-to: linux-media@vger.kernel.org
Message-Id: <E1iNkzC-0002tM-Oj@www.linuxtv.org>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This is an automatic generated email to let you know that the following patch were queued:

Subject: media: ad5820: DT new compatible devices
Author:  Ricardo Ribalda Delgado <ribalda@kernel.org>
Date:    Mon Oct 7 10:28:55 2019 -0300

Document new compatible devices.

Cc: devicetree@vger.kernel.org
Signed-off-by: Ricardo Ribalda Delgado <ribalda@kernel.org>
Reviewed-by: Rob Herring <robh@kernel.org>
Acked-by: Pavel Machek <pavel@ucw.cz>
Signed-off-by: Sakari Ailus <sakari.ailus@linux.intel.com>
Signed-off-by: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>

 Documentation/devicetree/bindings/media/i2c/ad5820.txt | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

---

diff --git a/Documentation/devicetree/bindings/media/i2c/ad5820.txt b/Documentation/devicetree/bindings/media/i2c/ad5820.txt
index db596e8eb0ba..5764cbedf9b7 100644
--- a/Documentation/devicetree/bindings/media/i2c/ad5820.txt
+++ b/Documentation/devicetree/bindings/media/i2c/ad5820.txt
@@ -2,7 +2,10 @@
 
 Required Properties:
 
-  - compatible: Must contain "adi,ad5820"
+  - compatible: Must contain one of:
+		- "adi,ad5820"
+		- "adi,ad5821"
+		- "adi,ad5823"
 
   - reg: I2C slave address
 
