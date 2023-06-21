Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 545FF7389D9
	for <lists+devicetree@lfdr.de>; Wed, 21 Jun 2023 17:40:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233761AbjFUPkn (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 21 Jun 2023 11:40:43 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43262 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233567AbjFUPk2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 21 Jun 2023 11:40:28 -0400
Received: from mail-lf1-x130.google.com (mail-lf1-x130.google.com [IPv6:2a00:1450:4864:20::130])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 146412105
        for <devicetree@vger.kernel.org>; Wed, 21 Jun 2023 08:40:03 -0700 (PDT)
Received: by mail-lf1-x130.google.com with SMTP id 2adb3069b0e04-4f954d7309fso2274450e87.1
        for <devicetree@vger.kernel.org>; Wed, 21 Jun 2023 08:40:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1687361955; x=1689953955;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=BghQG/dm7/BMhBzVnoR8Ldw/7EWxlY1Xs4R63bOlCig=;
        b=Qr5r/G6sUrShsL1kKCwZWhXdsO1CA7qrG/oVm5PalRAnDMv/eKBShslHhHHm+lQxBA
         VW5cqs+Q0lxCp9IezWmr9A9x32gq64yT9CraSwAtZ6y8Kf0FU9Ab85oRn5kgEwATHn4h
         0bXhC6iC0bxGvfN+rE9/sGWz0Gyx+XmON52t17ZIKV+NHi/EkCGJYAotkwzTSFXnZb4O
         EninryVQ+GU4FWxQSq5swJLmQGtNXoz6T+0nC04TzkzEKrjx2xcprzWPkrFImN+xkHmi
         0rnM9XbnHIF8JuP0uVkwcNxUVHmJJUMSfWyv60XEAZQ1laRcci0u1Sjyhwa59GwzkVEd
         j/ew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687361955; x=1689953955;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=BghQG/dm7/BMhBzVnoR8Ldw/7EWxlY1Xs4R63bOlCig=;
        b=PEyh64wvQUjI1rWQqCs0WMIZj2Ji+BMvsRSSY9RRRN5kMm7oYPhO6P5wAG9ypu/E0Z
         d3T4hr2A6UDbw027VEya60Xx7uTa0BgQ+Nbd9SaJg8m4EOZcwANYDUAyR3gO3ipnKqsu
         DTFH2yli5tG5kxg+YPOAVwy2erFwk6qdb2UuskRJHWlGy+drErmnLnET18i+loLA2/7U
         Fzbh/9f/SxttOsa8U1+qLd94Ob+x/FP1q13CpF2hUwJjAo2hHh+eQfWBAJTjix7yV+gP
         KcJsXCDEeVMi/vk60HUmqSZKEs/vMzb3sQbsKeFRrw0dkqNr8TK7FKn+tduzCMM4izzL
         BMNQ==
X-Gm-Message-State: AC+VfDx4d0d6Nz3kw0BXLBOaMl0LEXP34pXELoBzZGb6OODVACVyY8dS
        hBfusqvA12ZcMUuJ9OWZhZxQ9w==
X-Google-Smtp-Source: ACHHUZ7/PmkT+EWUVQKl8CZF7zrx/14OmR4HcShNYlxrqfaYfuZUS3Z79EYjFnFPNP5icbTpClrNhQ==
X-Received: by 2002:a19:650c:0:b0:4f8:6ac4:1aa9 with SMTP id z12-20020a19650c000000b004f86ac41aa9mr3829046lfb.21.1687361955307;
        Wed, 21 Jun 2023 08:39:15 -0700 (PDT)
Received: from [192.168.1.101] (abxj193.neoplus.adsl.tpnet.pl. [83.9.3.193])
        by smtp.gmail.com with ESMTPSA id l15-20020a19c20f000000b004f73eac0308sm821078lfc.183.2023.06.21.08.39.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 21 Jun 2023 08:39:15 -0700 (PDT)
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
Date:   Wed, 21 Jun 2023 17:39:10 +0200
Subject: [PATCH 1/3] dt-bindings: vendor-prefixes: Add Mitsumi Electric
 Co., Ltd.
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20230621-topic-mm8013-v1-1-4407c6260053@linaro.org>
References: <20230621-topic-mm8013-v1-0-4407c6260053@linaro.org>
In-Reply-To: <20230621-topic-mm8013-v1-0-4407c6260053@linaro.org>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Sebastian Reichel <sre@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc:     Marijn Suijten <marijn.suijten@somainline.org>,
        Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@linaro.org>
X-Mailer: b4 0.12.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1687361953; l=1059;
 i=konrad.dybcio@linaro.org; s=20230215; h=from:subject:message-id;
 bh=1SFTi5kMC47UI2etI3CVctdHR0kSEqrXW6o1drxOzw8=;
 b=nffvquqf7dMVT3ELuTqaPfrF7sjNKg1738r4zR2ESSEDTPuDgCr9CxsDwvf2YDgGp4+lr0zO5
 QdM/n6pUKqPCzboEfBVbjasfCPRtJlgiYX8H2D4fBaom0cwCAklb+5p
X-Developer-Key: i=konrad.dybcio@linaro.org; a=ed25519;
 pk=iclgkYvtl2w05SSXO5EjjSYlhFKsJ+5OSZBjOkQuEms=
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Mitsumi was [1] a Japanese company making various electronics devices
and components. They've merged into a new entity, MinebeaMitsumi in 2017.

Their current main page is available at [2]

[1] https://en.wikipedia.org/wiki/Mitsumi_Electric
[2] https://product.minebeamitsumi.com/en/
Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
---
 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index af60bf1a6664..6142c40cf06e 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -865,6 +865,8 @@ patternProperties:
     description: MiraMEMS Sensing Technology Co., Ltd.
   "^mitsubishi,.*":
     description: Mitsubishi Electric Corporation
+  "^mitsumi,.*":
+    description: Mitsumi Electric Co., Ltd.
   "^mixel,.*":
     description: Mixel, Inc.
   "^miyoo,.*":

-- 
2.41.0

