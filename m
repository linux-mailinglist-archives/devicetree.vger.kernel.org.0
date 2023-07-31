Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 490B776940F
	for <lists+devicetree@lfdr.de>; Mon, 31 Jul 2023 13:01:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230365AbjGaLBQ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 31 Jul 2023 07:01:16 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50144 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230394AbjGaLBM (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 31 Jul 2023 07:01:12 -0400
Received: from mail-pl1-x636.google.com (mail-pl1-x636.google.com [IPv6:2607:f8b0:4864:20::636])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 557B198
        for <devicetree@vger.kernel.org>; Mon, 31 Jul 2023 04:01:11 -0700 (PDT)
Received: by mail-pl1-x636.google.com with SMTP id d9443c01a7336-1bbc87ded50so26403325ad.1
        for <devicetree@vger.kernel.org>; Mon, 31 Jul 2023 04:01:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20221208.gappssmtp.com; s=20221208; t=1690801271; x=1691406071;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ox/FK2P0lsJq99wswpzCibIx03qccyvz1J3mu8W2wUQ=;
        b=qow5ffPvAWaxlqjzA8290F9X2gqLaAj3afo/Do/vlMgtdugifywh3qfdXdttNFfWF4
         1YqMTv+WPm/elZMhjXoNiXxzpPYuBf61dnKQ+JWjzOdyjyHMLwSNAH4pxPTFFpMggI+k
         hsqbV+Q6QdOsy62Z4uZwSbZVIi2R3SwUmwrPRGVvVlBq0Jp36B8xvWThgoKtY0hOXwKI
         1bw78OxPWJ4a4YkbeFEcXV6BLtPbrtuHSv7fnoihzvPCcJY2Jd8z/xi4G8yhRUN59brk
         GQCVwr3sTnrcKdemDh1wSjzIu15BDbuFmy5tYNTVV2avBCtnQgQ5IpHvdgObCtSZcaNa
         NyOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690801271; x=1691406071;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ox/FK2P0lsJq99wswpzCibIx03qccyvz1J3mu8W2wUQ=;
        b=SbPaiSq8PYmvpTqpMy+mhw3Ia5UEI/2BXyahGEUM2omMx/5QOffYaLUxI8ZAhR/Auz
         j6WLUze9N1jCJ1SFFnTv3Nt/VFzDm6e6jPb4JFmKDUJUbvFCamDKzVBgXGGFq4mN95Mk
         Yhh5pxYpd2uHYZR1Kt2iG9wbcOOoF+yQQ25sefDQ4EtG+ka7fCkawze+jVTACUHKMjeP
         X68Utor8rtJvwFq17JnIYG3rmx1bwxe07PpCDs9CKj+/et+aQq/alAtWcWqDWBjGwIj7
         xsnEc+gFAtN6QyvklFx7a8BhHBDA9JraAGxkDdTo7qS1hqULmvQ5R4droSJFUr20pgeU
         vEjg==
X-Gm-Message-State: ABy/qLaz5UpDstzoISYKkc5Vy+0/R9rWmh4FSB1j2WP4Fdtcx5Wzp1NR
        F5ftrhpMIv3PomFFWummf5F7Dw==
X-Google-Smtp-Source: APBJJlExKEYw6Js1ULnYXnGZZffjGgT73Dy7xzDgYbAtztUSQpOD9OJlAbxyil1D7dH0K546tCZJVA==
X-Received: by 2002:a17:903:41cf:b0:1b8:ae8c:7bfb with SMTP id u15-20020a17090341cf00b001b8ae8c7bfbmr9579444ple.17.1690801270832;
        Mon, 31 Jul 2023 04:01:10 -0700 (PDT)
Received: from localhost.localdomain ([49.205.243.15])
        by smtp.gmail.com with ESMTPSA id t14-20020a1709028c8e00b001b1a2c14a4asm8281096plo.38.2023.07.31.04.01.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 31 Jul 2023 04:01:10 -0700 (PDT)
From:   Jagan Teki <jagan@edgeble.ai>
To:     Heiko Stuebner <heiko@sntech.de>,
        linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org
Cc:     Jagan Teki <jagan@edgeble.ai>, devicetree@vger.kernel.org,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>
Subject: [PATCH 13/14] ARM: dts: rockchip: Add Radxa Display 10HD overlay
Date:   Mon, 31 Jul 2023 16:30:11 +0530
Message-Id: <20230731110012.2913742-14-jagan@edgeble.ai>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230731110012.2913742-1-jagan@edgeble.ai>
References: <20230731110012.2913742-1-jagan@edgeble.ai>
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

Add compatible string of Radxa Display 10HD via DT-overlay.

Signed-off-by: Jagan Teki <jagan@edgeble.ai>
---
Cc: devicetree@vger.kernel.org
Cc: Rob Herring <robh+dt@kernel.org>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Conor Dooley <conor+dt@kernel.org>

 arch/arm/boot/dts/rockchip/Makefile                |  1 +
 arch/arm/boot/dts/rockchip/radxa-display-10hd.dtso | 14 ++++++++++++++
 2 files changed, 15 insertions(+)
 create mode 100644 arch/arm/boot/dts/rockchip/radxa-display-10hd.dtso

diff --git a/arch/arm/boot/dts/rockchip/Makefile b/arch/arm/boot/dts/rockchip/Makefile
index c8c8e1292650..0a275549b213 100644
--- a/arch/arm/boot/dts/rockchip/Makefile
+++ b/arch/arm/boot/dts/rockchip/Makefile
@@ -1,5 +1,6 @@
 # SPDX-License-Identifier: GPL-2.0
 dtb-$(CONFIG_ARCH_ROCKCHIP) += \
+	radxa-display-10hd.dtbo \
 	rv1108-elgin-r1.dtb \
 	rv1108-evb.dtb \
 	rv1126-edgeble-neu2-io.dtb \
diff --git a/arch/arm/boot/dts/rockchip/radxa-display-10hd.dtso b/arch/arm/boot/dts/rockchip/radxa-display-10hd.dtso
new file mode 100644
index 000000000000..7393b9417647
--- /dev/null
+++ b/arch/arm/boot/dts/rockchip/radxa-display-10hd.dtso
@@ -0,0 +1,14 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Copyright (c) 2023 Radxa Computer Co., Ltd.
+ * Copyright (c) 2023 Edgeble AI Technologies Pvt. Ltd.
+ *
+ * DT-overlay for Radxa Display 10HD compatible.
+ */
+
+/dts-v1/;
+/plugin/;
+
+&panel {
+	compatible = "radxa,display-10hd-ad001", "jadard,jd9365da-h3";
+};
-- 
2.25.1

