Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3A9106162FC
	for <lists+devicetree@lfdr.de>; Wed,  2 Nov 2022 13:47:02 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229850AbiKBMrB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 2 Nov 2022 08:47:01 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53808 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230362AbiKBMrA (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 2 Nov 2022 08:47:00 -0400
Received: from mail-pj1-x1034.google.com (mail-pj1-x1034.google.com [IPv6:2607:f8b0:4864:20::1034])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5063C29CB3
        for <devicetree@vger.kernel.org>; Wed,  2 Nov 2022 05:46:58 -0700 (PDT)
Received: by mail-pj1-x1034.google.com with SMTP id d13-20020a17090a3b0d00b00213519dfe4aso1819655pjc.2
        for <devicetree@vger.kernel.org>; Wed, 02 Nov 2022 05:46:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=04A00wmc7ivq5c1HcZPDC2rBPvZBIFpcYtF6WjKRwqg=;
        b=5UyTJ6YySGqRc9UCiI+lvZh2KPPejSwVur4skyYw6Dowp5jJLy51KrGnJ2aXM9rxYz
         t9UzUd7NnQEWrP1O5cV6J4PPDNbqrLXXZG/FmJWrC8+ZIhbbT701B2R1j5NwWa/njRq7
         kR8W7Rq+5fuE7k2Dkq1rqzwCA3ys/h6gQQzsizfudffP0LKSE6Z5UaI10w9XnB7dMlws
         UoWvArKtEWAvtqtyJ7pJES6r+HajCV9gHNdkUyOjDlq628PXAXos5dhppx0ODgaU35j/
         93uR7JSuCvpqf5DYThfNkNZstvwsfDyUhJnju7C17w0dnWfX/zuBvNBgkAuX+gqTXn3n
         HBwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=04A00wmc7ivq5c1HcZPDC2rBPvZBIFpcYtF6WjKRwqg=;
        b=gA24EuW4kZAippGFJPTOuF6U0jzMhr9a6aGpY+Db8hTjnWvGEazWKk3xMaz1YPzNfO
         hXdEVc2O1DypYZnHB30DUbup/Laet672KvYHR2g7LpL5gye1RC9HT4T0mM5nhqH2tqkw
         ZU1vROQS0mp9UIaLicrvipP1eLYoQHnUXIiIyTvh0hWq6bw+e/nctxWNf/ADBpnpft44
         Ptm4auknwR1E2P82QXkM3RqTNwDSBjg80g/0FaE9eqMoH3GLL8oa9XKmQaNLl9g1Zy84
         QoMGBJ0ipS7SqfVONn2bZBGy/J4SE6YK61ReIW7780anqOfthXgELVQ7zngBN9voL1m3
         Iftw==
X-Gm-Message-State: ACrzQf3hEvAFlClI09bsE1Mjtimbo36FSGhHiTx8ISD0GtD6P6clTIWd
        uqkL9DvtmCyCfLFE8cWhJEBeet4YiEO8QrK/ZjYX/g==
X-Google-Smtp-Source: AMsMyM6+hxj1asTrKWMS4QSnSpR+achyLNm5DhZ+F4u9ixal1cweAWmCJVIEy41U3WzMm8YvX2ePFw==
X-Received: by 2002:a17:90b:1b50:b0:213:c304:1d2f with SMTP id nv16-20020a17090b1b5000b00213c3041d2fmr20774685pjb.64.1667393217762;
        Wed, 02 Nov 2022 05:46:57 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c00a:a809:aeff:563:9036:6729])
        by smtp.gmail.com with ESMTPSA id g31-20020a63565f000000b00460fbe0d75esm7549533pgm.31.2022.11.02.05.46.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 02 Nov 2022 05:46:57 -0700 (PDT)
From:   Jagan Teki <jagan@edgeble.ai>
To:     Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        Jagan Teki <jagan@edgeble.ai>
Subject: [PATCH v6 6/6] ARM: dts: rockchip: rv1126: Add Edgeble Neural Compute Module 2(Neu2) IO
Date:   Wed,  2 Nov 2022 18:16:07 +0530
Message-Id: <20221102124607.297083-6-jagan@edgeble.ai>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221102124607.297083-1-jagan@edgeble.ai>
References: <20221102124607.297083-1-jagan@edgeble.ai>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Neural Compute Module 2(Neu2) IO board is an industrial form factor
evaluation board from Edgeble AI.

General features:
- microSD slot
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

Neu2 needs to mount on top of this IO board in order to create complete
Edgeble Neural Compute Module 2(Neu2) IO platform.

Add support for it.

Signed-off-by: Jagan Teki <jagan@edgeble.ai>
---
Changes for v6:
- update the carrier name.

 arch/arm/boot/dts/Makefile                   |  1 +
 arch/arm/boot/dts/rv1126-edgeble-neu2-io.dts | 38 ++++++++++++++++++++
 2 files changed, 39 insertions(+)
 create mode 100644 arch/arm/boot/dts/rv1126-edgeble-neu2-io.dts

diff --git a/arch/arm/boot/dts/Makefile b/arch/arm/boot/dts/Makefile
index e48cfbc4e8e4..40cc34bd4945 100644
--- a/arch/arm/boot/dts/Makefile
+++ b/arch/arm/boot/dts/Makefile
@@ -1122,6 +1122,7 @@ dtb-$(CONFIG_ARCH_RENESAS) += \
 dtb-$(CONFIG_ARCH_ROCKCHIP) += \
 	rv1108-elgin-r1.dtb \
 	rv1108-evb.dtb \
+	rv1126-edgeble-neu2-io.dtb \
 	rk3036-evb.dtb \
 	rk3036-kylin.dtb \
 	rk3066a-bqcurie2.dtb \
diff --git a/arch/arm/boot/dts/rv1126-edgeble-neu2-io.dts b/arch/arm/boot/dts/rv1126-edgeble-neu2-io.dts
new file mode 100644
index 000000000000..ae1cf344239b
--- /dev/null
+++ b/arch/arm/boot/dts/rv1126-edgeble-neu2-io.dts
@@ -0,0 +1,38 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Copyright (c) 2020 Rockchip Electronics Co., Ltd.
+ * Copyright (c) 2022 Edgeble AI Technologies Pvt. Ltd.
+ */
+
+/dts-v1/;
+#include "rv1126.dtsi"
+#include "rv1126-edgeble-neu2.dtsi"
+
+/ {
+	model = "Edgeble Neu2 IO Board";
+	compatible = "edgeble,neural-compute-module-2-io",
+		     "edgeble,neural-compute-module-2", "rockchip,rv1126";
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

