Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DF91B290A79
	for <lists+devicetree@lfdr.de>; Fri, 16 Oct 2020 19:19:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2390469AbgJPRSt (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 16 Oct 2020 13:18:49 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52444 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1732571AbgJPRSq (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 16 Oct 2020 13:18:46 -0400
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com [IPv6:2a00:1450:4864:20::441])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A706DC061755
        for <devicetree@vger.kernel.org>; Fri, 16 Oct 2020 10:18:46 -0700 (PDT)
Received: by mail-wr1-x441.google.com with SMTP id n6so3744945wrm.13
        for <devicetree@vger.kernel.org>; Fri, 16 Oct 2020 10:18:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=k8fZ83rbItOfrAada4wAXII59ZJKaeD2CQLTNkxUviM=;
        b=oLs10XygoSh32dfOJxiPNMoPVi77vIwMWuVXgMucmKTPoqmhNFLucdxygXGUWgDGfS
         pD2syNepnLwR/xMzjhvePY8UStVkv+XhBG9LBrMj6isWIQQWkeA4gYIDGhdgEdt/YlIS
         LRP9Q4dplPZe/qZNT7pJnzJAMCYZdCT0yUeIj7ZtDmDqR9eeKlwo3d3kRrJEOsPsDAzv
         p+ArSc+26s3TvZ3iC9MxeM1tmHIqvqMQixwelvS1IRNixA7fE0ySdn7jPNDcKPWbVCcM
         IhEsNuKvp6n8WrmsX762gQ2AjHHl6e87f5YO2/zcn1GIVE/VlBGlPBF2IF5ApxOsAj1D
         NFTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=k8fZ83rbItOfrAada4wAXII59ZJKaeD2CQLTNkxUviM=;
        b=YvMjI7ie1mcSymnKzy5pTnvmwPqvEfLiACqnwfq9OZYfWTpXM3OSVI///FTCXH/l57
         eUW0uu16gnpMRxXcTsbEnqvvowXCbrtpwiIg4yZFiDU6WLDvPvrl0zfh9M1nYZJT5t+B
         X/HDJAPgU09aH+uO2hUDtv25vItpRf8S0M4EfDB3mh00k6Y8+3udFTCvxiiSwmj1giEA
         1X3WOkHFPlHdAogNZguvaIp9v6lTGNCMBlwtBTc5FTf+j7l3Y6QGz0JGNvOhsSFqVYdw
         ZrbIopU/y8ldOqA/+cSwKVyg2id5PuKavUVGTJyuHpQnJ5opBeTGRUr5xNGcv1uqHjol
         v8Cw==
X-Gm-Message-State: AOAM5336paKuQDUiUbWhh6fFejzXjvg296gNFtzo1qb9mAwk6Q29eLvu
        GM0CZSDA1C45SSN8nRW+3nRlfg==
X-Google-Smtp-Source: ABdhPJzPV3iRxfbKZraJ0ZboKhAt324/xKTA7kt0xT/xD9dy/6SQ2FuelwK9uOcH8pouDe5RN1iUUQ==
X-Received: by 2002:a5d:448b:: with SMTP id j11mr4993707wrq.129.1602868724237;
        Fri, 16 Oct 2020 10:18:44 -0700 (PDT)
Received: from localhost.localdomain (211.163.185.81.rev.sfr.net. [81.185.163.211])
        by smtp.gmail.com with ESMTPSA id o6sm4177162wrm.69.2020.10.16.10.18.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 16 Oct 2020 10:18:43 -0700 (PDT)
From:   Fabien Parent <fparent@baylibre.com>
To:     linux-kernel@vger.kernel.org, linux-mediatek@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Cc:     matthias.bgg@gmail.com, robh+dt@kernel.org,
        srinivas.kandagatla@linaro.org,
        Fabien Parent <fparent@baylibre.com>
Subject: [PATCH 2/2] arm64: dts: mediatek: mt8516: add efuse node
Date:   Fri, 16 Oct 2020 19:18:37 +0200
Message-Id: <20201016171837.3261310-2-fparent@baylibre.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201016171837.3261310-1-fparent@baylibre.com>
References: <20201016171837.3261310-1-fparent@baylibre.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add node to support e-fuses on MT8516

Signed-off-by: Fabien Parent <fparent@baylibre.com>
---
 arch/arm64/boot/dts/mediatek/mt8516.dtsi | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/arch/arm64/boot/dts/mediatek/mt8516.dtsi b/arch/arm64/boot/dts/mediatek/mt8516.dtsi
index 89af661e7f63..18ddea519be2 100644
--- a/arch/arm64/boot/dts/mediatek/mt8516.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8516.dtsi
@@ -237,6 +237,13 @@ pio: pinctrl@1000b000 {
 			interrupts = <GIC_SPI 134 IRQ_TYPE_LEVEL_HIGH>;
 		};
 
+		efuse: efuse@10009000 {
+			compatible = "mediatek,mt8516-efuse", "mediatek,efuse";
+			reg = <0 0x10009000 0 0x1000>;
+			#address-cells = <1>;
+			#size-cells = <1>;
+		};
+
 		pwrap: pwrap@1000f000 {
 			compatible = "mediatek,mt8516-pwrap";
 			reg = <0 0x1000f000 0 0x1000>;
-- 
2.28.0

