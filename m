Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 04F8F67AB7C
	for <lists+devicetree@lfdr.de>; Wed, 25 Jan 2023 09:19:00 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234005AbjAYIS7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 25 Jan 2023 03:18:59 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55512 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234961AbjAYISs (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 25 Jan 2023 03:18:48 -0500
Received: from mail-wr1-x435.google.com (mail-wr1-x435.google.com [IPv6:2a00:1450:4864:20::435])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 432DE4609D
        for <devicetree@vger.kernel.org>; Wed, 25 Jan 2023 00:18:45 -0800 (PST)
Received: by mail-wr1-x435.google.com with SMTP id m7so2537671wru.8
        for <devicetree@vger.kernel.org>; Wed, 25 Jan 2023 00:18:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=l6VVFU09DGdJDicHdzWRUuahuR5if5nGv94bTkwuVxM=;
        b=P0VzQ57fyl0c8tLyOhp4Tras38f23cWMvWTATg+oiau6eTMWWEPGCA+Ip6qziFE/Ue
         dRa4xa80kyYbNHsk2Gzi9wNYU32cuxSRitUlLE47/ESbRtFmShSKXMi5PFMsfUh/7ZXB
         usprM3J9Aej8UCtAO0eMN60Rc+P9ON3mPgXmNtmWKmOsLDiYvbGfGqePmZgw8ypqe9rZ
         m7rQ1OxXNjBG1bLmw76elyl3LMb759AtoWlvwZ6THjSljdYHAPegqIRCOcrX3NpsRwvh
         GiBB8nv1iRCk37Matw+sKX2p2nepxNixvQ+1ussSC0/XZkuMcw3R2KJAUqI2bQmFStF+
         eonQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=l6VVFU09DGdJDicHdzWRUuahuR5if5nGv94bTkwuVxM=;
        b=JpomemUQhTnHh7Fo1koc5u6RObej0JX0MMkSpF+TtAMNADTEqR7e4cHHRlh+Uvwi2m
         bbrG5SSj0cc/juAFZy2yS3MoDvHsL8fBM3ZW9bKTr07Ld7xBbVCO88qQB6+1VDv42tDl
         n8EXAwN8HjCp1FCcPJzGDECGKClVMSyCJr3PjyMbNHVQ0fvzDDClytipmRh22t/ub353
         Jd9gIKSNIz/ZIWV6xIRel4BLlT+YHVWBIq/XSiPLxexGCv+Jy1dWBeGHVQ90t+gSkCpd
         y2MT+OsG9wi5/fODLzlB5ijZwzXEDQUfnYPCYon2f4UONDBQ6eY3i/OfRyXHNzpjqANZ
         NdQg==
X-Gm-Message-State: AFqh2krpUTgQwo2wfkxJDTkT4ezG7/czcw/PVEJ/2IWx7soYrstejDuO
        fQEY99n6Hv+TnFC9S/hVY5XsJ/ytoevFgd5nMZQ=
X-Google-Smtp-Source: AMrXdXuoe0lryGNmnQF8GyRl/+DOCT9Q6ttaCZBC8O3SpAo41mjOEQ2F0Bxc4YCb4VIuL6PdhXo1NQ==
X-Received: by 2002:a05:6000:1708:b0:2bd:daf1:9e4c with SMTP id n8-20020a056000170800b002bddaf19e4cmr29965267wrc.43.1674634723477;
        Wed, 25 Jan 2023 00:18:43 -0800 (PST)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id p7-20020adff207000000b002bdff778d87sm3770343wro.34.2023.01.25.00.18.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Jan 2023 00:18:43 -0800 (PST)
From:   Neil Armstrong <neil.armstrong@linaro.org>
Date:   Wed, 25 Jan 2023 09:18:37 +0100
Subject: [PATCH v2 1/3] dt-bindings: arm: amlogic: document Odroid-N2L
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20230122-topic-odroid-n2l-upstream-initial-v2-1-8d3fea6d403d@linaro.org>
References: <20230122-topic-odroid-n2l-upstream-initial-v2-0-8d3fea6d403d@linaro.org>
In-Reply-To: <20230122-topic-odroid-n2l-upstream-initial-v2-0-8d3fea6d403d@linaro.org>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Kevin Hilman <khilman@baylibre.com>,
        Jerome Brunet <jbrunet@baylibre.com>,
        Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Cc:     devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-amlogic@lists.infradead.org,
        Dongjin Kim <tobetter@gmail.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.12.0
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

ODROID-N2L is a variant SBC in small form factor and some peripherals
are removed from ODROID-N2PLUS based on S922X SoC.

- On-board ethernet is removed
- On-board RTC is removed
- USB 3.0 hub is removed, so one USB 2.0 and one USB 3.0 host ports
are available
- Huge heatsink is replaced with 40x40mm heatsink, 5V active heatsink
is recommended or a tall passive sink is optional
- 3.5mm earjack is removed
- IR remote receiver is removed
- MIPI DSI port is added

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 Documentation/devicetree/bindings/arm/amlogic.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/amlogic.yaml b/Documentation/devicetree/bindings/arm/amlogic.yaml
index e16b5fa55847..8aa6b6a92c29 100644
--- a/Documentation/devicetree/bindings/arm/amlogic.yaml
+++ b/Documentation/devicetree/bindings/arm/amlogic.yaml
@@ -165,6 +165,7 @@ properties:
               - azw,gtking-pro
               - hardkernel,odroid-go-ultra
               - hardkernel,odroid-n2
+              - hardkernel,odroid-n2l
               - hardkernel,odroid-n2-plus
               - khadas,vim3
               - ugoos,am6

-- 
2.34.1

