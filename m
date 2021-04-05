Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B7D8735475D
	for <lists+devicetree@lfdr.de>; Mon,  5 Apr 2021 22:08:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240556AbhDEUIj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 5 Apr 2021 16:08:39 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57978 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234843AbhDEUIi (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 5 Apr 2021 16:08:38 -0400
Received: from mail-wr1-x435.google.com (mail-wr1-x435.google.com [IPv6:2a00:1450:4864:20::435])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 25C8FC061797
        for <devicetree@vger.kernel.org>; Mon,  5 Apr 2021 13:08:29 -0700 (PDT)
Received: by mail-wr1-x435.google.com with SMTP id a6so5885804wrw.8
        for <devicetree@vger.kernel.org>; Mon, 05 Apr 2021 13:08:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=HQjvCSuY3St5Kr8py6j3qL+C5LXPpboAqFQK0TU9PiQ=;
        b=R7cCRBNeaQvmb8IkPfmisOjsWT68xXtTAVsRDbMFzIPnHyCl7/8lSiczp8zLPlDeK0
         CIeI89vK102N877hxMU+u4wUJijhVgQe3HttbpYWFJ/KLVAgZ0S9G+9tM1FrfgQ0kiFW
         Iwe22p0tPxNbDLqmhGb/wNakVN19eYos40x1w/0EddzaYE4dYsUh4579T02OyXYKtG0x
         9pHuFwSCisK9v0DOrOgbu5yPnHcx/xVPYnKBDhiePi+K27OXDVfBI3UEcIp0T1e7GLRq
         T7PE82WeGcQBPraAtYLgAHZ/1IyjirvkhpKgkjtwg7CXGkxncS26b/oSNvjBSdFjv7ZD
         2sPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=HQjvCSuY3St5Kr8py6j3qL+C5LXPpboAqFQK0TU9PiQ=;
        b=nEoU5tTRprd5SOG7PHg7j7mtE5KvTiFuVj7AFrMQRfzN+r/IejSmFox3gV+dFLIk60
         JCwNGU63tHvXwLQl+71ufsfkdZvgOAti4Mho/CKKdz7vkcUueklGhaFM/Hr70HdYoWiJ
         3ypxL4biOctCGd5YEhRip/E/NXjyn48D8EcV10w52SVoiktGTwwSWDRjCRy26IAyVLnW
         mfyhz9hFEZ96UibcxyqWA8ns1T5A67VG9EoV8nK4go5VxGQTD7SlwWokgRZW/3PEdcF/
         GGGjPjx4DzruZQcXewitw/MmBpsl9stYP1X5ylrTpESYb+KMvJjreMcYd2SDzrmcFd0B
         Emtg==
X-Gm-Message-State: AOAM533UPLPMCkIMW+lYuUX6fEva5bDQFKWuD6xZTgtRGTf0G+hvIvQi
        Op/4KtA+ia5p3zI6XO2iDPjQfg==
X-Google-Smtp-Source: ABdhPJy4L/8IJtSpiQaFFtJCSbkReJXmhnkJ9qqX03CzIEk1YXCwDpR2G3qSjmqZ7jIVRDVVmzGlxA==
X-Received: by 2002:adf:ee0f:: with SMTP id y15mr6563507wrn.43.1617653307855;
        Mon, 05 Apr 2021 13:08:27 -0700 (PDT)
Received: from localhost.localdomain ([88.160.162.107])
        by smtp.gmail.com with ESMTPSA id v185sm609420wmb.25.2021.04.05.13.08.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 05 Apr 2021 13:08:27 -0700 (PDT)
From:   Fabien Parent <fparent@baylibre.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Matthias Brugger <matthias.bgg@gmail.com>
Cc:     mkorpershoek@baylibre.com, Fabien Parent <fparent@baylibre.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH 3/5] arm64: dts: mediatek: mt8167: add larb nodes
Date:   Mon,  5 Apr 2021 22:08:19 +0200
Message-Id: <20210405200821.2203458-3-fparent@baylibre.com>
X-Mailer: git-send-email 2.31.0
In-Reply-To: <20210405200821.2203458-1-fparent@baylibre.com>
References: <20210405200821.2203458-1-fparent@baylibre.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add larb nodes for MT8167:
* larb0 is used for display (dsi and hdmi)
* larb1 is used for camera (csi)
* larb2 is used for the video hardware decoder

Signed-off-by: Fabien Parent <fparent@baylibre.com>
---
 arch/arm64/boot/dts/mediatek/mt8167.dtsi | 33 ++++++++++++++++++++++++
 1 file changed, 33 insertions(+)

diff --git a/arch/arm64/boot/dts/mediatek/mt8167.dtsi b/arch/arm64/boot/dts/mediatek/mt8167.dtsi
index 4b951f81db9e..9b352031c5f6 100644
--- a/arch/arm64/boot/dts/mediatek/mt8167.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8167.dtsi
@@ -140,5 +140,38 @@ smi_common: smi@14017000 {
 			clock-names = "apb", "smi";
 			power-domains = <&spm MT8167_POWER_DOMAIN_MM>;
 		};
+
+		larb0: larb@14016000 {
+			compatible = "mediatek,mt8167-smi-larb";
+			reg = <0 0x14016000 0 0x1000>;
+			mediatek,smi = <&smi_common>;
+			mediatek,larbid = <0>;
+			clocks = <&mmsys CLK_MM_SMI_LARB0>,
+				 <&mmsys CLK_MM_SMI_LARB0>;
+			clock-names = "apb", "smi";
+			power-domains = <&spm MT8167_POWER_DOMAIN_MM>;
+		};
+
+		larb1: larb@15001000 {
+			compatible = "mediatek,mt8167-smi-larb";
+			reg = <0 0x15001000 0 0x1000>;
+			mediatek,smi = <&smi_common>;
+			mediatek,larbid = <1>;
+			clocks = <&imgsys CLK_IMG_LARB1_SMI>,
+				 <&imgsys CLK_IMG_LARB1_SMI>;
+			clock-names = "apb", "smi";
+			power-domains = <&spm MT8167_POWER_DOMAIN_ISP>;
+		};
+
+		larb2: larb@16010000 {
+			compatible = "mediatek,mt8167-smi-larb";
+			reg = <0 0x16010000 0 0x1000>;
+			mediatek,smi = <&smi_common>;
+			mediatek,larbid = <2>;
+			clocks = <&vdecsys CLK_VDEC_CKEN>,
+				 <&vdecsys CLK_VDEC_LARB1_CKEN>;
+			clock-names = "apb", "smi";
+			power-domains = <&spm MT8167_POWER_DOMAIN_VDEC>;
+		};
 	};
 };
-- 
2.31.0

