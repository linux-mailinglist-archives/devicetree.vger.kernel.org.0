Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3EC2A4DC537
	for <lists+devicetree@lfdr.de>; Thu, 17 Mar 2022 12:59:02 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233356AbiCQL70 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 17 Mar 2022 07:59:26 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34522 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233224AbiCQL7N (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 17 Mar 2022 07:59:13 -0400
Received: from smtp-relay-internal-0.canonical.com (smtp-relay-internal-0.canonical.com [185.125.188.122])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E11E013D5B
        for <devicetree@vger.kernel.org>; Thu, 17 Mar 2022 04:57:51 -0700 (PDT)
Received: from mail-lf1-f69.google.com (mail-lf1-f69.google.com [209.85.167.69])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 07E2440057
        for <devicetree@vger.kernel.org>; Thu, 17 Mar 2022 11:57:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1647518270;
        bh=rPrab2m6ZRJ1Nq2pMdTzGXWaaBF6CBXynVgpKRpBOdQ=;
        h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
         MIME-Version;
        b=MI9eiqxvu93Y/NwkocDLAAATirB8pud4DN5iD17KShUUvS992azuoP5zeraFmJe/P
         FaFQzf5e3/WiktYvek8oJFFPVxhha7hGy0QU8+1azRiR4megazdcMbecacUIMooVFN
         aiC1EVNyb4gx0tausn9pn4+S+0ZegU5PpKEPYPP9wwRP2iyAi5Mqugl2Cne421pE2s
         EYE1tZPdMxvXCO2n8jFl8FvOJnjU7Zq5x6C50e4/hnjUju5R0GHXjeUmnOF+E552mm
         Hoi7qxK0mLcmKp50jcaM24FJV143tUOnCPPBSV/P21zTHmoHAySOS0weE7RDmiFqkh
         EQ691MWAWF2Dg==
Received: by mail-lf1-f69.google.com with SMTP id l20-20020ac24314000000b00448816d7753so1734683lfh.18
        for <devicetree@vger.kernel.org>; Thu, 17 Mar 2022 04:57:49 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=rPrab2m6ZRJ1Nq2pMdTzGXWaaBF6CBXynVgpKRpBOdQ=;
        b=lLiT8Ea9qGjEpl+KPkS3p+NVbSXsSjVQcOa9lfrxVoceJQU6+TSQu5cAsKi1TVwg18
         n8p96Ww+4i3dfrr/36I60DabA/09w1vJnXeegAPHs9joPcXCYEEFN93tth1s1cmKpphv
         Mn0xWbDJ3h1nTar9aG4yG7cuA/DIhScvRgVk4qP7Oi5PcSsrKDJ4jBUg1Y7+VqaVW7s+
         RHy3kqHrkunEkLoXAxxYDZ688XlkGKMmcWlPeYr/D3nqPqc5CCU5T49idw8EVRWXgsr7
         aFJDPgkgEIcIzCVKcYCW36byDsPfKJkbSePRGXNknRGNorzmR9bcQOjTemEKBIg6nI2A
         tdZg==
X-Gm-Message-State: AOAM5302yrvpUxTLRtxSohTlbqIXmOLBVgukpLFgd7d7QlOO/LB3JEXh
        M92bcy8qls2HFNHlDOs0cpDoCx6HbT/RCV6/vJsBrVxogQzUy7MRKQkVoH27MD0akprFMimENMN
        LJ4Vs1HohlcQSC36IdYQufeq0bTgUqGt3CTNhuNA=
X-Received: by 2002:a5d:6d0c:0:b0:203:8aec:9676 with SMTP id e12-20020a5d6d0c000000b002038aec9676mr3866412wrq.601.1647518258326;
        Thu, 17 Mar 2022 04:57:38 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwCFbJKUv1ZFo1+EZDHVZjNF5kTsPX4saRLzzvod+Y5Qcc436Gbn7v60O8I+x1+ugbTJ8av2Q==
X-Received: by 2002:a5d:6d0c:0:b0:203:8aec:9676 with SMTP id e12-20020a5d6d0c000000b002038aec9676mr3866374wrq.601.1647518258073;
        Thu, 17 Mar 2022 04:57:38 -0700 (PDT)
Received: from krzk-bin.. (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id r65-20020a1c4444000000b0038c48dd23b9sm5824900wma.5.2022.03.17.04.57.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 17 Mar 2022 04:57:37 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     Thomas Gleixner <tglx@linutronix.de>,
        Marc Zyngier <maz@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Linus Walleij <linusw@kernel.org>,
        Imre Kaloz <kaloz@openwrt.org>,
        Krzysztof Halasa <khalasa@piap.pl>,
        Michael Walle <michael@walle.cc>,
        Mark-PK Tsai <mark-pk.tsai@mediatek.com>,
        Daniel Palmer <daniel@thingy.jp>,
        =?UTF-8?q?Jonathan=20Neusch=C3=A4fer?= <j.neuschaefer@gmx.net>,
        Palmer Dabbelt <palmer@dabbelt.com>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Nishanth Menon <nm@ti.com>, Tero Kristo <kristo@kernel.org>,
        Santosh Shilimkar <ssantosh@kernel.org>,
        Neil Armstrong <narmstrong@baylibre.com>,
        Dinh Nguyen <dinguyen@kernel.org>,
        Cristian Ciocaltea <cristian.ciocaltea@gmail.com>,
        Joakim Zhang <qiangqing.zhang@nxp.com>,
        Lucas Stach <l.stach@pengutronix.de>,
        Paul Cercueil <paul@crapouillou.net>,
        Jiaxun Yang <jiaxun.yang@flygoat.com>,
        Claudiu Beznea <claudiu.beznea@microchip.com>,
        Jason Cooper <jason@lakedaemon.net>,
        Paul Burton <paulburton@kernel.org>,
        Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
        Birger Koblitz <mail@birger-koblitz.de>,
        Bert Vermeulen <bert@biot.com>,
        John Crispin <john@phrozen.org>,
        Geert Uytterhoeven <geert+renesas@glider.be>,
        Sagar Kadam <sagar.kadam@sifive.com>,
        Suman Anna <s-anna@ti.com>, Lokesh Vutla <lokeshvutla@ti.com>,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-actions@lists.infradead.org, openbmc@lists.ozlabs.org,
        linux-riscv@lists.infradead.org, linux-oxnas@groups.io
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Subject: [PATCH 11/18] dt-bindings: irqchip: mrvl,intc: include generic schema
Date:   Thu, 17 Mar 2022 12:56:58 +0100
Message-Id: <20220317115705.450427-10-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220317115542.450032-1-krzysztof.kozlowski@canonical.com>
References: <20220317115542.450032-1-krzysztof.kozlowski@canonical.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-5.9 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Include generic interrupt-controller.yaml schema, which enforces node
naming and other generic properties.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
---
 .../devicetree/bindings/interrupt-controller/mrvl,intc.yaml    | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/interrupt-controller/mrvl,intc.yaml b/Documentation/devicetree/bindings/interrupt-controller/mrvl,intc.yaml
index 372ccbfae771..75d49c9e956f 100644
--- a/Documentation/devicetree/bindings/interrupt-controller/mrvl,intc.yaml
+++ b/Documentation/devicetree/bindings/interrupt-controller/mrvl,intc.yaml
@@ -13,6 +13,7 @@ maintainers:
   - Rob Herring <robh+dt@kernel.org>
 
 allOf:
+  - $ref: /schemas/interrupt-controller.yaml#
   - if:
       properties:
         compatible:
@@ -101,7 +102,7 @@ required:
   - reg
   - interrupt-controller
 
-additionalProperties: false
+unevaluatedProperties: false
 
 examples:
   - |
-- 
2.32.0

