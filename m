Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 524ED245B6
	for <lists+devicetree@lfdr.de>; Tue, 21 May 2019 03:45:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727599AbfEUBo6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 20 May 2019 21:44:58 -0400
Received: from mail-lj1-f196.google.com ([209.85.208.196]:44857 "EHLO
        mail-lj1-f196.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727347AbfEUBo6 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 20 May 2019 21:44:58 -0400
Received: by mail-lj1-f196.google.com with SMTP id e13so14238436ljl.11
        for <devicetree@vger.kernel.org>; Mon, 20 May 2019 18:44:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=VX3ZJ4+LsHQk247sTXsicTDtr9mvWdG7A6UkuCw4jPw=;
        b=uscLW5X0zjMF567R9Z9XjkmSsRTEaJNNQeU1Ua2eLKV2NBMf4bTkvZEGOVIAAKNwOV
         DvA/Qf+e0Y6xS45rQcMU67Wuan0DmAfggwDDd+KQjnCqGx5hUFFMCx1qePGhPFhOJDVB
         Mo6xAji/8X49dY1b1oirD76btsWgM6zyv/3PqBCFuKEvEgTXEsJOEy5U+82/Xa2NRakP
         PX7yl627cPK4xe0c4JVg7SsEq8fQiu/260x73USf0FERmZMhLOlgbph3zyaErnWh8Ik/
         ZqTNl1F7NocGxuIyyAQ3mdRGqHdaCqRuUyu15poVxpt/VP5VDOh4MXg05M3m2xgZGqlb
         Y+NA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=VX3ZJ4+LsHQk247sTXsicTDtr9mvWdG7A6UkuCw4jPw=;
        b=EFbZ8YQWMfOLBhXxJi3gp68n5Dg/jDgafRTenHlEyV2F1VrKEQu0HkGhxN2v8Qy3rX
         R72GRnqmulG+Rm1dBOttMqrZAmRbsxnBRLiE/6WGr5UD80MK8uDBgoMhNIXow39NeQ/A
         nyNX0o7G2+8HmvyGeOuD8SutwR9XmU3/CTQ4yFyMgiVm00wDNcAtNFfy99Mr1kdh3/Mv
         Wx2gAs6dbOO5EnvMY5Q4qZYOhZqqIAKkTIpXjRQtdHCRsnryurtxi0aGBBCMkNA2NAYo
         GWQukBqkD0nW2jRCaBDv4haixsx1A+AkQ13pmrtRuF7Jk/7yKU/573cv+zU+fN6L8qfL
         XJCA==
X-Gm-Message-State: APjAAAW9AksJzmCQXbzpaIupCl+jg4SAf8a1QkIi93BTyPf42lSR5uWQ
        1jtI757IKxoouRqma2doXyfeIw==
X-Google-Smtp-Source: APXvYqwCcWx8eAzjMczA+atZCyrD29Hy/di6q3UMSOpZsmy/ZXo4QLz760QkM0nUZNFBfIekbSdaNg==
X-Received: by 2002:a2e:9b93:: with SMTP id z19mr9312223lji.96.1558403096613;
        Mon, 20 May 2019 18:44:56 -0700 (PDT)
Received: from localhost.localdomain (c-d2cd225c.014-348-6c756e10.bbcust.telenor.se. [92.34.205.210])
        by smtp.gmail.com with ESMTPSA id z11sm4232194ljb.68.2019.05.20.18.44.55
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 20 May 2019 18:44:55 -0700 (PDT)
From:   Linus Walleij <linus.walleij@linaro.org>
To:     linux-arm-kernel@lists.infradead.org
Cc:     Linus Walleij <linus.walleij@linaro.org>,
        devicetree@vger.kernel.org, Rob Herring <robh@kernel.org>
Subject: [PATCH 2/9 RESEND 2] mtd: partitions: Add AFS partitions DT bindings
Date:   Tue, 21 May 2019 03:42:21 +0200
Message-Id: <20190521014230.18463-5-linus.walleij@linaro.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190521014230.18463-1-linus.walleij@linaro.org>
References: <20190521014230.18463-1-linus.walleij@linaro.org>
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

