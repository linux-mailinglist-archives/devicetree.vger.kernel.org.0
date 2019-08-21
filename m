Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 67F5C984D8
	for <lists+devicetree@lfdr.de>; Wed, 21 Aug 2019 21:53:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730114AbfHUTxG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 21 Aug 2019 15:53:06 -0400
Received: from mout.perfora.net ([74.208.4.194]:54377 "EHLO mout.perfora.net"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1727780AbfHUTxE (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Wed, 21 Aug 2019 15:53:04 -0400
Received: from towel.hsd1.wa.comcast.net ([71.197.225.149]) by
 mrelay.perfora.net (mreueus004 [74.208.5.2]) with ESMTPSA (Nemesis) id
 1MQMJR-1heKyP30ID-00MKOB; Wed, 21 Aug 2019 21:52:48 +0200
From:   Sunil Mohan Adapa <sunil@medhas.org>
To:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Cc:     maxime.ripard@bootlin.com, wens@csie.org, robh+dt@kernel.org,
        mark.rutland@arm.com, Sunil Mohan Adapa <sunil@medhas.org>
Subject: [PATCH v3 1/2] dt-bindings: arm: sunxi: Add compatible for A64 OlinuXino with eMMC
Date:   Wed, 21 Aug 2019 12:52:16 -0700
Message-Id: <20190821195217.4166-2-sunil@medhas.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190821195217.4166-1-sunil@medhas.org>
References: <20190821195217.4166-1-sunil@medhas.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Provags-ID: V03:K1:qvsG70X/ZyrWwmkq6jdKgG8Vou1NrQjfOvZJlBUkwRiBRWHclck
 BCLiiIKZSED3yIMGWd99yZD1L/UtsN/01GvPjVVXsO3cfgLQJnTZcRBE0eNjc+YNiiVenBT
 9a7TbHrbMUAqqS7wHZFRQxc4r1LWZadq05L3zyeq2l9KwdQ+bx6qw2QjA9asSYu3s3qDWah
 PBIyXLyCXZbRN8JBAbiMQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:zGpRyRJDQPM=:6vd+yY2w+zYppZKERKxBrX
 TAdHm1OC+EWa64JJ74yK+5hOTgPOfYOtWcN2lO70V2EpWF6E3iBdJbx4e3GnALhSdhdvjruzr
 T9gaYS5hBfhckSh/iamY4g57nUxydjK0/wg3VXNeXORe69YniHhKgg4LuSIgK5tTlapd/24HW
 kAsoZYRVS+L+T6i15fkIrv45IIwqBGoY2EyBY0wJ+Z9WNfqURkxmCPOEiBXjpW4HNSl9KAimx
 9frZ6PFdtCl7oqH8K+fBKr6pH5kd2jcRDpc+XI4Jh6Qj274OmoeM71cU+C2WVE36haH+MtSbB
 jy3CvVZcTKk3qOe1ZM5GmTTI9wFstnEspHDMpX7aEiwaw70K6sJdefbgLO0Rimpiwja/6NCNn
 I+qUwvmncEwcDdBRCudxy3aXrjzNlnvQLsjshQW0Rj2JmG73pGxpXTK7eIeJqXJix760nTO1+
 5d5MhBhzkgJQvaMvRJkyf26unYZn27R+XVswbpH/v+ialdZClTv3LPpwP4y6HXzeo3Y3EYRvl
 5XUfuaNnVKe0hewvrN5Te79k1EIvigC33+VkDjhtld+FvwBcwv/KnQFrqyCGyuApnarn6YLiU
 mpWdZnVsiCjmgtSt8CGyIpFonZju07yBdupJTbRAOe/HT9BD8CBkvuBUe5fub5hd1o02XXhZY
 GTjDVotUfT03uK4wdaKytJVNrhG/V6v9Siki2q/JEYjPC/ewyHP3fmtniec1tCGQvAeS3vZeA
 DLrRbCnZzGaRKWj2vYWT/y9bxcJteaxtcz8LIg==
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

A64 OLinuXino board from Olimex has three variants with onboard eMMC:
A64-OLinuXino-1Ge16GW, A64-OLinuXino-1Ge4GW and A64-OLinuXino-2Ge8G-IND. In
addition, there are two variants without eMMC. One without eMMC and one with SPI
flash. This suggests the need for separate device tree for the three eMMC
variants.

Add new compatible string to the bindings documentation for the A64 OlinuXino
board variant with on-board eMMC.

Signed-off-by: Sunil Mohan Adapa <sunil@medhas.org>
---
 Documentation/devicetree/bindings/arm/sunxi.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/sunxi.yaml b/Documentation/devicetree/bindings/arm/sunxi.yaml
index 93dc4c607f07..972b1e9ee804 100644
--- a/Documentation/devicetree/bindings/arm/sunxi.yaml
+++ b/Documentation/devicetree/bindings/arm/sunxi.yaml
@@ -574,6 +574,11 @@ properties:
           - const: olimex,a64-olinuxino
           - const: allwinner,sun50i-a64
 
+      - description: Olimex A64-OlinuXino (with eMMC)
+        items:
+          - const: olimex,a64-olinuxino-emmc
+          - const: allwinner,sun50i-a64
+
       - description: Olimex A64 Teres-I
         items:
           - const: olimex,a64-teres-i
-- 
2.20.1

