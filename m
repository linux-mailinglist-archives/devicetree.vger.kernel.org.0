Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id AA7A5496C8C
	for <lists+devicetree@lfdr.de>; Sat, 22 Jan 2022 14:26:09 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233266AbiAVN0G (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 22 Jan 2022 08:26:06 -0500
Received: from smtp-relay-internal-1.canonical.com ([185.125.188.123]:44488
        "EHLO smtp-relay-internal-1.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S233088AbiAVN0D (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Sat, 22 Jan 2022 08:26:03 -0500
Received: from mail-ej1-f71.google.com (mail-ej1-f71.google.com [209.85.218.71])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id E08B83FFD0
        for <devicetree@vger.kernel.org>; Sat, 22 Jan 2022 13:26:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1642857961;
        bh=BqbA7EkPEkiPvdyZCRRPSvgPxXK4nwiMlYWc8IskYBk=;
        h=From:To:Subject:Date:Message-Id:In-Reply-To:References:
         MIME-Version;
        b=D2BEAqWMLIoZWylGkzmxOZc/i1ghkLX4w0HDpAZu+s7n8SFd4v0tCNJEjLVCFMxWC
         7AnCIk5yDZ0IotnM5JvI4AmgOk6sP8ntf4pKKVVxwWlmbRUu4muFlMqgW2srsMtLU8
         wnbGFhkNpVy5DojmPb/6B7J1KxaMdvALnBEW2dXyDIADYiKtshT9/ks8IFV8NqRjjO
         tZ5hW/dT0MyFap7AVKSfdOIzlcSrZ+rsbyI0hKevfKt2mTy1b9cHKWHCt/f/wgyJt3
         tnW+iQHZEzFkm8Wg0nu9fvgg8wLvQ4ndrYgQj1SCDe2Xid/6vSQnZxE6ic3NoxdCU5
         mnRDbpxxh0sww==
Received: by mail-ej1-f71.google.com with SMTP id 13-20020a170906328d00b006982d0888a4so946172ejw.9
        for <devicetree@vger.kernel.org>; Sat, 22 Jan 2022 05:26:01 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=BqbA7EkPEkiPvdyZCRRPSvgPxXK4nwiMlYWc8IskYBk=;
        b=XigijZic+UKjn1nFcvBF82BWR0ZxSaHEu75Zyys6bgCLx8lDUGwUqniShMiAaUXDt4
         yPFtAqGw9QHKclLG0fXwV5n4IIPgI6lVH7RJDewGbzizATNQw1QQYoY+fLeAbNK51lvH
         r5Qi2qQ92Q+8XpJX7IVMK6cURhY0v+ykUkmK6TN0EN5pxPpYldF2dAoLf2W2ILiqgTXR
         lTXdsLpYks7UHxn/4mSCuubtyMYfc82zqoyZprF1pvSYBh3iIFtfYXlYPUK4T1IuPx0q
         Zbz+wp6KqHwR122oLPOTlJYhUUDq86DswIVco4qRGl8NZHnPbIBI6B+6xLW8DKOzNJoq
         nWtw==
X-Gm-Message-State: AOAM532VRavk7LN4nzDLbqWc8tIO44JefFfrTZ6ia1py5oBe6oGg517n
        M5FjDtfxCEgK5iWxSy4BP0DpTIA7kmYvohK4Cn8BTeqonmn1Ak/tXqXZ67dx5o2tAU86RlePhA2
        hRVH0OJw1m99NMBBqab4Ma4ImmRA4SKQrkl4495Q=
X-Received: by 2002:a17:907:96a3:: with SMTP id hd35mr6710105ejc.54.1642857961547;
        Sat, 22 Jan 2022 05:26:01 -0800 (PST)
X-Google-Smtp-Source: ABdhPJyCIMPDmVKcXXxAx4iet6N1pLQk9bbQfelsIWrYapFJ3WqFqZr3kDLh7HQhhUY2Ppfihyu2OQ==
X-Received: by 2002:a17:907:96a3:: with SMTP id hd35mr6710090ejc.54.1642857961371;
        Sat, 22 Jan 2022 05:26:01 -0800 (PST)
Received: from localhost.localdomain (xdsl-188-155-168-84.adslplus.ch. [188.155.168.84])
        by smtp.gmail.com with ESMTPSA id v2sm2373060ejb.114.2022.01.22.05.25.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 22 Jan 2022 05:26:00 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     "Rafael J. Wysocki" <rafael@kernel.org>,
        Daniel Lezcano <daniel.lezcano@linaro.org>,
        Amit Kucheria <amitk@kernel.org>,
        Zhang Rui <rui.zhang@intel.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        Bartlomiej Zolnierkiewicz <bzolnier@gmail.com>,
        linux-pm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH 3/3] MAINTAINERS: thermal: samsung: drop obsolete properties
Date:   Sat, 22 Jan 2022 14:25:54 +0100
Message-Id: <20220122132554.65192-3-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220122132554.65192-1-krzysztof.kozlowski@canonical.com>
References: <20220122132554.65192-1-krzysztof.kozlowski@canonical.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Update the Samsung Exynos SoC thermal driver entry to match reality and
add Krzysztof Kozlowski as co-maintainer (as he maintains entire Samsung
SoC).  The rationale:
1. Bartlomiej's Samsung email bounces, since he is not working in
   Samsung for some time.
2. The mentioned Lukasz Majewski's Git tree was not updated
   since 2015.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
---
 MAINTAINERS | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/MAINTAINERS b/MAINTAINERS
index 27730a5a6345..928fb4cebe09 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -17118,11 +17118,12 @@ S:	Supported
 F:	drivers/net/ethernet/samsung/sxgbe/
 
 SAMSUNG THERMAL DRIVER
-M:	Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>
+M:	Bartlomiej Zolnierkiewicz <bzolnier@gmail.com>
+M:	Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
 L:	linux-pm@vger.kernel.org
 L:	linux-samsung-soc@vger.kernel.org
-S:	Supported
-T:	git https://github.com/lmajewski/linux-samsung-thermal.git
+S:	Maintained
+F:	Documentation/devicetree/bindings/thermal/samsung,exynos-thermal.yaml
 F:	drivers/thermal/samsung/
 
 SAMSUNG USB2 PHY DRIVER
-- 
2.32.0

