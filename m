Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8D94941B3D8
	for <lists+devicetree@lfdr.de>; Tue, 28 Sep 2021 18:27:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241702AbhI1Q2y (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 28 Sep 2021 12:28:54 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51888 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S241777AbhI1Q2x (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 28 Sep 2021 12:28:53 -0400
Received: from mail-ed1-x52b.google.com (mail-ed1-x52b.google.com [IPv6:2a00:1450:4864:20::52b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E1DA5C06174E
        for <devicetree@vger.kernel.org>; Tue, 28 Sep 2021 09:27:13 -0700 (PDT)
Received: by mail-ed1-x52b.google.com with SMTP id ba1so27517567edb.4
        for <devicetree@vger.kernel.org>; Tue, 28 Sep 2021 09:27:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sartura-hr.20210112.gappssmtp.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=MOkJiFFV+D+y/7iBdkppsbCFqP93nQiAS8IIYiy8lX0=;
        b=djqXHYsV7xAQcQ/mhBAPdDxvJySXs4FguHPH9NH1ldUxU/J642GXPL3pB/z8F53aFY
         BQ2zNu9KA9YhEeTB5IvvS3LPUtp15tnP7jA3bSG6rZ2gNiZqqYcznhAJHNZHjV2/EaGo
         UKEq014m+btoLN5Piz2f9tSs78iGQo6WndI7+I3Kdz6lyyNPx2kLCa8Bcw7z7pAo3k4A
         USik91g0EdgluotTEu0f1OihzTcLWgwDR65N26NeQoBtI0rO/oMVb2TqmfLvRz4vjjrT
         mtQEJp5P1nAYOnCuGyyLPRCVXhoKEIE6TNDNyfGb2gZ/ulm7AaKpmHHy9ah9oV5fzn2f
         Cr+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=MOkJiFFV+D+y/7iBdkppsbCFqP93nQiAS8IIYiy8lX0=;
        b=ar7B1kDon5YxWKfcOqYLT2M7kvvnZhAU5tQThIzImVPpNg2q83dNjRgd8r0nV/RlPS
         hEQ0wSDhWORs9vBzK6PzH7KxaeOLsrcPbNNH3LRhCSOCh9YqpnFeNAt48bMBZGMrthZq
         QXBp/QggItPteG1Jff5UuWsuV/vPOoAZSCUX18CB1qpoiqjhxEn4ynuZ3Ha6ZEKAeEhr
         k/1siBp9IURj5ykY1f6YZAVsBo37K/YBfIr7b2X3frAW8bGkF2BRUvMOLugTrYMB5eSd
         5Gzc/Vp2hPCBAEnN74tUBqowJ0m9HtezQaYSkt/23I9qStSi3ejO90TVjCJUnWFKDjWC
         XNcQ==
X-Gm-Message-State: AOAM532VD5MLbrp3J3TeYvb5kaQxa5+29jgDbsqcz0iQGl7REpINfU27
        rcptrZkvgrPT3PWTq7+fhPdqsQ==
X-Google-Smtp-Source: ABdhPJxiSj/o79HZRaORk99sA2V5qNHGt2/Ilgk73xdVmmi2N/C1Gl07IERKmd5KSx+i7hFxUTiOYg==
X-Received: by 2002:a17:906:7d42:: with SMTP id l2mr7917718ejp.467.1632846431153;
        Tue, 28 Sep 2021 09:27:11 -0700 (PDT)
Received: from fedora.. (dh207-96-123.xnet.hr. [88.207.96.123])
        by smtp.googlemail.com with ESMTPSA id n23sm12579876edw.75.2021.09.28.09.27.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 Sep 2021 09:27:10 -0700 (PDT)
From:   Robert Marko <robert.marko@sartura.hr>
To:     andrew@lunn.ch, gregory.clement@bootlin.com,
        sebastian.hesselbarth@gmail.com, robh+dt@kernel.org,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, pali@kernel.org
Cc:     Robert Marko <robert.marko@sartura.hr>
Subject: [PATCH v2 2/3] arm64: dts: marvell: espressobin-ultra: add PHY and switch reset pins
Date:   Tue, 28 Sep 2021 18:27:03 +0200
Message-Id: <20210928162704.687513-2-robert.marko@sartura.hr>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210928162704.687513-1-robert.marko@sartura.hr>
References: <20210928162704.687513-1-robert.marko@sartura.hr>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Both the Topaz switch and 88E1512 PHY have their reset and interrupts
connected to the SoC.

So, define the Topaz and 88E1512 reset pins in the DTS.

Defining the interrupt pins wont work as both the 88E1512 and the
Topaz switch uses active LOW IRQ signals but the A37xx GPIO controller
only supports edge triggers.
88E1512 would require special setup anyway as its INT pin is shared with
the LED2 and you first need to configure it as INT.

Signed-off-by: Robert Marko <robert.marko@sartura.hr>
Reviewed-by: Andrew Lunn <andrew@lunn.ch>
---
 arch/arm64/boot/dts/marvell/armada-3720-espressobin-ultra.dts | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm64/boot/dts/marvell/armada-3720-espressobin-ultra.dts b/arch/arm64/boot/dts/marvell/armada-3720-espressobin-ultra.dts
index 610ff6f385c7..7c786d218f1b 100644
--- a/arch/arm64/boot/dts/marvell/armada-3720-espressobin-ultra.dts
+++ b/arch/arm64/boot/dts/marvell/armada-3720-espressobin-ultra.dts
@@ -114,12 +114,16 @@ &usb3 {
 &mdio {
 	extphy: ethernet-phy@1 {
 		reg = <1>;
+
+		reset-gpios = <&gpionb 2 GPIO_ACTIVE_LOW>;
 	};
 };
 
 &switch0 {
 	reg = <3>;
 
+	reset-gpios = <&gpiosb 23 GPIO_ACTIVE_LOW>;
+
 	ports {
 		switch0port1: port@1 {
 			reg = <1>;
-- 
2.31.1

