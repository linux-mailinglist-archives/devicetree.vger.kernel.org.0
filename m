Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 3DB8110D51
	for <lists+devicetree@lfdr.de>; Wed,  1 May 2019 21:39:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726077AbfEATjy (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 1 May 2019 15:39:54 -0400
Received: from da1vs01.rockwellcollins.com ([205.175.227.27]:49270 "EHLO
        da1vs01.rockwellcollins.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1726004AbfEATjy (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 1 May 2019 15:39:54 -0400
X-Greylist: delayed 566 seconds by postgrey-1.27 at vger.kernel.org; Wed, 01 May 2019 15:39:53 EDT
X-RC-All-From: , 205.175.227.20, No hostname, adam.michaelis@rockwellcollins.com,
 Adam Michaelis <adam.michaelis@rockwellcollins.com>, , 
X-RC-Attachments: , ,
X-RC-RemoteIP: 205.175.227.20
X-RC-RemoteHost: No hostname
X-RC-IP-Hostname: da1ip01.rockwellcollins.com
X-RC-IP-MID: 122784627
X-RC-IP-Group: GOOGLE_RELAYED
X-RC-IP-Policy: $GOOGLE_RELAYED
X-RC-IP-SBRS: None
Received: from unknown (HELO mail-ot1-f69.google.com) ([205.175.227.20])
  by da1vs01.rockwellcollins.com with ESMTP/TLS/AES128-GCM-SHA256; 01 May 2019 14:30:27 -0500
Received: by mail-ot1-f69.google.com with SMTP id 94so24170ots.14
        for <devicetree@vger.kernel.org>; Wed, 01 May 2019 12:30:27 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
        bh=F4PFKivrCCt8E/bjYsH5ykIrQ9bNtH2T/uQxJDWTUxk=;
        b=tZ7uJwJQJncVT2ure9Sk5iapr5+tZjfHZtNRfEBvlOLx9ZvHd8QHa6KDu9g/hFRPch
         e2BihTgxUQpv6Uoxx+XBaEABh6dCFyDEwz3yiiMGWlJwOUw1STnsMnHzawmkjLd5wRHv
         4lWKNWGCFDbeg1cGy9Ezd2g/kXVkAjBZvba6vOmIoJrLihAO+saPCTAUTmueLsmMN7VD
         UCYuGGau5GzllCsoteijPu6HSpR3c6G6wsMZC/8hDZGJ/Dplbo6MGUCKDHv0FKK3k1W/
         HWvx+VWoqd3LXzwXjj+BrUWS+YN4CpTPGqJK8bFHI0drjaXRSa0u4Vi4co4OKExlpD1X
         VfiQ==
X-Gm-Message-State: APjAAAWj+/+1rr9llGBSIDCSHUWWNH51dmddgem/3Vt4hlFqFZZ3pvH1
        8Rpizr7FkZWP7PNV8r4TWSHNstFKyHQJWXBvOhp2rPmIjECIz5WK96CgpxDRaans1+Qkby1tSMe
        Ad4v5eKl9wpe4DcUH1EeJ6YWlp302ynN6YaNrc2AHIvfCER5oxCj0E5an
X-Received: by 2002:aca:c246:: with SMTP id s67mr7812466oif.159.1556739027174;
        Wed, 01 May 2019 12:30:27 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzwl9jaLwlQF3bo/hxPu7ykO2nZUNUL3iGGE/m6q02Ansh3+g/noBeDiTGYKszlPtmb9P02rIBb3GTVamr8Acs=
X-Received: by 2002:aca:c246:: with SMTP id s67mr7812457oif.159.1556739026959;
 Wed, 01 May 2019 12:30:26 -0700 (PDT)
MIME-Version: 1.0
From:   Adam Michaelis <adam.michaelis@rockwellcollins.com>
Date:   Wed, 1 May 2019 14:30:16 -0500
Message-ID: <CALMrGWUsr4+E3bYSj8hGvxDhZRZ1xiwVtd-x4RnOf3En6xMq5Q@mail.gmail.com>
Subject: [PATCH 2/6] dt-bindings: iio: ad7949: Add adi,reference-select
To:     lars@metafoo.de, michael.hennerich@analog.com, jic23@kernel.org,
        knaack.h@gmx.de, pmeerw@pmeerw.net, linux-iio@vger.kernel.org,
        linux-kernel@vger.kernel.org, robh+dt@kernel.org,
        mark.rutland@arm.com, charles-antoine.couret@essensium.com,
        devicetree@vger.kernel.org
Cc:     Clayton Shotwell <clayton.shotwell@rockwellcollins.com>,
        Brandon Maier <brandon.maier@rockwellcollins.com>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From d228a1a119e33aff91f481fb8ab301a027b5a4ac Mon Sep 17 00:00:00 2001
From: Adam Michaelis <adam.michaelis@rockwellcollins.com>
Date: Thu, 25 Apr 2019 15:22:00 -0500
Subject: [PATCH 2/6] dt-bindings: iio: ad7949: Add adi,reference-select

Adding optional parameter to AD7949 to specify the source for the
reference voltage signal. Default value is maintaned with option '6' to
match previous version of driver.

Signed-off-by: Adam Michaelis <adam.michaelis@rockwellcollins.com>
---
Sorry about the re-sends - GMail inserted HTML on me and it bounced from vger.
---
 .../devicetree/bindings/iio/adc/ad7949.txt         | 22 ++++++++++++++++++++--
 1 file changed, 20 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/iio/adc/ad7949.txt
b/Documentation/devicetree/bindings/iio/adc/ad7949.txt
index c7f5057356b1..14ee9a2cb2a5 100644
--- a/Documentation/devicetree/bindings/iio/adc/ad7949.txt
+++ b/Documentation/devicetree/bindings/iio/adc/ad7949.txt
@@ -6,11 +6,29 @@ Required properties:
  * "adi,ad7682"
  * "adi,ad7689"
  - reg: spi chip select number for the device
- - vref-supply: The regulator supply for ADC reference voltage

-Example:
+Optional properties:
+ - adi,reference-select: Select the reference voltage source to use
+ when converting the input voltages. Valid values are:
+   0: Internal 2.5V reference; temperature sensor enabled
+   1: Internal 4.096V reference; temperature sensor enabled
+   2: External reference, temperature sensor enabled, no buffer
+   3: External reference, temperature sensor enabled, buffer enabled
+   6: External reference, temperature sensor disabled, no buffer
+   7: External reference, temperature sensor disabled, buffer enabled
+ - vref-supply: The regulator supply for ADC reference voltage. Required
+ if external reference selected by 'adi,reference-select'.
+
+Examples:
 adc@0 {
  compatible = "adi,ad7949";
  reg = <0>;
+ adi,reference-select = <2>;
  vref-supply = <&vdd_supply>;
 };
+
+adc@0 {
+ compatible = "adi,ad7949";
+ reg = <0>;
+ adi,reference-select = <0>;
+};
-- 
1.9.1
