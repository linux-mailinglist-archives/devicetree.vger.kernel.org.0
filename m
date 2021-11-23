Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A650D45A149
	for <lists+devicetree@lfdr.de>; Tue, 23 Nov 2021 12:21:23 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236029AbhKWLY3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 23 Nov 2021 06:24:29 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47236 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236033AbhKWLY0 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 23 Nov 2021 06:24:26 -0500
Received: from mail-pj1-x1035.google.com (mail-pj1-x1035.google.com [IPv6:2607:f8b0:4864:20::1035])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 64E57C061759
        for <devicetree@vger.kernel.org>; Tue, 23 Nov 2021 03:21:18 -0800 (PST)
Received: by mail-pj1-x1035.google.com with SMTP id v23so16343183pjr.5
        for <devicetree@vger.kernel.org>; Tue, 23 Nov 2021 03:21:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=mq8nc34v9wy9BHUcdNCchv5TcJtzwaMW4yDN1UOKTXs=;
        b=JpDT/+FDBCbI5IBaWeaKfzyOwUUOyTt+Vw1ovqm0zuzKZZrjqWO3dJqGL1pzmsZRcz
         WEzphSwzny6i8imySPh8owk0bZ7mV09ROF7m2cIZELwxwLD3zWFbiIveEf0Sy/YacdFK
         n/sQubJ/NkmPIgp5pbeN1xtI08xQWQungcwqY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=mq8nc34v9wy9BHUcdNCchv5TcJtzwaMW4yDN1UOKTXs=;
        b=D2cjS2h+TUWry0pRoRGDMGa/gcJr7707LcWIYzRIgY4lhwg8WyV00fE5O4EZDghiyL
         AIyg3YRC1J79R8gM4aWns8DClpO4lBCCQydbCi3ixZt6vNy4tcj9YvWFf1lWQIfN7JcC
         oc07tL6Yeh7CN1NWcC/NuLBhn6sIjxv8TUDfz7NA707JaQO7N6jxGi1EHZKMJ5g+IlkE
         taXXTaam1/zcu76kq/D6TObdmCf0GTxVPIH9gYfiaSYDBwgSEHWE4FbcUHoyy5XlUVh3
         y657PnRo/KHxDHfeCqA5LfprOwGgp6r40E34Bgxn/CyonAFxnF/OxBJZ4PsJqcNXT88w
         tNMQ==
X-Gm-Message-State: AOAM531qsTVHEcduIhNx5fcSzQ0cMJAUP4wnZNSBqSgoDXKZ9+OBbBMd
        dRiRofB/GbmdKLoOj62+MkfNwA==
X-Google-Smtp-Source: ABdhPJxp5J8vQC13ZWDo2EQlaskUNOPku9PaqV5etdp5QIpELJ9fUxb88Pk4hXN6hRe8tLOckb6fGg==
X-Received: by 2002:a17:902:7d96:b0:142:87dc:7dd3 with SMTP id a22-20020a1709027d9600b0014287dc7dd3mr5260273plm.11.1637666477920;
        Tue, 23 Nov 2021 03:21:17 -0800 (PST)
Received: from hsinyi-z840.tpe.corp.google.com ([2401:fa00:1:10:d1ae:c331:ed2a:15e9])
        by smtp.gmail.com with ESMTPSA id 63sm11093914pfz.119.2021.11.23.03.21.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Nov 2021 03:21:17 -0800 (PST)
From:   Hsin-Yi Wang <hsinyi@chromium.org>
To:     Christoph Hellwig <hch@infradead.org>
Cc:     Marek Szyprowski <m.szyprowski@samsung.com>,
        Robin Murphy <robin.murphy@arm.com>,
        iommu@lists.linux-foundation.org, linux-kernel@vger.kernel.org,
        Rob Herring <robh+dt@kernel.org>,
        Maxime Ripard <maxime@cerno.tech>,
        - <devicetree-spec@vger.kernel.org>, devicetree@vger.kernel.org,
        Matthias Brugger <matthias.bgg@gmail.com>,
        linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, senozhatsky@chromium.org,
        tfiga@chromium.org
Subject: [PATCH 3/3] arm64: dts: mt8183: use restricted swiotlb for scp mem
Date:   Tue, 23 Nov 2021 19:21:04 +0800
Message-Id: <20211123112104.3530135-4-hsinyi@chromium.org>
X-Mailer: git-send-email 2.34.0.rc2.393.gf8c9666880-goog
In-Reply-To: <20211123112104.3530135-1-hsinyi@chromium.org>
References: <20211123112104.3530135-1-hsinyi@chromium.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Use restricted-dma-pool for mtk_scp's reserved memory. And set the
io-tlb-segsize to 4096 since the driver needs at least 2560 slabs to
allocate memory.

Signed-off-by: Hsin-Yi Wang <hsinyi@chromium.org>
---
 arch/arm64/boot/dts/mediatek/mt8183-kukui.dtsi | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/mediatek/mt8183-kukui.dtsi b/arch/arm64/boot/dts/mediatek/mt8183-kukui.dtsi
index 94c13c45919445..de94b2fd7f33e7 100644
--- a/arch/arm64/boot/dts/mediatek/mt8183-kukui.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8183-kukui.dtsi
@@ -109,9 +109,9 @@ reserved_memory: reserved-memory {
 		ranges;
 
 		scp_mem_reserved: scp_mem_region {
-			compatible = "shared-dma-pool";
+			compatible = "restricted-dma-pool";
 			reg = <0 0x50000000 0 0x2900000>;
-			no-map;
+			io-tlb-segsize = <4096>;
 		};
 	};
 
-- 
2.34.0.rc2.393.gf8c9666880-goog

