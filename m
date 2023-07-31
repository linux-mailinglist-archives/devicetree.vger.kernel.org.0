Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AC2EC769402
	for <lists+devicetree@lfdr.de>; Mon, 31 Jul 2023 13:00:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230023AbjGaLAj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 31 Jul 2023 07:00:39 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49618 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229915AbjGaLAi (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 31 Jul 2023 07:00:38 -0400
Received: from mail-pl1-x630.google.com (mail-pl1-x630.google.com [IPv6:2607:f8b0:4864:20::630])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CA7BB83
        for <devicetree@vger.kernel.org>; Mon, 31 Jul 2023 04:00:33 -0700 (PDT)
Received: by mail-pl1-x630.google.com with SMTP id d9443c01a7336-1b8b4749013so34499685ad.2
        for <devicetree@vger.kernel.org>; Mon, 31 Jul 2023 04:00:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20221208.gappssmtp.com; s=20221208; t=1690801233; x=1691406033;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1jP0HLi5iSHOi8Z3s8AoTEtv1xUnfOh/1w4uA8oZ1C8=;
        b=2FgELMPX0iC03w8yv5a+jHnW+r6p/iK8CdEQAmkhGrzD3gBhPxC169nCe+ztk/F1PP
         nFvxDdvhJj6n2aqLEXqpK0dzEH83J/QLG9fvkzPlLPhDpBd4telbjN/jbBkGOpnIYb8a
         3il0dYWJtbA9A1zTiTp4KSJeYHuiiQcYgHEh5Kg8HmkfWjFayBnUcs8MyLM0zFSkrIPX
         ArWnQ7sqJ55Am3XRLQ3U5uhqbu9B96mckKbM+DceMLRQcInXzYmnnl0RLw+7Huf6+hHQ
         PKz1GGcsuTJziSe7huWsSjAidbMa5HWBgXLgoPEQ+vyU323EmyWMMru+ZSHMVlzMNafz
         QYyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690801233; x=1691406033;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=1jP0HLi5iSHOi8Z3s8AoTEtv1xUnfOh/1w4uA8oZ1C8=;
        b=HkkXc0J+nIfIK4tYd57+S2wufu2Qxl6z/zVD6q4J9MWXcomnIT+fDyRxJNlHuozQSB
         Y+Gcu3a2VhQcKFGRYcfMNq2kJXYR62RlSw5kFDzSZdl2SaVa8ng9/ppWmWVbIiErlUZH
         qMKaVLzvgKHDXmFFIBDDX59edmZwPd/ksc73xR5An/MYIpYVv+PyvOxG5RHwPhfevFeH
         xIsfQsXd4d1RK89GHin8yuMzdL3fMZjYGCirSipaoQ8V5ZqFaVSVrsgH3YxB8rziy7N/
         mAzCVmGph+uOozaiRGXgZRBXN4HDbjv/qo78hYEjq5MWcGf7tesqK/hKKw6Rj9Ag6AL2
         GsaQ==
X-Gm-Message-State: ABy/qLa9WVSRAIOktDGeDE9p912//hB1m30E8IW4HDeh4uYyMUsX9/Oj
        dBwQ+A+xrd4JJgBYyfLtDHknZw==
X-Google-Smtp-Source: APBJJlF1fW/kkMkTA9HRVUtJsncJ2wrXby1awhzYBA08MEkd3zOioa9tGcY2NYeekLTXVVpQp1heaA==
X-Received: by 2002:a17:902:820c:b0:1b8:4b87:20dc with SMTP id x12-20020a170902820c00b001b84b8720dcmr9063249pln.37.1690801232812;
        Mon, 31 Jul 2023 04:00:32 -0700 (PDT)
Received: from localhost.localdomain ([49.205.243.15])
        by smtp.gmail.com with ESMTPSA id t14-20020a1709028c8e00b001b1a2c14a4asm8281096plo.38.2023.07.31.04.00.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 31 Jul 2023 04:00:32 -0700 (PDT)
From:   Jagan Teki <jagan@edgeble.ai>
To:     Heiko Stuebner <heiko@sntech.de>,
        linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org
Cc:     Jagan Teki <jagan@edgeble.ai>, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>
Subject: [PATCH 03/14] dt-bindings: phy: rockchip-inno-dsidphy: Document rv1126
Date:   Mon, 31 Jul 2023 16:30:01 +0530
Message-Id: <20230731110012.2913742-4-jagan@edgeble.ai>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230731110012.2913742-1-jagan@edgeble.ai>
References: <20230731110012.2913742-1-jagan@edgeble.ai>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_NONE,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Document a compatible string for the rv1126 dsi-dphy.

Signed-off-by: Jagan Teki <jagan@edgeble.ai>
---
Cc: linux-phy@lists.infradead.org
Cc: devicetree@vger.kernel.org
Cc: Vinod Koul <vkoul@kernel.org>
Cc: Kishon Vijay Abraham I <kishon@kernel.org>
Cc: Rob Herring <robh+dt@kernel.org>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Conor Dooley <conor+dt@kernel.org>

 .../devicetree/bindings/phy/rockchip,px30-dsi-dphy.yaml          | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/phy/rockchip,px30-dsi-dphy.yaml b/Documentation/devicetree/bindings/phy/rockchip,px30-dsi-dphy.yaml
index 5c35e5ceec0b..46e64fa293d5 100644
--- a/Documentation/devicetree/bindings/phy/rockchip,px30-dsi-dphy.yaml
+++ b/Documentation/devicetree/bindings/phy/rockchip,px30-dsi-dphy.yaml
@@ -19,6 +19,7 @@ properties:
       - rockchip,rk3128-dsi-dphy
       - rockchip,rk3368-dsi-dphy
       - rockchip,rk3568-dsi-dphy
+      - rockchip,rv1126-dsi-dphy
 
   reg:
     maxItems: 1
-- 
2.25.1

