Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A75D93074A9
	for <lists+devicetree@lfdr.de>; Thu, 28 Jan 2021 12:24:40 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231199AbhA1LYK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 28 Jan 2021 06:24:10 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59642 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229667AbhA1LYF (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 28 Jan 2021 06:24:05 -0500
Received: from mail-pf1-x434.google.com (mail-pf1-x434.google.com [IPv6:2607:f8b0:4864:20::434])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 68AA3C0613ED
        for <devicetree@vger.kernel.org>; Thu, 28 Jan 2021 03:23:25 -0800 (PST)
Received: by mail-pf1-x434.google.com with SMTP id 11so3794292pfu.4
        for <devicetree@vger.kernel.org>; Thu, 28 Jan 2021 03:23:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=xhgdJLSOFpJ1X5OA/ZUAhPXvec8bmbpja63O+GhXRwk=;
        b=aRkLJR88J0jdbr/jXC5uahfZscq5N0dhZa/Flm0QePbjhpW+UbVM1aZTGfMnJ9Cg1E
         rTr3ivslJUiwfS3agf1E7lgcQe0m2KRdju9hUJe7C7G9EBNvuonyPmqCz9PVCiIm9I26
         IHqVYXUV4EXOhDT8pPJe7oQubeAaN3tse/CQk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=xhgdJLSOFpJ1X5OA/ZUAhPXvec8bmbpja63O+GhXRwk=;
        b=k4fQGRHXgSzyzoc5Q6pec72vRnM1rjQN7bYYzY/HsuXhrRUOo9l3HFNNoNK1ReqV/V
         JJxy3ssDcrOIETWMJRf2Q+wz0SqdU8Pu6qWGe/FrOvTuLc7K+kGXLZzgitV7FzL0umzR
         wY/Qx9ya7NhsxqTQZcaBPgov3/Xg+euIluiH7oyD2vjemN3U4DhQGe1WwSAOk0RkBIjX
         7oB7QapNcE73jNxgqGv34BwuYM5Sqx7kirJv17yYwZObTzZ+Ku2v7iXUsj+HY6Cjprqy
         v2skbickkJlYhVnghHOoAblideTHG4F58MXTj6OcS37Dab5v/0nPpRtCJ3RaR8kgMiJS
         YqxQ==
X-Gm-Message-State: AOAM533bTMsBrkZVfCNs9r7eDgKnODM7fQ6U+rg0DiVPQPymY2dvZqHc
        ss0bJ/wUS7DVB/sjj3TnfGiRXw==
X-Google-Smtp-Source: ABdhPJwiadoAWryEyjYOG/m6fl1/fQ2YCA5XNTxkLxD1rjf13x5lnoPMd+5/LKUkg1EA+/pnufsbuQ==
X-Received: by 2002:a62:c312:0:b029:1a9:19c7:a8e with SMTP id v18-20020a62c3120000b02901a919c70a8emr15539436pfg.74.1611833004948;
        Thu, 28 Jan 2021 03:23:24 -0800 (PST)
Received: from hsinyi-z840.tpe.corp.google.com ([2401:fa00:1:10:e0a5:d2fc:aaad:1e4a])
        by smtp.gmail.com with ESMTPSA id j198sm3138315pfd.71.2021.01.28.03.23.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 28 Jan 2021 03:23:24 -0800 (PST)
From:   Hsin-Yi Wang <hsinyi@chromium.org>
To:     CK Hu <ck.hu@mediatek.com>, Philipp Zabel <p.zabel@pengutronix.de>,
        Matthias Brugger <matthias.bgg@gmail.com>
Cc:     David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
        Mark Rutland <mark.rutland@arm.com>,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org,
        Yongqiang Niu <yongqiang.niu@mediatek.com>
Subject: [PATCH v12 2/8] arm64: dts: mt8183: refine gamma compatible name
Date:   Thu, 28 Jan 2021 19:23:08 +0800
Message-Id: <20210128112314.1304160-3-hsinyi@chromium.org>
X-Mailer: git-send-email 2.30.0.280.ga3ce27912f-goog
In-Reply-To: <20210128112314.1304160-1-hsinyi@chromium.org>
References: <20210128112314.1304160-1-hsinyi@chromium.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Yongqiang Niu <yongqiang.niu@mediatek.com>

mt8183 gamma is different with mt8173
remove mt8173 compatible name for mt8183 gamma

Fixes: 91f9c963ce79 ("arm64: dts: mt8183: Add display nodes for MT8183")
Signed-off-by: Yongqiang Niu <yongqiang.niu@mediatek.com>
Signed-off-by: Hsin-Yi Wang <hsinyi@chromium.org>
Reviewed-by: Enric Balletbo i Serra <enric.balletbo@collabora.com>
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

