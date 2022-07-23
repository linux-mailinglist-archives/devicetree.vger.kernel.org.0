Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D89EF57F176
	for <lists+devicetree@lfdr.de>; Sat, 23 Jul 2022 22:45:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238549AbiGWUpL (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 23 Jul 2022 16:45:11 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47496 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238612AbiGWUpJ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 23 Jul 2022 16:45:09 -0400
Received: from mail-pj1-x1033.google.com (mail-pj1-x1033.google.com [IPv6:2607:f8b0:4864:20::1033])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 30F52FE8
        for <devicetree@vger.kernel.org>; Sat, 23 Jul 2022 13:45:08 -0700 (PDT)
Received: by mail-pj1-x1033.google.com with SMTP id q41-20020a17090a1b2c00b001f2043c727aso6938801pjq.1
        for <devicetree@vger.kernel.org>; Sat, 23 Jul 2022 13:45:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20210112.gappssmtp.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=CDlZ43oVhMYzaJDMMEIQR/19nBX7GQkCpkJpfhIXaE4=;
        b=H5izq+9RNqowV2xQCwZ1phKisiPMaiZGQhQux0gqZdhw12XqLt7sYj81uKCO/orbAU
         WljPrx5D6PKiDiyS55gw2BJu1KvnGE/j3rbcLGQ/h3EwdRug6qC412Qngok8ZpO/i34X
         jUZvKZQT5P6gwirZictIKupqhGEvjBLQP06lMKlttIu8tSuKGNeHTfiTprALQvXCnEB/
         IqhiXRm7ipDUjTEVtLRdgea6BXpnRN2y8xeN3yQeJsfReJgLs4yONG5hF7YuUcrtMn9A
         AQCmLy16sFZdu3tc8kcDBRhn+9/RXD886Mm6Rxp3DtGQL3l6AN9j+P9Q10aqKQvgcJOa
         qqRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=CDlZ43oVhMYzaJDMMEIQR/19nBX7GQkCpkJpfhIXaE4=;
        b=vIy+XrtDpObtau5WQvGDB9cwC/gJfXJpghxSJmou9WyYHHYLHuPu6KWFL19kZC/wTb
         87Cs1bMdGJ1Ultt7KTNH2C8+uHktp9nfohYOv/8AMfJo9D6d6sWhfej0VPv/wcwsI4O4
         nBbbj8mroulLg9PJ/dcsim58O6ksWehj6NpSHVxInqukVUKat0cr9GkGwaHtHvBFJI2n
         EFS7HEpM/W+OVZdgLOtyKqy/vPbZBpRwSEbTFsoF9xk6C1eJyESVvXItXUVejbRIDAQY
         SfUUj77GVeES9nj5lwhZN3QLeUJiO/SCLmN7cuLaM3edcr1Zrk/HeOogonwO8mRXJrFA
         zXiA==
X-Gm-Message-State: AJIora8AXNycDg4fHdirDOZgak7GjTz/ToHpAN1ZzJYUvTRfoiedRZgs
        6y94Chso1gwoZy7cPQm4OL9+jg==
X-Google-Smtp-Source: AGRyM1uKWl2D5HfdXUQ3QXMbTNGZZwYYJeIdpLvK8pfNQkcRpnYmb7mKs1rdeDZE7l5dKAnANb41eQ==
X-Received: by 2002:a17:902:ecc7:b0:16d:66eb:bb88 with SMTP id a7-20020a170902ecc700b0016d66ebbb88mr1477383plh.170.1658609107695;
        Sat, 23 Jul 2022 13:45:07 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c00a:a073:a406:cc30:f4ec:f10a])
        by smtp.gmail.com with ESMTPSA id u14-20020a170902e80e00b0016a6caacaefsm6187950plg.103.2022.07.23.13.45.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 23 Jul 2022 13:45:07 -0700 (PDT)
From:   Jagan Teki <jagan@edgeble.ai>
To:     Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Kever Yang <kever.yang@rock-chips.com>
Cc:     linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        Jagan Teki <jagan@edgeble.ai>
Subject: [PATCH 15/22] dt-bindings: soc: rockchip: Document RV1126 pmugrf
Date:   Sun, 24 Jul 2022 02:13:28 +0530
Message-Id: <20220723204335.750095-16-jagan@edgeble.ai>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220723204335.750095-1-jagan@edgeble.ai>
References: <20220723204335.750095-1-jagan@edgeble.ai>
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

Document compatible string for Rockchip RV1126 pmugrf.

Signed-off-by: Jagan Teki <jagan@edgeble.ai>
---
 Documentation/devicetree/bindings/soc/rockchip/grf.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/soc/rockchip/grf.yaml b/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
index dd7090d668f5..521fbcb8eeb9 100644
--- a/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
+++ b/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
@@ -46,6 +46,7 @@ properties:
               - rockchip,rv1108-grf
               - rockchip,rv1108-pmugrf
               - rockchip,rv1126-grf
+              - rockchip,rv1126-pmugrf
           - const: syscon
           - const: simple-mfd
 
-- 
2.25.1

