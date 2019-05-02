Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 0347C11B7D
	for <lists+devicetree@lfdr.de>; Thu,  2 May 2019 16:33:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726282AbfEBOdF (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 2 May 2019 10:33:05 -0400
Received: from mail-lj1-f193.google.com ([209.85.208.193]:35234 "EHLO
        mail-lj1-f193.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726267AbfEBOdE (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 2 May 2019 10:33:04 -0400
Received: by mail-lj1-f193.google.com with SMTP id z26so2407356ljj.2
        for <devicetree@vger.kernel.org>; Thu, 02 May 2019 07:33:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=VX3ZJ4+LsHQk247sTXsicTDtr9mvWdG7A6UkuCw4jPw=;
        b=L+nSl7RFy44G1FlxiXKj1rC6UFS0r2OPhUyReuGg6Wc+iiQC8N41qVc6z4miXL2o21
         nay7m/GMk9cMHfMyaDOhtAIRA0Tf5ByvsCWuy2Nq4ORubn2c1P+xyZAOVO8AGq84a+on
         U4h8nqqUx4hpr/RHQuB17V4S24P9/o78EC0ZFA5PeUeCKCwF1pUCG0T7KkVf1rMMJ3P9
         USt7QUBIh7McDmdpL9QiHU9JzOdokH167Nnq5+QyfWkjRTc/C9ZF5Ms6+hO5Wo9sdAu5
         HU52GEArBkHoMITO9WJZs96UD3aQ0JjlC7Z2qFB8aWzvYXqHAuPZBViuKVcTdk34WNJc
         AQlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=VX3ZJ4+LsHQk247sTXsicTDtr9mvWdG7A6UkuCw4jPw=;
        b=H0eL15YZsB0hOMbrJL5M1PTmSAkP/ooj5zmotAIOLsyl8g/odpOFJR1EMjfCH8kxVB
         9B0j3Cbuyjv+SAnoJooHatJDMvGOS3EuOcJ3zm3AxMdlZlQ6pi4qjDrPPMRJLPcvEWVc
         Rp//4KXXbXoXbkrH16U//wtju9khNPqP3UwhL2J5okm7wjf6r45K5gbkso0zFK+gsrsZ
         o0zbSYGbYdxUcA5Cyd/U6MrZmx+THS6ZZfRKOVKLyteYREdY1zYD0a2imRHUjnxpPeI1
         YUNnqw2qR5jeP3r7YCkJE7wng7Lrsa8LAksoYnq65qe81BKKIDcVrKaFKyfHxvVgyJgJ
         AXsg==
X-Gm-Message-State: APjAAAX1dM2f96d01/WR5EObek+gnWMUTnJziRomuehmh7JQSSscKzho
        jo3Y8wFzrbyg+RZllfc0OrLGgA==
X-Google-Smtp-Source: APXvYqwY2DYVJQzlTnhWooL+lkS4ihwd94VchgjIG5vs2Z0D8eU7AKRVa2szJSDKzpLoXEhvMKPLbg==
X-Received: by 2002:a2e:8953:: with SMTP id b19mr2124811ljk.139.1556807582656;
        Thu, 02 May 2019 07:33:02 -0700 (PDT)
Received: from localhost.localdomain (c-d2cd225c.014-348-6c756e10.bbcust.telenor.se. [92.34.205.210])
        by smtp.gmail.com with ESMTPSA id l79sm9430625lfe.92.2019.05.02.07.33.01
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Thu, 02 May 2019 07:33:01 -0700 (PDT)
From:   Linus Walleij <linus.walleij@linaro.org>
To:     David Woodhouse <dwmw2@infradead.org>,
        Brian Norris <computersforpeace@gmail.com>,
        Marek Vasut <marek.vasut@gmail.com>,
        Richard Weinberger <richard@nod.at>,
        Miquel Raynal <miquel.raynal@bootlin.com>,
        linux-mtd@lists.infradead.org
Cc:     Linus Walleij <linus.walleij@linaro.org>,
        devicetree@vger.kernel.org, Rob Herring <robh@kernel.org>
Subject: [PATCH 2/9 RESEND 2] mtd: partitions: Add AFS partitions DT bindings
Date:   Thu,  2 May 2019 16:30:27 +0200
Message-Id: <20190502143034.16781-3-linus.walleij@linaro.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190502143034.16781-1-linus.walleij@linaro.org>
References: <20190502143034.16781-1-linus.walleij@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This adds device tree bindings for ARM Firmware Suite
flash partitioning used in NOR flashes on ARM reference
designs.

Cc: devicetree@vger.kernel.org
Reviewed-by: Rob Herring <robh@kernel.org>
Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
 .../mtd/partitions/arm,arm-firmware-suite.txt   | 17 +++++++++++++++++
 1 file changed, 17 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/mtd/partitions/arm,arm-firmware-suite.txt

diff --git a/Documentation/devicetree/bindings/mtd/partitions/arm,arm-firmware-suite.txt b/Documentation/devicetree/bindings/mtd/partitions/arm,arm-firmware-suite.txt
new file mode 100644
index 000000000000..d5c5616f6db5
--- /dev/null
+++ b/Documentation/devicetree/bindings/mtd/partitions/arm,arm-firmware-suite.txt
@@ -0,0 +1,17 @@
+ARM AFS - ARM Firmware Suite Partitions
+=======================================
+
+The ARM Firmware Suite is a flash partitioning system found on the
+ARM reference designs: Integrator AP, Integrator CP, Versatile AB,
+Versatile PB, the RealView family, Versatile Express and Juno.
+
+Required properties:
+- compatible : (required) must be "arm,arm-firmware-suite"
+
+Example:
+
+flash@0 {
+	partitions {
+		compatible = "arm,arm-firmware-suite";
+	};
+};
-- 
2.20.1

