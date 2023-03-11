Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C20476B5FB5
	for <lists+devicetree@lfdr.de>; Sat, 11 Mar 2023 19:22:31 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229685AbjCKSWa (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 11 Mar 2023 13:22:30 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36286 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229469AbjCKSW2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 11 Mar 2023 13:22:28 -0500
Received: from mail-lf1-x12a.google.com (mail-lf1-x12a.google.com [IPv6:2a00:1450:4864:20::12a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EFDF865074
        for <devicetree@vger.kernel.org>; Sat, 11 Mar 2023 10:21:47 -0800 (PST)
Received: by mail-lf1-x12a.google.com with SMTP id g17so10769082lfv.4
        for <devicetree@vger.kernel.org>; Sat, 11 Mar 2023 10:21:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1678558902;
        h=cc:to:subject:date:from:in-reply-to:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=zgZZFa9GT3KgzmxYSLg5VRVJ2/WUIFA9QnWnNW5nD4w=;
        b=kyqveNdGbfNc+q6Z8X49l9PPLH0lGW9cMMXkEKRV2eCt0zErr4Ww04Yi6d8cW4Z9rT
         IEg8G6L27BfrZUOxbPWhvWw5wSulnFe4ZhnDbhcA6Bxhjb53h0LuAG1AtDEqFxpZcIeD
         q7Vr+1FdxsdFkOeX+zUNiuuH7R01Ydk4HVRrFbOjH+ftyYGkrT2wPULRPivLwF5bXXWL
         P6XcNofAiAQriTHaTZPO1yyIJ1EhMr65+mISY3U8OFIsd9SwXcsL5tjvTTRHk4qX9Kp3
         Am5/50d0LjVIlrse7E4+KCAExzajQwvgVHYdVrLnhemkddqnewpY/93NEe+Zm2GL8XgU
         2/Ew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678558902;
        h=cc:to:subject:date:from:in-reply-to:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=zgZZFa9GT3KgzmxYSLg5VRVJ2/WUIFA9QnWnNW5nD4w=;
        b=pIcRAt6w8rL0ByN0tqCFM0kAp+pe1mivsivUVMs9kQ2duQ1mgR6mU18fVjgdy/FYPG
         2aJDZHAjHKe9qHFsTXW/TjgB73AQaSXXN3FOvCMcNp0ir74l7TdgP5HeHNQ31G1n52pF
         qny8Bp5v3iadOCEC/NGSO95UuWfG5X2z65+uCvZtYBmJGYA4D8hKe3vEG+bGHFsUkOqx
         sduAWx/g9JlV3eDIyn0a9/i4G+H+IjB1EpzEfm+rGUidNx5IxwfmI7fGdnwdMi43giQz
         TLbmZjXOq8ZDr1cr4uGWbPTZ949CdsA/e1x+16E2uH7W1yNTTSONQlmO3+VjnqMN5VwX
         oXpQ==
X-Gm-Message-State: AO0yUKX+ZVeuQKpwhcjZGeBcSXuzICNPifXJ9CCaObOi90cVrfH2mBku
        7gxI+uVCKTgq28vzZHx6EF4X+QkBWgBhahuqIAI=
X-Google-Smtp-Source: AK7set9QNjtD4h+Enj4NgClELJO1ugchsv95V1cYjELfS5FkFIi15qXcncxxF0F0xJlo5qcdZJUwxg==
X-Received: by 2002:ac2:508b:0:b0:4dc:4afe:1622 with SMTP id f11-20020ac2508b000000b004dc4afe1622mr8867736lfm.42.1678558901771;
        Sat, 11 Mar 2023 10:21:41 -0800 (PST)
Received: from 0001-dt-bindings-synopsys-dw-mshc-common-add-fifo-access-.patch (46-138-144-249.dynamic.spd-mgts.ru. [46.138.144.249])
        by smtp.gmail.com with ESMTPSA id p19-20020ac246d3000000b004d8729d4150sm380885lfo.145.2023.03.11.10.21.41
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 11 Mar 2023 10:21:41 -0800 (PST)
Message-Id: <1678558770.495747-1-sleirsgoevy@gmail.com>
In-Reply-To: <1678558770.495747-0-sleirsgoevy@gmail.com>
From:   Sergey Lisov <sleirsgoevy@gmail.com>
Date:   Sat, 11 Mar 2023 21:15:37 +0300
Subject: [PATCH v2 1/2] dt-bindings: synopsys-dw-mshc-common: add
 "fifo-access-32bit" property
To:     Ulf Hansson <ulf.hansson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Jaehoon Chung <jh80.chung@samsung.com>
Cc:     linux-mmc@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Some Samsung Exynos boards using the arm64 architecture have DW MMC
controllers configured for a 32-bit data bus but a 64-bit FIFO. On these
systems the 64-bit FIFO registers must be accessed in two 32-bit halves.
---
 .../devicetree/bindings/mmc/synopsys-dw-mshc-common.yaml   | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/Documentation/devicetree/bindings/mmc/synopsys-dw-mshc-common.yaml b/Documentation/devicetree/bindings/mmc/synopsys-dw-mshc-common.yaml
index 8dfad89c7..d025b38ca 100644
--- a/Documentation/devicetree/bindings/mmc/synopsys-dw-mshc-common.yaml
+++ b/Documentation/devicetree/bindings/mmc/synopsys-dw-mshc-common.yaml
@@ -57,6 +57,13 @@ properties:
       force fifo watermark setting accordingly.
     $ref: /schemas/types.yaml#/definitions/flag
 
+  fifo-access-32bit:
+    description:
+      Specifies that this device requires accesses to its 64-bit registers
+      to be done as pairs of 32-bit accesses, even on architectures where
+      readq is available.
+    $ref: /schemas/types.yaml#/definitions/flag
+
   dmas:
     maxItems: 1
 
-- 
2.38.3


