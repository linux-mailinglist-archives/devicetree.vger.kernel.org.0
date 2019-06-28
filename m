Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id CB6D859C76
	for <lists+devicetree@lfdr.de>; Fri, 28 Jun 2019 15:04:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726828AbfF1NEO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 28 Jun 2019 09:04:14 -0400
Received: from smtp.missinglinkelectronics.com ([94.130.14.54]:54308 "EHLO
        smtp.missinglinkelectronics.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1726558AbfF1NEN (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Fri, 28 Jun 2019 09:04:13 -0400
X-Greylist: delayed 381 seconds by postgrey-1.27 at vger.kernel.org; Fri, 28 Jun 2019 09:04:12 EDT
Received: from localhost (localhost [127.0.0.1])
        by smtp.missinglinkelectronics.com (Postfix) with ESMTP id 63012E01A1;
        Fri, 28 Jun 2019 14:57:50 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at missinglinkelectronics.com
Received: from smtp.missinglinkelectronics.com ([127.0.0.1])
        by localhost (mail.missinglinkelectronics.com [127.0.0.1]) (amavisd-new, port 10024)
        with ESMTP id WC4rP6wvBcCL; Fri, 28 Jun 2019 14:57:50 +0200 (CEST)
Received: from mail.missinglinkelectronics.com (localhost [127.0.0.1])
        (using TLSv1 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
        (No client certificate requested)
        (Authenticated sender: david)
        by smtp.missinglinkelectronics.com (Postfix) with ESMTPSA id 2AFBEE010A;
        Fri, 28 Jun 2019 14:57:50 +0200 (CEST)
Received: from 10.10.2.7 (proxying for 87.140.91.254)
        (SquirrelMail authenticated user david)
        by mail.missinglinkelectronics.com with HTTP;
        Fri, 28 Jun 2019 14:57:50 +0200
Message-ID: <a1af77a8b6d6832f888e6a55f5732982.squirrel@mail.missinglinkelectronics.com>
Date:   Fri, 28 Jun 2019 14:57:50 +0200
Subject: [PATCH] dt-bindings: ASoC: tlv320aic32x4: Fix property name
From:   "David Epping" <david.epping@missinglinkelectronics.com>
To:     "Mark Brown" <broonie@kernel.org>
Cc:     devicetree@vger.kernel.org, trivial@kernel.org
User-Agent: SquirrelMail/1.4.22
MIME-Version: 1.0
Content-Type:   text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7BIT
X-Priority: 3 (Normal)
Importance: Normal
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: David Epping <david.epping@missinglinkelectronics.com>

dt-bindings: ASoC: tlv320aic32x4: Fix property name

The 'supply' string is a suffix to the actual supply name, not a prefix.
Also extend the example section with required supply properties.

Signed-off-by: David Epping <david.epping@missinglinkelectronics.com>
---
 Documentation/devicetree/bindings/sound/tlv320aic32x4.txt | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/sound/tlv320aic32x4.txt
b/Documentation/devicetree/bindings/sound/tlv320aic32x4.txt
index ca75890..439eaf7 100644
--- a/Documentation/devicetree/bindings/sound/tlv320aic32x4.txt
+++ b/Documentation/devicetree/bindings/sound/tlv320aic32x4.txt
@@ -7,7 +7,7 @@ Required properties:
        "ti,tlv320aic32x4" TLV320AIC3204
        "ti,tlv320aic32x6" TLV320AIC3206, TLV320AIC3256
  - reg: I2C slave address
- - supply-*: Required supply regulators are:
+ - *-supply: Required supply regulators are:
     "iov" - digital IO power supply
     "ldoin" - LDO power supply
     "dv" - Digital core power supply
@@ -31,6 +31,8 @@ codec: tlv320aic32x4@18 {
        reg = <0x18>;
        clocks = <&clks 201>;
        clock-names = "mclk";
+       iov-supply = <&reg_3v3>;
+       ldoin-supply = <&reg_3v3>;
        aic32x4-gpio-func= <
                        0xff /* AIC32X4_MFPX_DEFAULT_VALUE */
                        0xff /* AIC32X4_MFPX_DEFAULT_VALUE */
-- 
2.7.4


