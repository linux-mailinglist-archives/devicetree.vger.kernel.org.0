Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D8A855EEFE6
	for <lists+devicetree@lfdr.de>; Thu, 29 Sep 2022 10:03:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234998AbiI2IDG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 29 Sep 2022 04:03:06 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40024 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234858AbiI2ICp (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 29 Sep 2022 04:02:45 -0400
Received: from mail-ej1-x62c.google.com (mail-ej1-x62c.google.com [IPv6:2a00:1450:4864:20::62c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 956AE13D1EC
        for <devicetree@vger.kernel.org>; Thu, 29 Sep 2022 01:02:19 -0700 (PDT)
Received: by mail-ej1-x62c.google.com with SMTP id lc7so1198778ejb.0
        for <devicetree@vger.kernel.org>; Thu, 29 Sep 2022 01:02:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date;
        bh=D2RJPCDzkl0JaLhf6TnDnD54B1Ia7Ewoe4Ns/FqzqUM=;
        b=K44Zfwmi1ystprsLzflRoSnSe90rx6tnBw+4WMDSobGCYgNcDX7JwFPi2F5v1Rd9qi
         JHHNs72xVI+agpOCavnafNiWFH/GnjGy0OF91ZbuqJC9CjSoSU9ZSKfq6t1a9p1I++r+
         GKtvIS84GkPTP9CziBpQHqBGLEZzb2seXKz2WENjzBUxoAaUvCQm8epWuzPDpVLBZjvi
         aT0QzW/DiPQ/2qEjr66st6CSI5GS5sgwotaATHS/RUdRGkUk1w6M6imkSS2WsPHSVgxk
         dvRQ3BR/EHpCUI3278tpHECDOxmGZoWgzrOekQg3onyweVmKB7nSQXFZqaGI6Jy8D5Fo
         VT+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date;
        bh=D2RJPCDzkl0JaLhf6TnDnD54B1Ia7Ewoe4Ns/FqzqUM=;
        b=sinEDsr1HYJjEg6dWzabtLQF7rvh7c6vb5JBOzMiCHGZzOOOV6Pf3kAa5pFLpeFv2Z
         r2RSHyJWSh8Yk1/Kfw5luuVs47RPEoB+zYisIM3SJaPiOv5Si+WlxxUIlI/Eyn16cpe8
         bokWC1WxZGDIU5k6xe7BECbWSJpKgvOLyJpbEAfR3nmyxqmrSbO4h5Vhp5NHGBAFFT1L
         Y5mBhGVzJAwmYVPxOUp4WkVI1sk7kY8NAfvf1obTYKawpLKwoG28u7dg7Q9cb/EARomG
         z2CuYrEoTXX1E5nNE7aPCrjiEGLwcSDI39RAUXeRAVaQ7YBhNRABolCOksTqZQszoe45
         mX0Q==
X-Gm-Message-State: ACrzQf2hOIFJI5WaXE7siIQJ7nAjwSIODnHfxwolDbMq5KxsYUTzNl/i
        ubwgC/dPMfPcTrOII4SOSlBmzoy6kIWb8w==
X-Google-Smtp-Source: AMsMyM4JJjnroJH7xE8SAJ5SucdEHMX/sHdp0HGbe1dhZPm+Pp3n4pSVcMmcd1zndGU3fpGsMNTQsA==
X-Received: by 2002:a17:907:97d4:b0:781:c182:c45c with SMTP id js20-20020a17090797d400b00781c182c45cmr1673786ejc.170.1664438537533;
        Thu, 29 Sep 2022 01:02:17 -0700 (PDT)
Received: from WBEC325.dom.lan ([2001:470:64f7:0:a03b:951f:e3a0:4dd4])
        by smtp.gmail.com with ESMTPSA id kx17-20020a170907775100b007262a5e2204sm3596173ejc.153.2022.09.29.01.02.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 29 Sep 2022 01:02:16 -0700 (PDT)
From:   Pawel Dembicki <paweldembicki@gmail.com>
To:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Gregory Clement <gregory.clement@bootlin.com>,
        Andrew Lunn <andrew@lunn.ch>
Cc:     Pawel Dembicki <paweldembicki@gmail.com>,
        Linus Walleij <linus.walleij@linaro.org>
Subject: [PATCH] ARM: dts: kirkwood: Add drivetemp thermal zone in Ctera C200V1
Date:   Thu, 29 Sep 2022 10:02:10 +0200
Message-Id: <20220929080210.3189925-1-paweldembicki@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Ctera C200 V1 have two SATA bays, but thermal zone is handled for only one.
For some reason thermal zone works only with first disk.
It was reported one year ago [1].

[1] https://www.mail-archive.com/openwrt-devel@lists.openwrt.org/msg56599.html

Suggested-by: Linus Walleij <linus.walleij@linaro.org>
Signed-off-by: Pawel Dembicki <paweldembicki@gmail.com>
---
 arch/arm/boot/dts/kirkwood-c200-v1.dts | 37 ++++++++++++++++++++++++++
 1 file changed, 37 insertions(+)

diff --git a/arch/arm/boot/dts/kirkwood-c200-v1.dts b/arch/arm/boot/dts/kirkwood-c200-v1.dts
index f59ff7578dfc..ffe60150a67a 100644
--- a/arch/arm/boot/dts/kirkwood-c200-v1.dts
+++ b/arch/arm/boot/dts/kirkwood-c200-v1.dts
@@ -156,6 +156,31 @@ led-12 {
 			trigger-sources = <&hub_port1>;
 		};
 	};
+
+	thermal-zones {
+		/* Thermal zone works only with first disk */
+
+		disk0-thermal {
+			polling-delay = <20000>;
+			polling-delay-passive = <2000>;
+
+			thermal-sensors = <&hdd0_temp>;
+
+			/* Tripping points from the fan.script in the rootfs */
+			trips {
+				disk0_alert: disk0-alert {
+					temperature = <40000>;
+					hysteresis = <5000>;
+					type = "active";
+				};
+				disk0_crit: disk0-crit {
+					temperature = <60000>;
+					hysteresis = <2000>;
+					type = "critical";
+				};
+			};
+		};
+	};
 };
 
 &eth0 {
@@ -280,6 +305,18 @@ &rtc {
 &sata {
 	status = "okay";
 	nr-ports = <2>;
+	#address-cells = <1>;
+	#size-cells = <0>;
+
+	hdd0_temp: sata-port@0 {
+		reg = <0>;
+		#thermal-sensor-cells = <0>;
+	};
+
+	hdd1_temp: sata-port@1 {
+		reg = <1>;
+		#thermal-sensor-cells = <0>;
+	};
 };
 
 &uart0 {
-- 
2.34.1

