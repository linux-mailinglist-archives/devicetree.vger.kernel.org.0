Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 4031BA9775
	for <lists+devicetree@lfdr.de>; Thu,  5 Sep 2019 02:04:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729649AbfIEAC3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 4 Sep 2019 20:02:29 -0400
Received: from mail-pl1-f195.google.com ([209.85.214.195]:35165 "EHLO
        mail-pl1-f195.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727156AbfIEAC2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 4 Sep 2019 20:02:28 -0400
Received: by mail-pl1-f195.google.com with SMTP id gn20so380534plb.2
        for <devicetree@vger.kernel.org>; Wed, 04 Sep 2019 17:02:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=qnsUfUbtBKZB2rj/akmEHA3OVRPrL9BVtYGuRABAW/8=;
        b=IWuhtQSa8LLMNw62XbtmPHsyHojsXEO+c1aK6SvYzjVWQOQHEQ1bSNGGvXeiNnjSQ1
         xG2e0RbPt7I8NSsudOJeISNDRSzwTPExDCI22j3FcYy3RYPHGDY1kInaTSkyjBrgGanE
         B3cpMmL92U5NpUKfhygmT3R9nB6a+TwFO1w28JZmP9nSR1qsQmJNLcqzJiL7B9ukNqmR
         90W5CeKmukinELSvaC9Q4GyzUFA3VB+hr5x2fL9SRmYdk7K8/oqHft444dbPRvVZnMle
         ccZqoIdm976qwKDheCViTC+73WV7UvUgPet6GYDrYCMOI2REDwnGIcFyl+O60BUUbPEQ
         oaOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :mime-version:content-transfer-encoding;
        bh=qnsUfUbtBKZB2rj/akmEHA3OVRPrL9BVtYGuRABAW/8=;
        b=Jh+74e4l4rjP7biCQ+nDUx6xfOk93UoTtH9IjCs/B2HRcwH1eQBrHdjaU0uRv1Tipw
         Srsykc7JLwBkIYVoA7fsHrOzB3A7L65tvlxUc0tMmg5AFOeWjSyX7im2rrqqkpY/cndI
         i67jhE5dy2qOEv6Qjy0koNPn6ZF4HYedDJMIWtq2pqHQB5XDS4OFcKI0nb7eLeZE6Knt
         RhDU2W/yaVNP6cpnJjSN3VosJAdc/zVSFSDsWwlAQnPQNKkR194J7nm/IOUhQuvIfjlU
         eANo3iJdHJYqoz8GjGKy6TvX7LhkACPJTwO+G9LCOI79ozMnL9aFChBTHHhPgMnCJtNG
         M7/g==
X-Gm-Message-State: APjAAAWpZqFr8id+k1ocx6KCrKrfeoZShHTK+r++fryKJ9Y/0NR1tU7H
        YCVInc1JeC2Z++LKDP45l3ILLTp5
X-Google-Smtp-Source: APXvYqxgMGuDzrKLSwYZca7Z9ikDN/d2nWwjNF85p9AHhfEtCj3dD1a+HJIdLBiRWfU/a0640prJbw==
X-Received: by 2002:a17:902:6bc5:: with SMTP id m5mr402172plt.169.1567641747978;
        Wed, 04 Sep 2019 17:02:27 -0700 (PDT)
Received: from voyager.ozlabs.ibm.com ([2a00:79e1:abc:100:6ba1:43a1:a8bb:9b57])
        by smtp.gmail.com with ESMTPSA id i1sm213139pfg.2.2019.09.04.17.02.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Sep 2019 17:02:27 -0700 (PDT)
From:   Joel Stanley <joel@jms.id.au>
To:     Andrew Jeffery <andrew@aj.id.au>,
        =?UTF-8?q?C=C3=A9dric=20Le=20Goater?= <clg@kaod.org>
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-aspeed@lists.ozlabs.org
Subject: [PATCH] ARM: dts: aspeed-g4: Add all flash chips
Date:   Wed,  4 Sep 2019 17:02:20 -0700
Message-Id: <20190905000221.31445-1-joel@jms.id.au>
X-Mailer: git-send-email 2.23.0.rc1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The FMC supports five chip selects, so describe the five possible flash
chips.

Signed-off-by: Joel Stanley <joel@jms.id.au>
---
 arch/arm/boot/dts/aspeed-g4.dtsi | 20 ++++++++++++++++++++
 1 file changed, 20 insertions(+)

diff --git a/arch/arm/boot/dts/aspeed-g4.dtsi b/arch/arm/boot/dts/aspeed-g4.dtsi
index e465cda40fe7..dffb595d30e4 100644
--- a/arch/arm/boot/dts/aspeed-g4.dtsi
+++ b/arch/arm/boot/dts/aspeed-g4.dtsi
@@ -67,6 +67,26 @@
 				compatible = "jedec,spi-nor";
 				status = "disabled";
 			};
+			flash@1 {
+				reg = < 1 >;
+				compatible = "jedec,spi-nor";
+				status = "disabled";
+			};
+			flash@2 {
+				reg = < 2 >;
+				compatible = "jedec,spi-nor";
+				status = "disabled";
+			};
+			flash@3 {
+				reg = < 3 >;
+				compatible = "jedec,spi-nor";
+				status = "disabled";
+			};
+			flash@4 {
+				reg = < 4 >;
+				compatible = "jedec,spi-nor";
+				status = "disabled";
+			};
 		};
 
 		spi: spi@1e630000 {
-- 
2.23.0.rc1

