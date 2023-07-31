Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4623F76A1AF
	for <lists+devicetree@lfdr.de>; Mon, 31 Jul 2023 22:06:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229862AbjGaUGO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 31 Jul 2023 16:06:14 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42690 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229691AbjGaUGN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 31 Jul 2023 16:06:13 -0400
Received: from mail-pf1-x431.google.com (mail-pf1-x431.google.com [IPv6:2607:f8b0:4864:20::431])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 349D2EC
        for <devicetree@vger.kernel.org>; Mon, 31 Jul 2023 13:06:13 -0700 (PDT)
Received: by mail-pf1-x431.google.com with SMTP id d2e1a72fcca58-68336d06620so4879318b3a.1
        for <devicetree@vger.kernel.org>; Mon, 31 Jul 2023 13:06:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20221208.gappssmtp.com; s=20221208; t=1690833972; x=1691438772;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=j7NR4mctBMygjQMCC3O+eGMPCOVHsdjewzIZM1ealZI=;
        b=CqF8i08ecEa52v28OqQ1AElC3oWrQcyn7XiCGNP6jmo+TsE8DlxW7XUrHqAqlFGwDp
         7b3h6or3cZlZXqYyvTCX8vgP++fAXLKfYLtpg4lEliJlBOwougHUq52OGPuRx7f3y9IT
         Wlb0TwFLJA93+svIFamT/ZToRjeyLX8JGhRUeUp5kikoqyFBWmbTUVat2G8bPPegsdq7
         FskgEqhKzNstHPlwo5fSOC6jKlWA0XLOzkewJngpcKeY86uIuHYJcYobAu6+lU5Rl+Qu
         MajrHqRbXWoNk++ayny8n6jw4ZC263Wdk0ocwMAKqDY2URyh4y/OV+NysNEzbWUuGPS3
         mDpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690833972; x=1691438772;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=j7NR4mctBMygjQMCC3O+eGMPCOVHsdjewzIZM1ealZI=;
        b=QS3eMGb+Zoio412k4pD5RhYPzXVQt+wCxLG3gcYRSUVWx6x9OHFxRHXMkJiLB2opvk
         gpVASxArgdMXl77fDS/9I2CqzNwUj3NG483sn5p5Kp7oynHG3O9PtLQXdNNjdQG21MqM
         FMgj0x3XlZGHn15i6aCZEOGb/UD56UdSeqdbAzJ4kGSOGrhI/W/vC5pYHDNqg5MrR/bu
         2W7N/gAOXD/4p1oU2ZEN02BSfSeRDBTBX1P9/ujVsjHUgozN09Va6YnDx1l4i1FaHOmk
         FUalu2IoTLxuvVoVme3gBmw6xhDu/O7I2/RuiBsj840zOoXtk8SLLwZutv4Rpcly/Fzm
         uDXg==
X-Gm-Message-State: ABy/qLaqZNll1i59CECrE9EYkLMLT0Xiki0qY5i8ZRz1KCor6DqsHbr3
        HKbieK45gEmQ75ooN3qR2MsvtQ==
X-Google-Smtp-Source: APBJJlGsJlK6Xc338VHuHE9qumCB3CWndtK7e0+Piask8OA2vg/OYeDk2PL5R/aQE7GJri1vumoX5A==
X-Received: by 2002:a05:6a00:240a:b0:64f:35c8:8584 with SMTP id z10-20020a056a00240a00b0064f35c88584mr12941675pfh.18.1690833972637;
        Mon, 31 Jul 2023 13:06:12 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c00a:a208:acc9:2620:699c:d7da])
        by smtp.gmail.com with ESMTPSA id c12-20020aa781cc000000b00668821499c3sm7938990pfn.156.2023.07.31.13.06.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 31 Jul 2023 13:06:12 -0700 (PDT)
From:   Jagan Teki <jagan@edgeble.ai>
To:     Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, Jagan Teki <jagan@edgeble.ai>
Subject: [PATCH 2/3] arm64: dts: rockchip: Add Radxa Display 8HD DT-overlay
Date:   Tue,  1 Aug 2023 01:35:58 +0530
Message-Id: <20230731200559.635629-2-jagan@edgeble.ai>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230731200559.635629-1-jagan@edgeble.ai>
References: <20230731200559.635629-1-jagan@edgeble.ai>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_NONE,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add compatible string of Radxa Display 8HD via DT-overlay.

Signed-off-by: Jagan Teki <jagan@edgeble.ai>
---
 arch/arm64/boot/dts/rockchip/Makefile              |  1 +
 .../arm64/boot/dts/rockchip/radxa-display-8hd.dtso | 14 ++++++++++++++
 2 files changed, 15 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/radxa-display-8hd.dtso

diff --git a/arch/arm64/boot/dts/rockchip/Makefile b/arch/arm64/boot/dts/rockchip/Makefile
index 3a4c4cd769eb..1b42eef074b3 100644
--- a/arch/arm64/boot/dts/rockchip/Makefile
+++ b/arch/arm64/boot/dts/rockchip/Makefile
@@ -4,6 +4,7 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) += px30-engicam-px30-core-ctouch2.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += px30-engicam-px30-core-ctouch2-of10.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += px30-engicam-px30-core-edimm2.2.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += px30-ringneck-haikou.dtb
+dtb-$(CONFIG_ARCH_ROCKCHIP) += radxa-display-8hd.dtbo
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3308-evb.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3308-roc-cc.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3308-rock-pi-s.dtb
diff --git a/arch/arm64/boot/dts/rockchip/radxa-display-8hd.dtso b/arch/arm64/boot/dts/rockchip/radxa-display-8hd.dtso
new file mode 100644
index 000000000000..d42499f8d6b2
--- /dev/null
+++ b/arch/arm64/boot/dts/rockchip/radxa-display-8hd.dtso
@@ -0,0 +1,14 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Copyright (c) 2023 Radxa Computer Co., Ltd.
+ * Copyright (c) 2023 Edgeble AI Technologies Pvt. Ltd.
+ *
+ * DT-overlay for Radxa Display 8HD compatible.
+ */
+
+/dts-v1/;
+/plugin/;
+
+&panel {
+	compatible = "radxa,display-8hd-ad002", "jadard,jd9365da-h3";
+};
-- 
2.25.1

