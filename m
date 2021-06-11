Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 537593A3AAF
	for <lists+devicetree@lfdr.de>; Fri, 11 Jun 2021 06:03:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231601AbhFKEFQ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 11 Jun 2021 00:05:16 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56098 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231600AbhFKEFQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 11 Jun 2021 00:05:16 -0400
Received: from mail-pg1-x52f.google.com (mail-pg1-x52f.google.com [IPv6:2607:f8b0:4864:20::52f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 729E2C061574
        for <devicetree@vger.kernel.org>; Thu, 10 Jun 2021 21:03:03 -0700 (PDT)
Received: by mail-pg1-x52f.google.com with SMTP id l184so1398706pgd.8
        for <devicetree@vger.kernel.org>; Thu, 10 Jun 2021 21:03:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=8NTjSTyDbstdRnS22JDnlh2GM3XC/zF1/Aj3ovyt0Ug=;
        b=GknmA9cuNibjqKF8cukI4rUCo+B6fVFFXRyPcRKfLjX4ZXbTFbCl6gWfshWkURvf84
         EvbRrBCv+iiKrKfsCmSPKE20I6McwpduzhDQ4gfI/sotqwG8MS70vsQrBcMu48EtoZte
         QmI35afo4IbvUL//F1J6XMpC446kgR7PkfVXs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=8NTjSTyDbstdRnS22JDnlh2GM3XC/zF1/Aj3ovyt0Ug=;
        b=adCvsO+1F9ETyarT+6WJE1h2AHZXCBNv4EdtQ+Ax8mC9CdnV5PkKXVzNPuRxXpH+Wf
         u5vMeaspIO53bbqTtekct/Bb2dKGxxmpXTn7zoc1tthkKYOvuL8gDl117tFJmee4XA0g
         GIm/UBVcYDO+eC3Sl5S92LFW1H/NaE09uVpPhYymE52rTBt3oHhFTD16D/+oj6TgqSQR
         c14DabI9bSn10pZ8Hp13KM5uOM6W/rmJIDHr8RFeTJGWF7aURORTnNsk5Nj5KNNIerw6
         loW5+Mz/MpA098mYlb67q+abcxZCTYAtc/Q5Py4KeTTUEXkBa2YeZjnv1FhfPofaz139
         DHOA==
X-Gm-Message-State: AOAM533yg5OMQRsgYjf/NCF540aKOv9Ud37WEQJLxh6N8JjcP33nsZH2
        6GAIgbdHvvtmtlstr0G3RotQKw==
X-Google-Smtp-Source: ABdhPJygCJuW3iIEdkZVUkAyJQQoZ3+nFNvq3EnLuT+EJTj7D6lLuOFZJ9Gosw6bD409Elv0aczATQ==
X-Received: by 2002:a65:528d:: with SMTP id y13mr1648004pgp.276.1623384183064;
        Thu, 10 Jun 2021 21:03:03 -0700 (PDT)
Received: from localhost ([2401:fa00:9:14:db52:e918:e5f9:9e14])
        by smtp.gmail.com with UTF8SMTPSA id a25sm3599170pff.54.2021.06.10.21.02.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 10 Jun 2021 21:03:02 -0700 (PDT)
From:   Eizan Miyamoto <eizan@chromium.org>
To:     linux-kernel@vger.kernel.org
Cc:     houlong.wei@mediatek.com, enric.balletbo@collabora.com,
        yong.wu@mediatek.com, chunkuang.hu@kernel.org,
        Eizan Miyamoto <eizan@chromium.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org
Subject: [PATCH v2 8/8] dts: mtk-mdp: remove mediatek,vpu property from primary MDP device
Date:   Fri, 11 Jun 2021 14:01:45 +1000
Message-Id: <20210611140124.v2.8.Ib681f06d5189351b7fda0e3dcd6b15f3863a0071@changeid>
X-Mailer: git-send-email 2.32.0.272.g935e593368-goog
In-Reply-To: <20210611040145.2085329-1-eizan@chromium.org>
References: <20210611040145.2085329-1-eizan@chromium.org>
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
2.32.0.272.g935e593368-goog

