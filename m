Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E34CC4A312F
	for <lists+devicetree@lfdr.de>; Sat, 29 Jan 2022 18:55:37 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237763AbiA2Rzf (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 29 Jan 2022 12:55:35 -0500
Received: from smtp-relay-internal-1.canonical.com ([185.125.188.123]:36262
        "EHLO smtp-relay-internal-1.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1352928AbiA2RzT (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Sat, 29 Jan 2022 12:55:19 -0500
Received: from mail-ej1-f71.google.com (mail-ej1-f71.google.com [209.85.218.71])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 90F6E3F1D0
        for <devicetree@vger.kernel.org>; Sat, 29 Jan 2022 17:55:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1643478916;
        bh=yg1atMFOKuhX/WndrO9XvGAZ3mzrAMKZw3wcM5QHBAo=;
        h=From:To:Cc:Subject:Date:Message-Id:MIME-Version;
        b=tYL6dCBK3w9CtE2bEGMXeDJFl5j+HUv3racEU7xovBdFrhaln+179W8V9Nce1rxUS
         +uJNNNqzSs/AC70VYHDgofg0unOwGDnaBzIf/a1X2bbcwqYc158sfvmfoArtX/GkMh
         lNFQfrNM7M79n/JGJhJbhiAw/oAfSeD77cuzOFXKThLJo0fi300FvgRi8h0qWrU41n
         F1aCT5Ti6lKfKy8SFefkTlOLvl1pYacRuCMVJV4CRHOPjFIEJsmu1YJKnf+UfR9QC9
         PGXcReFWprbGqyneBsrLJ8m/XvOYlmr+RPkdGMaG28tE7oJAESXDh20UbR8X/KA8m1
         JxxelYvaodcPQ==
Received: by mail-ej1-f71.google.com with SMTP id kw5-20020a170907770500b006ba314a753eso3766659ejc.21
        for <devicetree@vger.kernel.org>; Sat, 29 Jan 2022 09:55:16 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=yg1atMFOKuhX/WndrO9XvGAZ3mzrAMKZw3wcM5QHBAo=;
        b=KQfbG3Ke+spLwPVNl8RZtvkUrtWXJEVQsJClfi/QUtRri60ApBGwA/D4Um98s6KtaW
         7JWKGHmzZLYymxkEg2Ejv1eqPHIoULMEdwGIP7kL3aI9OnkiofRYIdxheROTkyQhj3uX
         z+Ns1t7XyGBKf5kx9yzP7axvf/gH856Kx9eRcoqrre3ypF6+rTj+teAmJc/18l/0NvOM
         oPdlNlam+PlCXF3afJQFzW5ccOtZvjg7uOTe0LwkKoQZWAj712cK9G4X4kB2uVc7Jp+c
         O8fwXKGGnPWMAmAc/gtex/I3d8tSMLdXPm4vtxHIyCiShpnv/GDpL6JwOCk/eJl/ywEJ
         3enw==
X-Gm-Message-State: AOAM532FBzJx7Nvp5r27I/6BegIJ0dzHWKT6eAzphcvv1Zco99Sph3jY
        Xy99BASpu09s4utS2nUNSLaovEUOLCqaTJzYbXGQZZI41eaTfjNLHW6AFgtVd2By8UnE/ziSmZD
        VbM/oqerPERuBapZ/aTnF5Qdj8DOO+/mXKytWJs4=
X-Received: by 2002:aa7:cb42:: with SMTP id w2mr13798019edt.376.1643478916273;
        Sat, 29 Jan 2022 09:55:16 -0800 (PST)
X-Google-Smtp-Source: ABdhPJygNErJ3S4S+TH/x3ZwH9juSmrAmpr5rpe5W1as6WfZP3lsGl/8H7qfWVjXtTHbIbGH92vtgg==
X-Received: by 2002:aa7:cb42:: with SMTP id w2mr13798001edt.376.1643478916093;
        Sat, 29 Jan 2022 09:55:16 -0800 (PST)
Received: from localhost.localdomain (xdsl-188-155-168-84.adslplus.ch. [188.155.168.84])
        by smtp.gmail.com with ESMTPSA id x31sm14948762ede.26.2022.01.29.09.55.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 29 Jan 2022 09:55:15 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     Chanho Min <chanho.min@lge.com>, Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Subject: [PATCH 1/2] arm64: dts: lg: add dma-cells to pl330 node
Date:   Sat, 29 Jan 2022 18:55:13 +0100
Message-Id: <20220129175514.298942-1-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

dma-cells property is required for dma-controller.  Fixes dtbs_check
warnings like:

  dma@c1128000: '#dma-cells' is a required property

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
---
 arch/arm64/boot/dts/lg/lg1312.dtsi | 1 +
 arch/arm64/boot/dts/lg/lg1313.dtsi | 1 +
 2 files changed, 2 insertions(+)

diff --git a/arch/arm64/boot/dts/lg/lg1312.dtsi b/arch/arm64/boot/dts/lg/lg1312.dtsi
index 081fe7a9f605..ef57df716f14 100644
--- a/arch/arm64/boot/dts/lg/lg1312.dtsi
+++ b/arch/arm64/boot/dts/lg/lg1312.dtsi
@@ -188,6 +188,7 @@ dmac0: dma@c1128000 {
 			interrupts = <GIC_SPI 29 IRQ_TYPE_LEVEL_HIGH>;
 			clocks = <&clk_bus>;
 			clock-names = "apb_pclk";
+			#dma-cells = <1>;
 		};
 		gpio0: gpio@fd400000 {
 			#gpio-cells = <2>;
diff --git a/arch/arm64/boot/dts/lg/lg1313.dtsi b/arch/arm64/boot/dts/lg/lg1313.dtsi
index 604bb6975337..4e6b65939b72 100644
--- a/arch/arm64/boot/dts/lg/lg1313.dtsi
+++ b/arch/arm64/boot/dts/lg/lg1313.dtsi
@@ -188,6 +188,7 @@ dmac0: dma@c1128000 {
 			interrupts = <GIC_SPI 29 IRQ_TYPE_LEVEL_HIGH>;
 			clocks = <&clk_bus>;
 			clock-names = "apb_pclk";
+			#dma-cells = <1>;
 		};
 		gpio0: gpio@fd400000 {
 			#gpio-cells = <2>;
-- 
2.32.0

