Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E14FA4A3130
	for <lists+devicetree@lfdr.de>; Sat, 29 Jan 2022 18:55:42 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1352872AbiA2Rzj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 29 Jan 2022 12:55:39 -0500
Received: from smtp-relay-internal-0.canonical.com ([185.125.188.122]:58880
        "EHLO smtp-relay-internal-0.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1352949AbiA2RzT (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Sat, 29 Jan 2022 12:55:19 -0500
Received: from mail-ed1-f70.google.com (mail-ed1-f70.google.com [209.85.208.70])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 6B87C40012
        for <devicetree@vger.kernel.org>; Sat, 29 Jan 2022 17:55:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1643478918;
        bh=uFwYq6/sLP+aa3bBUWRWpw/ZxD+cRQR7FFitx+apeiE=;
        h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
         MIME-Version;
        b=s3UovhqG1/sT8I0iYbMXZ8uv68RvDi+myMa3MXX+yvy9jbnAAGqFcQFkHbvSTeMga
         L8SxmVCrW7Pzfp5WYqYJGuFSJwMxFjB8KTyGE+93BeiIo5RT5suZQTUwj6rzKQvEuS
         n4QNq2yxPPNSuXELoSXBxPBnI4hLxsRgEP+dbXNkFE9TCNYvKajbspssTT+4zaJUzu
         cYUrpH/rs0fQM47otFBrlRbf4Af9p/x2uKjicZ/QGBE2a52VS701XfmTTmZ8hRyjGI
         G78rcDZpFalMHtMKC5NA2I0R0q4e2zBTnes1pOqzfcTqnK0Stl6E+9IlZM4YN9atHk
         YrocunMkndPXA==
Received: by mail-ed1-f70.google.com with SMTP id c23-20020a056402159700b00406aa42973eso4704059edv.2
        for <devicetree@vger.kernel.org>; Sat, 29 Jan 2022 09:55:18 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=uFwYq6/sLP+aa3bBUWRWpw/ZxD+cRQR7FFitx+apeiE=;
        b=LrbK54CNPM+7gbqIjebUDLcHmixnXnbF/w+Xwo1rFcmb9gMj3HYrfiDN2nyG0NQQgf
         w3yRrKRrE0gmy5A0/FsBWuFago3DEsVIoXS7XnCQ9dvBgWyCOaVhJ2giyNsNenZGHtbs
         L5Iy50u7V90X/4vwScFDrZnzDo2u9ygEBAgOzstnrq0dt8lTn6X7FxTqiCO/WrTky4YG
         DL5NQs+mMRvcUgCMUUmsr/bIo2ZigSXk+fPpR71ne4YabgDMPs+UFup763mCn3Qb5XxV
         Nhhlg4FXskmLYAQ/KCK04ePsd4ISnaLeiLFN6I1ByFs0QwDuG7jTTW9SxpSrHKaJfVzu
         KJ8Q==
X-Gm-Message-State: AOAM532WyFt+F7JzTCVeFHlJYMUyQ4BIQ4yqGyJ9OjOEuAg9+hL1d7Sn
        QqTPgYLxXV4xSWxLBHCLT25YFYCqRafxCQA04UxDt2J2Kela0hy/VbA3cE1MHwow/9cwEoVqqID
        YZci9qx/PbLLcbISHnTolAeMApCFWxzEt/zvJbts=
X-Received: by 2002:a17:907:e9e:: with SMTP id ho30mr10864609ejc.648.1643478917780;
        Sat, 29 Jan 2022 09:55:17 -0800 (PST)
X-Google-Smtp-Source: ABdhPJzSviQQQDxdB3qrIV0NYtxKwFAPyvG5odOdZK+9ipq5+Obta3UvfGd28ogRz+7BlJZr7mfAWQ==
X-Received: by 2002:a17:907:e9e:: with SMTP id ho30mr10864603ejc.648.1643478917641;
        Sat, 29 Jan 2022 09:55:17 -0800 (PST)
Received: from localhost.localdomain (xdsl-188-155-168-84.adslplus.ch. [188.155.168.84])
        by smtp.gmail.com with ESMTPSA id x31sm14948762ede.26.2022.01.29.09.55.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 29 Jan 2022 09:55:17 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     Chanho Min <chanho.min@lge.com>, Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Subject: [PATCH 2/2] arm64: dts: lg: align pl330 node name with dtschema
Date:   Sat, 29 Jan 2022 18:55:14 +0100
Message-Id: <20220129175514.298942-2-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220129175514.298942-1-krzysztof.kozlowski@canonical.com>
References: <20220129175514.298942-1-krzysztof.kozlowski@canonical.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Fixes dtbs_check warnings like:

  dma@c1128000: $nodename:0: 'dma@c1128000' does not match '^dma-controller(@.*)?$'

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
---
 arch/arm64/boot/dts/lg/lg1312.dtsi | 2 +-
 arch/arm64/boot/dts/lg/lg1313.dtsi | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/lg/lg1312.dtsi b/arch/arm64/boot/dts/lg/lg1312.dtsi
index ef57df716f14..bec97480a960 100644
--- a/arch/arm64/boot/dts/lg/lg1312.dtsi
+++ b/arch/arm64/boot/dts/lg/lg1312.dtsi
@@ -182,7 +182,7 @@ spi1: spi@fe900000 {
 			clocks = <&clk_bus>;
 			clock-names = "apb_pclk";
 		};
-		dmac0: dma@c1128000 {
+		dmac0: dma-controller@c1128000 {
 			compatible = "arm,pl330", "arm,primecell";
 			reg = <0x0 0xc1128000 0x1000>;
 			interrupts = <GIC_SPI 29 IRQ_TYPE_LEVEL_HIGH>;
diff --git a/arch/arm64/boot/dts/lg/lg1313.dtsi b/arch/arm64/boot/dts/lg/lg1313.dtsi
index 4e6b65939b72..ada3d4dc6305 100644
--- a/arch/arm64/boot/dts/lg/lg1313.dtsi
+++ b/arch/arm64/boot/dts/lg/lg1313.dtsi
@@ -182,7 +182,7 @@ spi1: spi@fe900000 {
 			clocks = <&clk_bus>;
 			clock-names = "apb_pclk";
 		};
-		dmac0: dma@c1128000 {
+		dmac0: dma-controller@c1128000 {
 			compatible = "arm,pl330", "arm,primecell";
 			reg = <0x0 0xc1128000 0x1000>;
 			interrupts = <GIC_SPI 29 IRQ_TYPE_LEVEL_HIGH>;
-- 
2.32.0

