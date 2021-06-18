Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 733A53AC558
	for <lists+devicetree@lfdr.de>; Fri, 18 Jun 2021 09:53:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231834AbhFRHzl (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 18 Jun 2021 03:55:41 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40476 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233570AbhFRHzb (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 18 Jun 2021 03:55:31 -0400
Received: from mail-pg1-x530.google.com (mail-pg1-x530.google.com [IPv6:2607:f8b0:4864:20::530])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 15BD5C061760
        for <devicetree@vger.kernel.org>; Fri, 18 Jun 2021 00:53:22 -0700 (PDT)
Received: by mail-pg1-x530.google.com with SMTP id e22so951236pgv.10
        for <devicetree@vger.kernel.org>; Fri, 18 Jun 2021 00:53:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=Vi5aaeGs0Jp5TUhXs/yHmc/VtnCiG/O5q5AcK+a/X+o=;
        b=dPbJMCtAP92m+az9E2KUVJ5QmmcxaGWaLiEMzeY+A4KZdT7ri4OiyidJH5tVgfZ5sx
         ha7JMrMR7N2/+48vuq9CqITc9/jldqwYid2TkFLo/I4JTKmS2L5Qzgj1cbw7Gs4VgbvL
         sKs/pKLDshM2kQPpjQ2wheprYOAmm1dpmyclY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=Vi5aaeGs0Jp5TUhXs/yHmc/VtnCiG/O5q5AcK+a/X+o=;
        b=ZKHx1j7Vl/7FwBBNXWBjj+v3R8vCAsgiA7cKBvkq0+IuslquyRZLXlnrautmZoKQ+M
         v4TVQGlOHRi2m5nNKMNtHfNo6lwsh/53jKlRF3FQCn1gkJSsWv8gmNmi5deYBLGrsamC
         TdPs6qXqh4UPYTt9lTDYGyUDrCml8Q9m4+yDQD5e6II+X0uMmsHonmp8EzaO7AtWvTan
         lGaxtBU1UyBrySQ8DGPxj9sDG/SUax/LGTYQ0nzjGbXT8mUBPq+eAjnL0VTS8pKYaijj
         Q43uGUV9HTAkekQnL+MTd8PtwNxNT8V/T7pffpimKCa8wHfufSDV9FFGuAiOpJugw2Xu
         Usfg==
X-Gm-Message-State: AOAM532U47KloOxbz1TC3pRbCCGW34N8OkyLrw7r/WwZ1W+TMLVzFQjm
        D8dSsiFxoy7fSphkAXZnQxC5lg==
X-Google-Smtp-Source: ABdhPJylBEPC3a908/Xh3ysKf3+CdjrNp9JtF2KZhy0pHzubG/04CCm511Z8TiYWqIK44tgtCAhc+w==
X-Received: by 2002:a63:2f05:: with SMTP id v5mr8756251pgv.449.1624002801724;
        Fri, 18 Jun 2021 00:53:21 -0700 (PDT)
Received: from localhost ([2401:fa00:9:14:3e8:19ca:3d8a:e112])
        by smtp.gmail.com with UTF8SMTPSA id g8sm7761729pja.14.2021.06.18.00.53.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 18 Jun 2021 00:53:21 -0700 (PDT)
From:   Eizan Miyamoto <eizan@chromium.org>
To:     linux-kernel@vger.kernel.org
Cc:     yong.wu@mediatek.com, houlong.wei@mediatek.com,
        enric.balletbo@collabora.com, chunkuang.hu@kernel.org,
        wenst@chromium.org, Eizan Miyamoto <eizan@chromium.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org
Subject: [PATCH v3 8/8] dts: mtk-mdp: remove mediatek,vpu property from primary MDP device
Date:   Fri, 18 Jun 2021 17:52:09 +1000
Message-Id: <20210618175059.v3.8.Ib681f06d5189351b7fda0e3dcd6b15f3863a0071@changeid>
X-Mailer: git-send-email 2.32.0.288.g62a8d224e6-goog
In-Reply-To: <20210618075209.1157766-1-eizan@chromium.org>
References: <20210618075209.1157766-1-eizan@chromium.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

It is no longer used by the mediatek MDP driver.

Signed-off-by: Eizan Miyamoto <eizan@chromium.org>
---

(no changes since v1)

 arch/arm64/boot/dts/mediatek/mt8173.dtsi | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm64/boot/dts/mediatek/mt8173.dtsi b/arch/arm64/boot/dts/mediatek/mt8173.dtsi
index 814f56d59e2f..4020748ae446 100644
--- a/arch/arm64/boot/dts/mediatek/mt8173.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8173.dtsi
@@ -1055,7 +1055,6 @@ mdp_rdma0: rdma@14001000 {
 				 <&mmsys CLK_MM_MUTEX_32K>;
 			power-domains = <&spm MT8173_POWER_DOMAIN_MM>;
 			iommus = <&iommu M4U_PORT_MDP_RDMA0>;
-			mediatek,vpu = <&vpu>;
 		};
 
 		mdp_rdma1: rdma@14002000 {
-- 
2.32.0.288.g62a8d224e6-goog

