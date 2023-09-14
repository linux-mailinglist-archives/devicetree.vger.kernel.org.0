Return-Path: <devicetree+bounces-172-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D794B7A00A5
	for <lists+devicetree@lfdr.de>; Thu, 14 Sep 2023 11:46:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D00541C20ADB
	for <lists+devicetree@lfdr.de>; Thu, 14 Sep 2023 09:46:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2A90E2AB58;
	Thu, 14 Sep 2023 09:45:57 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FDC6224FF
	for <devicetree@vger.kernel.org>; Thu, 14 Sep 2023 09:45:56 +0000 (UTC)
Received: from mail-lj1-x229.google.com (mail-lj1-x229.google.com [IPv6:2a00:1450:4864:20::229])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 26F4BE3
	for <devicetree@vger.kernel.org>; Thu, 14 Sep 2023 02:45:56 -0700 (PDT)
Received: by mail-lj1-x229.google.com with SMTP id 38308e7fff4ca-2b9338e4695so10504211fa.2
        for <devicetree@vger.kernel.org>; Thu, 14 Sep 2023 02:45:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sartura.hr; s=sartura; t=1694684754; x=1695289554; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=E7ZJS7sdRoRRRFWMj7zQxb45/LmVE5dZcYckff9SE60=;
        b=w8T+yCOI7KA4ub4gTbuO5LlaxcmLPW3AbXZHcii6XGbrDLSwAHGS9b28PK3EBj1/zE
         lTTquETWgywhc4XCnqfxiTEBAPsGtDKCbQ0ZN//vvrn6d2M7v9I6sWdWIBtAMzVdX8Vg
         gX8PG5iKVZ4T9C4Rda3ixtWoRcAAzA/R6FqTHdzIlHe+b8ixUTdeuto37ZtLUdSat477
         z1N8QSBHkb59V/lX0YbsijwGfHRid6HYot67rtW42vN4W7DfGJ02rMYh0/khqWOkyP+a
         p4cXUMUFLx/h+zsIlmWGgC51wT9wEeq6gVIeE3pLw3frHPXpUNz91Pm4Wd4rotN90Z5o
         3rWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694684754; x=1695289554;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=E7ZJS7sdRoRRRFWMj7zQxb45/LmVE5dZcYckff9SE60=;
        b=hG4S/7ZT5dMHyRLCa7uxroPeufkyIofhU+BdznomkXsPv/ShZ9YqoiHYvImMOBI4cw
         uvk3aBfdsFo2uxtkVZ9WtxOswafCjxRiHrlli6pcP3CQDqxYHCZUScxjMCUXs02uhRy8
         MqOGHRylFkZQ2Zs/dTGjmXxrHURIDA2v4Qvtinuxeh/aqN4EnTh5KLbLwh2oZZ7xP8FV
         vw055TX+burQ2/k1NPMYJgz5et7DrgwY+9QfnxnnT0E2Jncoh9Q5YzaeB7tKJQAeA+Q9
         /atVb8Uf3Pi8eED7dhthtulRlUzci4shV2+7iecmZoQpLHCDO49VqJ/oU/ETU4cCqNnV
         mxEA==
X-Gm-Message-State: AOJu0Yzb+Sh2mMFg9JJfHlP+y1pwLHw7W6AVFVu8UBiom3yfFmATQLLE
	OFw0sl9WVy1auHgnVFoDbZQGsQ==
X-Google-Smtp-Source: AGHT+IHSgul+kLrJPi7KVcBBip8N6s20VQqyBuiCm2/3Tvx45VXiObBiCIa3Y7CQVbs50y5JTgmjXg==
X-Received: by 2002:a05:6512:530:b0:4fb:772a:af12 with SMTP id o16-20020a056512053000b004fb772aaf12mr3871076lfc.21.1694684754247;
        Thu, 14 Sep 2023 02:45:54 -0700 (PDT)
Received: from fedora.. (dh207-96-100.xnet.hr. [88.207.96.100])
        by smtp.googlemail.com with ESMTPSA id e10-20020a50ec8a000000b0052565298bedsm690790edr.34.2023.09.14.02.45.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 14 Sep 2023 02:45:53 -0700 (PDT)
From: Robert Marko <robert.marko@sartura.hr>
To: andrew@lunn.ch,
	gregory.clement@bootlin.com,
	sebastian.hesselbarth@gmail.com,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: luka.perkov@sartura.hr,
	Robert Marko <robert.marko@sartura.hr>
Subject: [PATCH 1/2] arm64: dts: marvell: uDPU: rename the SFP GPIO properties
Date: Thu, 14 Sep 2023 11:45:00 +0200
Message-ID: <20230914094550.1519097-1-robert.marko@sartura.hr>
X-Mailer: git-send-email 2.41.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Rename the GPIO related SFP properties to include the preffered -gpios
suffix as defined in the SFP schema.

This fixes the following warning:
arch/arm64/boot/dts/marvell/armada-3720-eDPU.dtb: sfp-eth1: 'los-gpio', 'mod-def0-gpio', 'tx-disable-gpio', 'tx-fault-gpio' do not match any of the regexes: 'pinctrl-[0-9]+'
from schema $id: http://devicetree.org/schemas/net/sff,sfp.yaml#

Signed-off-by: Robert Marko <robert.marko@sartura.hr>
---
 arch/arm64/boot/dts/marvell/armada-3720-uDPU.dtsi | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/boot/dts/marvell/armada-3720-uDPU.dtsi b/arch/arm64/boot/dts/marvell/armada-3720-uDPU.dtsi
index 3f79923376fb..3a9b6907185d 100644
--- a/arch/arm64/boot/dts/marvell/armada-3720-uDPU.dtsi
+++ b/arch/arm64/boot/dts/marvell/armada-3720-uDPU.dtsi
@@ -61,10 +61,10 @@ led-alarm2 {
 	sfp_eth1: sfp-eth1 {
 		compatible = "sff,sfp";
 		i2c-bus = <&i2c1>;
-		los-gpio = <&gpiosb 7 GPIO_ACTIVE_HIGH>;
-		mod-def0-gpio = <&gpiosb 8 GPIO_ACTIVE_LOW>;
-		tx-disable-gpio = <&gpiosb 9 GPIO_ACTIVE_HIGH>;
-		tx-fault-gpio = <&gpiosb 10 GPIO_ACTIVE_HIGH>;
+		los-gpios = <&gpiosb 7 GPIO_ACTIVE_HIGH>;
+		mod-def0-gpios = <&gpiosb 8 GPIO_ACTIVE_LOW>;
+		tx-disable-gpios = <&gpiosb 9 GPIO_ACTIVE_HIGH>;
+		tx-fault-gpios = <&gpiosb 10 GPIO_ACTIVE_HIGH>;
 		maximum-power-milliwatt = <3000>;
 	};
 };
-- 
2.41.0


