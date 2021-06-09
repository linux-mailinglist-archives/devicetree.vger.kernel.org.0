Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5C64C3A1350
	for <lists+devicetree@lfdr.de>; Wed,  9 Jun 2021 13:48:23 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239481AbhFILtw (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 9 Jun 2021 07:49:52 -0400
Received: from mail-wm1-f41.google.com ([209.85.128.41]:40677 "EHLO
        mail-wm1-f41.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234602AbhFILsy (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 9 Jun 2021 07:48:54 -0400
Received: by mail-wm1-f41.google.com with SMTP id b145-20020a1c80970000b029019c8c824054so4064547wmd.5
        for <devicetree@vger.kernel.org>; Wed, 09 Jun 2021 04:46:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=monstr-eu.20150623.gappssmtp.com; s=20150623;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=nrZElwT9y3W18Lbft5uOXhWR0ueAWy9kjrpr8/SaaVM=;
        b=MGJwUTU3ouxTrRBx54L0Y6kIMPTVVjeIZYE3AWfYF0mIToRFlUq+j2r4xInXqkSulV
         0RypE2euRdG6Z5W+Q7q+gtQNZaKgW9bLj+aUuWzGZQTNUjH5ePKxxepJ6OssY/y+JHyF
         cP7QULlnNfvQNYhCcf6OYTS11mXKblu8QwbKKHHTdJlnNs8NjdG2vu5tleRoHt3WfUxd
         YhwQW5egSiEly3y8h2gObFaJsK7G7oL/ko96qLqsTYgy3hNWfWowIM+Xrc4W95HaLSeY
         cLGhxNcMLOPJYpltFnfr4CdbHmJIs3CRYnAks8qIOo56KUEybGG+ggbrkC2BDyArUL7n
         bAxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:content-transfer-encoding;
        bh=nrZElwT9y3W18Lbft5uOXhWR0ueAWy9kjrpr8/SaaVM=;
        b=IEMpa+9mQWQsbV7GsHvYQc+EGp+zySrxNCJaNnzndsTE4PaeStkGA9Oq7q7jK0Yxp/
         PPohAY6weZgREuEQV9eIW6kOF036wSwHpFrmVSR6hl58KT4fncMAYrCTA09BTnG/UK0a
         xkSWguCkg3zjm6T5Y1qQBUGAjuECavIDr6LdEwbnUFeogGVj2SPJQu3oIOFw/x70yKOG
         0HoEfthHrNmZVOI0BvDrqGYaC3ChIB9MN3C9otYdNqRtXQ0VerKC7RSJcvaw1WcwVHS4
         3MBBDIUshyH4p7fVKtGWJDI9BQSRWOVePLKnADStDwvCaKVG2nGEP8nYKlKBjK90dvGf
         5i+A==
X-Gm-Message-State: AOAM531LPfEyKtZZ110ys9G97uk482S68Q8oUUkwRof/NTYHevPD3UIK
        LcqRdAx7PwLqXUABwO6Ziwa3gg==
X-Google-Smtp-Source: ABdhPJz/Klyqy8Y+luI/yuy0IgYB1SCvJlkMPYkQe0DhLcM9V6pZ1BGe43mytDAP3OWX+IGqnqrpMQ==
X-Received: by 2002:a1c:bad6:: with SMTP id k205mr9594035wmf.171.1623239158850;
        Wed, 09 Jun 2021 04:45:58 -0700 (PDT)
Received: from localhost ([2a02:768:2307:40d6::45a])
        by smtp.gmail.com with ESMTPSA id l31sm6047615wms.16.2021.06.09.04.45.58
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 09 Jun 2021 04:45:58 -0700 (PDT)
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
Subject: [PATCH 22/31] arm64: zynqmp: Add note about UHS mode on some boards
Date:   Wed,  9 Jun 2021 13:44:58 +0200
Message-Id: <ac36b2b31cd32bfad09544d898c98114146af518.1623239033.git.michal.simek@xilinx.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <cover.1623239033.git.michal.simek@xilinx.com>
References: <cover.1623239033.git.michal.simek@xilinx.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add note about UHS mode and add no-1-8-v property to zc1751-dc1 board.

Signed-off-by: Michal Simek <michal.simek@xilinx.com>
---

 arch/arm64/boot/dts/xilinx/zynqmp-zc1751-xm015-dc1.dts | 4 ++++
 arch/arm64/boot/dts/xilinx/zynqmp-zcu102-revA.dts      | 4 ++++
 arch/arm64/boot/dts/xilinx/zynqmp-zcu106-revA.dts      | 3 +++
 arch/arm64/boot/dts/xilinx/zynqmp-zcu111-revA.dts      | 5 ++++-
 4 files changed, 15 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/xilinx/zynqmp-zc1751-xm015-dc1.dts b/arch/arm64/boot/dts/xilinx/zynqmp-zc1751-xm015-dc1.dts
index 460aba6e7990..cd406947ec34 100644
--- a/arch/arm64/boot/dts/xilinx/zynqmp-zc1751-xm015-dc1.dts
+++ b/arch/arm64/boot/dts/xilinx/zynqmp-zc1751-xm015-dc1.dts
@@ -370,6 +370,10 @@ &sdhci0 {
 /* SD1 with level shifter */
 &sdhci1 {
 	status = "okay";
+	/*
+	 * This property should be removed for supporting UHS mode
+	 */
+	no-1-8-v;
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_sdhci1_default>;
 	xlnx,mio-bank = <1>;
diff --git a/arch/arm64/boot/dts/xilinx/zynqmp-zcu102-revA.dts b/arch/arm64/boot/dts/xilinx/zynqmp-zcu102-revA.dts
index 5ddcfdf48626..3cbc51b4587d 100644
--- a/arch/arm64/boot/dts/xilinx/zynqmp-zcu102-revA.dts
+++ b/arch/arm64/boot/dts/xilinx/zynqmp-zcu102-revA.dts
@@ -956,6 +956,10 @@ &sata {
 /* SD1 with level shifter */
 &sdhci1 {
 	status = "okay";
+	/*
+	 * 1.0 revision has level shifter and this property should be
+	 * removed for supporting UHS mode
+	 */
 	no-1-8-v;
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_sdhci1_default>;
diff --git a/arch/arm64/boot/dts/xilinx/zynqmp-zcu106-revA.dts b/arch/arm64/boot/dts/xilinx/zynqmp-zcu106-revA.dts
index 4a0f3370bf7f..2c1c4d96fb21 100644
--- a/arch/arm64/boot/dts/xilinx/zynqmp-zcu106-revA.dts
+++ b/arch/arm64/boot/dts/xilinx/zynqmp-zcu106-revA.dts
@@ -951,6 +951,9 @@ &sata {
 /* SD1 with level shifter */
 &sdhci1 {
 	status = "okay";
+	/*
+	 * This property should be removed for supporting UHS mode
+	 */
 	no-1-8-v;
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_sdhci1_default>;
diff --git a/arch/arm64/boot/dts/xilinx/zynqmp-zcu111-revA.dts b/arch/arm64/boot/dts/xilinx/zynqmp-zcu111-revA.dts
index 85e9d0e2f9bd..c9d41d16c3f0 100644
--- a/arch/arm64/boot/dts/xilinx/zynqmp-zcu111-revA.dts
+++ b/arch/arm64/boot/dts/xilinx/zynqmp-zcu111-revA.dts
@@ -796,8 +796,11 @@ &sdhci1 {
 	status = "okay";
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_sdhci1_default>;
-	no-1-8-v;
 	disable-wp;
+	/*
+	 * This property should be removed for supporting UHS mode
+	 */
+	no-1-8-v;
 	xlnx,mio-bank = <1>;
 };
 
-- 
2.31.1

