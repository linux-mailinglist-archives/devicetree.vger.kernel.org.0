Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 846E7636903
	for <lists+devicetree@lfdr.de>; Wed, 23 Nov 2022 19:34:41 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239349AbiKWSeM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 23 Nov 2022 13:34:12 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34424 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239793AbiKWSdp (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 23 Nov 2022 13:33:45 -0500
Received: from mail-pj1-x1033.google.com (mail-pj1-x1033.google.com [IPv6:2607:f8b0:4864:20::1033])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 47C3C21A1
        for <devicetree@vger.kernel.org>; Wed, 23 Nov 2022 10:33:23 -0800 (PST)
Received: by mail-pj1-x1033.google.com with SMTP id x13-20020a17090a46cd00b00218f611b6e9so972840pjg.1
        for <devicetree@vger.kernel.org>; Wed, 23 Nov 2022 10:33:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=jPbVvPps35d9qSmRicMnyfKxv7RaFTM2lFdzVKFiQc0=;
        b=GjVa3I9DLIVr/b1xkrqj+nLz/A1pDKu716OKgzMMClvA5VnFJY4vE4V6EAU9AzjiY5
         +VqLd2uI5L8J7kqsWIZRIE8lTVzjA3y8pK8gv8UI+0/0WfXemVoMI9KF4LnBQVOoZ1p9
         nqM4dbBOyPUoKsx0MtqdUjgG3wXAUoKuFgjyEiPltQKBAtMaQW6tuCCZfNNUoRLbe5Gv
         YpjjsT4TJh9JAYd6bnCrOehRRJBZQw5fPxwk3/VzDAYajhR6rsQTHs2ZfVFMmvkR/Jkn
         2BxFeAOg9P5f9lKtmbfkmwdixVzj+hXcJu9Hh+X2vlAR6gbAs7bGvl1AfJ9oHoIsfOJ6
         4g4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=jPbVvPps35d9qSmRicMnyfKxv7RaFTM2lFdzVKFiQc0=;
        b=BmB1dimWfEIaA5x3fGypGJLuDm2GrasXTbTkG88foeDdHQRVJ1vqbWlk/Rk+kE0M3+
         o/toyTbThc+I3J0CxH9wWWFFrpZ2TL6DPoCA5IQib6VN2v12p9Mn7se+Rgo14N0fmwcn
         E84DqLdIPhrmqc2JMgGOfM82KimcaNmOd2nmJohqaaj+bKGpeQDgKBS2LBSEwb6PU/lv
         tOuOR+naT9SxY2fYGfl5WOSthF/xx7dJ0yrf87ISkyxPM0AsDQkIxhF07MOdKUm6sMMT
         Ij4CVW7SLX3F9Z9O+RlwOVvYZ3wsumseR7w8OWgqSA9oV+t1XsG6vfiNYabWLxcJZ3JT
         T4kg==
X-Gm-Message-State: ANoB5pm31J056jOnkMxgVftXzYwB5JWa9qFyIL+nKl8bkCUVlqT41bEj
        y+kJ5AKxSV0YMukVN/Y4Jq2F4g==
X-Google-Smtp-Source: AA0mqf7dAPWZzf40dx3d0O3bkXKMBgurnduSmGOZHlNfm/ahurULbBuk5/AdotG3WbK7zhruBkWH6Q==
X-Received: by 2002:a17:90a:5918:b0:213:ff:1cda with SMTP id k24-20020a17090a591800b0021300ff1cdamr30955608pji.86.1669228402771;
        Wed, 23 Nov 2022 10:33:22 -0800 (PST)
Received: from localhost.localdomain ([2405:201:c00a:a809:a055:fcc4:4677:827])
        by smtp.gmail.com with ESMTPSA id x3-20020aa79403000000b0056d2317455bsm13006732pfo.7.2022.11.23.10.33.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 23 Nov 2022 10:33:21 -0800 (PST)
From:   Jagan Teki <jagan@edgeble.ai>
To:     Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Daniel Lezcano <daniel.lezcano@linaro.org>,
        linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        Johan Jonker <jbx6244@gmail.com>, Jagan Teki <jagan@edgeble.ai>
Subject: [PATCH v8 8/8] ARM: dts: rockchip: rv1126: Add Edgeble Neural Compute Module 2(Neu2) IO
Date:   Thu, 24 Nov 2022 00:01:24 +0530
Message-Id: <20221123183124.6911-9-jagan@edgeble.ai>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221123183124.6911-1-jagan@edgeble.ai>
References: <20221123183124.6911-1-jagan@edgeble.ai>
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
Changes for v8, v7:
- none
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

