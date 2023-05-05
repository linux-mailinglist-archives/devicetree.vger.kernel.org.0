Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 20EC16F829B
	for <lists+devicetree@lfdr.de>; Fri,  5 May 2023 14:08:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231256AbjEEMI2 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 5 May 2023 08:08:28 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60126 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232117AbjEEMI0 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 5 May 2023 08:08:26 -0400
Received: from mail-ej1-x636.google.com (mail-ej1-x636.google.com [IPv6:2a00:1450:4864:20::636])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5FF941AEF8
        for <devicetree@vger.kernel.org>; Fri,  5 May 2023 05:08:24 -0700 (PDT)
Received: by mail-ej1-x636.google.com with SMTP id a640c23a62f3a-956ff2399b1so311967566b.3
        for <devicetree@vger.kernel.org>; Fri, 05 May 2023 05:08:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1683288503; x=1685880503;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+ed6pQ8Jv0woMB8pCe9CrwPsuj3qE7mzNeUftZwY93Q=;
        b=zMEKt5DHn7D/+Kr5Kz4o3nV2XzCJppVOXeBQrixZksHA4cTed8yixbF999tT2h/bl0
         tDC9I2+GjdpsMvEz6jbtglydLJIs/9BGCpXACZz7NQFucNn3YQ1WgIU6sn/auPzZcANT
         MdwaB+FUyYKgqfx8q5pd/aFwwxMeILkIChZx7htq1a8362snsd/TyubKPsqkdc3bKR8+
         V8qi8C1DoOVtHrCHSCFdBk97Vv5+bVUeKqsJ5yR52YshV/++67CGJlqgwL6GUyJNrneW
         APPcj3Q+xROO5i6RCkn+35efIYJZVGRRNpKyYaPfUArjCz2MULLF/Ab5orvuIwlWq1C4
         +2bA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683288503; x=1685880503;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+ed6pQ8Jv0woMB8pCe9CrwPsuj3qE7mzNeUftZwY93Q=;
        b=Lu2pKFXqRA1d/UFJtQ0fAGlFc/gL7cO8ELKdAIwPK3YZt0yD5V4ubeo5gBTZgaQArO
         5NRDNmbnkotJx6RYkoZf9K/uzXMOItyo8G2QdHOty4Y/qZN9IDNqNVmlpOCAIXngFhbL
         Lzr3R5Ibmaq6xfBpJAlLmjaOvtBIlQYBMvHj7o4BbMJC5mfUGVRbyMT55aus/zAIZVly
         lRQFwcTh3JCI5gvBE1jwcESFx9pnUkjz8Rp8CrFpgcA2ypYty04eHbbmohrUD7OhY73K
         OEPThiOe/rsJSlGTLKPuU/pFsiyMq7Jah1viFt5A23sNOpGbCkBmkOiNwuJ8p5Ujz7s8
         dEGQ==
X-Gm-Message-State: AC+VfDy4cToipWdD1tPOsmWMZNqeA6U/hC89DPBQxv7SMZM7fEUy29Yz
        L1ZEX4vfjh7PFtlMYNOXRtTQcA==
X-Google-Smtp-Source: ACHHUZ77NuLjQuDE8k4p+a4rjhRWrxqlpzjTntCrTGyBJcS5ySmwPQ4Qx7zF8dawe3ZKrzcLXmLyaQ==
X-Received: by 2002:a17:907:26c6:b0:91f:b13f:a028 with SMTP id bp6-20020a17090726c600b0091fb13fa028mr844439ejc.34.1683288502827;
        Fri, 05 May 2023 05:08:22 -0700 (PDT)
Received: from krzk-bin.. ([2a02:810d:15c0:828:52e:24ce:bbc1:127d])
        by smtp.gmail.com with ESMTPSA id ze16-20020a170906ef9000b00965ec1faf27sm457551ejb.74.2023.05.05.05.08.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 05 May 2023 05:08:22 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Kunihiko Hayashi <hayashi.kunihiko@socionext.com>,
        Masami Hiramatsu <mhiramat@kernel.org>,
        Vincent Shih <vincent.sunplus@gmail.com>,
        Anson Huang <Anson.Huang@nxp.com>,
        Kumar Thella <sthella@codeaurora.org>,
        Keiji Hayashibara <hayashibara.keiji@socionext.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 4/5] dt-bindings: nvmem: socionext,uniphier-efuse: drop unneeded address/size-cells
Date:   Fri,  5 May 2023 14:08:13 +0200
Message-Id: <20230505120814.1057152-4-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230505120814.1057152-1-krzysztof.kozlowski@linaro.org>
References: <20230505120814.1057152-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Referenced nvmem.yaml schema already defines address/size-cells, so
remove redundant entries.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 .../devicetree/bindings/nvmem/socionext,uniphier-efuse.yaml    | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/Documentation/devicetree/bindings/nvmem/socionext,uniphier-efuse.yaml b/Documentation/devicetree/bindings/nvmem/socionext,uniphier-efuse.yaml
index b8bca0599c45..efccc5aacbe0 100644
--- a/Documentation/devicetree/bindings/nvmem/socionext,uniphier-efuse.yaml
+++ b/Documentation/devicetree/bindings/nvmem/socionext,uniphier-efuse.yaml
@@ -14,9 +14,6 @@ allOf:
   - $ref: nvmem.yaml#
 
 properties:
-  "#address-cells": true
-  "#size-cells": true
-
   compatible:
     const: socionext,uniphier-efuse
 
-- 
2.34.1

