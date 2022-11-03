Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7E781617EF9
	for <lists+devicetree@lfdr.de>; Thu,  3 Nov 2022 15:12:38 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230157AbiKCOMf (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 3 Nov 2022 10:12:35 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34678 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231136AbiKCOMd (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 3 Nov 2022 10:12:33 -0400
Received: from mail-pl1-x630.google.com (mail-pl1-x630.google.com [IPv6:2607:f8b0:4864:20::630])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2EB08E08B
        for <devicetree@vger.kernel.org>; Thu,  3 Nov 2022 07:12:31 -0700 (PDT)
Received: by mail-pl1-x630.google.com with SMTP id y4so2060543plb.2
        for <devicetree@vger.kernel.org>; Thu, 03 Nov 2022 07:12:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=vdt04ihQSLPyg0J7dIXv8UYh4qRz2CxhQoeRgaiLIUk=;
        b=cw6vZZUFI+ScskUU+vZyP8M611AeQADU9y6aEprHt72Os5RKpZlnMgILQ+UwB/8X2u
         SqYdRKtWQ0wPE/MpPd+fQAcJEsIQow4bhfqjuSfhEO5qthV92boPjSB3N+N9LGY2m50K
         IC8/ExkzrxyO/g4I2CqN1OWQlUb+MUUjpDl3ngdNTDOIcNkpC7tIe4/ovjhpQF37Osad
         FJrIC8s/LRFv3WKJ/SU25fmg6ozKUe+3+Xzx8rTTRcuy+Ux8aSHP9NsP8RJ65w7i0qOi
         ZFsf44uNifjXYtirpxJfscg8gV7lHAXSfPaV3/PuOY31SImHpfa91MJlZ209X1wa+yHe
         A/9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=vdt04ihQSLPyg0J7dIXv8UYh4qRz2CxhQoeRgaiLIUk=;
        b=7ylKw6WCaRxoSzk0ck+0qSKq+XDAhs7gNcSpk5FcDzRJ17K3Y5gGaTlHOrnMm4bcUx
         WzL8/3Za5a2VwG48zVqkOlx99b/RPm0jwxMYtqkFdvnk3YoO2SDq9lCccf6evVAdErHh
         vzlvNdTZzXArL6hEmdToGkC5DK5GhzOmbs2/HuWknCSrERV2Lx8BQKCb9zguihhvdDyy
         qPWmg1jrsCpjx/CYw4zUeExpYS8lnKLvW7vSfvFbByl/XiFGUweK/Ubl9ZRA+F9PmNXD
         wLB3sFQcwL4XQQ0z/2iaAXyq+KdX8NB3OpBIPnK9kjepBvUxEsDOIESJhpi8Z50XHaXL
         2dkw==
X-Gm-Message-State: ACrzQf2vzO2VoETqNevLXced90mfREbspJoFdzP9qND0hEv80CJrorwh
        BBHHWJ2UWokp/LH2fu5pEO4mvA==
X-Google-Smtp-Source: AMsMyM4OpZ9SkKqi5u2R7ycpcXbnc8n0+0z2kjfl4qDFC34Q5dQ/8QwUL4Nzklstv82O61KkMVsYHQ==
X-Received: by 2002:a17:902:784b:b0:187:2296:2a35 with SMTP id e11-20020a170902784b00b0018722962a35mr21029732pln.103.1667484750705;
        Thu, 03 Nov 2022 07:12:30 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c00a:a809:3a79:b5a5:9718:3f91])
        by smtp.gmail.com with ESMTPSA id g4-20020a170902934400b001780a528540sm725808plp.93.2022.11.03.07.12.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 03 Nov 2022 07:12:30 -0700 (PDT)
From:   Jagan Teki <jagan@edgeble.ai>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Thierry Reding <thierry.reding@gmail.com>,
        Sam Ravnborg <sam@ravnborg.org>,
        Linus Walleij <linus.walleij@linaro.org>
Cc:     devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
        Jagan Teki <jagan@edgeble.ai>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v3 2/4] dt-bindings: vendor-prefixes: Document Jadard
Date:   Thu,  3 Nov 2022 19:41:53 +0530
Message-Id: <20221103141155.1105961-2-jagan@edgeble.ai>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221103141155.1105961-1-jagan@edgeble.ai>
References: <20221103141155.1105961-1-jagan@edgeble.ai>
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

Jadard Technology Inc. manufactures and distributes chips
from Shenzhen.

Add vendor prefix for it.

Signed-off-by: Jagan Teki <jagan@edgeble.ai>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
Changes for v3, v2:
- none

 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index 08264594a99f..c601f5438b02 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -645,6 +645,8 @@ patternProperties:
     description: ITian Corporation
   "^iwave,.*":
     description: iWave Systems Technologies Pvt. Ltd.
+  "^jadard,.*":
+    description: Jadard Technology Inc.
   "^jdi,.*":
     description: Japan Display Inc.
   "^jedec,.*":
-- 
2.25.1

