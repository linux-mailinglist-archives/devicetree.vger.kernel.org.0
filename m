Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3EF0640AB61
	for <lists+devicetree@lfdr.de>; Tue, 14 Sep 2021 12:04:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230045AbhINKFr (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 14 Sep 2021 06:05:47 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60698 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231206AbhINKFq (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 14 Sep 2021 06:05:46 -0400
Received: from mail-pg1-x52b.google.com (mail-pg1-x52b.google.com [IPv6:2607:f8b0:4864:20::52b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8A407C061574
        for <devicetree@vger.kernel.org>; Tue, 14 Sep 2021 03:04:29 -0700 (PDT)
Received: by mail-pg1-x52b.google.com with SMTP id u18so12280746pgf.0
        for <devicetree@vger.kernel.org>; Tue, 14 Sep 2021 03:04:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=0x0f.com; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=YTelFZ4YtHf/yrnhtZbgR71tzP43nh7KX3YNOVUak+s=;
        b=CDiYaRE8KSSxIhfQOOhRsN6w0ItvBOupzSsXso1Cg0qX2Idl25xAonAUlcRIV68n3J
         dqiF8rLbw4zsk11oMl5LIjNtFau/hfFbp73LbkkjWVzJhUersS7r6ZUmop4bdzy871gm
         4Zf8dMsmSLsM+OCtvMDx706DiUTGdqZVrlUmA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=YTelFZ4YtHf/yrnhtZbgR71tzP43nh7KX3YNOVUak+s=;
        b=2EdLYlRI6NLBZKmhWutTGUqX8ReyDVJ3SepMFHuMSIzHGZEX8vY6qRaZj3OsOxCMRo
         j5NoLr1AUqAwuMGOy/k6vt2/nJ7R2Zes703W62E9lQmMPNWcmxzkroZ9M5/7zm5Vy82P
         Sk7A+o1B1s89lb8I59svRa7CWinIE13+IiSVWrooDG0iEkIwiDW3F8XgJo+CV0f4Bjoi
         sUUfONH200GQJZUMOaMhLsYlbiqzbesVhlXcHBPcgrlzcTq1DlXl0OYdndwIvXiTddA5
         YeUx1yGLfBqlSt0xypxsr60ho7xCOJBSpfS50UyJXzrWEPvxsOiLNXXmwrYR7q6OhQnu
         +Ccw==
X-Gm-Message-State: AOAM531QeDh6koYlZOVQ6QZXteRUVUG7I67K5rFs8vr8aKUXO98a7IVG
        f+o+/3RvRkTNNNaC/TD0Y2zCbaW/xMc4gA==
X-Google-Smtp-Source: ABdhPJyCIXrzQ5K0STeAbnPCw0Q3hAIFcsHGW/ThZZ3HavCLvmQJU8byUMa+tJQKdG6lXAWzTFobJw==
X-Received: by 2002:a62:2c51:0:b029:329:932b:9484 with SMTP id s78-20020a622c510000b0290329932b9484mr3901155pfs.13.1631613868913;
        Tue, 14 Sep 2021 03:04:28 -0700 (PDT)
Received: from shiro.work (p864106-ipngn200510sizuokaden.shizuoka.ocn.ne.jp. [180.9.58.106])
        by smtp.googlemail.com with ESMTPSA id b5sm1193140pjq.2.2021.09.14.03.04.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Sep 2021 03:04:28 -0700 (PDT)
From:   Daniel Palmer <daniel@0x0f.com>
To:     devicetree@vger.kernel.org, robh+dt@kernel.org, maz@kernel.org,
        tglx@linutronix.de
Cc:     linux-arm-kernel@lists.infradead.org, romain.perier@gmail.com,
        Daniel Palmer <daniel@0x0f.com>
Subject: [PATCH 3/3] ARM: dts: mstar: Add gpi interrupt controller to i2m
Date:   Tue, 14 Sep 2021 19:04:15 +0900
Message-Id: <20210914100415.1549208-4-daniel@0x0f.com>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20210914100415.1549208-1-daniel@0x0f.com>
References: <20210914100415.1549208-1-daniel@0x0f.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

infinity2m chips have the GPI interrupt controller
for GPIOs so add it to the dtsi for infinity2m.

Signed-off-by: Daniel Palmer <daniel@0x0f.com>
---
 arch/arm/boot/dts/mstar-infinity2m.dtsi | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm/boot/dts/mstar-infinity2m.dtsi b/arch/arm/boot/dts/mstar-infinity2m.dtsi
index 6d4d1d224e96..0ec8e4cadf5c 100644
--- a/arch/arm/boot/dts/mstar-infinity2m.dtsi
+++ b/arch/arm/boot/dts/mstar-infinity2m.dtsi
@@ -19,4 +19,12 @@ smpctrl: smpctrl@204000 {
 		reg = <0x204000 0x200>;
 		status = "disabled";
 	};
+
+	gpi: interrupt-controller@207a00 {
+		compatible = "sstar,ssd20xd-gpi";
+		reg = <0x207a00 0x200>;
+		#interrupt-cells = <2>;
+		interrupt-controller;
+		interrupts-extended = <&intc_irq GIC_SPI 56 IRQ_TYPE_LEVEL_HIGH>;
+	};
 };
-- 
2.33.0

