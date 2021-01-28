Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D6EBB306F95
	for <lists+devicetree@lfdr.de>; Thu, 28 Jan 2021 08:36:42 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231756AbhA1HdU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 28 Jan 2021 02:33:20 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38066 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232016AbhA1Hb3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 28 Jan 2021 02:31:29 -0500
Received: from mail-pf1-x42a.google.com (mail-pf1-x42a.google.com [IPv6:2607:f8b0:4864:20::42a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 60DE1C0613ED
        for <devicetree@vger.kernel.org>; Wed, 27 Jan 2021 23:28:14 -0800 (PST)
Received: by mail-pf1-x42a.google.com with SMTP id u67so3446706pfb.3
        for <devicetree@vger.kernel.org>; Wed, 27 Jan 2021 23:28:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=XcNzJ3Y1xaPDuXcAllHAfyiKBSKXPgrFbgqPU858HRE=;
        b=bmxOK+fJooGfsi1izamRIsN0nqeSv63ef+oEkbVp1glFlLrQvZ71goAnFNQsXR0ldr
         bwGyOzNYDkhdnEsJK49o/gs3Up6t1KlcUtli8//Gu4ogsMsFAOIUeBG0CJasgI3DCC5U
         1mRlK0KeM3yJ+80Sg7Lv60SXRIGdKN3OcNUyc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=XcNzJ3Y1xaPDuXcAllHAfyiKBSKXPgrFbgqPU858HRE=;
        b=lRtIDUIYWhDKpB/5BiHX+ezql/JfuwqeUuKLOsPiTPs5qo67+TLlvj98YFiEpxgRvl
         ezLf5CRkgoh8zratSlJn0nifO/WRxIbknmtRQOzbdTQt4dcRBiglx2gmn5w5vrEcYkTb
         VnKikTxera2q47BgyI8ltrUWryJYNMb9cyZ08Fn8mSSIQQ1iOOvq2Qs344eRKruoQRF+
         /AgBdnv3WwWr/WG7Z7EwfzqeiCMLI2a3MFtJa2/zd8J6+0yPRQcG6CRzwr9pH1ahdmo9
         9Sg+JBXGDbKMYvC/e9ZFQFQYy8xnc71ryL3uwy4a2bDpKMF41YMvgQktSR1wdQLyMN2T
         brag==
X-Gm-Message-State: AOAM5306I6rzV4F3bjjRsP/3dOZLijUAvGDZxZbJ1rrkHoIXCjr/2MG2
        RBrkqacASQSuHS5zjNbZ3/a6YA==
X-Google-Smtp-Source: ABdhPJxfvkOtpAtVlA4WoWPSHf48aGiRf3y51TDlCjt1Wf4BDlyuknkFk7E3OdmCdQkhwKxFf7BKNA==
X-Received: by 2002:a63:4e5f:: with SMTP id o31mr15143945pgl.55.1611818893892;
        Wed, 27 Jan 2021 23:28:13 -0800 (PST)
Received: from hsinyi-z840.tpe.corp.google.com ([2401:fa00:1:10:e0a5:d2fc:aaad:1e4a])
        by smtp.gmail.com with ESMTPSA id h2sm4800304pfk.4.2021.01.27.23.28.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 27 Jan 2021 23:28:13 -0800 (PST)
From:   Hsin-Yi Wang <hsinyi@chromium.org>
To:     CK Hu <ck.hu@mediatek.com>, Philipp Zabel <p.zabel@pengutronix.de>,
        Matthias Brugger <matthias.bgg@gmail.com>
Cc:     David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
        Mark Rutland <mark.rutland@arm.com>,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org,
        Yongqiang Niu <yongqiang.niu@mediatek.com>
Subject: [PATCH v11 2/9] arm64: dts: mt8183: refine gamma compatible name
Date:   Thu, 28 Jan 2021 15:27:55 +0800
Message-Id: <20210128072802.830971-3-hsinyi@chromium.org>
X-Mailer: git-send-email 2.30.0.280.ga3ce27912f-goog
In-Reply-To: <20210128072802.830971-1-hsinyi@chromium.org>
References: <20210128072802.830971-1-hsinyi@chromium.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Yongqiang Niu <yongqiang.niu@mediatek.com>

mt8183 gamma is different with mt8173
remove mt8173 compatible name for mt8183 gamma

Signed-off-by: Yongqiang Niu <yongqiang.niu@mediatek.com>
Signed-off-by: Hsin-Yi Wang <hsinyi@chromium.org>
---
 arch/arm64/boot/dts/mediatek/mt8183.dtsi | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/mediatek/mt8183.dtsi b/arch/arm64/boot/dts/mediatek/mt8183.dtsi
index 6c84ccb709af6..9c0073cfad452 100644
--- a/arch/arm64/boot/dts/mediatek/mt8183.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8183.dtsi
@@ -1055,8 +1055,7 @@ aal0: aal@14010000 {
 		};
 
 		gamma0: gamma@14011000 {
-			compatible = "mediatek,mt8183-disp-gamma",
-				     "mediatek,mt8173-disp-gamma";
+			compatible = "mediatek,mt8183-disp-gamma";
 			reg = <0 0x14011000 0 0x1000>;
 			interrupts = <GIC_SPI 234 IRQ_TYPE_LEVEL_LOW>;
 			power-domains = <&spm MT8183_POWER_DOMAIN_DISP>;
-- 
2.30.0.280.ga3ce27912f-goog

