Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AB984703202
	for <lists+devicetree@lfdr.de>; Mon, 15 May 2023 17:58:03 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238267AbjEOP56 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 15 May 2023 11:57:58 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58548 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S242462AbjEOP5y (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 15 May 2023 11:57:54 -0400
Received: from mail-ed1-x530.google.com (mail-ed1-x530.google.com [IPv6:2a00:1450:4864:20::530])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CA5AB26B8
        for <devicetree@vger.kernel.org>; Mon, 15 May 2023 08:57:51 -0700 (PDT)
Received: by mail-ed1-x530.google.com with SMTP id 4fb4d7f45d1cf-50b8d2eed3dso19604786a12.0
        for <devicetree@vger.kernel.org>; Mon, 15 May 2023 08:57:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1684166270; x=1686758270;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=N44qBs+/LT+cRlOP5z8nHjZf1DtaB9wj003fafSrmqs=;
        b=EpTkWaQ1fCz5WVnLJRhuCVM58P3m2LJ9vsvcYlBxjHIoXkQDTbMD0+kPBFJcQmvOoL
         O6WRsD6awQcp2u05901XRiRVTxd7oGtlaAPCRYP5Zj2RKd9wm+m9WLuFpO3VFtJ/8xgw
         L5lWMK5UD6n7r4k9t/CkllKxqoyhdiCVgMTPiYnKCkx6nv3zWE+FAA0yRA7aQUQhyy5W
         edXilxKMV8Flh/y+sik6OXxI8bic9gshFnxYgT/tSJSvan7xJXMHDgBDdhDfnIVKZ0d3
         C7syKvkQEtfo5pbZXkLYKw1Rp/VPKxzLvpfN5wu9P1q4uYElM6uQW5WN6dILOvtp3SJa
         1pew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684166270; x=1686758270;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=N44qBs+/LT+cRlOP5z8nHjZf1DtaB9wj003fafSrmqs=;
        b=CZFdm59V8GhNKE9R4b3vFRB/MI9gRpHWlR/gHDeGX8Gvo4SBrMpz9MAmZ1WXi6rUSC
         MJcNGQbpIEt0EjYs/RDYTqL2Icl62R5YVmeM67r2StQxUR9Bd2o2Nfs+zcfwowngW8Fu
         79U4B0Qjwh3AZjzwNk5DLAVoM+LFblZB7GKHlZkWmqXknzcEXp8o8nmCwfks09617GPO
         WpQ9hoKZKvKQYySWP+fk4gUE0oZNTigs2OeUA2ione5wcaf5H1PQN4+uXmQgHkE3fWJd
         v1s1Qwmt9O6gQ4AeW3DG56R3SpWhvVvQlFt1YE0KgtFTpRuK3Y03TvHSZ1AHZBLCvszU
         ivFg==
X-Gm-Message-State: AC+VfDxVAR8wa2xhJygpHHjax04dKDfuOAn26R8Aa1iNhmDvec4NaEEy
        T+2On5VVZade4FrHhfiUuwYD4w==
X-Google-Smtp-Source: ACHHUZ7NT0Y5GoL/YpdcQtWvtqFV+rnrFZAUKYumGeb7FEoYpZ3FAe+d8ZwLsbJmsLDK47ObaroKbw==
X-Received: by 2002:a05:6402:160e:b0:50b:ca4a:8451 with SMTP id f14-20020a056402160e00b0050bca4a8451mr26810793edv.14.1684166270112;
        Mon, 15 May 2023 08:57:50 -0700 (PDT)
Received: from krzk-bin.. ([2a02:810d:15c0:828:6470:25b8:7c2d:1992])
        by smtp.gmail.com with ESMTPSA id r16-20020aa7cfd0000000b0050bd245d39esm7506574edy.6.2023.05.15.08.57.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 May 2023 08:57:49 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Andreas Kemnade <andreas@kemnade.info>
Subject: [PATCH] dt-bindings: vendor-prefixes: document TeeJet
Date:   Mon, 15 May 2023 17:57:47 +0200
Message-Id: <20230515155747.499371-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Document TeeJet vendor prefix (used in am3517_mt_ventoux.dts board).

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

---

Cc: Andreas Kemnade <andreas@kemnade.info>
---
 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index c3d426509e7e..5258090e2e02 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -1341,6 +1341,8 @@ patternProperties:
     description: Technologic Systems
   "^techstar,.*":
     description: Shenzhen Techstar Electronics Co., Ltd.
+  "^teejet,.*":
+    description: TeeJet
   "^teltonika,.*":
     description: Teltonika Networks
   "^tempo,.*":
-- 
2.34.1

