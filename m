Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4D27E3F200F
	for <lists+devicetree@lfdr.de>; Thu, 19 Aug 2021 20:42:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229451AbhHSSnW (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 19 Aug 2021 14:43:22 -0400
Received: from mail-ot1-f46.google.com ([209.85.210.46]:40500 "EHLO
        mail-ot1-f46.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234477AbhHSSnV (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 19 Aug 2021 14:43:21 -0400
Received: by mail-ot1-f46.google.com with SMTP id h63-20020a9d14450000b02904ce97efee36so9874610oth.7
        for <devicetree@vger.kernel.org>; Thu, 19 Aug 2021 11:42:44 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=B8IQcMYn6Nt4vVkRQ2CEDfy3o3ulbCHKJd+0j5j6+4k=;
        b=hV6GYiEhhMIflwt7y8g4h3EuyviI8F7aQXwiJBK1+rq0erVNbnDgImc7RC1PTvYupN
         nYSp95OBL0NbAzbHi0cBGzAXH4kbpNx/nRqENvU7ov0bhtHhlZ4xhyN9eCkad+M5DFJr
         T8rC2ER67uy47rD5/q2QlT4Z1oPXHIyVh16hJSTb4ANUhy3KndwLMwOfF5Tn2gFzKIze
         jyirgKfgT4Jt+H2vDOQS7GHbYYSdcMQHWwAweqZVROCfvbxSNN8GGWn39SxqDqmF22ld
         zZ5xRmnRhbeuL4OElmGXpQwdWP0gedgki7JUJqUKG11XYX8B7dJ3XWq+7n+1lNS63NkY
         Y67w==
X-Gm-Message-State: AOAM533ORZ0Kd1yfQ8K1oHuca4ZBnDzDrD36y4KaENcgtN88/5oaK4qX
        /MfcE0gqppzsFtiqbA5dgA==
X-Google-Smtp-Source: ABdhPJwlP9xojazOOvMykRX8RdXhMxWDAFOwpt1LZ/l+VNasyGpBoN5VhO617p/Tx53loLjdXPA7qg==
X-Received: by 2002:a05:6830:544:: with SMTP id l4mr13312445otb.164.1629398564604;
        Thu, 19 Aug 2021 11:42:44 -0700 (PDT)
Received: from xps15.herring.priv (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.googlemail.com with ESMTPSA id v19sm796485oic.31.2021.08.19.11.42.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Aug 2021 11:42:44 -0700 (PDT)
From:   Rob Herring <robh@kernel.org>
To:     Andre Przywara <andre.przywara@arm.com>,
        Sudeep Holla <sudeep.holla@arm.com>,
        Linus Walleij <linus.walleij@linaro.org>
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH 3/5] arm: dts: vexpress: Drop unused properties from motherboard node
Date:   Thu, 19 Aug 2021 13:42:37 -0500
Message-Id: <20210819184239.1192395-4-robh@kernel.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210819184239.1192395-1-robh@kernel.org>
References: <20210819184239.1192395-1-robh@kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Drop the '#interrupt-cells' property in the motherboard node which has no
effect as the node is neither an interrupt-controller or interrupt-map
(that's in the parent node).

Drop 'model' as it is not used by software nor documented.

Drop 'arm,v2m-memory-map' as it is not used by software. The purpose was
to describe which memory map, but that's all described by the DT
already.

Cc: Andre Przywara <andre.przywara@arm.com>
Cc: Sudeep Holla <sudeep.holla@arm.com>
Cc: Linus Walleij <linus.walleij@linaro.org>
Signed-off-by: Rob Herring <robh@kernel.org>
---
 arch/arm/boot/dts/vexpress-v2m-rs1.dtsi          | 3 ---
 arch/arm/boot/dts/vexpress-v2m.dtsi              | 2 --
 arch/arm64/boot/dts/arm/foundation-v8.dtsi       | 1 -
 arch/arm64/boot/dts/arm/juno-motherboard.dtsi    | 3 ---
 arch/arm64/boot/dts/arm/rtsm_ve-motherboard.dtsi | 2 --
 5 files changed, 11 deletions(-)

diff --git a/arch/arm/boot/dts/vexpress-v2m-rs1.dtsi b/arch/arm/boot/dts/vexpress-v2m-rs1.dtsi
index 2ad9fd7c94ec..f61251b3c74f 100644
--- a/arch/arm/boot/dts/vexpress-v2m-rs1.dtsi
+++ b/arch/arm/boot/dts/vexpress-v2m-rs1.dtsi
@@ -102,14 +102,11 @@ led-8 {
 
 	bus@8000000 {
 		motherboard-bus {
-			model = "V2M-P1";
 			arm,hbi = <0x190>;
 			arm,vexpress,site = <0>;
-			arm,v2m-memory-map = "rs1";
 			compatible = "arm,vexpress,v2m-p1", "simple-bus";
 			#address-cells = <2>; /* SMB chipselect number and offset */
 			#size-cells = <1>;
-			#interrupt-cells = <1>;
 			ranges;
 
 			nor_flash: flash@0 {
diff --git a/arch/arm/boot/dts/vexpress-v2m.dtsi b/arch/arm/boot/dts/vexpress-v2m.dtsi
index ec13ceb9ed36..fb8ca984ce1f 100644
--- a/arch/arm/boot/dts/vexpress-v2m.dtsi
+++ b/arch/arm/boot/dts/vexpress-v2m.dtsi
@@ -21,13 +21,11 @@
 / {
 	bus@4000000 {
 		motherboard {
-			model = "V2M-P1";
 			arm,hbi = <0x190>;
 			arm,vexpress,site = <0>;
 			compatible = "arm,vexpress,v2m-p1", "simple-bus";
 			#address-cells = <2>; /* SMB chipselect number and offset */
 			#size-cells = <1>;
-			#interrupt-cells = <1>;
 			ranges;
 
 			flash@0,00000000 {
diff --git a/arch/arm64/boot/dts/arm/foundation-v8.dtsi b/arch/arm64/boot/dts/arm/foundation-v8.dtsi
index 05ae893d1b2e..fbf13f7c2baf 100644
--- a/arch/arm64/boot/dts/arm/foundation-v8.dtsi
+++ b/arch/arm64/boot/dts/arm/foundation-v8.dtsi
@@ -115,7 +115,6 @@ v2m_refclk32khz: refclk32khz {
 
 	bus@8000000 {
 		compatible = "arm,vexpress,v2m-p1", "simple-bus";
-		arm,v2m-memory-map = "rs1";
 		#address-cells = <2>; /* SMB chipselect number and offset */
 		#size-cells = <1>;
 
diff --git a/arch/arm64/boot/dts/arm/juno-motherboard.dtsi b/arch/arm64/boot/dts/arm/juno-motherboard.dtsi
index 40d95c58b55e..4203f0a6ddf6 100644
--- a/arch/arm64/boot/dts/arm/juno-motherboard.dtsi
+++ b/arch/arm64/boot/dts/arm/juno-motherboard.dtsi
@@ -96,12 +96,9 @@ motherboard-bus {
 			compatible = "arm,vexpress,v2p-p1", "simple-bus";
 			#address-cells = <2>;  /* SMB chipselect number and offset */
 			#size-cells = <1>;
-			#interrupt-cells = <1>;
 			ranges;
-			model = "V2M-Juno";
 			arm,hbi = <0x252>;
 			arm,vexpress,site = <0>;
-			arm,v2m-memory-map = "rs1";
 
 			flash@0 {
 				/* 2 * 32MiB NOR Flash memory mounted on CS0 */
diff --git a/arch/arm64/boot/dts/arm/rtsm_ve-motherboard.dtsi b/arch/arm64/boot/dts/arm/rtsm_ve-motherboard.dtsi
index 4c4a381d2c75..0459aff22f27 100644
--- a/arch/arm64/boot/dts/arm/rtsm_ve-motherboard.dtsi
+++ b/arch/arm64/boot/dts/arm/rtsm_ve-motherboard.dtsi
@@ -78,11 +78,9 @@ dvimode {
 
 	bus@8000000 {
 		motherboard-bus {
-			arm,v2m-memory-map = "rs1";
 			compatible = "arm,vexpress,v2m-p1", "simple-bus";
 			#address-cells = <2>; /* SMB chipselect number and offset */
 			#size-cells = <1>;
-			#interrupt-cells = <1>;
 			ranges;
 
 			flash@0 {
-- 
2.30.2

