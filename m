Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 33F5729708A
	for <lists+devicetree@lfdr.de>; Fri, 23 Oct 2020 15:31:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S464840AbgJWNbj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 23 Oct 2020 09:31:39 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48812 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S374545AbgJWNbh (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 23 Oct 2020 09:31:37 -0400
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com [IPv6:2a00:1450:4864:20::443])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 97EEBC0613D4
        for <devicetree@vger.kernel.org>; Fri, 23 Oct 2020 06:31:37 -0700 (PDT)
Received: by mail-wr1-x443.google.com with SMTP id n6so1820759wrm.13
        for <devicetree@vger.kernel.org>; Fri, 23 Oct 2020 06:31:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=ZZZhZb2rEz5fHuVG55QJOamqxxRM5CUTX2itYU5vANI=;
        b=GS5fOfQIIw3GAMYSybwFZT5Uml1Gn5gqpzXW88Ram1s3RNRCBylCYem2I1Wg7k5rL0
         EXZ8Npi3dbjRFjfNP3pY5jMVq2AVTQMvmFmz4rQn0+cWxvIgA7HI62U+yAX19Gzoz1xi
         EVIvDLb0VwGihRMVDBYY2DvsDkFRbmi0oqqFNuHl83mxxz94pi6TOu82iJIKSJA+Nb8C
         16s7BFs1f/gOM3djshd+VuHkUmMe2vffHtBmY+e8+73QJ2tnVsDgvl/8LawF+g7nxiC+
         5PW872nYyg7HAzjeGNHgwzWZlaNaAmi8xWu46qcK3GB90sluZ5kwmfaJqEkgtdN2lzvO
         0Dbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=ZZZhZb2rEz5fHuVG55QJOamqxxRM5CUTX2itYU5vANI=;
        b=i9jy8M/qfrA1Zfsh+9X0c4sXMBoysTFcqO49MiNmk1H03/WOCMNQvrnynb/aT2q48C
         1ONmUc2jV0jkho8UICYSdAHUAWS9V60tsSNFzf/nzmCP2Xp+0tI5f2JiG0u+x+z3Li91
         208CuzSmtYRNfNIxnWqh6SUmtUUVDsYsPicpjlp9c5MmIaNMHEB6YSzdXopihluumLmK
         HHSI+Ik3WyAZUhthplOBFKqYAbm38s0n9GGt85w3Z0BdX2R/h7bE/ZjOnU0deqagfGp2
         wuDlAFk/urabdRm+huYFWXtMAfN7y0NPrGqVbEdKMSDEmnMtZmz8NPtecZUCS0MQ5spu
         MOhQ==
X-Gm-Message-State: AOAM530F5zZIHiIM5ejX7N02QqR2ulNYU5i1UsDNG3I7r8Vba2JXuRW0
        5h8+gifOb0LLfXJSqmJZKP1AaQ==
X-Google-Smtp-Source: ABdhPJzqrOGaTf+kRDwUvFhLf41amL9nkhiLntJO+SJUCOhPk4RcEpRuGLBe5yMpJi6sbEOlMwjURA==
X-Received: by 2002:a5d:448b:: with SMTP id j11mr2574289wrq.129.1603459896327;
        Fri, 23 Oct 2020 06:31:36 -0700 (PDT)
Received: from localhost.localdomain (211.160.185.81.rev.sfr.net. [81.185.160.211])
        by smtp.gmail.com with ESMTPSA id f6sm3146107wru.50.2020.10.23.06.31.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 23 Oct 2020 06:31:35 -0700 (PDT)
From:   Fabien Parent <fparent@baylibre.com>
To:     linux-mediatek@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org
Cc:     matthias.bgg@gmail.com, robh+dt@kernel.org, daniel@ffwll.ch,
        airlied@linux.ie, p.zabel@pengutronix.de, chunkuang.hu@kernel.org,
        Fabien Parent <fparent@baylibre.com>
Subject: [PATCH v2 1/5] dt-bindings: display: mediatek: disp: add documentation for MT8167 SoC
Date:   Fri, 23 Oct 2020 15:31:26 +0200
Message-Id: <20201023133130.194140-2-fparent@baylibre.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201023133130.194140-1-fparent@baylibre.com>
References: <20201023133130.194140-1-fparent@baylibre.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add binding documentation for the MT8167 SoC

Signed-off-by: Fabien Parent <fparent@baylibre.com>
Reviewed-by: Chun-Kuang Hu <chunkuang.hu@kernel.org>
---

Changelog:

V2: No change

 .../devicetree/bindings/display/mediatek/mediatek,disp.txt    | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/display/mediatek/mediatek,disp.txt b/Documentation/devicetree/bindings/display/mediatek/mediatek,disp.txt
index 121220745d46..33977e15bebd 100644
--- a/Documentation/devicetree/bindings/display/mediatek/mediatek,disp.txt
+++ b/Documentation/devicetree/bindings/display/mediatek/mediatek,disp.txt
@@ -43,7 +43,7 @@ Required properties (all function blocks):
 	"mediatek,<chip>-dpi"        		- DPI controller, see mediatek,dpi.txt
 	"mediatek,<chip>-disp-mutex" 		- display mutex
 	"mediatek,<chip>-disp-od"    		- overdrive
-  the supported chips are mt2701, mt7623, mt2712 and mt8173.
+  the supported chips are mt2701, mt7623, mt2712, mt8167 and mt8173.
 - reg: Physical base address and length of the function block register space
 - interrupts: The interrupt signal from the function block (required, except for
   merge and split function blocks).
@@ -59,7 +59,7 @@ Required properties (DMA function blocks):
 	"mediatek,<chip>-disp-ovl"
 	"mediatek,<chip>-disp-rdma"
 	"mediatek,<chip>-disp-wdma"
-  the supported chips are mt2701 and mt8173.
+  the supported chips are mt2701, mt8167 and mt8173.
 - larb: Should contain a phandle pointing to the local arbiter device as defined
   in Documentation/devicetree/bindings/memory-controllers/mediatek,smi-larb.txt
 - iommus: Should point to the respective IOMMU block with master port as
-- 
2.28.0

