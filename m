Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5D3F9230739
	for <lists+devicetree@lfdr.de>; Tue, 28 Jul 2020 12:03:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728624AbgG1KDw (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 28 Jul 2020 06:03:52 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51080 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728639AbgG1KDv (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 28 Jul 2020 06:03:51 -0400
Received: from mail-pl1-x641.google.com (mail-pl1-x641.google.com [IPv6:2607:f8b0:4864:20::641])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A9CFDC061794
        for <devicetree@vger.kernel.org>; Tue, 28 Jul 2020 03:03:51 -0700 (PDT)
Received: by mail-pl1-x641.google.com with SMTP id p1so9626866pls.4
        for <devicetree@vger.kernel.org>; Tue, 28 Jul 2020 03:03:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=0x0f.com; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=Qd3SyHWj5wy+W8DdCFH06h9CfnAMjEf8IGmL9iqvbmI=;
        b=JNqemohlMJJK5FleQBz+aU3vVrmawQdPE8A/kjFcY4rCS1jyRThCKrjyMmezbX/Udo
         79YOfWW4yOHB8iK2q/4aQxZLkZ3OHIc/brfET9yp0CSbstRl7E9UgsxbF3Rb4zrQpdKI
         ugqC/RXzxD1REr/Ul2d6x8ARlxHQr9PXo1cbc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=Qd3SyHWj5wy+W8DdCFH06h9CfnAMjEf8IGmL9iqvbmI=;
        b=N8QWAS/O2EiICacTzWsGvToJIu9wbrwyftqHUCZCUG7rDj1v6bC7n55k5KEK9WJKGl
         4kXWS+nZZvdKaAGkrFdPbbSVxD42+h9W1d+CtRmms5Bu2xJyUnpQMS7NhWqrhvnf8wAJ
         vz05oBrHB3eXCMusTpVve+o1I6CTMrHq67PPVsUlkjqO1VrMYbfuIQE3kp+TG73esbdH
         r5dFxkPwvn/Tt/9Nsl+hQaOiGZf6JRxFqz+/DuAP/G8Z8grCp1YvMAmXT0xOQCONRSvO
         6BCVMmcDEO3O04CxhaR+Xj2IF54caRxiwRvZImmcPTc+esi2hy3sfHtdfagP6X2y342G
         rDag==
X-Gm-Message-State: AOAM532DNtvqp02d4zja6ihq9F2fdeeltPdrQT3ReGJ1bTgN2njSn9Y/
        U9Za44Ak0K5QyexNm1zuHRdrPA==
X-Google-Smtp-Source: ABdhPJyf6BDv8HyUNncV33oITZ34mKi/i8fDZdIPSKaIR+aI9rOAq3LYBrMn7SrO3dT0FGPzyiNLGg==
X-Received: by 2002:a17:90a:6e47:: with SMTP id s7mr3752498pjm.217.1595930631238;
        Tue, 28 Jul 2020 03:03:51 -0700 (PDT)
Received: from shiro.work (p532183-ipngn200506sizuokaden.shizuoka.ocn.ne.jp. [153.199.2.183])
        by smtp.googlemail.com with ESMTPSA id u66sm17779018pfb.191.2020.07.28.03.03.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 Jul 2020 03:03:50 -0700 (PDT)
From:   Daniel Palmer <daniel@0x0f.com>
To:     soc@kernel.org
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org, arnd@arndb.de, robh@kernel.org,
        Daniel Palmer <daniel@0x0f.com>
Subject: [PATCH v2 7/9] ARM: mstar: Add PMU
Date:   Tue, 28 Jul 2020 19:03:19 +0900
Message-Id: <20200728100321.1691745-8-daniel@0x0f.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20200728100321.1691745-1-daniel@0x0f.com>
References: <20200728100321.1691745-1-daniel@0x0f.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Adds the ARM PMU to the base MStar v7 dtsi.

Signed-off-by: Daniel Palmer <daniel@0x0f.com>
---
 arch/arm/boot/dts/mstar-v7.dtsi | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/arch/arm/boot/dts/mstar-v7.dtsi b/arch/arm/boot/dts/mstar-v7.dtsi
index 1941f88a69a5..f787b8e4b67f 100644
--- a/arch/arm/boot/dts/mstar-v7.dtsi
+++ b/arch/arm/boot/dts/mstar-v7.dtsi
@@ -40,6 +40,12 @@ arch_timer {
 		clock-frequency = <6000000>;
 	};
 
+	pmu: pmu {
+		compatible = "arm,cortex-a7-pmu";
+		interrupts = <GIC_SPI 10 IRQ_TYPE_LEVEL_HIGH>;
+		interrupt-affinity = <&cpu0>;
+	};
+
 	soc: soc {
 		compatible = "simple-bus";
 		#address-cells = <1>;
-- 
2.27.0

