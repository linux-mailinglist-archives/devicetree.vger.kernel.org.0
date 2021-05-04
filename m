Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E5CB33730E0
	for <lists+devicetree@lfdr.de>; Tue,  4 May 2021 21:35:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232504AbhEDTgP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 4 May 2021 15:36:15 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42334 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232486AbhEDTgK (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 4 May 2021 15:36:10 -0400
Received: from mail-wr1-x433.google.com (mail-wr1-x433.google.com [IPv6:2a00:1450:4864:20::433])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C086FC061763
        for <devicetree@vger.kernel.org>; Tue,  4 May 2021 12:35:07 -0700 (PDT)
Received: by mail-wr1-x433.google.com with SMTP id x5so10604641wrv.13
        for <devicetree@vger.kernel.org>; Tue, 04 May 2021 12:35:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=+ZZN5MzC4HBwyYsz5oFVkaryjGRKyHc1OurMaO1on98=;
        b=OBDSTLK6TS2hxfIMGeuoLflPHA8AXiJCws1GkQohO8FWzgiFXpnoOVA7LyH3XihoQD
         McGE73KZovVg+hDb6hHPBEfC0l+0cb+VmSfrUtYGzgfXuw1qY4PZE5LYo72G8jBrdTVT
         npV3ELRPB4dx5YS9Swt3WDJXQ0k49TZFMYvOYCXnVGcW+j8DZw6LhZPyarkTUGFQd57C
         NUh5XLFXVq/mm20Wg7lnK15Fqsv1tMSdP36pTZD/fuh6KxhKTOY/Ifk6a2eIpvqr0E8I
         lYAI3fY4WLhfxreKW3TPXuTADjnPn5FkHn+mDtHOEg80Ihe4mlHhGBfSlRVR1F6TY2CL
         2JlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=+ZZN5MzC4HBwyYsz5oFVkaryjGRKyHc1OurMaO1on98=;
        b=kqln1ENn81sjwLPq4TwL0ivwM5NPSS474FmdfpOGxQAoTx39D4uE4TS5Wcw6elvCBR
         YLaNWBjznAnx/6QRPaU9Za94MJ8/uAk/hwgBzoW/L6s5H8emKwiXjcZgRNmnTK8Ah0p6
         koo8bGvpQDwPSyhvtr3ij8vMkPUq3W/8gzZp6k5Tat2z63apAc2K99SOovZUOn1joO3C
         Tx3EWieQX1sgUcSpwnKB87Ef6WzZ7i5MbVSzTye/z3eKYUUH4GyEGixwYZt3Y57tAw1b
         +o2W+elNZFNLOsOrsqKWG3RpjSTojUGs6k5AJgvIDSdZ6fPEOC31FmqYzcaEhp9uGTXH
         RO2g==
X-Gm-Message-State: AOAM533Ucm4wHGXGBOlLA2d3Gr0pu8xY29s1DbJzbsRRCkFraH21gW8k
        0+d3WaC7t1HLThypPhN5iNSOww==
X-Google-Smtp-Source: ABdhPJykddxppzrVNYK7b3KfPVPjx6fcuKA+9RNWbVt10xXoC/wxUepowdxvXMso5j9bqnG0wA/9lg==
X-Received: by 2002:a05:6000:1cc:: with SMTP id t12mr34157181wrx.156.1620156906534;
        Tue, 04 May 2021 12:35:06 -0700 (PDT)
Received: from localhost.localdomain (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.googlemail.com with ESMTPSA id x8sm17072136wru.70.2021.05.04.12.35.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 04 May 2021 12:35:06 -0700 (PDT)
From:   Corentin Labbe <clabbe@baylibre.com>
To:     arnd@arndb.de, kaloz@openwrt.org, khalasa@piap.pl,
        linusw@kernel.org, linux@armlinux.org.uk, olof@lixom.net,
        robh+dt@kernel.org, soc@kernel.org
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org, Corentin Labbe <clabbe@baylibre.com>
Subject: [PATCH 3/5] dt-bindings: add vendor prefix for welltech
Date:   Tue,  4 May 2021 19:34:55 +0000
Message-Id: <20210504193457.4008384-4-clabbe@baylibre.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210504193457.4008384-1-clabbe@baylibre.com>
References: <20210504193457.4008384-1-clabbe@baylibre.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add vendor prefix for Welltech computer Co Ld.

Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
---
 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index 71ccbe682e11..f9648b37da12 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -1248,6 +1248,8 @@ patternProperties:
     description: Western Digital Corp.
   "^we,.*":
     description: Würth Elektronik GmbH.
+  "^welltech,.*":
+    description: Welltech Computer Co., Limited.
   "^wetek,.*":
     description: WeTek Electronics, limited.
   "^wexler,.*":
-- 
2.26.3

