Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A79E9729C38
	for <lists+devicetree@lfdr.de>; Fri,  9 Jun 2023 16:07:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240516AbjFIOHL (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 9 Jun 2023 10:07:11 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35870 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240306AbjFIOHB (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 9 Jun 2023 10:07:01 -0400
Received: from mail-ej1-x634.google.com (mail-ej1-x634.google.com [IPv6:2a00:1450:4864:20::634])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E16A930F6
        for <devicetree@vger.kernel.org>; Fri,  9 Jun 2023 07:06:59 -0700 (PDT)
Received: by mail-ej1-x634.google.com with SMTP id a640c23a62f3a-977d6aa3758so329904866b.0
        for <devicetree@vger.kernel.org>; Fri, 09 Jun 2023 07:06:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1686319618; x=1688911618;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=S+gTfGn7TaIBs9hEgWlQrwBiTp9lBdTvG7X0pROImyc=;
        b=PlQ1222JKcEFzMZMIGHcyZODR1iBaDG+sKGLnO/4dTSM5ErbfWHKSVxS6He4Th1ql1
         62w6cAHtkoStO3dtW1qv/U0wgcdgoc/lzBYR+XKskT4g+zoZcUxQp627ekr7BkRlP2fw
         DYxDfSDs3XyyjF0kObvQSyS9hhNJo9Bir7giXaKzSznZvHt+4TCfBDFjBMkWAOPUJI8C
         u/l5D3G2mCZdbWT6dMpT2glcmi1tbrL/R64KjIgzrUhCuzPDOGSaFgnCsxNwnBetO8ac
         DdtNxtIBVVJ2x6DmUu2QxqHwcmybiWrI7ivVDywdqV6BQsiE83U1reT2DWITSQQnxklX
         SLSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686319618; x=1688911618;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=S+gTfGn7TaIBs9hEgWlQrwBiTp9lBdTvG7X0pROImyc=;
        b=IRDIN6dRlp99PM7imJWW5C/VuclV0ILvSAB8qsCEbAh1d6Qmyu0HIAQxzUATrhGq7n
         BReqahF1f+aCNzRvkP3m0Yp9frwN604cMVxZiUAN11fVaD6It2//aj+wqW4HvsUWhWS5
         DFMpdn8nO5MIMC6mxwbnScqMjpM6YEvjWUCNyEOaXLws7Stgmv/WWQy3GRQMg1zvS9Ex
         X/6MG5P7dvM7ANxkbRA6SG6tRF+0NxxKRdf8Q1AtNm1d4OCCuVFPInc7mZ/CKWmyRSBX
         RRCGCdnxhfwiMQWH9EGqkrVv0N6n7zz9/UjeZx5/qopAbp9wJsyPL0YRNSDzr2uxXJCB
         0dSQ==
X-Gm-Message-State: AC+VfDzoaeBr0q6i5lyPVThVQhZ6l85YZHISsGMLwVlWbKzi3F2pHsiJ
        vFB/C8C2k64rN995b7j6VUo7KA==
X-Google-Smtp-Source: ACHHUZ4z7w0ie6vX0HXHFCYiRPPXpxdhkptjD+y8x2PS5/YtCpgN8rvfwcZmtEvsglS53aEMOR3RMg==
X-Received: by 2002:a17:906:99c4:b0:974:6216:8dd2 with SMTP id s4-20020a17090699c400b0097462168dd2mr2327448ejn.27.1686319618453;
        Fri, 09 Jun 2023 07:06:58 -0700 (PDT)
Received: from krzk-bin.. ([178.197.219.26])
        by smtp.gmail.com with ESMTPSA id o10-20020a170906860a00b00977cc10caefsm1336407ejx.104.2023.06.09.07.06.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 09 Jun 2023 07:06:58 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>,
        Hsin-Hsiung Wang <hsin-hsiung.wang@mediatek.com>,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH] dt-bindings: spmi: mtk,spmi-mtk-pmif: drop unneeded quotes
Date:   Fri,  9 Jun 2023 16:06:54 +0200
Message-Id: <20230609140655.64529-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Cleanup bindings dropping unneeded quotes. Once all these are fixed,
checking for this can be enabled in yamllint.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 Documentation/devicetree/bindings/spmi/mtk,spmi-mtk-pmif.yaml | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/spmi/mtk,spmi-mtk-pmif.yaml b/Documentation/devicetree/bindings/spmi/mtk,spmi-mtk-pmif.yaml
index e4f465abcfe9..ac99883a3f29 100644
--- a/Documentation/devicetree/bindings/spmi/mtk,spmi-mtk-pmif.yaml
+++ b/Documentation/devicetree/bindings/spmi/mtk,spmi-mtk-pmif.yaml
@@ -14,7 +14,7 @@ description: |+
   for multiple SoCs to control a single SPMI master.
 
 allOf:
-  - $ref: "spmi.yaml"
+  - $ref: spmi.yaml
 
 properties:
   compatible:
-- 
2.34.1

