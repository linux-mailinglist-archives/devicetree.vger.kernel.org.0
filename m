Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 9D4A383231
	for <lists+devicetree@lfdr.de>; Tue,  6 Aug 2019 15:05:53 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728102AbfHFNFn (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 6 Aug 2019 09:05:43 -0400
Received: from mail-wr1-f66.google.com ([209.85.221.66]:39175 "EHLO
        mail-wr1-f66.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1731807AbfHFNFQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 6 Aug 2019 09:05:16 -0400
Received: by mail-wr1-f66.google.com with SMTP id x4so34663406wrt.6
        for <devicetree@vger.kernel.org>; Tue, 06 Aug 2019 06:05:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=uqH4UC1eSv85wYUtuk1mdjTGck9SIfF7lj/7yQH/8cg=;
        b=aAt655SRq+X0Jny0WrUuo7sHjdd6G8a1GtrHRFYhXO1URHEr3byWv8/KWMOj8q9TjQ
         040nKWawlrr5JZ83gyaGdkT+k1Mod+TK9X1aG9bdRz2rdifNlah3zVCF0zUmssP6DQAi
         u3gIb/HUhMGroGl90/ytrizOn8PNZgHtXNNLH4BpNhVvNKEckWXSXJP70eDShNK7qgyd
         50ytA6pXiVCBbSku2+T3undY7EiTNu9bOpKmrDi6UT7/QwWz3kFlsPMYFtqH5oCuGoja
         w7UBBPo0rnAaaKloFS59gpptairrYwWMTvFTstw4Idmcu9lwAcX3CdPgsDkSbBH7H2dZ
         h8TA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=uqH4UC1eSv85wYUtuk1mdjTGck9SIfF7lj/7yQH/8cg=;
        b=MxzvhQ8+yJ6Yy/oDoU/aFmSh5nr4Q0ucEJ7OWOYEmWSK8KL/2nMmDbvj4nDx94jy/0
         P8uW6dDwa8gb1WgN9mkARdUCPU6IfIpmPVXKeLnoXh+VUV948et3MbX3ebP7dHdIK+TV
         PnZL7frqUVF9B0KiliFXd5AMtUa7dSpEOHtJ7jTL3zsKV0NhyJ1vj3sU/e2aU1RIZoeo
         MmIUVgZDuqn6mPOARgqCtJiTfj33PqWgKucuh+VzsiQTRB9Hfc7knGkGmx3nMR3Z91aV
         tUH9kgTamLAMFx5emE6NrU1yXhAjYniByU2P0qWi85UBFlaBxYwkCagnpLoMVmR4KuRa
         1y1w==
X-Gm-Message-State: APjAAAXSFQbjDNIh3559uYRecRYui+vcBGAPhhadgw1GB3nFsnbzR0Hv
        Mm7cJuK607j7FmwuXHmy62QJVQ==
X-Google-Smtp-Source: APXvYqzvKl6XDaK+k++qOddjwyFWqDlehJlRskJnMO8xAi2r7ugXjIzQcQOHtKclpqWFZJmrdGoijA==
X-Received: by 2002:adf:e708:: with SMTP id c8mr4973678wrm.25.1565096713800;
        Tue, 06 Aug 2019 06:05:13 -0700 (PDT)
Received: from glaroque-ThinkPad-T480.local (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.gmail.com with ESMTPSA id j33sm201888738wre.42.2019.08.06.06.05.12
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Tue, 06 Aug 2019 06:05:13 -0700 (PDT)
From:   Guillaume La Roque <glaroque@baylibre.com>
To:     daniel.lezcano@linaro.org, khilman@baylibre.com
Cc:     linux-pm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
Subject: [PATCH v3 3/6] arm64: dts: amlogic: g12: add temperature sensor
Date:   Tue,  6 Aug 2019 15:05:03 +0200
Message-Id: <20190806130506.8753-4-glaroque@baylibre.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190806130506.8753-1-glaroque@baylibre.com>
References: <20190806130506.8753-1-glaroque@baylibre.com>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add cpu and ddr temperature sensors for G12 Socs

Signed-off-by: Guillaume La Roque <glaroque@baylibre.com>
Reviewed-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
---
 .../boot/dts/amlogic/meson-g12-common.dtsi    | 20 +++++++++++++++++++
 1 file changed, 20 insertions(+)

diff --git a/arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi b/arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi
index 06e186ca41e3..a06298538614 100644
--- a/arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi
@@ -1353,6 +1353,26 @@
 				};
 			};
 
+			cpu_temp: temperature-sensor@34800 {
+				compatible = "amlogic,g12-cpu-thermal",
+					     "amlogic,g12-thermal";
+				reg = <0x0 0x34800 0x0 0x50>;
+				interrupts = <GIC_SPI 35 IRQ_TYPE_EDGE_RISING>;
+				clocks = <&clkc CLKID_TS>;
+				#thermal-sensor-cells = <0>;
+				amlogic,ao-secure = <&sec_AO>;
+			};
+
+			ddr_temp: temperature-sensor@34c00 {
+				compatible = "amlogic,g12-ddr-thermal",
+					     "amlogic,g12-thermal";
+				reg = <0x0 0x34c00 0x0 0x50>;
+				interrupts = <GIC_SPI 36 IRQ_TYPE_EDGE_RISING>;
+				clocks = <&clkc CLKID_TS>;
+				#thermal-sensor-cells = <0>;
+				amlogic,ao-secure = <&sec_AO>;
+			};
+
 			usb2_phy0: phy@36000 {
 				compatible = "amlogic,g12a-usb2-phy";
 				reg = <0x0 0x36000 0x0 0x2000>;
-- 
2.17.1

