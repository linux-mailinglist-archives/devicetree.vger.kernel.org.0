Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CEBA56368F9
	for <lists+devicetree@lfdr.de>; Wed, 23 Nov 2022 19:34:37 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239670AbiKWSds (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 23 Nov 2022 13:33:48 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34468 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239673AbiKWSdI (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 23 Nov 2022 13:33:08 -0500
Received: from mail-pl1-x636.google.com (mail-pl1-x636.google.com [IPv6:2607:f8b0:4864:20::636])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CDC07627E
        for <devicetree@vger.kernel.org>; Wed, 23 Nov 2022 10:32:52 -0800 (PST)
Received: by mail-pl1-x636.google.com with SMTP id w23so17374524ply.12
        for <devicetree@vger.kernel.org>; Wed, 23 Nov 2022 10:32:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=QH40xdstEqWGzwJenNT3rCqkfJ9ajN5rIUi4+/Qwboo=;
        b=JrFdo9zzSZq4vcjaRKG7bUw2d1ykyBu3DmR5uM6AoS+kqrWKKR0uFmlc4c7lXispzd
         kFkiPLTW3txvogFwPDRXz8P6DOUXh5m0ICVY8h9AN1Iy1OcessiYG1rL+sLgIZOekjTB
         7D6rtGJ8fVUdxvzJqhK+uAj9Muon9ZZEMU1aNjcspSZAstB4EgbeI5QQy4n9x+oMpinL
         jwVJBHIlwK2bpelndwekvu8+SplY++A5Ug8+Fl397z12i7M1A7yDdIVzLARJsnL4DOGc
         rXbv1tYpQnJJddseV4Jxn2l029mg0S1ZnkqEiPk593Z9AUqNtvHXQdTu24TVK3fK747f
         Yxaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=QH40xdstEqWGzwJenNT3rCqkfJ9ajN5rIUi4+/Qwboo=;
        b=JWhcBnu/4AJ3GmCxHzemFvIWGJ/TMf3u0Lww67Kw059cMvR1SSdQp+LVfauhehmsiu
         QHZv3+HUgd7O80UaD0ixv/WC7YsITJRHSffIDLCaD3mNjxMI0tKyPXqwvLt63Th1IhoJ
         GlhUMSVrRkDuRa4J4jhYfFr3xS30gNZ9rQNpYE7+k9W6pDbjtbUsgBuB2rAN5MlZl+uB
         hWpI1Pmv0Na3RWlA5DIQ3xElACoqa4gBrpBwWMdnSI15CUTbNOyXtD/4N6a7zJpO6FtM
         yx6Csh9VmPwUmjsB/eC9udTRFhUPO9lqm1u73EZs1YakUDT1B9PFdb9DK6dBk0phRf/5
         wlTw==
X-Gm-Message-State: ANoB5pklovIYHdSkumDohhUF0EKTgyZY7YYesIji1It6cGtBHWJ0QeeD
        YmAhRigfkD4z1WJY91KLlzMt7A==
X-Google-Smtp-Source: AA0mqf4pLxcJq9p7xF2+hlaeWUITQBV/rTFCR2so3rNYWpE+TbroSTO+lGHvi5XnoOSkv/PMshemTg==
X-Received: by 2002:a17:90a:1bc2:b0:218:8bdb:de3f with SMTP id r2-20020a17090a1bc200b002188bdbde3fmr24941981pjr.225.1669228372327;
        Wed, 23 Nov 2022 10:32:52 -0800 (PST)
Received: from localhost.localdomain ([2405:201:c00a:a809:a055:fcc4:4677:827])
        by smtp.gmail.com with ESMTPSA id x3-20020aa79403000000b0056d2317455bsm13006732pfo.7.2022.11.23.10.32.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 23 Nov 2022 10:32:51 -0800 (PST)
From:   Jagan Teki <jagan@edgeble.ai>
To:     Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Daniel Lezcano <daniel.lezcano@linaro.org>,
        linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        Johan Jonker <jbx6244@gmail.com>, Jagan Teki <jagan@edgeble.ai>
Subject: [PATCH v8 2/8] dt-bindings: timer: rk-timer: Add rktimer for rv1126
Date:   Thu, 24 Nov 2022 00:01:18 +0530
Message-Id: <20221123183124.6911-3-jagan@edgeble.ai>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221123183124.6911-1-jagan@edgeble.ai>
References: <20221123183124.6911-1-jagan@edgeble.ai>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add rockchip timer compatible string for rockchip rv1126.

Signed-off-by: Jagan Teki <jagan@edgeble.ai>
---
Changes for v8:
- drop cc list

 Documentation/devicetree/bindings/timer/rockchip,rk-timer.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/timer/rockchip,rk-timer.yaml b/Documentation/devicetree/bindings/timer/rockchip,rk-timer.yaml
index dc3bc1e62fe9..a6221222e948 100644
--- a/Documentation/devicetree/bindings/timer/rockchip,rk-timer.yaml
+++ b/Documentation/devicetree/bindings/timer/rockchip,rk-timer.yaml
@@ -17,6 +17,7 @@ properties:
       - items:
           - enum:
               - rockchip,rv1108-timer
+              - rockchip,rv1126-timer
               - rockchip,rk3036-timer
               - rockchip,rk3188-timer
               - rockchip,rk3228-timer
-- 
2.25.1

