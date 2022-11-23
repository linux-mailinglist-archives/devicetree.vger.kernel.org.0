Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 950DC6368FB
	for <lists+devicetree@lfdr.de>; Wed, 23 Nov 2022 19:34:38 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236775AbiKWSdp (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 23 Nov 2022 13:33:45 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34430 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239799AbiKWSdH (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 23 Nov 2022 13:33:07 -0500
Received: from mail-pl1-x631.google.com (mail-pl1-x631.google.com [IPv6:2607:f8b0:4864:20::631])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DA7AA4E430
        for <devicetree@vger.kernel.org>; Wed, 23 Nov 2022 10:32:49 -0800 (PST)
Received: by mail-pl1-x631.google.com with SMTP id y10so16214907plp.3
        for <devicetree@vger.kernel.org>; Wed, 23 Nov 2022 10:32:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=98wheFol2bxYOds/S3rYvESqO5xCxCAPSpTtFrQMTLY=;
        b=vo9sB7Zqb5TcH96l27l15NhxzCZpy0Z+zIDca5M8ypVzWGNOxHp92yRrA0idYw56kC
         7+1bq/h2EMxDZhBxcrPPK8ekvaVY5xauFQLosYnObSlvdH3mJxZBv+pBxOTP1tam9hva
         6j7UpWMYCTasnvamMrAu8g7RhSf77S6Tjef27fiOQPU1yk756JlH+1K60tKj8on6hYmd
         bvY+Gp/RbNld3ZOWJ861WrmVCIrzKC2S2CAaQfgVyGmICXLimyet0C/DdnU0KM8UJUtp
         LTbHrJcZP7JMZVWPVyqgs1+exKJFT2WYH2hVjcXij3zg5Uyvg5dphAgVJsLhJRIDX11p
         FjbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=98wheFol2bxYOds/S3rYvESqO5xCxCAPSpTtFrQMTLY=;
        b=hcaxN2zcgFskBkEibqf8NZVNWKpE98de9hvQ9+/GGKa85NvkwXIDa/E3K8zj2c6ic8
         7L4nJsECF2+M8boLvCSPTMvuFedHrD5S3HF7A04tYcSGA+nBqtN+NQ0q/cpK+IkH4F8S
         1tsLxVJDorqLJrJZzvr8Xkd/iYfwan+xmpnUXD1PhZ7Z5BmJCVirtMh0J7fqWIzlYiMa
         1n+cV2pW8t2Ua9Ry06KxlqgWAgwO/dseogBs6zaf6wg7eTwA9sH1jeokaqyv7b+uZwSi
         0uF4ToWy003XLixMowYYgQ/Ga1/yYngDsbHee/YAjP7F8/J3oFjUSxQmhbSkKWwgneTz
         C+mA==
X-Gm-Message-State: ANoB5pmHwG9GeFXKLfqej7zwR/YMYRbJpZJaoNc7FK12+XU/olyZbJ8k
        q358bDRTLoKX4im/5hNgjbpJag==
X-Google-Smtp-Source: AA0mqf7Sjmwo8EVLBkmoT2RgqIlVBPy+YLIVAyyiVasCOA91VnoZNvOEp+LBTzVoZHSG6XiZ9Cc7sg==
X-Received: by 2002:a17:902:8212:b0:187:2430:d37d with SMTP id x18-20020a170902821200b001872430d37dmr22727404pln.28.1669228368822;
        Wed, 23 Nov 2022 10:32:48 -0800 (PST)
Received: from localhost.localdomain ([2405:201:c00a:a809:a055:fcc4:4677:827])
        by smtp.gmail.com with ESMTPSA id x3-20020aa79403000000b0056d2317455bsm13006732pfo.7.2022.11.23.10.32.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 23 Nov 2022 10:32:48 -0800 (PST)
From:   Jagan Teki <jagan@edgeble.ai>
To:     Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Daniel Lezcano <daniel.lezcano@linaro.org>,
        linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        Johan Jonker <jbx6244@gmail.com>,
        Jagan Teki <jagan@edgeble.ai>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v8 1/8] dt-bindings: arm: rockchip: Add pmu compatible for rv1126
Date:   Thu, 24 Nov 2022 00:01:17 +0530
Message-Id: <20221123183124.6911-2-jagan@edgeble.ai>
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

Add PMU compatible string for rockchip rv1126.

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Jagan Teki <jagan@edgeble.ai>
---
Changes for v8:
- add Krzysztof ack
Changes for v7:
- new patch

 Documentation/devicetree/bindings/arm/rockchip/pmu.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip/pmu.yaml b/Documentation/devicetree/bindings/arm/rockchip/pmu.yaml
index 8c73bc7f4009..b79c81cd9f0e 100644
--- a/Documentation/devicetree/bindings/arm/rockchip/pmu.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip/pmu.yaml
@@ -27,6 +27,7 @@ select:
           - rockchip,rk3399-pmu
           - rockchip,rk3568-pmu
           - rockchip,rk3588-pmu
+          - rockchip,rv1126-pmu
 
   required:
     - compatible
@@ -43,6 +44,7 @@ properties:
           - rockchip,rk3399-pmu
           - rockchip,rk3568-pmu
           - rockchip,rk3588-pmu
+          - rockchip,rv1126-pmu
       - const: syscon
       - const: simple-mfd
 
-- 
2.25.1

