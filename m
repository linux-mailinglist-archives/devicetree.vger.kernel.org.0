Return-Path: <devicetree+bounces-173-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C1137A00A6
	for <lists+devicetree@lfdr.de>; Thu, 14 Sep 2023 11:47:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 596F21C20B1A
	for <lists+devicetree@lfdr.de>; Thu, 14 Sep 2023 09:47:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2172E2AB5D;
	Thu, 14 Sep 2023 09:45:58 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16F6D224FF
	for <devicetree@vger.kernel.org>; Thu, 14 Sep 2023 09:45:57 +0000 (UTC)
Received: from mail-ed1-x52d.google.com (mail-ed1-x52d.google.com [IPv6:2a00:1450:4864:20::52d])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 41DE9EB
	for <devicetree@vger.kernel.org>; Thu, 14 Sep 2023 02:45:57 -0700 (PDT)
Received: by mail-ed1-x52d.google.com with SMTP id 4fb4d7f45d1cf-529fb04a234so835234a12.3
        for <devicetree@vger.kernel.org>; Thu, 14 Sep 2023 02:45:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sartura.hr; s=sartura; t=1694684755; x=1695289555; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Ulj0sxL109s6WRduuI+x9sWJvUGugBDVjc0AW8V0tV0=;
        b=uuk12mev2HWLDJAhvfuqzmp1ltAEshLoPc1rBu7J257yD0YyMPyYDYfaBLyTADJaxu
         dqql4D2SxdAMpnuCcVOXFJJAxWXXtdNELkrFL8uOSmn7veBVGudmPTklc18BUst7bjOz
         dIWDEIfOBIAqQGSKE9AICVaEPBxAvShaticG5T89j72wkvQc9+tucPvb4KetRke3LK48
         8wAgHTJ2kYoXi9Yy8XvbxA2ZNj4KcEACgsO17GmcNbaHYKrGwco06EXEbt00PvEEGws4
         owHyckkfo1sXQWsxJsskDakeryKHQy8K0BJ1aSf3XNgZz795Uz3JEjtxUgcjpxk+8JdH
         4mYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694684755; x=1695289555;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Ulj0sxL109s6WRduuI+x9sWJvUGugBDVjc0AW8V0tV0=;
        b=LfoBql0Iq2bUIUO60SglATx4ItUYpWPff7IDK/Lhjxv239vQHlt/jQzwjW53lrJc+o
         oQz5KhktB/7RhPSSogz7kZyOOHAvv15u62qjWZpM/BmOPuQR4OZuh9nn7oU3NI4IgsW5
         U81QWf8n3A1BwoO7zKDAF712cG/21gLB9rVDXv+Wddk+K652xFZdDRZNHy3TSmO//Ssi
         j6l7Pwv2APsA5U70/buodDhzhemAO1bTA2E0DQUxUqhR8ALbQDIdXjV8fvZXnwq9iK0X
         mCkSLWTsXG+FHhVVgGp8BF1PxglGI0Snm8EJacWWaL6wo2l0EIfM6RpUz1ULcEO0AS2p
         qEdQ==
X-Gm-Message-State: AOJu0YwTs0UVawyU6VfLP89GCRwgnlHNyUs7+9zbxmt8jPrAij7LO2JD
	MwIW0mM8DTNmS8zAfkgbWfQQw3HWtaLHDalpbUY=
X-Google-Smtp-Source: AGHT+IHUUXjR202tEyKfXygRVDaxtDSF35MAKczmRFFXZk/N71UuM9KZrB8zkt+OWbntduc9N+RLTQ==
X-Received: by 2002:a05:6402:517b:b0:51d:d4c3:6858 with SMTP id d27-20020a056402517b00b0051dd4c36858mr4439955ede.12.1694684755560;
        Thu, 14 Sep 2023 02:45:55 -0700 (PDT)
Received: from fedora.. (dh207-96-100.xnet.hr. [88.207.96.100])
        by smtp.googlemail.com with ESMTPSA id e10-20020a50ec8a000000b0052565298bedsm690790edr.34.2023.09.14.02.45.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 14 Sep 2023 02:45:55 -0700 (PDT)
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
Subject: [PATCH 2/2] arm64: dts: marvell: eDPU: add support for version with external switch
Date: Thu, 14 Sep 2023 11:45:01 +0200
Message-ID: <20230914094550.1519097-2-robert.marko@sartura.hr>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20230914094550.1519097-1-robert.marko@sartura.hr>
References: <20230914094550.1519097-1-robert.marko@sartura.hr>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

New revision of eDPU uses an Marvell MV88E6361 switch to connect the SFP
cage and G.hn IC instead of connecting them directly to the ethernet
controllers.

U-Boot will enable the switch node and disable the unused ethernet
controller.

Signed-off-by: Robert Marko <robert.marko@sartura.hr>
---
 .../boot/dts/marvell/armada-3720-eDPU.dts     | 47 +++++++++++++++++++
 1 file changed, 47 insertions(+)

diff --git a/arch/arm64/boot/dts/marvell/armada-3720-eDPU.dts b/arch/arm64/boot/dts/marvell/armada-3720-eDPU.dts
index 57fc698e55d0..d6d37a1f6f38 100644
--- a/arch/arm64/boot/dts/marvell/armada-3720-eDPU.dts
+++ b/arch/arm64/boot/dts/marvell/armada-3720-eDPU.dts
@@ -12,3 +12,50 @@ / {
 &eth0 {
 	phy-mode = "2500base-x";
 };
+
+/*
+ * External MV88E6361 switch is only available on v2 of the board.
+ * U-Boot will enable the MDIO bus and switch nodes.
+ */
+&mdio {
+	status = "disabled";
+	pinctrl-names = "default";
+	pinctrl-0 = <&smi_pins>;
+
+	/* Actual device is MV88E6361 */
+	switch: switch@0 {
+		compatible = "marvell,mv88e6190";
+		#address-cells = <1>;
+		#size-cells = <0>;
+		reg = <0>;
+		status = "disabled";
+
+		ports {
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			port@0 {
+				reg = <0>;
+				label = "cpu";
+				phy-mode = "2500base-x";
+				managed = "in-band-status";
+				ethernet = <&eth0>;
+			};
+
+			port@9 {
+				reg = <9>;
+				label = "downlink";
+				phy-mode = "2500base-x";
+				managed = "in-band-status";
+			};
+
+			port@a {
+				reg = <10>;
+				label = "uplink";
+				phy-mode = "2500base-x";
+				managed = "in-band-status";
+				sfp = <&sfp_eth1>;
+			};
+		};
+	};
+};
-- 
2.41.0


