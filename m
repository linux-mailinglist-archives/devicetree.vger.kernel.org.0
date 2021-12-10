Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4052646FDE9
	for <lists+devicetree@lfdr.de>; Fri, 10 Dec 2021 10:36:36 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236662AbhLJJkK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 10 Dec 2021 04:40:10 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44148 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231226AbhLJJkJ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 10 Dec 2021 04:40:09 -0500
Received: from mail-pg1-x52b.google.com (mail-pg1-x52b.google.com [IPv6:2607:f8b0:4864:20::52b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 23C6DC061746
        for <devicetree@vger.kernel.org>; Fri, 10 Dec 2021 01:36:35 -0800 (PST)
Received: by mail-pg1-x52b.google.com with SMTP id j11so7593516pgs.2
        for <devicetree@vger.kernel.org>; Fri, 10 Dec 2021 01:36:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bytedance-com.20210112.gappssmtp.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=FFsQwjzhgSyKAUENvfBIFY+4uCH9mkGIaj8EHI/MgtM=;
        b=2HZ8pFJ96JZLj13duu4Zv3yCHVfq4Zvb5DObtluxYN8pRA1VHPgMn5e/SuxAL7/6gs
         8PP7cNkLq+G0iKZxU+8Nhy8efBi1gVoxsJ8GCrVdrqtlL8oF2tBhAW0PCxrKoV9eGh4K
         9gNDtwRri8Q8OvRKv/gG/jQ/8HvZiIw4kpMv+DIicaEAfG5RM16QsLKePuKPDQS84AY+
         lsJbF11WJCzp+Ny9jl1qFWpabfTll6zWZngYHtujZ5WtMYKJMxuHvvU76e3/+gWjYXxy
         hwKASuGz+uKCPSmOY5DUTGipvxCHMUu5X0gOs98LNqECU1qDq0k0/f3ls+z36jTtmIeA
         a2LA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=FFsQwjzhgSyKAUENvfBIFY+4uCH9mkGIaj8EHI/MgtM=;
        b=PM2MnqExCbaMaKOJPaAhe11PvTS1qn6sq2L8Bj7i8QbQlDaLpJ69VahkIP0GSX+xqD
         JcMXuacUUGiBp9IBHPzlHU7yEmLOygEmVxaSbPtO3+RHklDAzY+yamdIL5h5NkByuGoS
         aEwPjBSmWa91+YGwyiWz/x1zVjugZhR0tL9qbyc4K/0RdMfPPPJYX+ArqVULdd6wLhFp
         GpvV9+j0WF/FtnzOjKLS9HLdHDNiUuMXQh1UYh80x6rM0foJsS/r4KvG54IhSW2s4yML
         JckiZNMSgcgUZgVL9zqFSXEExL9cdgiTVFKMax8YzIcL6+2/Z7eNrbRbBq2f5n3sKIK5
         qHLA==
X-Gm-Message-State: AOAM532FgwZ8xnmHl9/aBZ9pSlzJ0SrMTckrAeQkVKyQq7HqfPtuo9Sm
        zZ3MKNh0JdKjrx+S/tQBMW7erQ==
X-Google-Smtp-Source: ABdhPJxfgd7xqWpUed8nHPtc7th4BGQX/oU3cVlecMdpTmljzsHJb1raImLHfPrW51SVtK7EXikrhA==
X-Received: by 2002:a05:6a00:1783:b0:49f:c134:c6e2 with SMTP id s3-20020a056a00178300b0049fc134c6e2mr17192053pfg.0.1639128994705;
        Fri, 10 Dec 2021 01:36:34 -0800 (PST)
Received: from localhost ([49.7.45.40])
        by smtp.gmail.com with ESMTPSA id mn15sm2263884pjb.35.2021.12.10.01.36.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 10 Dec 2021 01:36:34 -0800 (PST)
From:   Lei YU <yulei.sh@bytedance.com>
To:     Rob Herring <robh+dt@kernel.org>, Joel Stanley <joel@jms.id.au>,
        Andrew Jeffery <andrew@aj.id.au>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-aspeed@lists.ozlabs.org, linux-kernel@vger.kernel.org,
        openbmc <openbmc@lists.ozlabs.org>
Cc:     Lei YU <yulei.sh@bytedance.com>
Subject: [PATCH] ARM: dts: aspeed: g220a: Enable secondary flash
Date:   Fri, 10 Dec 2021 17:36:23 +0800
Message-Id: <20211210093623.2140640-1-yulei.sh@bytedance.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Enable the secondary flash of the g220a's BMC and the wdt2.

Signed-off-by: Lei YU <yulei.sh@bytedance.com>
---
 arch/arm/boot/dts/aspeed-bmc-bytedance-g220a.dts | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/arch/arm/boot/dts/aspeed-bmc-bytedance-g220a.dts b/arch/arm/boot/dts/aspeed-bmc-bytedance-g220a.dts
index 01dace8f5e5f..05f392f42960 100644
--- a/arch/arm/boot/dts/aspeed-bmc-bytedance-g220a.dts
+++ b/arch/arm/boot/dts/aspeed-bmc-bytedance-g220a.dts
@@ -260,6 +260,13 @@ flash@0 {
 		spi-max-frequency = <50000000>;
 #include "openbmc-flash-layout-64.dtsi"
 	};
+	flash@1 {
+		status = "okay";
+		label = "alt-bmc";
+		m25p,fast-read;
+		spi-max-frequency = <50000000>;
+#include "openbmc-flash-layout-64-alt.dtsi"
+	};
 };
 
 &spi1 {
@@ -278,6 +285,10 @@ &adc {
 	status = "okay";
 };
 
+&wdt2 {
+	aspeed,alt-boot;
+};
+
 &gpio {
 	status = "okay";
 	gpio-line-names =
-- 
2.25.1

