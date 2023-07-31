Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id F2D5C769408
	for <lists+devicetree@lfdr.de>; Mon, 31 Jul 2023 13:00:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230476AbjGaLAy (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 31 Jul 2023 07:00:54 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49854 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231126AbjGaLAv (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 31 Jul 2023 07:00:51 -0400
Received: from mail-pl1-x62c.google.com (mail-pl1-x62c.google.com [IPv6:2607:f8b0:4864:20::62c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E1FD3127
        for <devicetree@vger.kernel.org>; Mon, 31 Jul 2023 04:00:49 -0700 (PDT)
Received: by mail-pl1-x62c.google.com with SMTP id d9443c01a7336-1bb84194bf3so26307005ad.3
        for <devicetree@vger.kernel.org>; Mon, 31 Jul 2023 04:00:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20221208.gappssmtp.com; s=20221208; t=1690801249; x=1691406049;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=H0WMB/rKA9SZTAI1IQRgHdLwr9J9XpTfTTdRysuLNm8=;
        b=B5wiNiUNBpQ5/cm40/5mR4Euud/LcpM2S1MDoIhxXQh4qa0LaT3RnuFzQxcKYIZVtK
         OIYrOjJcN4e2IcQt/rEdX/G/Qac+0oT/hHO/kJHGblNusnkn0KMYmETjY13t9ygONCag
         iiL1zd6KVsTRyjR3NfxaHbbXPNoB8l30xTG/wfcYEXg9FvCL4jKVTl/K14hA7SXaCXEI
         pHPARmy76/91ptYMjZmOiB7aIoiRY6w+0AFbtQCD1+FL59+47pX9+JpD7p3We8E4rLO4
         zqBW+mogigC1d1nu+LhrHDWribUeFW02vbxg41RqM3hWGkjZFiIAcGPdu55womGQX6KM
         qd3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690801249; x=1691406049;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=H0WMB/rKA9SZTAI1IQRgHdLwr9J9XpTfTTdRysuLNm8=;
        b=NwG+fkRI9SAfodZaeV1Aa2YHf4aLYfyJhEwZi4OuuUiN3oygdC4AyzS0lO95UPu9kG
         1sV2W7Hkj8PE+I9POjCMkZyhkagPDosjQNyhNkQCLzh4Wh/B5C+gbZlTIhnzu3R+XbPX
         nypMGfVZcVuo+GsnNbnfqYUNiZL1CaUQ1/ibeX5/CbFHqPTrtsQ2wqYbo2viiQ/+LPl/
         M4ia/nabS2jS6eEoYHEQyuwKNwK0XN1PMUlluyxJth43WZjz77efOXT7C7dbe5UVNIx9
         ZRVc1qXR41CnIDrqr5hXVazb4LkqjzCgigczqnk9vdBlv41L/ZdVEAA4+gZnOiwZHIvZ
         fdyA==
X-Gm-Message-State: ABy/qLYgXgKaMdI17Pmg1jlyu8qyKnK2klu5rkeAoursMZnN/7KPTjUi
        +R9+SlIWc9gZtVdigjDMk774Tg==
X-Google-Smtp-Source: APBJJlEL6GyYYARcEpmECY3j7mHuoZbCzpcyxxbV86ML15IxgqlhlJDvc/OuaitgyiGInsT10WH8eQ==
X-Received: by 2002:a17:902:a40d:b0:1bb:20ee:e29e with SMTP id p13-20020a170902a40d00b001bb20eee29emr8855585plq.1.1690801249350;
        Mon, 31 Jul 2023 04:00:49 -0700 (PDT)
Received: from localhost.localdomain ([49.205.243.15])
        by smtp.gmail.com with ESMTPSA id t14-20020a1709028c8e00b001b1a2c14a4asm8281096plo.38.2023.07.31.04.00.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 31 Jul 2023 04:00:48 -0700 (PDT)
From:   Jagan Teki <jagan@edgeble.ai>
To:     Heiko Stuebner <heiko@sntech.de>,
        linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org
Cc:     Jagan Teki <jagan@edgeble.ai>, dri-devel@lists.freedesktop.org,
        devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Sandy Huang <hjc@rock-chips.com>,
        David Airlie <airlied@gmail.com>,
        Daniel Vetter <daniel@ffwll.ch>
Subject: [PATCH 07/14] dt-bindings: display: rockchip-dw-mipi-dsi: Document rv1126 DSI
Date:   Mon, 31 Jul 2023 16:30:05 +0530
Message-Id: <20230731110012.2913742-8-jagan@edgeble.ai>
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

Document the MIPI DSI for Rockchip RV1126.

Signed-off-by: Jagan Teki <jagan@edgeble.ai>
---
Cc: dri-devel@lists.freedesktop.org
Cc: devicetree@vger.kernel.org
Cc: Rob Herring <robh+dt@kernel.org>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Conor Dooley <conor+dt@kernel.org>
Cc: Sandy Huang <hjc@rock-chips.com>
Cc: David Airlie <airlied@gmail.com>
Cc: Daniel Vetter <daniel@ffwll.ch>

 .../bindings/display/rockchip/rockchip,dw-mipi-dsi.yaml         | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/rockchip/rockchip,dw-mipi-dsi.yaml b/Documentation/devicetree/bindings/display/rockchip/rockchip,dw-mipi-dsi.yaml
index 8e8a40879140..ccf79e738fa1 100644
--- a/Documentation/devicetree/bindings/display/rockchip/rockchip,dw-mipi-dsi.yaml
+++ b/Documentation/devicetree/bindings/display/rockchip/rockchip,dw-mipi-dsi.yaml
@@ -18,6 +18,7 @@ properties:
           - rockchip,rk3288-mipi-dsi
           - rockchip,rk3399-mipi-dsi
           - rockchip,rk3568-mipi-dsi
+          - rockchip,rv1126-mipi-dsi
       - const: snps,dw-mipi-dsi
 
   interrupts:
@@ -77,6 +78,7 @@ allOf:
             enum:
               - rockchip,px30-mipi-dsi
               - rockchip,rk3568-mipi-dsi
+              - rockchip,rv1126-mipi-dsi
 
     then:
       properties:
-- 
2.25.1

