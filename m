Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4134C3A6A1F
	for <lists+devicetree@lfdr.de>; Mon, 14 Jun 2021 17:26:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233583AbhFNP2h (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 14 Jun 2021 11:28:37 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40586 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233441AbhFNP2b (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 14 Jun 2021 11:28:31 -0400
Received: from mail-ej1-x635.google.com (mail-ej1-x635.google.com [IPv6:2a00:1450:4864:20::635])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8141DC06121D
        for <devicetree@vger.kernel.org>; Mon, 14 Jun 2021 08:26:11 -0700 (PDT)
Received: by mail-ej1-x635.google.com with SMTP id ho18so17336934ejc.8
        for <devicetree@vger.kernel.org>; Mon, 14 Jun 2021 08:26:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=monstr-eu.20150623.gappssmtp.com; s=20150623;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=elVcPRyFax/vuSvQa2stk7szZuREtCzIVx2MlOnBUIY=;
        b=MdDL97PrbbkVMJFMHZGJCq61CW35OvanGwLFGPP2hRiZ3NJ38Rex02sTGoyNOYHwFX
         YHhCm7FX+RqEksm82OGWyiEh7+//U6wnT2D07YtKth8WvtCIp0XonxO6AVGxJl0eByiX
         sAXYHRrE++yv3BcaJVBckBjjsMl/A7XKYVzXUEe8S6oWacYH7WX/HlyLdzDJry41Nw4P
         Y9Fts7ytbqTVCiL+0aWUDJFcvCBqKP5n1ULU9yoENWeatJXrXTJM3xdGmpGW4TC6FTtb
         6ViyuCuy5XkTp8UR7St+GzrTOOLPtVUMZgMvbfkhUW3rIeJH5+55Xe5F3QmeYd9EsNvr
         CqzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:content-transfer-encoding;
        bh=elVcPRyFax/vuSvQa2stk7szZuREtCzIVx2MlOnBUIY=;
        b=DP6XAU6lZHToRvJ6nlHb0Oez0PbwbWWhVo2Pi85YJ2ucoUd/k+uBpeFTrAqahGIw38
         34zGJEtaEE8UwhO5CEjZvoTCq6NCOEGi3U35V5Q+ySkgilf8aWwyGboVLmGLC75O29Q/
         OjFp7GXM54MIRdIMWQnisggcCbV80uv/Y43kTr8cDiItdDjuItwnndZW5ETpyIwhZBap
         zTPf2SS/7wMAEvUrFAUTkQ50qqxA6CS+zBuGtjMHD46o6UYkPIbxmNHqv32aisJtL7V0
         KXRADddNYO/9sG5gV1F/uZfF6PYCcTQYLgkVYvjcq4oiLKwT6dSHhnQ8m3dl4ZU7HJN4
         KY/Q==
X-Gm-Message-State: AOAM531iN4GjlgdICowYJBXyVShPVj2XMqxy1p4fyoviwahm7IsTP01s
        uUNUp2ua4yoRfMrqBUayebpZDQ==
X-Google-Smtp-Source: ABdhPJzZwU4S8wn3K3A+fll5ae9s5u169qVKP5jv3PPz8NWHrTg4UPygaa/vNRzYYv11WJOyhoOfvA==
X-Received: by 2002:a17:906:365a:: with SMTP id r26mr16120265ejb.340.1623684370116;
        Mon, 14 Jun 2021 08:26:10 -0700 (PDT)
Received: from localhost ([2a02:768:2307:40d6:f666:9af6:3fed:e53b])
        by smtp.gmail.com with ESMTPSA id r4sm7537603ejd.105.2021.06.14.08.26.09
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 14 Jun 2021 08:26:09 -0700 (PDT)
Sender: Michal Simek <monstr@monstr.eu>
From:   Michal Simek <michal.simek@xilinx.com>
To:     linux-kernel@vger.kernel.org, monstr@monstr.eu,
        michal.simek@xilinx.com, git@xilinx.com,
        Viresh Kumar <viresh.kumar@linaro.org>
Cc:     Krzysztof Kozlowski <krzk@kernel.org>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Quanyang Wang <quanyang.wang@windriver.com>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 18/33] arm64: zynqmp: List reset property for ethernet phy
Date:   Mon, 14 Jun 2021 17:25:26 +0200
Message-Id: <e153f0cda37a2a6ea1c6e11fb0a4af1d400f29e2.1623684253.git.michal.simek@xilinx.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <cover.1623684253.git.michal.simek@xilinx.com>
References: <cover.1623684253.git.michal.simek@xilinx.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add information about reset gpio for ethernet phy in case someone wants to
use it.

Signed-off-by: Michal Simek <michal.simek@xilinx.com>
---

Changes in v2: None

 arch/arm64/boot/dts/xilinx/zynqmp-zcu102-revA.dts | 1 +
 arch/arm64/boot/dts/xilinx/zynqmp-zcu102-revB.dts | 3 ++-
 2 files changed, 3 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/xilinx/zynqmp-zcu102-revA.dts b/arch/arm64/boot/dts/xilinx/zynqmp-zcu102-revA.dts
index 339a12b255c1..5ddcfdf48626 100644
--- a/arch/arm64/boot/dts/xilinx/zynqmp-zcu102-revA.dts
+++ b/arch/arm64/boot/dts/xilinx/zynqmp-zcu102-revA.dts
@@ -204,6 +204,7 @@ phy0: ethernet-phy@21 {
 		ti,tx-internal-delay = <0xa>;
 		ti,fifo-depth = <0x1>;
 		ti,dp83867-rxctrl-strap-quirk;
+		/* reset-gpios = <&tca6416_u97 6 GPIO_ACTIVE_LOW>; */
 	};
 };
 
diff --git a/arch/arm64/boot/dts/xilinx/zynqmp-zcu102-revB.dts b/arch/arm64/boot/dts/xilinx/zynqmp-zcu102-revB.dts
index d9ad8a4b20d3..f7d718ff116b 100644
--- a/arch/arm64/boot/dts/xilinx/zynqmp-zcu102-revB.dts
+++ b/arch/arm64/boot/dts/xilinx/zynqmp-zcu102-revB.dts
@@ -2,7 +2,7 @@
 /*
  * dts file for Xilinx ZynqMP ZCU102 RevB
  *
- * (C) Copyright 2016 - 2018, Xilinx, Inc.
+ * (C) Copyright 2016 - 2021, Xilinx, Inc.
  *
  * Michal Simek <michal.simek@xilinx.com>
  */
@@ -22,6 +22,7 @@ phyc: ethernet-phy@c {
 		ti,tx-internal-delay = <0xa>;
 		ti,fifo-depth = <0x1>;
 		ti,dp83867-rxctrl-strap-quirk;
+		/* reset-gpios = <&tca6416_u97 6 GPIO_ACTIVE_LOW>; */
 	};
 	/* Cleanup from RevA */
 	/delete-node/ ethernet-phy@21;
-- 
2.32.0

