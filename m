Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 63FFE306F80
	for <lists+devicetree@lfdr.de>; Thu, 28 Jan 2021 08:32:57 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232005AbhA1HbG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 28 Jan 2021 02:31:06 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37502 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231896AbhA1H2v (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 28 Jan 2021 02:28:51 -0500
Received: from mail-pg1-x534.google.com (mail-pg1-x534.google.com [IPv6:2607:f8b0:4864:20::534])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 51597C061756
        for <devicetree@vger.kernel.org>; Wed, 27 Jan 2021 23:28:11 -0800 (PST)
Received: by mail-pg1-x534.google.com with SMTP id g15so3709702pgu.9
        for <devicetree@vger.kernel.org>; Wed, 27 Jan 2021 23:28:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=kmjtKFjHTUarfxu+lL0d5qeXmAGAmFw4kcflRE2ZaXY=;
        b=Xua3jaeLyCCPJCGJLfkHkxfybJeVWUizz2w2xBSkuQnee72sJVZE4ASVxjhP0vkCYH
         ye2OxAqlbzK0eRt8/ni2MlpC6d81kSM3dmMAMAUmCU1ZNn9Bqoq6HpCHhbxCl5mz97yh
         ttQgUcWyT2i2Mxci/UXhuIZTuIRLvw5k2GjhE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=kmjtKFjHTUarfxu+lL0d5qeXmAGAmFw4kcflRE2ZaXY=;
        b=AG4itusHIeoHTYErPijqmQ42TnsLK6ATO7kNcF950727AoJIaoLdIFmsiMYLsxFHLU
         tci3bR0rpwhhoK/d8fr6tjvBoRQ/afgyUFRTpTEPOsPmKV9EnShL71AkDPjNAGI+twiM
         CfD6Lsp+4oqXEn7jFTP2uLO5idNBFxmxEEfn+cFN6B4heBSWvOBNvztEwXTX9Nktvne+
         nxFP8TJhvsYL7mRjpiTm/O9YKx9NNrWPRuxk9EcBjT/qI63FKTyrJ15mzf9KhvIHW3Ij
         kvOcyz0igMnPjl/i0ihgPVs86ypPFjjem5rzth3kyzYRGsN3xHZBbKxb3lXR5ZKRjRfO
         UkCQ==
X-Gm-Message-State: AOAM532KgjWzI+q1gb2xBZlrKzEfYxYekI63IsVDOx8qJcBbxgNOyWSV
        CnLevXIdsZSG8kDe/o28mR+ZJg==
X-Google-Smtp-Source: ABdhPJxYLTPTJNXaGu3SVuKP0/pvukQsNt4lBcOztA0/IW/pLYDcOFpjH1DuyKNgFAXe28AJrWhQlg==
X-Received: by 2002:a63:5407:: with SMTP id i7mr15309840pgb.418.1611818890750;
        Wed, 27 Jan 2021 23:28:10 -0800 (PST)
Received: from hsinyi-z840.tpe.corp.google.com ([2401:fa00:1:10:e0a5:d2fc:aaad:1e4a])
        by smtp.gmail.com with ESMTPSA id h2sm4800304pfk.4.2021.01.27.23.28.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 27 Jan 2021 23:28:10 -0800 (PST)
From:   Hsin-Yi Wang <hsinyi@chromium.org>
To:     CK Hu <ck.hu@mediatek.com>, Philipp Zabel <p.zabel@pengutronix.de>,
        Matthias Brugger <matthias.bgg@gmail.com>
Cc:     David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
        Mark Rutland <mark.rutland@arm.com>,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org,
        Yongqiang Niu <yongqiang.niu@mediatek.com>
Subject: [PATCH v11 1/9] arm64: dts: mt8183: rename rdma fifo size
Date:   Thu, 28 Jan 2021 15:27:54 +0800
Message-Id: <20210128072802.830971-2-hsinyi@chromium.org>
X-Mailer: git-send-email 2.30.0.280.ga3ce27912f-goog
In-Reply-To: <20210128072802.830971-1-hsinyi@chromium.org>
References: <20210128072802.830971-1-hsinyi@chromium.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Yongqiang Niu <yongqiang.niu@mediatek.com>

property name must include only lowercase and '-'

Signed-off-by: Yongqiang Niu <yongqiang.niu@mediatek.com>
Signed-off-by: Hsin-Yi Wang <hsinyi@chromium.org>
Reviewed-by: Chun-Kuang Hu <chunkuang.hu@kernel.org>
---
 arch/arm64/boot/dts/mediatek/mt8183.dtsi | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/mediatek/mt8183.dtsi b/arch/arm64/boot/dts/mediatek/mt8183.dtsi
index 5b782a4769e7e..6c84ccb709af6 100644
--- a/arch/arm64/boot/dts/mediatek/mt8183.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8183.dtsi
@@ -1011,7 +1011,7 @@ rdma0: rdma@1400b000 {
 			clocks = <&mmsys CLK_MM_DISP_RDMA0>;
 			iommus = <&iommu M4U_PORT_DISP_RDMA0>;
 			mediatek,larb = <&larb0>;
-			mediatek,rdma_fifo_size = <5120>;
+			mediatek,rdma-fifo-size = <5120>;
 			mediatek,gce-client-reg = <&gce SUBSYS_1400XXXX 0xb000 0x1000>;
 		};
 
@@ -1023,7 +1023,7 @@ rdma1: rdma@1400c000 {
 			clocks = <&mmsys CLK_MM_DISP_RDMA1>;
 			iommus = <&iommu M4U_PORT_DISP_RDMA1>;
 			mediatek,larb = <&larb0>;
-			mediatek,rdma_fifo_size = <2048>;
+			mediatek,rdma-fifo-size = <2048>;
 			mediatek,gce-client-reg = <&gce SUBSYS_1400XXXX 0xc000 0x1000>;
 		};
 
-- 
2.30.0.280.ga3ce27912f-goog

