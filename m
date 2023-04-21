Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0931B6EB4C2
	for <lists+devicetree@lfdr.de>; Sat, 22 Apr 2023 00:31:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232902AbjDUWbm (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 21 Apr 2023 18:31:42 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60626 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232808AbjDUWbm (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 21 Apr 2023 18:31:42 -0400
Received: from mail-ej1-x62b.google.com (mail-ej1-x62b.google.com [IPv6:2a00:1450:4864:20::62b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 88D2A1BFD
        for <devicetree@vger.kernel.org>; Fri, 21 Apr 2023 15:31:40 -0700 (PDT)
Received: by mail-ej1-x62b.google.com with SMTP id a640c23a62f3a-94a342f15e4so313748466b.0
        for <devicetree@vger.kernel.org>; Fri, 21 Apr 2023 15:31:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1682116299; x=1684708299;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=tHsoXDxz1/UTx6EBnwD4GozBhAQVv+WOC5RetDWcnZ4=;
        b=uHsMB7x0Xp2Q+ayCfEMDyPvNll3SI8+ipJ52v+0W/l6PZk6dTdooXFXz7/uSwn+gb7
         TGmOk+N5FQpWWnnVTFtrERp3aAELYIt5pO3/N8z0/qInvjfEW9+LXKZO1zATX1NTBK8K
         /w0m3FMltIhO7NGnlMFqDxTCO+G0J5FG+tjnvkS/+PXn/+nZd03zVwOpxUSdcEnOS1Pg
         c5zi5Kn2WvByRHRNogglHMlDIaBv0XY0+G3T2ZNmSO870iiGBPw3+/4oclcjlGgoigYk
         YxYcwFKCBzKnt9ULlO4qV/C8KhFfA9/ZfmPejU/H6ih4OFMYLYp77zCn3nYTUb/eZabQ
         JYIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682116299; x=1684708299;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=tHsoXDxz1/UTx6EBnwD4GozBhAQVv+WOC5RetDWcnZ4=;
        b=gk25DysOkdEgu9dk+p318CtGcN4pdII715djyYzTgOTSJEy+xr33IR3bZhNuQ7J/TA
         ceEDMEKZm36IAi8xliRbWoXl8nlR0dX6/bmR8fLbEIdYRa7/ezatn6V+vxkJBn2aJBTH
         d8TWL6vYwhkWxsf6HXU2Rs4+He1diu0ZSi/KUo19uE/v+cBA+fHDT05zun+BsfG5QH2I
         iEvYGuCHjjpPLh/5SeUN8oz/ck6clnEeqP2ShsA0HTTSlAa+UdOyr5MeOXZgt4ZYBYAB
         5cL6GWap0nGJutX9NrjjaXJ9pkLJpM4OCeS5OCKWt94l83LYrKfBrY3hHm3e9IrGlVKn
         Ka6g==
X-Gm-Message-State: AAQBX9fYplHA/5Bo9T4czCckRN/Ng1vLxwdvUOr/cXFLhRnH+uBnXRUL
        h78LGCJ2T3zYd322w2ECX3tjTA==
X-Google-Smtp-Source: AKy350Y2WtdIrB8KUkVxhNUfP+cw41JryLuepwl1MmDWr8r7jE/LiFDauoeJJ2LjhOQ/r86bda7hjg==
X-Received: by 2002:a17:906:b147:b0:933:868:413a with SMTP id bt7-20020a170906b14700b009330868413amr3914177ejb.15.1682116299030;
        Fri, 21 Apr 2023 15:31:39 -0700 (PDT)
Received: from krzk-bin.. ([2a02:810d:15c0:828:687d:8c5:41cb:9883])
        by smtp.gmail.com with ESMTPSA id sd22-20020a1709076e1600b009572bd99281sm1077677ejc.224.2023.04.21.15.31.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 Apr 2023 15:31:38 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Chen-Yu Tsai <wens@csie.org>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        Samuel Holland <samuel@sholland.org>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-sunxi@lists.linux.dev, linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH] arm64: dts: allwinner: a64: add missing cache properties
Date:   Sat, 22 Apr 2023 00:31:37 +0200
Message-Id: <20230421223137.115015-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

As all level 2 and level 3 caches are unified, add required
cache-unified property to fix warnings like:

  sun50i-a64-pine64-lts.dtb: l2-cache: 'cache-unified' is a required property

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

---

Please take the patch via sub-arch SoC tree.
---
 arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi b/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi
index 62f45f71ec65..a9c7f82c2c66 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi
+++ b/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi
@@ -93,6 +93,7 @@ cpu3: cpu@3 {
 		L2: l2-cache {
 			compatible = "cache";
 			cache-level = <2>;
+			cache-unified;
 		};
 	};
 
-- 
2.34.1

