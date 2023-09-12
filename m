Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9420279D682
	for <lists+devicetree@lfdr.de>; Tue, 12 Sep 2023 18:38:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236981AbjILQix (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 12 Sep 2023 12:38:53 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58498 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236997AbjILQiw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 12 Sep 2023 12:38:52 -0400
Received: from mail-oo1-xc36.google.com (mail-oo1-xc36.google.com [IPv6:2607:f8b0:4864:20::c36])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A6901CF
        for <devicetree@vger.kernel.org>; Tue, 12 Sep 2023 09:38:48 -0700 (PDT)
Received: by mail-oo1-xc36.google.com with SMTP id 006d021491bc7-57328758a72so1357090eaf.1
        for <devicetree@vger.kernel.org>; Tue, 12 Sep 2023 09:38:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1694536728; x=1695141528; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=SjDlRrjusxUUcs454HKD0+tVuSKKZVW9rE0qHM9bc8Q=;
        b=K3uvntSvL6aswhxWGSYutszDRVTbzZ6XKJHpnb+qkHWTiQ8miQoM/xkTv6bC49TA1W
         v7JVLmiibVhHVbdka/pg4P/GU+C1nV3OZ/rAROyabm0tOdbEk03OhBJrqJl2J/88Kdn0
         ezrjBGn/Ezk0mp2bAwfIavNE0x44u0rRkYGLGU+BQpTqFM7DKDwYlXk6aEKih2xoUW4g
         ud8O1wJWPmh3OBIRJm0MRudsxcAia+l73ZYI30/lAW25jGFPeVxYsmlgDEViD5OnhPLk
         sI5Al+6vKE8pX89dG4UxdeKKnc3ykN7zglxQ0ViCQtKzDb4z0qZbOdzYkWJkr41I1fjH
         ES7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694536728; x=1695141528;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=SjDlRrjusxUUcs454HKD0+tVuSKKZVW9rE0qHM9bc8Q=;
        b=nmXeWjGms2k5wAqrL3I1IrBJZW4Qo7ZUBWmj5OqxEhxP+sbpaMOqs2vznnMjTcNxsm
         ONDIX6HNaTdaGDxj3lEs9f5gZJudcUwbytXqEQ1eXHNi/w5e++LpYW2Y+2JlXMmjkMCy
         NPj14LwQxezIsEZ2x7Vuj5He9mpiL/Lsun0pMz5PQo7IIZMuFrqFw6aUQZeuhc4xgK0o
         UALwwYvtEdApNssFaJztcSBrtxlY/Cx5D+/Ph19dsiviWNQIN6/9KgNrnXbR2ZKuS+9w
         PxxzyMchrjA8nEdWqXW5+Mw2uUXWCHL+UTZucP7mc6yN/oJ/6o8x/vLZosFg1I2S/7P9
         Qpzg==
X-Gm-Message-State: AOJu0YzP2yKU/q8NVluvnJubZuqc8q2ceWrDU4oS5IJwqq3pihxUc2PZ
        1x6y2ECDdT6uQ9yZaf6xmMs=
X-Google-Smtp-Source: AGHT+IHsnNmBGUTTVsGDxBuTITVmkJ+ICU2N/g0CJYOtM5+FwE3qa8OaSW1RcLO3eHBsIUOnOxXjsA==
X-Received: by 2002:a05:6820:616:b0:578:a06a:5d8f with SMTP id e22-20020a056820061600b00578a06a5d8fmr169373oow.1.1694536727899;
        Tue, 12 Sep 2023 09:38:47 -0700 (PDT)
Received: from fabio-Precision-3551.. ([2804:14c:485:4b61:676a:5a77:75a8:efc8])
        by smtp.gmail.com with ESMTPSA id v4-20020a4aad84000000b00565fbd0d4c0sm4012426oom.28.2023.09.12.09.38.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 12 Sep 2023 09:38:47 -0700 (PDT)
From:   Fabio Estevam <festevam@gmail.com>
To:     shawnguo@kernel.org
Cc:     robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        conor+dt@kernel.org, mirela.rabulea@nxp.com,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        alexander.stein@ew.tq-group.com, Fabio Estevam <festevam@denx.de>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v3 3/3] arm64: imx8qm-ss-img: Fix jpegenc compatible entry
Date:   Tue, 12 Sep 2023 13:38:10 -0300
Message-Id: <20230912163810.1750488-3-festevam@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230912163810.1750488-1-festevam@gmail.com>
References: <20230912163810.1750488-1-festevam@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Fabio Estevam <festevam@denx.de>

The first compatible entry for the jpegenc should be 'nxp,imx8qm-jpgenc'.

Change it accordingly to fix the following schema warning:

imx8qm-apalis-eval.dtb: jpegenc@58450000: compatible: 'oneOf' conditional failed, one must be fixed:
	'nxp,imx8qm-jpgdec' is not one of ['nxp,imx8qxp-jpgdec', 'nxp,imx8qxp-jpgenc']
	'nxp,imx8qm-jpgenc' was expected
	'nxp,imx8qxp-jpgdec' was expected

Fixes: 5bb279171afc ("arm64: dts: imx8: Add jpeg encoder/decoder nodes")
Signed-off-by: Fabio Estevam <festevam@denx.de>
Reviewed-by: Mirela Rabulea <mirela.rabulea@nxp.com>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
Changes since v2:
- Collected Reviewed-by tags.

 arch/arm64/boot/dts/freescale/imx8qm-ss-img.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8qm-ss-img.dtsi b/arch/arm64/boot/dts/freescale/imx8qm-ss-img.dtsi
index 7764b4146e0a..2bbdacb1313f 100644
--- a/arch/arm64/boot/dts/freescale/imx8qm-ss-img.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8qm-ss-img.dtsi
@@ -8,5 +8,5 @@ &jpegdec {
 };
 
 &jpegenc {
-	compatible = "nxp,imx8qm-jpgdec", "nxp,imx8qxp-jpgenc";
+	compatible = "nxp,imx8qm-jpgenc", "nxp,imx8qxp-jpgenc";
 };
-- 
2.34.1

