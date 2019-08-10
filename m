Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id A10B488A7F
	for <lists+devicetree@lfdr.de>; Sat, 10 Aug 2019 12:06:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726168AbfHJKGV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 10 Aug 2019 06:06:21 -0400
Received: from vip.corpemail.net ([162.243.126.186]:51908 "EHLO
        vip.corpemail.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726066AbfHJKGV (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 10 Aug 2019 06:06:21 -0400
X-Greylist: delayed 360 seconds by postgrey-1.27 at vger.kernel.org; Sat, 10 Aug 2019 06:06:21 EDT
Received: from ([60.208.111.195])
        by unicom145.biz-email.net (Antispam) with ASMTP (SSL) id BRL32730;
        Sat, 10 Aug 2019 17:53:30 +0800
Received: from localhost (10.100.1.52) by Jtjnmail201618.home.langchao.com
 (10.100.2.18) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5; Sat, 10 Aug
 2019 17:53:25 +0800
From:   John Wang <wangzqbj@inspur.com>
To:     <robh+dt@kernel.org>, <mark.rutland@arm.com>, <trivial@kernel.org>,
        <linux@roeck-us.net>, <venture@google.com>,
        <jgebben@sweptlaser.com>, <anson.huang@nxp.com>,
        <devicetree@vger.kernel.org>, <openbmc@lists.ozlabs.org>,
        <duanzhijia01@inspur.com>, <mine260309@gmail.com>
Subject: [PATCH v2 1/2] dt-bindings: Add ipsps1 as a trivial device
Date:   Sat, 10 Aug 2019 17:53:25 +0800
Message-ID: <20190810095325.5333-1-wangzqbj@inspur.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
Content-Type: text/plain
X-Originating-IP: [10.100.1.52]
X-ClientProxiedBy: jtjnmail201604.home.langchao.com (10.100.2.4) To
 Jtjnmail201618.home.langchao.com (10.100.2.18)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The ipsps1 is an Inspur Power System power supply unit

Signed-off-by: John Wang <wangzqbj@inspur.com>
---
v2:
    - No changes.
---
 Documentation/devicetree/bindings/trivial-devices.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/trivial-devices.yaml b/Documentation/devicetree/bindings/trivial-devices.yaml
index 747fd3f689dc..63960c7d949a 100644
--- a/Documentation/devicetree/bindings/trivial-devices.yaml
+++ b/Documentation/devicetree/bindings/trivial-devices.yaml
@@ -101,6 +101,8 @@ properties:
             # Infineon TLV493D-A1B6 I2C 3D Magnetic Sensor
           - infineon,tlv493d-a1b6
             # Intersil ISL29028 Ambient Light and Proximity Sensor
+          - inspur,ipsps1
+            # Inspur Power System power supply unit version 1
           - isil,isl29028
             # Intersil ISL29030 Ambient Light and Proximity Sensor
           - isil,isl29030
-- 
2.17.1

