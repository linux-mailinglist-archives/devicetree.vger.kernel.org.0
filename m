Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 85DF537522
	for <lists+devicetree@lfdr.de>; Thu,  6 Jun 2019 15:24:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726092AbfFFNYv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 6 Jun 2019 09:24:51 -0400
Received: from mail-lj1-f196.google.com ([209.85.208.196]:42274 "EHLO
        mail-lj1-f196.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727828AbfFFNYu (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 6 Jun 2019 09:24:50 -0400
Received: by mail-lj1-f196.google.com with SMTP id t28so1993293lje.9
        for <devicetree@vger.kernel.org>; Thu, 06 Jun 2019 06:24:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=LzAzlX0RIFpmEOPyKd7L5UTvYpPd/VYX5UpRcJFDD9c=;
        b=ISvIfUwteBIdzflTCBaFl2o8TAUOseWkc5P7K7P2AIn9YlqtRq+BVcbxUKjf0brXuR
         ulad3xlhqbKy8saBohRZBtXjB1YY21vaaQSfhkUgyb25aGG03PpGReLxpLrIo5ETjW29
         l1vIBLnciZ5WaXjTrryKs4vGY9a+gTFOuxfyUg0aWmwlnYzw0SSGFI24/53ROxl6fveW
         Q+HqUgjtDqwPqvP6ov/9/B/aE5RNZQ3l5yd5C/3P5F8ykvf1duvTNjhtb1m+BjDccIxK
         Lk6iyBzRBdY+9i6wumFZz7LDuK1wbptNMk3wddRKZpl6ygV1S8i9JtKBliE0u4nWB6HH
         R0oA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=LzAzlX0RIFpmEOPyKd7L5UTvYpPd/VYX5UpRcJFDD9c=;
        b=HmY/ThlgNquEdBi8d8Ui0UctYZiJvbOuJIUnaORH4CVfmSElWIH1E2/kuSiJhl4zPE
         D03Q5bk9wSOhQWWNeyhkVDOK2cSWF/wLPQ+oHV3h7Q2x/eoF6uGcGPl20lQyHhZ7YZ+R
         ckv0ds4hexUZNdD8d1t4Sphiv1koum8mZtjTEjPRY2SB5saMDrTU8g1K2R4C/4RT54Ax
         gpU1N7CkPoMMjbvUeTtwySpUe3P3G1au/yNWRg6pp7Tfr0vpZnZuLXCWUKAN+egzqUOw
         1/TICb4YTFpXV++rwPJRT2Lnhhf5sx7GLv9/CiYQ27Csp+L5rlIl5Yo03Uz3/zVYoMuO
         4ipg==
X-Gm-Message-State: APjAAAUXM+hdpKukrJcORbkJTpDNRtWW4Z+W0kaVYUILw+f+KeqJqo9f
        3pGCUZ9q44h+1qTRjwnvke8=
X-Google-Smtp-Source: APXvYqzwNCVniwtux2uKgU0PbDinjvkAvfhz2iw7+tBYSDw1HUi9lAQ5PwjN3s+IHNjxWawqiWov9g==
X-Received: by 2002:a2e:9582:: with SMTP id w2mr9495289ljh.136.1559827488900;
        Thu, 06 Jun 2019 06:24:48 -0700 (PDT)
Received: from localhost.localdomain ([217.153.215.58])
        by smtp.googlemail.com with ESMTPSA id t21sm354932ljg.60.2019.06.06.06.24.47
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 06 Jun 2019 06:24:48 -0700 (PDT)
From:   Krzysztof Michonski <michonskikrzysztof@gmail.com>
X-Google-Original-From: Krzysztof Michonski <krzysztof.michonski@digitalstrom.com>
To:     khilman@baylibre.com, linux-amlogic@lists.infradead.org,
        devicetree@vger.kernel.org
Cc:     afenkart@gmail.com,
        Krzysztof Michonski <michonskikrzysztof@gmail.com>
Subject: [PATCH 2/2] Enable secure monitor on gxl
Date:   Thu,  6 Jun 2019 15:24:39 +0200
Message-Id: <20190606132439.25182-2-krzysztof.michonski@digitalstrom.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190606132439.25182-1-krzysztof.michonski@digitalstrom.com>
References: <20190606132439.25182-1-krzysztof.michonski@digitalstrom.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Krzysztof Michonski <michonskikrzysztof@gmail.com>

Add secure monitor node in the gxl dtsi file.

Signed-off-by: Krzysztof Michonski <michonskikrzysztof@gmail.com>
---
 arch/arm64/boot/dts/amlogic/meson-gxl.dtsi | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm64/boot/dts/amlogic/meson-gxl.dtsi b/arch/arm64/boot/dts/amlogic/meson-gxl.dtsi
index 3093ae421b17..fd75538ee9f9 100644
--- a/arch/arm64/boot/dts/amlogic/meson-gxl.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-gxl.dtsi
@@ -37,6 +37,10 @@
 			};
 		};
 	};
+
+	sm: secure-monitor {
+		compatible = "amlogic,meson-gxl-sm";
+	};
 };
 
 &apb {
-- 
2.21.0

