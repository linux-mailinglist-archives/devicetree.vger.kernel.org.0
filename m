Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 3D749135ADF
	for <lists+devicetree@lfdr.de>; Thu,  9 Jan 2020 15:02:51 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1731462AbgAIOCn (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 9 Jan 2020 09:02:43 -0500
Received: from mail-wm1-f67.google.com ([209.85.128.67]:39713 "EHLO
        mail-wm1-f67.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1731435AbgAIOCj (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 9 Jan 2020 09:02:39 -0500
Received: by mail-wm1-f67.google.com with SMTP id 20so2956070wmj.4
        for <devicetree@vger.kernel.org>; Thu, 09 Jan 2020 06:02:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=monstr-eu.20150623.gappssmtp.com; s=20150623;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=TG2woCcPtSsZFZqS+iMQDZj2SmEEY13YTogN1lSrI+I=;
        b=S4sXMfk+F+gdcwAtycqdg3QU1/70IIiYt/X5zC1hzn6ySGVkEbef9QKwbjbdkAcOqf
         i0FTXSC2JAS3fdR/cSRZeUVInuMQuEMQHBdZhJWKXFPVWPXHDB9jVhZEzX9t2ZQ0Ssb4
         y0kbJO54RhauW2HtjV2zMQbrJ4jRJQd7LTorh9AV1aSMc9sRLAcCgk4JA+40yiDpdTEX
         29REhzdrWXcAWEXD9+g5kiRFMvaN4UVHkotOFc7PUjckz8FstQbqms83nGNh1MQ9kgES
         vpcKm3FujgL9b+QVwWByTmTcPZ6OFXbJe//WX+3WxsLtg/yWcIXn5J7pvjUxrUXM0V1q
         XECQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:content-transfer-encoding;
        bh=TG2woCcPtSsZFZqS+iMQDZj2SmEEY13YTogN1lSrI+I=;
        b=TGP8apATd200qWTcZpHyggSVeBtNWRnVzfcQAi/uepL6WhD6TYpkJBgI9mwrvotmLD
         Kl7efyKgYlHuYHSKE+xjHDSrLJk1rSrkjEfB7Rvioqlozw6rnRJqiiQpi3jVIehwU2s1
         YU/vtsjoe8aW7IVg+meEGO+ppJlXAH4c09CFJtKyiFt9KicbTME5EnHNEag+BAxhfvNN
         UY+JdwIFPDZxLD3MyRcCOO/SOvH8pE7ZLmlZx3yu5HUti6hAeNKJMZ3MBJoN0E3s8PaB
         M/2hyZ5YLaQl//xz46qHydnYY1nv2x7UCfMLCFO5g1EkKmCPe+O+GJ4xbdp08lu60BcZ
         WpUQ==
X-Gm-Message-State: APjAAAUn1yDVIxEWUncsbJAvRlPT/oUysgsREqF/eV6eulsFoUh37Qel
        /SR321V/4oxNqi7tExB0zQOrpg==
X-Google-Smtp-Source: APXvYqz4brO2seX3lqYhvSlG7cla7AZ6Z+wvs6Y13BLgKEhXbo4aCBJ3FUWhcd6wYqPVrae1SrOlQA==
X-Received: by 2002:a05:600c:2150:: with SMTP id v16mr4768848wml.156.1578578557466;
        Thu, 09 Jan 2020 06:02:37 -0800 (PST)
Received: from localhost (nat-35.starnet.cz. [178.255.168.35])
        by smtp.gmail.com with ESMTPSA id c2sm8264253wrp.46.2020.01.09.06.02.36
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Thu, 09 Jan 2020 06:02:36 -0800 (PST)
From:   Michal Simek <michal.simek@xilinx.com>
To:     linux-arm-kernel@lists.infradead.org, git@xilinx.com
Cc:     Anurag Kumar Vulisha <anurag.kumar.vulisha@xilinx.com>,
        Harini Katakam <harini.katakam@xilinx.com>,
        Mark Rutland <mark.rutland@arm.com>,
        Rajan Vaja <rajan.vaja@xilinx.com>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: [PATCH 5/7] arm64: zynqmp: Add label property to all ina226 on zcu102
Date:   Thu,  9 Jan 2020 15:02:19 +0100
Message-Id: <a7febcff2f7674a4b5afbd5c5c360171e6658ff4.1578578535.git.michal.simek@xilinx.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <cover.1578578535.git.michal.simek@xilinx.com>
References: <cover.1578578535.git.michal.simek@xilinx.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Label property is adding capability to distiguish chips from each other
when iio framework is used.

Signed-off-by: Michal Simek <michal.simek@xilinx.com>
---

 .../boot/dts/xilinx/zynqmp-zcu102-revA.dts     | 18 ++++++++++++++++++
 1 file changed, 18 insertions(+)

diff --git a/arch/arm64/boot/dts/xilinx/zynqmp-zcu102-revA.dts b/arch/arm64/boot/dts/xilinx/zynqmp-zcu102-revA.dts
index afdd0ff37900..4f801721564f 100644
--- a/arch/arm64/boot/dts/xilinx/zynqmp-zcu102-revA.dts
+++ b/arch/arm64/boot/dts/xilinx/zynqmp-zcu102-revA.dts
@@ -253,60 +253,70 @@ i2c@0 {
 			u76: ina226@40 { /* u76 */
 				compatible = "ti,ina226";
 				#io-channel-cells = <1>;
+				label = "ina226-u76";
 				reg = <0x40>;
 				shunt-resistor = <5000>;
 			};
 			u77: ina226@41 { /* u77 */
 				compatible = "ti,ina226";
 				#io-channel-cells = <1>;
+				label = "ina226-u77";
 				reg = <0x41>;
 				shunt-resistor = <5000>;
 			};
 			u78: ina226@42 { /* u78 */
 				compatible = "ti,ina226";
 				#io-channel-cells = <1>;
+				label = "ina226-u78";
 				reg = <0x42>;
 				shunt-resistor = <5000>;
 			};
 			u87: ina226@43 { /* u87 */
 				compatible = "ti,ina226";
 				#io-channel-cells = <1>;
+				label = "ina226-u87";
 				reg = <0x43>;
 				shunt-resistor = <5000>;
 			};
 			u85: ina226@44 { /* u85 */
 				compatible = "ti,ina226";
 				#io-channel-cells = <1>;
+				label = "ina226-u85";
 				reg = <0x44>;
 				shunt-resistor = <5000>;
 			};
 			u86: ina226@45 { /* u86 */
 				compatible = "ti,ina226";
 				#io-channel-cells = <1>;
+				label = "ina226-u86";
 				reg = <0x45>;
 				shunt-resistor = <5000>;
 			};
 			u93: ina226@46 { /* u93 */
 				compatible = "ti,ina226";
 				#io-channel-cells = <1>;
+				label = "ina226-u93";
 				reg = <0x46>;
 				shunt-resistor = <5000>;
 			};
 			u88: ina226@47 { /* u88 */
 				compatible = "ti,ina226";
 				#io-channel-cells = <1>;
+				label = "ina226-u88";
 				reg = <0x47>;
 				shunt-resistor = <5000>;
 			};
 			u15: ina226@4a { /* u15 */
 				compatible = "ti,ina226";
 				#io-channel-cells = <1>;
+				label = "ina226-u15";
 				reg = <0x4a>;
 				shunt-resistor = <5000>;
 			};
 			u92: ina226@4b { /* u92 */
 				compatible = "ti,ina226";
 				#io-channel-cells = <1>;
+				label = "ina226-u92";
 				reg = <0x4b>;
 				shunt-resistor = <5000>;
 			};
@@ -319,48 +329,56 @@ i2c@1 {
 			u79: ina226@40 { /* u79 */
 				compatible = "ti,ina226";
 				#io-channel-cells = <1>;
+				label = "ina226-u79";
 				reg = <0x40>;
 				shunt-resistor = <2000>;
 			};
 			u81: ina226@41 { /* u81 */
 				compatible = "ti,ina226";
 				#io-channel-cells = <1>;
+				label = "ina226-u81";
 				reg = <0x41>;
 				shunt-resistor = <5000>;
 			};
 			u80: ina226@42 { /* u80 */
 				compatible = "ti,ina226";
 				#io-channel-cells = <1>;
+				label = "ina226-u80";
 				reg = <0x42>;
 				shunt-resistor = <5000>;
 			};
 			u84: ina226@43 { /* u84 */
 				compatible = "ti,ina226";
 				#io-channel-cells = <1>;
+				label = "ina226-u84";
 				reg = <0x43>;
 				shunt-resistor = <5000>;
 			};
 			u16: ina226@44 { /* u16 */
 				compatible = "ti,ina226";
 				#io-channel-cells = <1>;
+				label = "ina226-u16";
 				reg = <0x44>;
 				shunt-resistor = <5000>;
 			};
 			u65: ina226@45 { /* u65 */
 				compatible = "ti,ina226";
 				#io-channel-cells = <1>;
+				label = "ina226-u65";
 				reg = <0x45>;
 				shunt-resistor = <5000>;
 			};
 			u74: ina226@46 { /* u74 */
 				compatible = "ti,ina226";
 				#io-channel-cells = <1>;
+				label = "ina226-u74";
 				reg = <0x46>;
 				shunt-resistor = <5000>;
 			};
 			u75: ina226@47 { /* u75 */
 				compatible = "ti,ina226";
 				#io-channel-cells = <1>;
+				label = "ina226-u75";
 				reg = <0x47>;
 				shunt-resistor = <5000>;
 			};
-- 
2.24.0

