Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D49F476A1B1
	for <lists+devicetree@lfdr.de>; Mon, 31 Jul 2023 22:06:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229459AbjGaUGR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 31 Jul 2023 16:06:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42716 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230186AbjGaUGQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 31 Jul 2023 16:06:16 -0400
Received: from mail-pf1-x42a.google.com (mail-pf1-x42a.google.com [IPv6:2607:f8b0:4864:20::42a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 15C7AEC
        for <devicetree@vger.kernel.org>; Mon, 31 Jul 2023 13:06:16 -0700 (PDT)
Received: by mail-pf1-x42a.google.com with SMTP id d2e1a72fcca58-686f0d66652so4707387b3a.2
        for <devicetree@vger.kernel.org>; Mon, 31 Jul 2023 13:06:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20221208.gappssmtp.com; s=20221208; t=1690833975; x=1691438775;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=iQHd57F7akBPZ+5qQ/e7t4EQaiOpzUMTp2m2Ya6JwK4=;
        b=m369UBDMduwKGWqn0v8BT6P/mgkxQEtW2WQJY70npmcr9AnjqXHuoCkc8iiMWUOZBT
         4kNGbxx6J+MszL2i/unWuqMvA0fGZIRAhyOfBQ22CUhlNpaFYI1lHWwmQcP5Og/2gkIH
         JBa+TpxAV0S3weZYi+EjCk9PZeZL2L0FE1E9/R6X34PwvBZKBWvZxQL2foAAIH4rd41D
         y2P0MMyenqWqvCBXQyAqekq76b5QJOUu+phNMQUew4N2T4zX6pB5NPhfAiGb2ClUkEVn
         BqsQTwchxgksQ2VIFJWa8Gt4LmmsQhhes9yGphFu1XzjwyxzbaAn6uh+NAUfmtAFsXU2
         H+5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690833975; x=1691438775;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=iQHd57F7akBPZ+5qQ/e7t4EQaiOpzUMTp2m2Ya6JwK4=;
        b=AU6UOg5kv/Sg38RuFNHtG2iC9sJc8kEIDdWgp/VjFDHDlRRKp8RTpSbWSHfq6onJpQ
         vGLAzZGxmHZGx6zUsZuI+XtULOmKyWyV+wEZHlioPUCIXRjiAqqQE61IBG+/v9qpUzui
         PNQpMAAi6XuDrTkJTUi2Z3V59cM7x7fBJoTAaPJ2PNha4C1fCFKEhLzOK6eaVqrqG6K/
         uqFJVjhBqj2nlu0jaGP6ZJpyLtW347TJRwfN8wPfC5ht4OCcbU8F47sJu2zSqQb6nr8i
         +xrkxPMfpCBH046MySq5sQZkR9tyyN/ByS4cCptz+lh43hSgkOFU3pWzPxYG1flbv6ip
         45CA==
X-Gm-Message-State: ABy/qLZshQnMtP12Yd/ywe/l20y1RoQ5F8YaHJFkI6rW596ivrZ8PBEO
        nOnO426bJ9Y46w61HKA4lcWmMg==
X-Google-Smtp-Source: APBJJlEiRHHmEEINlxyBJ02r2nwG83qA6UaWYlQUMAsyGE4IpKWyFNqy6/LKwZjTvNpKmqWpImvLpQ==
X-Received: by 2002:a05:6a21:3d87:b0:138:48d7:4a31 with SMTP id bj7-20020a056a213d8700b0013848d74a31mr12205151pzc.62.1690833975521;
        Mon, 31 Jul 2023 13:06:15 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c00a:a208:acc9:2620:699c:d7da])
        by smtp.gmail.com with ESMTPSA id c12-20020aa781cc000000b00668821499c3sm7938990pfn.156.2023.07.31.13.06.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 31 Jul 2023 13:06:15 -0700 (PDT)
From:   Jagan Teki <jagan@edgeble.ai>
To:     Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, Jagan Teki <jagan@edgeble.ai>
Subject: [PATCH 3/3] arm64: dts: rockchip: Add Radxa Display 10HD DT-overlay
Date:   Tue,  1 Aug 2023 01:35:59 +0530
Message-Id: <20230731200559.635629-3-jagan@edgeble.ai>
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

Add compatible string of Radxa Display 10HD via DT-overlay.

Signed-off-by: Jagan Teki <jagan@edgeble.ai>
---
 arch/arm64/boot/dts/rockchip/Makefile              |  1 +
 .../boot/dts/rockchip/radxa-display-10hd.dtso      | 14 ++++++++++++++
 2 files changed, 15 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/radxa-display-10hd.dtso

diff --git a/arch/arm64/boot/dts/rockchip/Makefile b/arch/arm64/boot/dts/rockchip/Makefile
index 1b42eef074b3..520c7d3c80ed 100644
--- a/arch/arm64/boot/dts/rockchip/Makefile
+++ b/arch/arm64/boot/dts/rockchip/Makefile
@@ -4,6 +4,7 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) += px30-engicam-px30-core-ctouch2.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += px30-engicam-px30-core-ctouch2-of10.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += px30-engicam-px30-core-edimm2.2.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += px30-ringneck-haikou.dtb
+dtb-$(CONFIG_ARCH_ROCKCHIP) += radxa-display-10hd.dtbo
 dtb-$(CONFIG_ARCH_ROCKCHIP) += radxa-display-8hd.dtbo
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3308-evb.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3308-roc-cc.dtb
diff --git a/arch/arm64/boot/dts/rockchip/radxa-display-10hd.dtso b/arch/arm64/boot/dts/rockchip/radxa-display-10hd.dtso
new file mode 100644
index 000000000000..7393b9417647
--- /dev/null
+++ b/arch/arm64/boot/dts/rockchip/radxa-display-10hd.dtso
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

