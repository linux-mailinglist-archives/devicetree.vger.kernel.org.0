Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5A81E3BE3B1
	for <lists+devicetree@lfdr.de>; Wed,  7 Jul 2021 09:35:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231158AbhGGHiJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 7 Jul 2021 03:38:09 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60370 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231147AbhGGHiI (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 7 Jul 2021 03:38:08 -0400
Received: from mail-pj1-x1036.google.com (mail-pj1-x1036.google.com [IPv6:2607:f8b0:4864:20::1036])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 38A37C061574
        for <devicetree@vger.kernel.org>; Wed,  7 Jul 2021 00:35:29 -0700 (PDT)
Received: by mail-pj1-x1036.google.com with SMTP id b8-20020a17090a4888b02901725eedd346so1069349pjh.4
        for <devicetree@vger.kernel.org>; Wed, 07 Jul 2021 00:35:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=U++AYiLCIQ3aO8lSHeGEBojQNtUlJm2+BuKWMbH7HeU=;
        b=mLLVdV+iflZuP7WhIpckLL6oGmDZDvWd9gZiGFfxc6dmnH932qRdGpGvMQQUyL8YNx
         azgpER+zmlOBmCnR2HSYI74skD9Sdl2V0AP6WqO3b7N3EhPHBtjPpTM1zdrLfUISOG2v
         A6cV7jCKIJS17zl1PJqX4Xoyd3CGCOqZuqleo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=U++AYiLCIQ3aO8lSHeGEBojQNtUlJm2+BuKWMbH7HeU=;
        b=NqHW6P6EnC3par0KJtca/rpDdPPXSRymLtM8xEPJS+TZJN1ajdxRJJItzEgL3VY9aj
         hLjlcYqeZB5Z75dFOD1jMGQJlSpucU8djYKfAC5fBHfNX5UbNnxbs5wTbUCygPiBROVF
         sIro2w1hWOe0x3NPSuARfEOk77z9raNvoBcC+A8b5ssbqF7uXWDOfhg31/GRTa4q2jBK
         erxyC6WcUWAjY1y6CMslAyGhWn+K8sobc7kT86sabfFkZccyH33w9qaimaLkS32ZrQ7u
         +V+BUHwKr4FvC01RLC2e0Fr8flvDwdCVsXJpEOFZ798Yv8XvC+exLk4mxRRbKDGyiI9P
         /6ag==
X-Gm-Message-State: AOAM532bXOfXurN6Ud1zfu/6SL8KQjEAWwk0jMqh5EPZ8Sl4tLtu2Mwb
        xXZZeKu+KQSg1V07rO1w5C2ubQ==
X-Google-Smtp-Source: ABdhPJyTxWMJZj7LL37hggFpu2OU5nP94sCxDsc4uf4pGXQ5BF+hjJgrZT9Q0di1Iz+GO8i0RnzpGg==
X-Received: by 2002:a17:90a:fd93:: with SMTP id cx19mr4663038pjb.65.1625643328866;
        Wed, 07 Jul 2021 00:35:28 -0700 (PDT)
Received: from localhost ([2401:fa00:9:14:ccb9:d95f:4dac:dbc4])
        by smtp.gmail.com with UTF8SMTPSA id 202sm18932514pfu.113.2021.07.07.00.35.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 07 Jul 2021 00:35:28 -0700 (PDT)
From:   Eizan Miyamoto <eizan@chromium.org>
To:     linux-kernel@vger.kernel.org
Cc:     houlong.wei@mediatek.com, enric.balletbo@collabora.com,
        wenst@chromium.org, yong.wu@mediatek.com, chunkuang.hu@kernel.org,
        Eizan Miyamoto <eizan@chromium.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org
Subject: [PATCH v4 8/8] dts: mtk-mdp: remove mediatek,vpu property from primary MDP device
Date:   Wed,  7 Jul 2021 17:34:10 +1000
Message-Id: <20210707173108.v4.8.Ib681f06d5189351b7fda0e3dcd6b15f3863a0071@changeid>
X-Mailer: git-send-email 2.32.0.93.g670b81a890-goog
In-Reply-To: <20210707073410.999625-1-eizan@chromium.org>
References: <20210707073410.999625-1-eizan@chromium.org>
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
index 3efcefd99720..2e468e24fdb6 100644
--- a/arch/arm64/boot/dts/mediatek/mt8173.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8173.dtsi
@@ -1056,7 +1056,6 @@ mdp_rdma0: rdma@14001000 {
 				 <&mmsys CLK_MM_MUTEX_32K>;
 			power-domains = <&spm MT8173_POWER_DOMAIN_MM>;
 			iommus = <&iommu M4U_PORT_MDP_RDMA0>;
-			mediatek,vpu = <&vpu>;
 		};
 
 		mdp_rdma1: rdma@14002000 {
-- 
2.32.0.93.g670b81a890-goog

