Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id F31973A6A25
	for <lists+devicetree@lfdr.de>; Mon, 14 Jun 2021 17:27:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233325AbhFNP2m (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 14 Jun 2021 11:28:42 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40656 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233619AbhFNP2l (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 14 Jun 2021 11:28:41 -0400
Received: from mail-ej1-x62c.google.com (mail-ej1-x62c.google.com [IPv6:2a00:1450:4864:20::62c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A7266C06124C
        for <devicetree@vger.kernel.org>; Mon, 14 Jun 2021 08:26:25 -0700 (PDT)
Received: by mail-ej1-x62c.google.com with SMTP id k25so17351095eja.9
        for <devicetree@vger.kernel.org>; Mon, 14 Jun 2021 08:26:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=monstr-eu.20150623.gappssmtp.com; s=20150623;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=rTsK2s3RJlRtX1F6hWpi5z/cpdgJZCL2W87lLK+hyQk=;
        b=NDNRYBc1z9R72eDBswmweZiavGcR7ukxJlH0BWIt8LUWmRDlzo77J/cw5dqJf9O8Md
         rLXK+QsqBNkZQeKzpGzrI0PI6vx5ITRjuMzXqFnopabEeGwwADDhTFpN7rkQGxFhSr5w
         dkDMR7PWXxZ5fuhlnFf8wtdtfnN8szf92pFDB+EXnyAYpUzajAO1qU21lvoQrTvR6ert
         csH3GCDy7K5n5FrR7j/iNIZVBSaqG70jPTx4gxScc0Ym6D3tuhzPKuKUYh2Ehhhapdcq
         dfLg5ESzh5F6NblHRyYw+Q8gELXNGUb40+TmjC0TGuPVaY78S5p80yiIiTaOVUj/f7mS
         OniQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:content-transfer-encoding;
        bh=rTsK2s3RJlRtX1F6hWpi5z/cpdgJZCL2W87lLK+hyQk=;
        b=uBltdStVzFhiRv7ufvr5xTHvK4K4TTelFl84bEJzxd5T2JTIir1KsNZKy8jrkvocqp
         44DaagRk97+X4uV8IgO1WGw7EX5VHegXQxBkSl1zW/28h9enDeSEiekCbd0jxBGDlPph
         LV8Zbe4GdUU/BmF7SXTm3pDczFptvN2jfWJKvv2xyCdcRackUn3rJ2fXBZhXbxSKw5L5
         FYeTLNRNATrpwmc+GUIQINZT0QUV1044HdFCp0FNn3NIuj2vH3sa7dxhxIjRqkFGe80X
         5KXmvB4vMlnsVvT/ZkVg7fsZN8DPQG/B9+jQ0BtJim+ybYH6ciOMtFRsIRvH/KdZ2Nqz
         YeOQ==
X-Gm-Message-State: AOAM530cvPnkocgUxUeYRrU+iy4y24rg7mR5XgdsK3D3RmhxhTBl9rEK
        quiWUc7O+aXa1P8lOerULKRAJA==
X-Google-Smtp-Source: ABdhPJz/Qy8wL55WZ9epr2Ncto1U6xrKCqtQvG9/0Bz81V8s0zPp0G197J9wRBFCiNMetwtlCw54SQ==
X-Received: by 2002:a17:906:f744:: with SMTP id jp4mr15781392ejb.210.1623684384248;
        Mon, 14 Jun 2021 08:26:24 -0700 (PDT)
Received: from localhost ([2a02:768:2307:40d6:f666:9af6:3fed:e53b])
        by smtp.gmail.com with ESMTPSA id f18sm4699806edu.5.2021.06.14.08.26.23
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 14 Jun 2021 08:26:23 -0700 (PDT)
Sender: Michal Simek <monstr@monstr.eu>
From:   Michal Simek <michal.simek@xilinx.com>
To:     linux-kernel@vger.kernel.org, monstr@monstr.eu,
        michal.simek@xilinx.com, git@xilinx.com,
        Viresh Kumar <viresh.kumar@linaro.org>
Cc:     Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 28/33] arm64: zynqmp: Sync psgtr node location with zcu104-revA
Date:   Mon, 14 Jun 2021 17:25:36 +0200
Message-Id: <4b691bab5ba83b5352d4669bd54bcdb8273b2156.1623684253.git.michal.simek@xilinx.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <cover.1623684253.git.michal.simek@xilinx.com>
References: <cover.1623684253.git.michal.simek@xilinx.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

zcu104-revA has node below pinctrl which is not the same on revC. Sync
location for easier comparison.
Also zc1751-dc1 is not using this position.

Signed-off-by: Michal Simek <michal.simek@xilinx.com>
---

Changes in v2: None

 .../boot/dts/xilinx/zynqmp-zc1751-xm015-dc1.dts    | 14 +++++++-------
 arch/arm64/boot/dts/xilinx/zynqmp-zcu104-revC.dts  | 14 +++++++-------
 2 files changed, 14 insertions(+), 14 deletions(-)

diff --git a/arch/arm64/boot/dts/xilinx/zynqmp-zc1751-xm015-dc1.dts b/arch/arm64/boot/dts/xilinx/zynqmp-zc1751-xm015-dc1.dts
index 9f176307b62a..d78439e891b9 100644
--- a/arch/arm64/boot/dts/xilinx/zynqmp-zc1751-xm015-dc1.dts
+++ b/arch/arm64/boot/dts/xilinx/zynqmp-zc1751-xm015-dc1.dts
@@ -58,13 +58,6 @@ clock_si5338_3: clk150 {
 	};
 };
 
-&psgtr {
-	status = "okay";
-	/* dp, usb3, sata */
-	clocks = <&clock_si5338_0>, <&clock_si5338_2>, <&clock_si5338_3>;
-	clock-names = "ref1", "ref2", "ref3";
-};
-
 &fpd_dma_chan1 {
 	status = "okay";
 };
@@ -340,6 +333,13 @@ conf {
 	};
 };
 
+&psgtr {
+	status = "okay";
+	/* dp, usb3, sata */
+	clocks = <&clock_si5338_0>, <&clock_si5338_2>, <&clock_si5338_3>;
+	clock-names = "ref1", "ref2", "ref3";
+};
+
 &qspi {
 	status = "okay";
 	flash@0 {
diff --git a/arch/arm64/boot/dts/xilinx/zynqmp-zcu104-revC.dts b/arch/arm64/boot/dts/xilinx/zynqmp-zcu104-revC.dts
index fb8d76b5c27f..c21d9612ce04 100644
--- a/arch/arm64/boot/dts/xilinx/zynqmp-zcu104-revC.dts
+++ b/arch/arm64/boot/dts/xilinx/zynqmp-zcu104-revC.dts
@@ -429,6 +429,13 @@ conf-tx {
 	};
 };
 
+&psgtr {
+	status = "okay";
+	/* nc, sata, usb3, dp */
+	clocks = <&clock_8t49n287_5>, <&clock_8t49n287_2>, <&clock_8t49n287_3>;
+	clock-names = "ref1", "ref2", "ref3";
+};
+
 &qspi {
 	status = "okay";
 	flash@0 {
@@ -446,13 +453,6 @@ &rtc {
 	status = "okay";
 };
 
-&psgtr {
-	status = "okay";
-	/* nc, sata, usb3, dp */
-	clocks = <&clock_8t49n287_5>, <&clock_8t49n287_2>, <&clock_8t49n287_3>;
-	clock-names = "ref1", "ref2", "ref3";
-};
-
 &sata {
 	status = "okay";
 	/* SATA OOB timing settings */
-- 
2.32.0

