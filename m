Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2106A3A6A10
	for <lists+devicetree@lfdr.de>; Mon, 14 Jun 2021 17:26:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233269AbhFNP2H (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 14 Jun 2021 11:28:07 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40546 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233199AbhFNP2G (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 14 Jun 2021 11:28:06 -0400
Received: from mail-ed1-x52a.google.com (mail-ed1-x52a.google.com [IPv6:2a00:1450:4864:20::52a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E2E03C061283
        for <devicetree@vger.kernel.org>; Mon, 14 Jun 2021 08:26:03 -0700 (PDT)
Received: by mail-ed1-x52a.google.com with SMTP id b11so47056248edy.4
        for <devicetree@vger.kernel.org>; Mon, 14 Jun 2021 08:26:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=monstr-eu.20150623.gappssmtp.com; s=20150623;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=1PJmBZf2G/3VuzRVB8MuhLk6fPYGXd52C/maYloIeUA=;
        b=fKQ/35piKP8FwlgqjdA28gAS7WG1+WW8KfL5wxq293ZVo8oK6jg5OLs2TXdV57B36F
         px6yUUMwPsm0eL8EVdLN4wDARQhkUFDaXX4lLWnv3IUSIpL3gy8myXWrGGZNri1N0oZO
         dgONx9JxkSEClcPR8sGCZ2ZMgmf0OJjw6OLd4GGk5eVSFgqIWMXLdDdN+nNcFIMT2bdo
         Mk95Vd5RetifJmy4o0FUh9lyRfuMh9CixZKVjjUf251AO3HfDASFh/sB8Se4Vcpx99B3
         9GcO5K6X/XHKO2avrfOfEiZwccgiD2BjvPzL/ZrkF4RLxCF61IgB5Tcl76bRn+EAk+bB
         PBbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:content-transfer-encoding;
        bh=1PJmBZf2G/3VuzRVB8MuhLk6fPYGXd52C/maYloIeUA=;
        b=HbjBPNt4peBorOeMh4NdiJ0/xKcXAZEqhDFd2UbXJa1grnjC1I/0dAx9KLURF9jdmS
         rYiUQwaFBiW4+MeUdQtGUwVSsxEfJm6wTmjrbzKuaN2TzC4mw/Y5eibpqOGT4X/oR5tp
         eRuedkZrN0aun5oTrIjxrCAz/mo7/kT7on3+rHklw4Qhx76gkgKnW3ssGq5rWVCgvS6g
         M4Un5Gz7n1wgYOIw0k4CQKD6u0PpkaYhW1E26eA8nktnF24gn3M8ldF1IwoHWFPAA8hS
         ty8VC5zrbahDLIpbOrrHN+5DRq4wQoInizVjBGttDuAC2fBMTh8vakOzA2D1uCrt5myg
         42ag==
X-Gm-Message-State: AOAM532mTQTizNGtauC7qN2GCThzqeZUG/GZvCU73YBh5IeQdF1hrHEp
        vt5vjCafEMOaqkMg72iun/vA3A==
X-Google-Smtp-Source: ABdhPJzkwewvDWdyQwvMoAGW7UYt0cSYOWDv+AsxY7k56dVo9nzTd3UgPQupKpyketYASP9JGP8YHg==
X-Received: by 2002:a05:6402:487:: with SMTP id k7mr17432002edv.315.1623684362472;
        Mon, 14 Jun 2021 08:26:02 -0700 (PDT)
Received: from localhost ([2a02:768:2307:40d6:f666:9af6:3fed:e53b])
        by smtp.gmail.com with ESMTPSA id u21sm7444151ejm.89.2021.06.14.08.26.02
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 14 Jun 2021 08:26:02 -0700 (PDT)
Sender: Michal Simek <monstr@monstr.eu>
From:   Michal Simek <michal.simek@xilinx.com>
To:     linux-kernel@vger.kernel.org, monstr@monstr.eu,
        michal.simek@xilinx.com, git@xilinx.com,
        Viresh Kumar <viresh.kumar@linaro.org>
Cc:     Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 13/33] arm64: zynqmp: Wire DP and DPDMA for dc1/dc4
Date:   Mon, 14 Jun 2021 17:25:21 +0200
Message-Id: <dbbd212bcc587e835d6df2f91622f5baa124bff5.1623684253.git.michal.simek@xilinx.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <cover.1623684253.git.michal.simek@xilinx.com>
References: <cover.1623684253.git.michal.simek@xilinx.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Enable Display Port and Display Port DMA for zc1751 dc1 and dc4.

Signed-off-by: Michal Simek <michal.simek@xilinx.com>
---

Changes in v2: None

 arch/arm64/boot/dts/xilinx/zynqmp-zc1751-xm015-dc1.dts |  8 ++++++++
 arch/arm64/boot/dts/xilinx/zynqmp-zc1751-xm018-dc4.dts | 10 +++++++++-
 2 files changed, 17 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/xilinx/zynqmp-zc1751-xm015-dc1.dts b/arch/arm64/boot/dts/xilinx/zynqmp-zc1751-xm015-dc1.dts
index dd129347174a..460aba6e7990 100644
--- a/arch/arm64/boot/dts/xilinx/zynqmp-zc1751-xm015-dc1.dts
+++ b/arch/arm64/boot/dts/xilinx/zynqmp-zc1751-xm015-dc1.dts
@@ -391,3 +391,11 @@ &usb0 {
 	phys = <&psgtr 2 PHY_TYPE_USB3 0 2>;
 	maximum-speed = "super-speed";
 };
+
+&zynqmp_dpdma {
+	status = "okay";
+};
+
+&zynqmp_dpsub {
+	status = "okay";
+};
diff --git a/arch/arm64/boot/dts/xilinx/zynqmp-zc1751-xm018-dc4.dts b/arch/arm64/boot/dts/xilinx/zynqmp-zc1751-xm018-dc4.dts
index 2366cd9f091a..8046f0df0f35 100644
--- a/arch/arm64/boot/dts/xilinx/zynqmp-zc1751-xm018-dc4.dts
+++ b/arch/arm64/boot/dts/xilinx/zynqmp-zc1751-xm018-dc4.dts
@@ -2,7 +2,7 @@
 /*
  * dts file for Xilinx ZynqMP zc1751-xm018-dc4
  *
- * (C) Copyright 2015 - 2019, Xilinx, Inc.
+ * (C) Copyright 2015 - 2021, Xilinx, Inc.
  *
  * Michal Simek <michal.simek@xilinx.com>
  */
@@ -176,3 +176,11 @@ &uart1 {
 &watchdog0 {
 	status = "okay";
 };
+
+&zynqmp_dpdma {
+	status = "okay";
+};
+
+&zynqmp_dpsub {
+	status = "okay";
+};
-- 
2.32.0

