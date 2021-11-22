Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id EFE4E458C38
	for <lists+devicetree@lfdr.de>; Mon, 22 Nov 2021 11:24:20 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239046AbhKVK10 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 22 Nov 2021 05:27:26 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46422 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229983AbhKVK1Y (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 22 Nov 2021 05:27:24 -0500
Received: from mail-lf1-x129.google.com (mail-lf1-x129.google.com [IPv6:2a00:1450:4864:20::129])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DB27AC061714
        for <devicetree@vger.kernel.org>; Mon, 22 Nov 2021 02:24:17 -0800 (PST)
Received: by mail-lf1-x129.google.com with SMTP id k37so78556016lfv.3
        for <devicetree@vger.kernel.org>; Mon, 22 Nov 2021 02:24:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=NlnKYCaiVTlC+mtrTi+BnSPdg787Fabhf2grE4cGhVg=;
        b=OgWmfhNGtb6Qto7L7mtREOBGCa6VfSMb9t1XoyWeYqarLppiFO0jj/77NYgfG6aSbC
         OFwphu7ZYT1AnxN/a3aIXUWHAxsh7HkAaXfEE1EFNczPFqnm0n5ht1b6DY7sBM2QJFuZ
         cP2mW7nrJzXdpOuUFuM/4peLmLgwSTIDDJG7T2nO3YdxGfARvKEACVjJP2xcuQhmTQ1D
         a2oLoRLKJiho8CDTFVWBXOJ8Xg8Lc6YTCXCqHSFAV/TnRDJ8+PYooQv8j9N3VPyPKdhI
         EtHD/MKRDu9XIX6WQFiAi5BuV5uXEQjRAXQtJXsxox0jzfi/uyK8xG8K7LZ+YwXyzbN3
         L6yw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=NlnKYCaiVTlC+mtrTi+BnSPdg787Fabhf2grE4cGhVg=;
        b=dcYi0DrjDavvjbNtdtGHUuN3Lj4+xWNoYjIegXn2Xs73o0L79F1I9ekGn5TeOWdN0y
         EC8Uaf5YHXNYChnhlG8Lo59hSeq5FNcKwLs9rftOuWJSAv+u46hdI1KoYoMGw3PJer+u
         JFm8BCb5C0OkTvB9j4bkM434Ythpj6jpMyluRgQ7SPzBMi28G/N5DIndiD77VdQk13F6
         flnYLwQHgVDZPDVQOATqnWBWWmviaIu1+NIYsVZ6heklAmJ9lhvrUuObryrVtZdPX8nC
         477/aWCoM+bvR2lcrP5aS9cQmv+u21GCTejRsVW2ly8wRUbp35w9rJrH6ByX2wJ39Rh5
         6p1Q==
X-Gm-Message-State: AOAM5311iPKDFIZCtCxreiFnbDK4byA5qzJBAo7iWuPmeNMBe5D7ukBT
        sVQIuTgnZorU06JyvaQhUHY65g==
X-Google-Smtp-Source: ABdhPJxAxet09sS6Z7UrpaJdUHYGz6eXBH4R5AcTQwwKI7Jew0AneRXrW7gCxxyXMS/BfN+lSNQWwg==
X-Received: by 2002:a05:6512:3083:: with SMTP id z3mr54909586lfd.626.1637576656153;
        Mon, 22 Nov 2021 02:24:16 -0800 (PST)
Received: from localhost.localdomain (c-fdcc225c.014-348-6c756e10.bbcust.telenor.se. [92.34.204.253])
        by smtp.gmail.com with ESMTPSA id y20sm913223lfk.231.2021.11.22.02.24.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Nov 2021 02:24:15 -0800 (PST)
From:   Linus Walleij <linus.walleij@linaro.org>
To:     Lee Jones <lee.jones@linaro.org>, linux-kernel@vger.kernel.org
Cc:     Linus Walleij <linus.walleij@linaro.org>,
        devicetree@vger.kernel.org
Subject: [PATCH] dt-bindings: mfd: Add Freecom system controller
Date:   Mon, 22 Nov 2021 11:22:10 +0100
Message-Id: <20211122102210.3137559-1-linus.walleij@linaro.org>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This adds a DT binding for the Freecom FSG3 system controller
found at CS2 in the Freecom FSG3 Intel IXP42x-based router.

Cc: devicetree@vger.kernel.org
Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
 Documentation/devicetree/bindings/mfd/syscon.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/mfd/syscon.yaml b/Documentation/devicetree/bindings/mfd/syscon.yaml
index 5de16388a089..b62e1e299d31 100644
--- a/Documentation/devicetree/bindings/mfd/syscon.yaml
+++ b/Documentation/devicetree/bindings/mfd/syscon.yaml
@@ -39,6 +39,7 @@ properties:
               - allwinner,sun8i-v3s-system-controller
               - allwinner,sun50i-a64-system-controller
               - brcm,cru-clkset
+              - freecom,fsg-cs2-system-controller
               - hisilicon,dsa-subctrl
               - hisilicon,hi6220-sramctrl
               - hisilicon,pcie-sas-subctrl
-- 
2.31.1

