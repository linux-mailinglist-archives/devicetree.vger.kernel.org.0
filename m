Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 956893E2690
	for <lists+devicetree@lfdr.de>; Fri,  6 Aug 2021 10:58:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S243948AbhHFI6t (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 6 Aug 2021 04:58:49 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38250 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S243934AbhHFI6s (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 6 Aug 2021 04:58:48 -0400
Received: from mail-ed1-x534.google.com (mail-ed1-x534.google.com [IPv6:2a00:1450:4864:20::534])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 52A52C061798
        for <devicetree@vger.kernel.org>; Fri,  6 Aug 2021 01:58:32 -0700 (PDT)
Received: by mail-ed1-x534.google.com with SMTP id k9so12090991edr.10
        for <devicetree@vger.kernel.org>; Fri, 06 Aug 2021 01:58:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=monstr-eu.20150623.gappssmtp.com; s=20150623;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=df8++FWbj/c7Rh+fJ0cVDnwCyH2C0VRncjI6Of0tQHA=;
        b=YECZkR66h+JemyGlKtd1DC46CNFe+tcn9k+1kLw3r/0y3hcDvQ7Z7kkBdqx19GlDfv
         P6NiEshdvVAi1HbjT0AJ9/dpDFqN4/9VpqjYu0u9bfC42gMo5xHwuzocQu8wodBN1gW1
         Mk1VVPTu5csTaFFLjZ1OpP22O6Uj5W8fX65RLaSJBFVL94UeQ1jZOa3uU05hcdFs5N4A
         VK+XiRuM3qaZojKEQ23AY5gflCgOxCf5gNX8DN4WSOr9il6HWXMauocYgMxicD2bM/Pg
         ZxeuWTKTvq1XiooBFc3W2feOKdgQ8sAcAcYtM7bGBB8m56sF03cw7j2Z9aqCJ2fwmN4f
         OrMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :mime-version:content-transfer-encoding;
        bh=df8++FWbj/c7Rh+fJ0cVDnwCyH2C0VRncjI6Of0tQHA=;
        b=aaEpjiAG5TqCtf6HTBGeNvCMaGx/uxPqaAVUv9oXg4GmaSMUIfIb3jShCHkMYUVbPC
         cj55qag7zS4Vvx/Tha8gdqEtiTC2VXqlLZYUbFG4UvDGhF4t8nLLKHqkPsPF3ajwqeGe
         QD9tqR5dnzc/V44NNqeGgc+9oRQSkyE1N6TUuBLKSvknKar78rt0o83+OcIT84SjurSN
         4J04HBmiDLB+aGGGOIKiuEc7lQpu0lspc0K/u1gb5trbtkpDI6GqW+pIIsvsaQjC2yj2
         +3eh94O3KBgdKOHEGtHbBLG8T1ySdUspbpCU4fhDTOBN7pCGc7y6t1iAtf9vYMzfBOUk
         XsZQ==
X-Gm-Message-State: AOAM533/QUp0VbDKSnVUaaR+1lSmqGzP0uT+M8ute4fuHOD2RZycwGxs
        +ZIylVub4olsXgpTF7mJxiR/Vw==
X-Google-Smtp-Source: ABdhPJwsvtrtc7fMRuiirzMDyAVf9Yx9mJc0J92M3T9DMI7XTYrl2912kA/R+4jwlZn/qUaOHS7LRg==
X-Received: by 2002:aa7:d696:: with SMTP id d22mr11669106edr.309.1628240310947;
        Fri, 06 Aug 2021 01:58:30 -0700 (PDT)
Received: from localhost (nat-35.starnet.cz. [178.255.168.35])
        by smtp.gmail.com with ESMTPSA id o17sm2631318ejb.84.2021.08.06.01.58.30
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Fri, 06 Aug 2021 01:58:30 -0700 (PDT)
Sender: Michal Simek <monstr@monstr.eu>
From:   Michal Simek <michal.simek@xilinx.com>
To:     linux-kernel@vger.kernel.org, monstr@monstr.eu,
        michal.simek@xilinx.com, git@xilinx.com
Cc:     Krzysztof Kozlowski <krzk@kernel.org>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
Subject: [PATCH] arm64: zynqmp: Fix serial compatible string
Date:   Fri,  6 Aug 2021 10:58:29 +0200
Message-Id: <89b36e0a6187cc6b05b27a035efdf79173bd4486.1628240307.git.michal.simek@xilinx.com>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Based on commit 65a2c14d4f00 ("dt-bindings: serial: convert Cadence UART
bindings to YAML") compatible string should look like differently that's
why fix it to be aligned with dt binding.

Signed-off-by: Michal Simek <michal.simek@xilinx.com>
---

 arch/arm64/boot/dts/xilinx/zynqmp.dtsi | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/xilinx/zynqmp.dtsi b/arch/arm64/boot/dts/xilinx/zynqmp.dtsi
index 6f0fcec28ae2..b5fde9dddca5 100644
--- a/arch/arm64/boot/dts/xilinx/zynqmp.dtsi
+++ b/arch/arm64/boot/dts/xilinx/zynqmp.dtsi
@@ -786,7 +786,7 @@ ttc3: timer@ff140000 {
 		};
 
 		uart0: serial@ff000000 {
-			compatible = "cdns,uart-r1p12", "xlnx,xuartps";
+			compatible = "xlnx,zynqmp-uart", "cdns,uart-r1p12";
 			status = "disabled";
 			interrupt-parent = <&gic>;
 			interrupts = <0 21 4>;
@@ -796,7 +796,7 @@ uart0: serial@ff000000 {
 		};
 
 		uart1: serial@ff010000 {
-			compatible = "cdns,uart-r1p12", "xlnx,xuartps";
+			compatible = "xlnx,zynqmp-uart", "cdns,uart-r1p12";
 			status = "disabled";
 			interrupt-parent = <&gic>;
 			interrupts = <0 22 4>;
-- 
2.32.0

