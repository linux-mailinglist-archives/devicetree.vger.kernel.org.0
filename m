Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 180F82CB792
	for <lists+devicetree@lfdr.de>; Wed,  2 Dec 2020 09:46:21 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727007AbgLBIpb (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 2 Dec 2020 03:45:31 -0500
Received: from mo4-p01-ob.smtp.rzone.de ([85.215.255.51]:30796 "EHLO
        mo4-p01-ob.smtp.rzone.de" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726669AbgLBIpb (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 2 Dec 2020 03:45:31 -0500
X-RZG-AUTH: ":P3gBZUipdd93FF5ZZvYFPugejmSTVR2nRPhVORvLd4SsytBXS7IYBkLahKxB626NJkxR"
X-RZG-CLASS-ID: mo00
Received: from localhost.localdomain
        by smtp.strato.de (RZmta 47.3.4 SBL|AUTH)
        with ESMTPSA id Z061efwB28aXV2k
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256 bits))
        (Client did not present a certificate);
        Wed, 2 Dec 2020 09:36:33 +0100 (CET)
From:   Stephan Gerhold <stephan@gerhold.net>
To:     Jonathan Cameron <jic23@kernel.org>
Cc:     Lars-Peter Clausen <lars@metafoo.de>,
        Peter Meerwald-Stadler <pmeerw@pmeerw.net>,
        Rob Herring <robh+dt@kernel.org>, linux-iio@vger.kernel.org,
        devicetree@vger.kernel.org, Stephan Gerhold <stephan@gerhold.net>,
        Linus Walleij <linus.walleij@linaro.org>
Subject: [PATCH] dt-bindings: iio: accel: bma255: Fix bmc150/bmi055 compatible
Date:   Wed,  2 Dec 2020 09:35:51 +0100
Message-Id: <20201202083551.7753-1-stephan@gerhold.net>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The bmc150-accel-i2c.c driver has an "_accel" suffix for the
compatibles of BMC150 and BMI055. This is necessary because BMC150
contains both accelerometer (bosch,bmc150_accel) and magnetometer
(bosch,bmc150_magn) and therefore "bosch,bmc150" would be ambiguous.

However, the binding documentation suggests using "bosch,bmc150".
Add the "_accel" suffix for BMC150 and BMI055 so the binding docs
match what is expected by the driver.

Cc: Linus Walleij <linus.walleij@linaro.org>
Fixes: 496a39526fce8 ("iio: accel: bmc150-accel: Add DT bindings")
Signed-off-by: Stephan Gerhold <stephan@gerhold.net>
---
 Documentation/devicetree/bindings/iio/accel/bosch,bma255.yaml | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/iio/accel/bosch,bma255.yaml b/Documentation/devicetree/bindings/iio/accel/bosch,bma255.yaml
index 6eef3480ea8f..c2efbb813ca2 100644
--- a/Documentation/devicetree/bindings/iio/accel/bosch,bma255.yaml
+++ b/Documentation/devicetree/bindings/iio/accel/bosch,bma255.yaml
@@ -16,8 +16,8 @@ description:
 properties:
   compatible:
     enum:
-      - bosch,bmc150
-      - bosch,bmi055
+      - bosch,bmc150_accel
+      - bosch,bmi055_accel
       - bosch,bma255
       - bosch,bma250e
       - bosch,bma222
-- 
2.29.2

