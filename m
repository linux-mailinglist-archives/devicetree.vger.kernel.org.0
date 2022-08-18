Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 88B1C598355
	for <lists+devicetree@lfdr.de>; Thu, 18 Aug 2022 14:43:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S244444AbiHRMm4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 18 Aug 2022 08:42:56 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47056 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S244712AbiHRMmz (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 18 Aug 2022 08:42:55 -0400
Received: from mail-pf1-x435.google.com (mail-pf1-x435.google.com [IPv6:2607:f8b0:4864:20::435])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 216B0B2843
        for <devicetree@vger.kernel.org>; Thu, 18 Aug 2022 05:42:54 -0700 (PDT)
Received: by mail-pf1-x435.google.com with SMTP id z187so1401239pfb.12
        for <devicetree@vger.kernel.org>; Thu, 18 Aug 2022 05:42:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc;
        bh=vCHsjUT/CIgoiPKWpJGWF0bqXuEAYoFTuk01CLPUBNU=;
        b=6oRvSgWHqhnC1ZagHb+AJVJZ8O8XqnyXss0FRwyzpkY5VhFmV2KMozJrdnDEwpvDtC
         X9oxTj7HANQ/N3WfmfXHBlVuhgOxS09NVoUytzxr0dZNmqnlyvRst08Y1oQtoOD1w7ZX
         ura6NS+Kyd8sSNg/VAiNiYDugXeESYc5pDhdPTJoQ/9V6dqPyc+9zxjO2nNmjQ8qarXo
         ALY9WY8rPAxTEQSe7/UNUZVimMpU9A6lCBy7NGwWLvTDoq10VdBiOhHLMRT4CouIaTo4
         5NTCzhcsxwyQi7Icvblx37JkS0m2B5twe1Z8KPCT9X9MBE9QJXsLPeMGoaym30zZrNbg
         y0vQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc;
        bh=vCHsjUT/CIgoiPKWpJGWF0bqXuEAYoFTuk01CLPUBNU=;
        b=xar/strrzwGym0UyxgxELqTC3MDT/rwLdV80dv7u7qHiCZw3iFhuyJ33f/1cKnCsr7
         OgvhBlkito42rYWzewuZDDaHk8T9YhrIgoOIiRRimie9hAou8jiSD7iKVE9IANSTSq8M
         C3NyGr8426NWAZ0QIXL/aDlBOwsiBQTuD5AuWyEq0Bt4H5iZn5Kp3ahUC45M89IrGWh4
         yPhJHRYMwUIM1axa4sd6+qYAC0dEkeOiO/PbCK41aalENPrfIIa7kYpGpOnXbLmY5WnE
         hteee0zp4LM3oRS1ukADFHugPxQyd1YEZSnIkylGA/hDcISOmOgLUEZlFD7ghHzerwbM
         SsRA==
X-Gm-Message-State: ACgBeo0F6wl1wwVJvy8rKL1p0neVZTI3v8uiYYI55jOkYYeRmUsKcVU4
        DFP1Csh/SDQckRBn2UXQ3A0tkg==
X-Google-Smtp-Source: AA6agR7rRaVO+Oqxf1oh8pMqIXQwS4xGr2HaNRVwOU7G3onHD0txkGXFVR6GYOEmUSgWBHNnLcuHEw==
X-Received: by 2002:a63:8142:0:b0:429:f9f9:8fb5 with SMTP id t63-20020a638142000000b00429f9f98fb5mr2332689pgd.619.1660826573618;
        Thu, 18 Aug 2022 05:42:53 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c00a:a073:d1c4:8ea9:aedc:add1])
        by smtp.gmail.com with ESMTPSA id x6-20020aa78f06000000b005302cef1684sm1495651pfr.34.2022.08.18.05.42.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 18 Aug 2022 05:42:53 -0700 (PDT)
