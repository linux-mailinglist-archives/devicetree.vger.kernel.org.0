Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C60D2324BEC
	for <lists+devicetree@lfdr.de>; Thu, 25 Feb 2021 09:22:31 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235680AbhBYIUz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 25 Feb 2021 03:20:55 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59154 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235669AbhBYIUy (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 25 Feb 2021 03:20:54 -0500
Received: from mail-lj1-x229.google.com (mail-lj1-x229.google.com [IPv6:2a00:1450:4864:20::229])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3671CC06174A
        for <devicetree@vger.kernel.org>; Thu, 25 Feb 2021 00:20:14 -0800 (PST)
Received: by mail-lj1-x229.google.com with SMTP id 2so926834ljr.5
        for <devicetree@vger.kernel.org>; Thu, 25 Feb 2021 00:20:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=bVgkKmDOJctQH3otujX9JB1Xjbr7KeI7AJ4JMl2s8BA=;
        b=UbNqlH2ttpldU2K3meSC3qRC5XfmqKcBXZhY0fW4Advycnss385laNwFBHb04qql5y
         h8pR9SAMENNAAYYe0DD+d2Y50RaGbdv3VJjtTvrQp8SosqtH+AispUy6Xe7Nx6XPL9q1
         S5XdDPQpK3gNxvJ44O6/754mB9z80qyGGaL/Owx1WR4fbKnkakf7ZrpYCh4O5ueEVTnW
         uds1e/+j9Ih1+lM/wEJ9l7rfkCoe9EXw5syrBszoQO1aGSI5bGHPSmRMR6FmK52knx3T
         Hpr8fHyfjIrmhfCBoZBinR6WMoNobqXVuFZqZCUT1ZKRKLrwAOFgPBi9MBZgN+oK4xRu
         rnFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=bVgkKmDOJctQH3otujX9JB1Xjbr7KeI7AJ4JMl2s8BA=;
        b=hCe4Q2C41B3xdXB/8VQJf2C53SWQKTSyZGCZsoGhun49yPcTphDJuRyZBavnGGY5f/
         rKFfFQ1cH5+BtFfL0yv7q3HkJ22e0aT1TWq8mneEP3V6m3Q0+NXCenw2cOLzXodWl0nz
         MJilITn5ufZc8/X4X++LLMhpY7ABXbauM8Hw91KY5nZ0Vi7phUYCXMgoPYjS3rhGEaOv
         NIbDI+UpU6YOZSN1YzQJpsNFkLQp0jcjPyq5KaOSnvi/+311W3fUBIwwNdWGQ9hGtRSh
         qHwWT+MKwHeNxPlfoGYrK0Bbk9TrakLqGJ48ZiFT+ff6XcwPN0y6C1gOXdCmXZN8VlM0
         WmRg==
X-Gm-Message-State: AOAM5304wEM+9Z6gCu7N9mBPx2saC9y3hzCJrWz7TtVG8hZSvxg0bBMt
        fuwGXZDUFzz8nbK/RIgV01wpo/Ozgydxpw==
X-Google-Smtp-Source: ABdhPJwoLzma4ewTbqHGpBbZo15gbt9BhPpM21jSVDHCQ0aKfDx3LMwly+V/SRm1/iK3EC8CV2h/Ng==
X-Received: by 2002:a2e:9158:: with SMTP id q24mr604668ljg.389.1614241212760;
        Thu, 25 Feb 2021 00:20:12 -0800 (PST)
Received: from localhost.localdomain ([2a02:a31a:4240:8000:564f:461f:3bb7:c60a])
        by smtp.gmail.com with ESMTPSA id r8sm1017006lfc.207.2021.02.25.00.20.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 Feb 2021 00:20:12 -0800 (PST)
From:   Maciej Matuszczyk <maccraft123mc@gmail.com>
To:     robh+dt@kernel.org, heiko@sntech.de, devicetree@vger.kernel.org,
        linux-rockchip@lists.infradead.org
Cc:     Maciej Matuszczyk <maccraft123mc@gmail.com>
Subject: [PATCH] arm64: dts: rockchip: Add gpu opp nodes to px30 dtsi
Date:   Thu, 25 Feb 2021 08:19:44 +0000
Message-Id: <20210225081943.127714-1-maccraft123mc@gmail.com>
X-Mailer: git-send-email 2.30.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Signed-off-by: Maciej Matuszczyk <maccraft123mc@gmail.com>
---
 arch/arm64/boot/dts/rockchip/px30.dtsi | 22 ++++++++++++++++++++++
 1 file changed, 22 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/px30.dtsi b/arch/arm64/boot/dts/rockchip/px30.dtsi
index c45b0cfcae09..235338927a10 100644
--- a/arch/arm64/boot/dts/rockchip/px30.dtsi
+++ b/arch/arm64/boot/dts/rockchip/px30.dtsi
@@ -984,6 +984,27 @@ nfc: nand-controller@ff3b0000 {
 		status = "disabled";
 	};
 
+	gpu_opp_table: opp-table2 {
+		compatible = "operating-points-v2";
+
+		opp-200000000 {
+			opp-hz = /bits/ 64 <200000000>;
+			opp-microvolt = <950000>;
+		};
+		opp-300000000 {
+			opp-hz = /bits/ 64 <300000000>;
+			opp-microvolt = <975000>;
+		};
+		opp-400000000 {
+			opp-hz = /bits/ 64 <400000000>;
+			opp-microvolt = <1050000>;
+		};
+		opp-480000000 {
+			opp-hz = /bits/ 64 <480000000>;
+			opp-microvolt = <1125000>;
+		};
+	};
+
 	gpu: gpu@ff400000 {
 		compatible = "rockchip,px30-mali", "arm,mali-bifrost";
 		reg = <0x0 0xff400000 0x0 0x4000>;
@@ -994,6 +1015,7 @@ gpu: gpu@ff400000 {
 		clocks = <&cru SCLK_GPU>;
 		#cooling-cells = <2>;
 		power-domains = <&power PX30_PD_GPU>;
+		operating-points-v2 = <&gpu_opp_table>;
 		status = "disabled";
 	};
 
-- 
2.30.1

