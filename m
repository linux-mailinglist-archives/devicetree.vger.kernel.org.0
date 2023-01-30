Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id F1537680AC1
	for <lists+devicetree@lfdr.de>; Mon, 30 Jan 2023 11:26:52 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236489AbjA3K0u (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 30 Jan 2023 05:26:50 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54192 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236427AbjA3K0n (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 30 Jan 2023 05:26:43 -0500
Received: from mail-wr1-x436.google.com (mail-wr1-x436.google.com [IPv6:2a00:1450:4864:20::436])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DD2E530B12
        for <devicetree@vger.kernel.org>; Mon, 30 Jan 2023 02:26:38 -0800 (PST)
Received: by mail-wr1-x436.google.com with SMTP id h12so10537662wrv.10
        for <devicetree@vger.kernel.org>; Mon, 30 Jan 2023 02:26:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=h/rwlLDEtbW36VfCqW0mnDyKREjKUOT7fxTwKpedSJQ=;
        b=3E0zkA2gqTmqoeeFb3Q+vnT07aKxFwrUH34EgWo4WmsznGFTb6oc/GlWxTb3M5RUud
         UpNd0oOfSg9RHk2rK4Qtmk3soyvhnU8HOmBmEKP3nwmU3dlqRPt2zGLETL3HRegddjlw
         GMBvu07lIEFQjUx+90/7IwQ9Vf0kjB7AQhdWVa3SPuLup8G6jeOQa2sFj8MzYy4l+cAq
         j5vZgqbDnzOhOGRLq5GC+J8jqaJMkwz2FTQK7Q5eFL6tXwU3wKLq0HkrAn9m+l4Wx1ff
         NOUX31pnVurLmnDzXn/SttucqBwkn4mJ4IjYBq0um87+eUw7KmIB72WmryhMVtgR4zwq
         Rd4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=h/rwlLDEtbW36VfCqW0mnDyKREjKUOT7fxTwKpedSJQ=;
        b=woKg0tmhCFB2CqP6ENtx0kLKR2ExdmHrzK7KNumbCCbhZMjZSTOozE6zyXTmnAgHv1
         w0eeBWKrAJWh3SBDUn8QG/cM+m7KzoatW1GtfMQTdPYiXinNyq2K3Al/xpl7s0AiMjWS
         RiEQgtZpYILA2oOBxXapUpqEyF7bb34eoD4R5Wd11DwNpSAiqL0UELgWgLcN+ME9fdAm
         UP4swIj04J+nyS5qcDSmAwOiDzlmOqAQmzrXO8JmhHbIcRnI1ovYpBdU/gaQyqFjPK0L
         HzDp7jqmhbPFjhhyV0Iy0D17erL6qzdxzhznCK7V8TdgYPaqFqYI40Ch+Pts41dMrAlz
         se3Q==
X-Gm-Message-State: AFqh2koZI80kj4Ta5v+l4ryOd//b8sp4Ii1Ro9cNPL1e4ufdeK/LF6KB
        XntSwdPLAqK9xSVB37w90MB7Ig==
X-Google-Smtp-Source: AMrXdXtCiNfSdUuMkTNChaAYiBD0oXk/tcW8F7bQQHQBjcoe+x26vkfwvHt6Gpl6NHBhKdyyS31KtA==
X-Received: by 2002:a5d:46c2:0:b0:2bf:9468:340 with SMTP id g2-20020a5d46c2000000b002bf94680340mr29633671wrs.19.1675074397479;
        Mon, 30 Jan 2023 02:26:37 -0800 (PST)
Received: from alex-T14.baylibre (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.gmail.com with ESMTPSA id s5-20020a5d5105000000b002bdfcd8c77csm11426785wrt.101.2023.01.30.02.26.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 30 Jan 2023 02:26:37 -0800 (PST)
From:   Alexandre Bailon <abailon@baylibre.com>
To:     yong.wu@mediatek.com, joro@8bytes.org, will@kernel.org
Cc:     robin.murphy@arm.com, matthias.bgg@gmail.com,
        krzysztof.kozlowski@linaro.org, robh+dt@kernel.org,
        iommu@lists.linux.dev, linux-mediatek@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, Alexandre Bailon <abailon@baylibre.com>
Subject: [PATCH 1/3] dt-bindings: memory: mediatek: Add support of unmanaged iommu domain
Date:   Mon, 30 Jan 2023 11:27:20 +0100
Message-Id: <20230130102722.133271-2-abailon@baylibre.com>
X-Mailer: git-send-email 2.38.2
In-Reply-To: <20230130102722.133271-1-abailon@baylibre.com>
References: <20230130102722.133271-1-abailon@baylibre.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Currently, the only way to have an unmanaged domain for a device
is having a dedicated iova region or bank.
This adds a new bit to MTK_M4U_ID that allows defining devices
that needs unmanaged iommu domain.

Signed-off-by: Alexandre Bailon <abailon@baylibre.com>
---
 include/dt-bindings/memory/mtk-memory-port.h | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/include/dt-bindings/memory/mtk-memory-port.h b/include/dt-bindings/memory/mtk-memory-port.h
index 2f68a0511a257..86896c776691a 100644
--- a/include/dt-bindings/memory/mtk-memory-port.h
+++ b/include/dt-bindings/memory/mtk-memory-port.h
@@ -7,11 +7,14 @@
 #define __DT_BINDINGS_MEMORY_MTK_MEMORY_PORT_H_
 
 #define MTK_LARB_NR_MAX			32
+#define MTK_UNMANAGED_DEVICE            (1 << 31)
 
 #define MTK_M4U_ID(larb, port)		(((larb) << 5) | (port))
 #define MTK_M4U_TO_LARB(id)		(((id) >> 5) & 0x1f)
 #define MTK_M4U_TO_PORT(id)		((id) & 0x1f)
+#define MTK_M4U_UNMANAGED(id)		((id) & MTK_UNMANAGED_DEVICE)
 
 #define MTK_IFAIOMMU_PERI_ID(port)	MTK_M4U_ID(0, port)
+#define MTK_M4U_UNMANAGED_ID(larb, port) (MTK_M4U_ID(larb, port) | MTK_UNMANAGED_DEVICE)
 
 #endif
-- 
2.38.2

