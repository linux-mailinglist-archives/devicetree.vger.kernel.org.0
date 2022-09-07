Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 235065B099D
	for <lists+devicetree@lfdr.de>; Wed,  7 Sep 2022 18:05:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230370AbiIGQFN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 7 Sep 2022 12:05:13 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51998 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230349AbiIGQEx (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 7 Sep 2022 12:04:53 -0400
Received: from mail-pg1-x531.google.com (mail-pg1-x531.google.com [IPv6:2607:f8b0:4864:20::531])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 937FBBCC12
        for <devicetree@vger.kernel.org>; Wed,  7 Sep 2022 09:03:11 -0700 (PDT)
Received: by mail-pg1-x531.google.com with SMTP id v4so13996611pgi.10
        for <devicetree@vger.kernel.org>; Wed, 07 Sep 2022 09:03:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
        bh=a9wa5InO2XyMLOr2Gn4u1KSNjpfJAhNzw+XNa7giGrU=;
        b=LqeEBWqX6eEpYfjMzwdXNtpu6YP/ty9uua31s62LfozPU9T5xQT36NOG+ebFVMdtxs
         Z5yfbivP9r/WvP0qnscbq0pmEak1Bfm1Gpr9FLUWBqpFjwhUZfml5i0CKXjLSHdJyl1z
         YNsN15mrEShNP2M442YzOvtrGQIXf6t1VzwadyJ6gLu3O3oEcpC5RCPwe85fgN1u8H0a
         i0kERRe8pkfG0Hj6XEZ4Oe02wy2du5UoEYRw6v5YVJMDWUJVJgGGm6M4xyn3520YJ+Cw
         9D5IwqD2S3YkPsAYDi0hEINCbrj3csJ90zBzJZ+DH/XuEufGlKhexXqfIEJo6xZqLUnR
         jnqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=a9wa5InO2XyMLOr2Gn4u1KSNjpfJAhNzw+XNa7giGrU=;
        b=qJ44Sl3VEUWgwWmcP6v5UNz2bXauP9MG4hdlLqBowOVtREProEK8io8sn97p8E92HY
         7OADgbynTvFilKRT9ejuSMYxNqcMUhqfPHjkLjE7mq6J0CXVVosGO31RWqzZ2sDE1cES
         6hiIekUKQRPG4NHa7eFcdM7aEUFv5peLiyCDVsZAg0l2y4QpcaZ56ggivizuPXpmlIsG
         RDGrrVCmrCqk6aEfSyhRj1UfxTVr4S82KPdcv1gCMG7mIDJ6usCIxJ+9BefGr6Y+GLR8
         Bx1IEJqhT0xt1Vyeo3zSmcVbdV91o/WhqBBOonAAIkrOt+eSHfgayxFhS9YboDr77cRt
         rlhw==
X-Gm-Message-State: ACgBeo3zATsqz7VPpTG1jhBMCZNa9AfVlvYckwHqHdZs+sTCh8qylKRB
        pFJZY5pPMkdeMX8Oyxi/g1wlag==
X-Google-Smtp-Source: AA6agR5KCpOA+blmjARcnQjwXjqRJ/gneDTLOp95lR1XCSFiYiXGmuQoTx4L+tgdpdlypsIqzFfxuA==
X-Received: by 2002:a62:b519:0:b0:537:9723:5cf2 with SMTP id y25-20020a62b519000000b0053797235cf2mr4713129pfe.15.1662566590434;
        Wed, 07 Sep 2022 09:03:10 -0700 (PDT)
Received: from localhost.localdomain ([23.27.44.184])
        by smtp.gmail.com with ESMTPSA id x13-20020a17090a1f8d00b001f510175984sm14919719pja.41.2022.09.07.09.03.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 07 Sep 2022 09:03:10 -0700 (PDT)
From:   Jagan Teki <jagan@edgeble.ai>
To:     Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Kever Yang <kever.yang@rock-chips.com>
Cc:     linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        Jagan Teki <jagan@edgeble.ai>, Rob Herring <robh@kernel.org>
Subject: [PATCH v4 10/13] dt-bindings: vendor-prefixes: Add Edgeble AI Technologies Pvt. Ltd.
Date:   Wed,  7 Sep 2022 21:32:04 +0530
Message-Id: <20220907160207.3845791-11-jagan@edgeble.ai>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220907160207.3845791-1-jagan@edgeble.ai>
References: <20220907160207.3845791-1-jagan@edgeble.ai>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Edgeble AI is an Artificial Intelligence company with a focus
on deploying Neural Acceleration principles at the Edge.

Add vendor prefix for it.

Acked-by: Rob Herring <robh@kernel.org>
Signed-off-by: Jagan Teki <jagan@edgeble.ai>
---
Changes for v4:
- rebase on -next
Changes for v3:
- none
Changes for v2:
- collect Ron ack

 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index dfaff2487b04..f3c1bc0fd4bb 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -364,6 +364,8 @@ patternProperties:
     description: EBV Elektronik
   "^eckelmann,.*":
     description: Eckelmann AG
+  "^edgeble,.*":
+    description: Edgeble AI Technologies Pvt. Ltd.
   "^edimax,.*":
     description: EDIMAX Technology Co., Ltd
   "^edt,.*":
-- 
2.25.1

