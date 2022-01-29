Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 71FCE4A3123
	for <lists+devicetree@lfdr.de>; Sat, 29 Jan 2022 18:53:50 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1352786AbiA2Rxp (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 29 Jan 2022 12:53:45 -0500
Received: from smtp-relay-internal-1.canonical.com ([185.125.188.123]:36158
        "EHLO smtp-relay-internal-1.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1352827AbiA2Rxk (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Sat, 29 Jan 2022 12:53:40 -0500
Received: from mail-ed1-f72.google.com (mail-ed1-f72.google.com [209.85.208.72])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 30DC13FE02
        for <devicetree@vger.kernel.org>; Sat, 29 Jan 2022 17:53:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1643478819;
        bh=91aS3XOwWU5WTC4z2AKsnFVg6zaKlD32D1AoEn9HL0o=;
        h=From:To:Subject:Date:Message-Id:In-Reply-To:References:
         MIME-Version;
        b=E21VNXUt524h0sbVwI4fgzz/YBSyybn5SY8Im7+UN2sXYdWxO/os+LcA2X6ccf55n
         DM+yYRs3Ot6KVWm00PXxnYs2X0i2TG02C76T8b7hCfeWSep/pcqoYhmbpOMriIy2cV
         q8vJ9Si7pqIWgmQwwimrjnxZg345PIO6gawwk5zEBSD5v/6PWI9UvwjBaPS0xO3gTa
         DW+8OpDDjI+E3APGTppf/Pik2j8r8s4S7FyLWVy8fvgEiGn1pMx85buqVwKgqe0KqV
         1bfp1GIIadGa4Bm8We3pBD0bBLlcBv9iH/8i8S0ZERdYGT9BeP7o2/PILyVNt8vpEx
         MaoKMIll97FWg==
Received: by mail-ed1-f72.google.com with SMTP id a18-20020aa7d752000000b00403d18712beso4675950eds.17
        for <devicetree@vger.kernel.org>; Sat, 29 Jan 2022 09:53:39 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=91aS3XOwWU5WTC4z2AKsnFVg6zaKlD32D1AoEn9HL0o=;
        b=p83McQkk8WnqfLjgEJnNWVXN6bac1zHl0lDMdi+TDZM/LntEB7S89l/L3yIyXzVf/a
         LsKPHtGQpjL/kPzHXtHTBDVn0ku6WgFbKbIVIjYJSwxzyE8H46ZNQ4J+uT7x6YknhhfA
         Fx0gaKMGXn5iNLYkGbZhGFek4c+p2N1Wzwj4Yc7ZSelFbiuKq6DgTC0Rgb1twpoLq9q6
         Ghp4tCbRRNeZ8DMBuKFhA0AZURMW+iT64+MhckZ/1m0QcF3Gg6j9cZMY+cdEWcex38hz
         a98KRVC40DPKOpx00/tYDoCD7NNwGRUQr16l74eOWSIN2wMOf0Y4FJQ5hrVS9+l8w2ai
         zAEw==
X-Gm-Message-State: AOAM533nxJXqkfP1TdYgdsPQ6j2tZXQeThysoklwEqw200jSjmqGxvTa
        /M/jBPH/a3HB5n37LjKp2Ux5BT9sn+ANHVr3z1KfX2OmE7TWyrrC9AqQHAFFztZXo+Zmvg7f/3X
        jBJyvADZ5XgO8Z8I0o3xzHzkMu8kjSYIp+QaZyuA=
X-Received: by 2002:a17:907:a421:: with SMTP id sg33mr11650263ejc.108.1643478817851;
        Sat, 29 Jan 2022 09:53:37 -0800 (PST)
X-Google-Smtp-Source: ABdhPJwVNBn0kTfD4ogoNz392MYFzdBWozh3HfQi6t0ug4M8C7NNR8mOzvuDFSeROfurwcbyoSTatw==
X-Received: by 2002:a17:907:a421:: with SMTP id sg33mr11650253ejc.108.1643478817711;
        Sat, 29 Jan 2022 09:53:37 -0800 (PST)
Received: from localhost.localdomain (xdsl-188-155-168-84.adslplus.ch. [188.155.168.84])
        by smtp.gmail.com with ESMTPSA id s12sm11236266ejx.184.2022.01.29.09.53.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 29 Jan 2022 09:53:37 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     Lee Jones <lee.jones@linaro.org>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        Alim Akhtar <alim.akhtar@samsung.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Sylwester Nawrocki <s.nawrocki@samsung.com>,
        Marek Szyprowski <m.szyprowski@samsung.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-serial@vger.kernel.org
Subject: [PATCH 3/5] mfd: exynos-lpass: Drop unneeded syscon.h include
Date:   Sat, 29 Jan 2022 18:53:30 +0100
Message-Id: <20220129175332.298666-3-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220129175332.298666-1-krzysztof.kozlowski@canonical.com>
References: <20220129175332.298666-1-krzysztof.kozlowski@canonical.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

syscon regmap is not used since commit addebf1588ab ("mfd: exynos-lpass:
Remove pad retention control").

Fixes: addebf1588ab ("mfd: exynos-lpass: Remove pad retention control")
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
---
 drivers/mfd/exynos-lpass.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/mfd/exynos-lpass.c b/drivers/mfd/exynos-lpass.c
index 99bd0e73c19c..166cd21088cd 100644
--- a/drivers/mfd/exynos-lpass.c
+++ b/drivers/mfd/exynos-lpass.c
@@ -15,7 +15,6 @@
 #include <linux/delay.h>
 #include <linux/io.h>
 #include <linux/module.h>
-#include <linux/mfd/syscon.h>
 #include <linux/of.h>
 #include <linux/of_platform.h>
 #include <linux/platform_device.h>
-- 
2.32.0

