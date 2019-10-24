Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 90DBBE3ED5
	for <lists+devicetree@lfdr.de>; Fri, 25 Oct 2019 00:09:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730237AbfJXWJS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 24 Oct 2019 18:09:18 -0400
Received: from www.linuxtv.org ([130.149.80.248]:40689 "EHLO www.linuxtv.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1730139AbfJXWJR (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Thu, 24 Oct 2019 18:09:17 -0400
Received: from mchehab by www.linuxtv.org with local (Exim 4.84_2)
        (envelope-from <mchehab@linuxtv.org>)
        id 1iNkzD-0002ug-1A; Thu, 24 Oct 2019 21:49:39 +0000
From:   Mauro Carvalho Chehab <mchehab+samsung@kernel.org>
Date:   Thu, 24 Oct 2019 21:43:29 +0000
Subject: [git:media_tree/master] media: ad5820: DT new optional field enable-gpios
To:     linuxtv-commits@linuxtv.org
Cc:     Pavel Machek <pavel@ucw.cz>, devicetree@vger.kernel.org,
        Ricardo Ribalda Delgado <ribalda@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Sakari Ailus <sakari.ailus@linux.intel.com>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Mail-followup-to: linux-media@vger.kernel.org
Forward-to: linux-media@vger.kernel.org
Reply-to: linux-media@vger.kernel.org
Message-Id: <E1iNkzD-0002ug-1A@www.linuxtv.org>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This is an automatic generated email to let you know that the following patch were queued:

Subject: media: ad5820: DT new optional field enable-gpios
Author:  Ricardo Ribalda Delgado <ribalda@kernel.org>
Date:    Mon Oct 7 10:28:52 2019 -0300

Document new enable-gpio field. It can be used to disable the part
without turning down its regulator.

Cc: devicetree@vger.kernel.org
Signed-off-by: Ricardo Ribalda Delgado <ribalda@kernel.org>
Acked-by: Pavel Machek <pavel@ucw.cz>
Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Reviewed-by: Rob Herring <robh@kernel.org>
Signed-off-by: Sakari Ailus <sakari.ailus@linux.intel.com>
Signed-off-by: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>

 Documentation/devicetree/bindings/media/i2c/ad5820.txt | 6 ++++++
 1 file changed, 6 insertions(+)

---

diff --git a/Documentation/devicetree/bindings/media/i2c/ad5820.txt b/Documentation/devicetree/bindings/media/i2c/ad5820.txt
index 5940ca11c021..db596e8eb0ba 100644
--- a/Documentation/devicetree/bindings/media/i2c/ad5820.txt
+++ b/Documentation/devicetree/bindings/media/i2c/ad5820.txt
@@ -8,6 +8,11 @@ Required Properties:
 
   - VANA-supply: supply of voltage for VANA pin
 
+Optional properties:
+
+   - enable-gpios : GPIO spec for the XSHUTDOWN pin. The XSHUTDOWN signal is
+active low, a high level on the pin enables the device.
+
 Example:
 
        ad5820: coil@c {
@@ -15,5 +20,6 @@ Example:
                reg = <0x0c>;
 
                VANA-supply = <&vaux4>;
+               enable-gpios = <&msmgpio 26 GPIO_ACTIVE_HIGH>;
        };
 