From:   Jagan Teki <jagan@edgeble.ai>
To:     Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Kever Yang <kever.yang@rock-chips.com>
Cc:     linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        Jagan Teki <jagan@edgeble.ai>
Subject: [PATCH v3 19/19] ARM: dts: rockchip: rv1126: Add Edgeble AI Edge Compute Module 0 Carrier
Date:   Thu, 18 Aug 2022 18:11:32 +0530
Message-Id: <20220818124132.125304-20-jagan@edgeble.ai>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220818124132.125304-1-jagan@edgeble.ai>
References: <20220818124132.125304-1-jagan@edgeble.ai>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Edge Compute Module 0 Carrier is an industrial form factor evaluation
board from Edgeble AI.

General features:
- microSD slot
- 2x MIPI CSI2 connectors
- MIPI DSI connector
- 2x USB Host
- 1x USB OTG
- Ethernet
- mini PCIe
- Onboard PoE
- RS485, RS232, CAN
- Micro Phone array
- Speaker
- RTC battery slot
- 40-pin expansion

Edge Compute Module 0 needs to mount on top of this Carrier board for
creating Edge Compute Module 0 Carrier platform.

Add support for it.

Signed-off-by: Jagan Teki <jagan@edgeble.ai>
---
Changes for v3:
- none
Changes for v2:
- change easy and meaningful dts name

 arch/arm/boot/dts/Makefile                    |  1 +
 .../boot/dts/rv1126-edgeble-ecm0-carrier.dts  | 38 +++++++++++++++++++
 2 files changed, 39 insertions(+)
 create mode 100644 arch/arm/boot/dts/rv1126-edgeble-ecm0-carrier.dts

diff --git a/arch/arm/boot/dts/Makefile b/arch/arm/boot/dts/Makefile
index 5112f493f494..361b68e5019e 100644
--- a/arch/arm/boot/dts/Makefile
+++ b/arch/arm/boot/dts/Makefile
@@ -1097,6 +1097,7 @@ dtb-$(CONFIG_ARCH_RENESAS) += \
 dtb-$(CONFIG_ARCH_ROCKCHIP) += \
 	rv1108-elgin-r1.dtb \
 	rv1108-evb.dtb \
+	rv1126-edgeble-ecm0-carrier.dtb \
 	rk3036-evb.dtb \
 	rk3036-kylin.dtb \
 	rk3066a-bqcurie2.dtb \
diff --git a/arch/arm/boot/dts/rv1126-edgeble-ecm0-carrier.dts b/arch/arm/boot/dts/rv1126-edgeble-ecm0-carrier.dts
new file mode 100644
index 000000000000..150bfb9bd04a
--- /dev/null
+++ b/arch/arm/boot/dts/rv1126-edgeble-ecm0-carrier.dts
@@ -0,0 +1,38 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Copyright (c) 2020 Rockchip Electronics Co., Ltd.
+ * Copyright (c) 2022 Edgeble AI Technologies Pvt. Ltd.
+ */
+
+/dts-v1/;
+#include "rv1126.dtsi"
+#include "rv1126-edgeble-edge-compute-module-0.dtsi"
+
+/ {
+	model = "Edgeble AI Edge Compute Module 0 Carrier board";
+	compatible = "edgeble,edge-compute-module-0-carrier",
+		     "edgeble,edge-compute-module-0", "rockchip,rv1126";
+
+	chosen {
+		stdout-path = "serial2:1500000n8";
+	};
+};
+
+&sdmmc {
+	bus-width = <4>;
+	cap-mmc-highspeed;
+	cap-sd-highspeed;
+	card-detect-delay = <200>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&sdmmc0_clk &sdmmc0_cmd &sdmmc0_bus4 &sdmmc0_det>;
+	rockchip,default-sample-phase = <90>;
+	sd-uhs-sdr12;
+	sd-uhs-sdr25;
+	sd-uhs-sdr104;
+	vqmmc-supply = <&vccio_sd>;
+	status = "okay";
+};
+
+&uart2 {
+	status = "okay";
+};
-- 
2.25.1

