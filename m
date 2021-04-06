Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9531E355220
	for <lists+devicetree@lfdr.de>; Tue,  6 Apr 2021 13:32:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238330AbhDFLc5 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 6 Apr 2021 07:32:57 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60678 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231544AbhDFLc5 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 6 Apr 2021 07:32:57 -0400
Received: from mail-wr1-x42a.google.com (mail-wr1-x42a.google.com [IPv6:2a00:1450:4864:20::42a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E502DC06174A
        for <devicetree@vger.kernel.org>; Tue,  6 Apr 2021 04:32:47 -0700 (PDT)
Received: by mail-wr1-x42a.google.com with SMTP id a6so7832248wrw.8
        for <devicetree@vger.kernel.org>; Tue, 06 Apr 2021 04:32:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=1qsh1PvwVqT8YTPIyWFqgM3PFqlHjXtan502PwOLung=;
        b=gSfEfvnlc0O2ZY6hXjjXUZkBGi0Fw9CFyePVeDT1hU50JJ0+I8DEvCv4Q4BzD3G9mq
         WtZyCC6lCpaQyo094PNpjLfCzYlY+vgH5ZkBu0iU1H4QfnBsS0xmw2pVgbrnIpXMtoxg
         kZ+lEffPE25KG/RRHbubTpt6CgoDwAs3EiY2KzGF3xLSOOrX3BJqms6DA/CMNr3IHAs6
         w6Hg3aydYpilrCXeRLHhcbMbAe/7UODaEPH0IT6BXynb4tQH3M3kH+Hmk22feEj1nBx4
         2EVB2mBuBVo90+ydGzw9VIt80mXTmeDo3vCwhUCe0s3UBv8iPxtrJb9rwSSCrq9E/m4P
         Tp0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=1qsh1PvwVqT8YTPIyWFqgM3PFqlHjXtan502PwOLung=;
        b=KfBAjp1UhBMfMwBE1OowOyXSP7qWqeeVhaKR13Nt007x+4Cma8CEZeSHb9OocXO247
         7FPYGk31JQN44EUBDfysWiwtsLkl2xl/Eytr0WUYDDMDd4HSaQ9cCj+6DOZbozlApWwD
         gL3Lw8bbpyiT73wfmksaPF/7TaMi/llRPvgbmeJiT0kPYh16cwIa+0aWB2rU8u0qrIFv
         lXg4GwDjFNkuZjJf8HV3tvUeun+pfZEM3X4hx8H3qB5mo4JDeWxQIvej/wasZiybwixG
         ZYhbCBsC8S3Woyppi6iMUIea83OmWT5rCHSFXxq5PFL6IOVRuzmOEjh+b6ML33SHMArS
         qcnA==
X-Gm-Message-State: AOAM532q5Bd5B4taIir73wVLsBPe2Ydsi2ikJA2/w/iO9u2+Vi8XgV4x
        ZPUMsFl/bDSSlegaTX4gLn7i6Q==
X-Google-Smtp-Source: ABdhPJypWuWfiAIQZSjc/XoWLsa+fRwrHArjxR004q9Cf/LxGitUQGxR4w6WIGjxxI9MoVYL3kCdCg==
X-Received: by 2002:a5d:5904:: with SMTP id v4mr34494614wrd.261.1617708766655;
        Tue, 06 Apr 2021 04:32:46 -0700 (PDT)
Received: from localhost.localdomain ([88.160.162.107])
        by smtp.gmail.com with ESMTPSA id j6sm2424229wmq.16.2021.04.06.04.32.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Apr 2021 04:32:46 -0700 (PDT)
From:   Fabien Parent <fparent@baylibre.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Matthias Brugger <matthias.bgg@gmail.com>
Cc:     mkorpershoek@baylibre.com, Fabien Parent <fparent@baylibre.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH v2 1/3] =?UTF-8?q?=F0=9F=93=A4=20arm64:=20dts:=20mediatek:?= =?UTF-8?q?=20mt8167:=20add=20larb=20nodes?=
Date:   Tue,  6 Apr 2021 13:32:40 +0200
Message-Id: <20210406113243.2665847-1-fparent@baylibre.com>
X-Mailer: git-send-email 2.31.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

Note: This series is based on https://git.kernel.org/pub/scm/linux/kernel/git/matthias.bgg/linux.git/log/?h=v5.12-next/dts64-2

V2:
	* Removed unneeded mediatek,larb-id property

 arch/arm64/boot/dts/mediatek/mt8167.dtsi | 30 ++++++++++++++++++++++++
 1 file changed, 30 insertions(+)

diff --git a/arch/arm64/boot/dts/mediatek/mt8167.dtsi b/arch/arm64/boot/dts/mediatek/mt8167.dtsi
index 4b951f81db9e..bbddd4b22d3e 100644
--- a/arch/arm64/boot/dts/mediatek/mt8167.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8167.dtsi
@@ -140,5 +140,35 @@ smi_common: smi@14017000 {
 			clock-names = "apb", "smi";
 			power-domains = <&spm MT8167_POWER_DOMAIN_MM>;
 		};
+
+		larb0: larb@14016000 {
+			compatible = "mediatek,mt8167-smi-larb";
+			reg = <0 0x14016000 0 0x1000>;
+			mediatek,smi = <&smi_common>;
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
+			clocks = <&vdecsys CLK_VDEC_CKEN>,
+				 <&vdecsys CLK_VDEC_LARB1_CKEN>;
+			clock-names = "apb", "smi";
+			power-domains = <&spm MT8167_POWER_DOMAIN_VDEC>;
+		};
 	};
 };
-- 
2.31.0

