Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5A8644843EA
	for <lists+devicetree@lfdr.de>; Tue,  4 Jan 2022 15:56:57 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230284AbiADO4z (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 4 Jan 2022 09:56:55 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60794 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234404AbiADO4y (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 4 Jan 2022 09:56:54 -0500
Received: from mail-wr1-x432.google.com (mail-wr1-x432.google.com [IPv6:2a00:1450:4864:20::432])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B1156C061785
        for <devicetree@vger.kernel.org>; Tue,  4 Jan 2022 06:56:53 -0800 (PST)
Received: by mail-wr1-x432.google.com with SMTP id q16so76735366wrg.7
        for <devicetree@vger.kernel.org>; Tue, 04 Jan 2022 06:56:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=neH7i+26OYLpeC5cMlHViFNMwrfPO3xPJ5Z7DAt5pN8=;
        b=6B4DUmzq2Lw2opUtv12zb3B4EY4CeYfQZzyD+DTHYfa5cAbiga8DiYxi6dYySc47UB
         JaLoqUDyIVYNusHpP3ruR2TxjjX3aQnJ1LXPFACQ57tSU3ADldPIC5LuZ9z333Mx1phi
         eRmL2R6KFJtsf+63IJbq5dkPUyk++tIHNKg0FOBvKa9keQkjxI31z2bd1g5jubfAT9eX
         X/+pYij9apXPDicOmXiq0AekeO3VW/xCSLTtNHwWE7tSSMs2v3G2+htCvJFX4N/L0ws6
         rgxVwzorsoycd8aBuRT+jL/frWNcu6YAHRNrwyIpNN0TVHXsW8WVROF6y4qxA53J4/G0
         xOwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=neH7i+26OYLpeC5cMlHViFNMwrfPO3xPJ5Z7DAt5pN8=;
        b=XnljGAbCsbsGrlxeK0aKWBOpeAgrC7ixciC+jSKxcQmfDAC3oN8RlBHDacs+dAVjhu
         CWVZViOuVtQXc08mPjPZMMxerv5eV6UFAEMnwx0nVPKlloJSqrHsPOTPmLOau+bLmXFs
         LEHHRuW2UjnfTZ3nj0aR9DiTwV0nu7ZULQuxFxGWepQADDbC2D9CvssgPTwBSZgWCrsa
         H5oskDoLiB3sTVV2NGfFuMq/LamFz8Jc3vPyzcL/SyRiZm6/L1TXxZlQXiB0eaFGmALZ
         +KM+BKow20ZyNZltuBbx0oLydtMJYK3V1x/cRyWXDsRAxt5/EOVlNZLITyXsGi1fWdmo
         CXnA==
X-Gm-Message-State: AOAM531PiT4ru0cyrhhb8iWNTWAy5R3UA2po7AKOn17ucvGHbxIfYHUX
        9P80v+WQrtWZlW+7hARQJFpeZA==
X-Google-Smtp-Source: ABdhPJzpq3iDZwJh1M7Crwd08FIYBMlecfSVZrHd7FpM1bxy/phrabpFNFgGHzHZVJt0eB4nnnZWCQ==
X-Received: by 2002:a5d:47cd:: with SMTP id o13mr43062755wrc.669.1641308212220;
        Tue, 04 Jan 2022 06:56:52 -0800 (PST)
Received: from localhost.localdomain ([2001:861:44c0:66c0:f6da:6ac:481:1df0])
        by smtp.gmail.com with ESMTPSA id k10sm19309859wrz.113.2022.01.04.06.56.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 04 Jan 2022 06:56:51 -0800 (PST)
From:   Neil Armstrong <narmstrong@baylibre.com>
To:     davem@davemloft.net, kuba@kernel.org, devicetree@vger.kernel.org
Cc:     netdev@vger.kernel.org, linux-oxnas@groups.io,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        Neil Armstrong <narmstrong@baylibre.com>
Subject: [PATCH net-next v2 1/3] dt-bindings: net: oxnas-dwmac: Add bindings for OX810SE
Date:   Tue,  4 Jan 2022 15:56:44 +0100
Message-Id: <20220104145646.135877-2-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220104145646.135877-1-narmstrong@baylibre.com>
References: <20220104145646.135877-1-narmstrong@baylibre.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add SoC specific bindings for OX810SE support.

Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
---
 Documentation/devicetree/bindings/net/oxnas-dwmac.txt | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/net/oxnas-dwmac.txt b/Documentation/devicetree/bindings/net/oxnas-dwmac.txt
index d7117a22fd87..27db496f1ce8 100644
--- a/Documentation/devicetree/bindings/net/oxnas-dwmac.txt
+++ b/Documentation/devicetree/bindings/net/oxnas-dwmac.txt
@@ -9,6 +9,9 @@ Required properties on all platforms:
 - compatible:	For the OX820 SoC, it should be :
 		- "oxsemi,ox820-dwmac" to select glue
 		- "snps,dwmac-3.512" to select IP version.
+		For the OX810SE SoC, it should be :
+		- "oxsemi,ox810se-dwmac" to select glue
+		- "snps,dwmac-3.512" to select IP version.
 
 - clocks: Should contain phandles to the following clocks
 - clock-names:	Should contain the following:
-- 
2.25.1

