Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A8DE44DC529
	for <lists+devicetree@lfdr.de>; Thu, 17 Mar 2022 12:58:57 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233210AbiCQL6v (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 17 Mar 2022 07:58:51 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33998 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233193AbiCQL6t (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 17 Mar 2022 07:58:49 -0400
Received: from smtp-relay-internal-1.canonical.com (smtp-relay-internal-1.canonical.com [185.125.188.123])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 65C8C1E6950
        for <devicetree@vger.kernel.org>; Thu, 17 Mar 2022 04:57:33 -0700 (PDT)
Received: from mail-ed1-f72.google.com (mail-ed1-f72.google.com [209.85.208.72])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 74D4F3F79C
        for <devicetree@vger.kernel.org>; Thu, 17 Mar 2022 11:57:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1647518251;
        bh=aSGezm1yIxV4XCs71xtI5EKoFHjXL820ywE13DRNOT4=;
        h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
         MIME-Version;
        b=peWqTmU7YzULBaq+6L2LXecpjE1Jd3/wf9qX76CkYeq0TZMfN0tmvle3SiEJuDc98
         llSpj5pgcS7j01kXQQ6RQF7QJifvOvSTdNT3zyI+lk3fYUlqB1v4Wc7z/kNNW7uec5
         7vAsDN7lXeJiBpWm6iCzxqp1ebBIP8K+08gXQPkueEnYFIUDaV2S1Up55wHMmpffP8
         Qh7tGnbFH+UO5fyG1WvrAZ4AxRun3Skf/UlxNBFQm728Sdsqi2rxtn/k6/SE82jhFT
         PNAglv7J6B9Fjs3tgWOeC/i54J3c/pWXoUCbtfuAPxfR7v0KjjKwaHsSYH35/MsO2y
         QaNMJsvs0jsiQ==
Received: by mail-ed1-f72.google.com with SMTP id b9-20020aa7d489000000b0041669cd2cbfso2975819edr.16
        for <devicetree@vger.kernel.org>; Thu, 17 Mar 2022 04:57:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=aSGezm1yIxV4XCs71xtI5EKoFHjXL820ywE13DRNOT4=;
        b=dkpbwQ8kRPRuML7WDlfk3P66qe4F5eaewgsvtLoNs7StE+0gHHX/QXiGoZRRWfRUxJ
         nnPgGhl7R7dREws6h4WfSmXB2BncuMJFpuRuDv5mUh3vMPxhwhzswF2wtVp/ESBIZnz/
         fMZxo41MUSiSL5ZT1jiIOCyYoVP/7dtL+J+fbhw9HUhu1UGGg/tC1AGXwIYBHVi7kQAP
         4bSXr31IayL4c/9eIaZwAp5tsjybP4mVLuLAuuzh7tUAsF1GbffyIPW9MUN0+uJsKPOR
         lAl42qZhvM5rKc2iRuKJR6sSI55KOP5K9sdqPBoIH537ChjdqACkFyvzzm7AhbEzy0FD
         5QEg==
X-Gm-Message-State: AOAM530soUDayhUICkjUzjo0f4QKP+5W7agRf/pFh1W0WgoSdWuc9k0Z
        Uau8gOpAgkLniGLOL9BywjY0X9AzRWdHvgIp7RCBWipskMxKZ/djpR3rD5ETQPYCdCXQucK7esC
        AVN4t2fV4KjptpMgK2TLq3ifPaShWYnzn/yeu4cQ=
X-Received: by 2002:adf:a302:0:b0:1ed:bf30:40e3 with SMTP id c2-20020adfa302000000b001edbf3040e3mr3777954wrb.270.1647518238536;
        Thu, 17 Mar 2022 04:57:18 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJz2T8BZ9r1cayLerGnUvxU9+ZIYyhi9vmiexAY/nI3LK3OqgvQvruoxbLO/RKMhjARnY2yv2A==
X-Received: by 2002:adf:a302:0:b0:1ed:bf30:40e3 with SMTP id c2-20020adfa302000000b001edbf3040e3mr3777906wrb.270.1647518238317;
        Thu, 17 Mar 2022 04:57:18 -0700 (PDT)
Received: from krzk-bin.. (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id r65-20020a1c4444000000b0038c48dd23b9sm5824900wma.5.2022.03.17.04.57.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 17 Mar 2022 04:57:17 -0700 (PDT)
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
Subject: [PATCH 04/18] dt-bindings: irqchip: actions,owl-sirq: include generic schema
Date:   Thu, 17 Mar 2022 12:56:51 +0100
Message-Id: <20220317115705.450427-3-krzysztof.kozlowski@canonical.com>
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
 .../bindings/interrupt-controller/actions,owl-sirq.yaml      | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/interrupt-controller/actions,owl-sirq.yaml b/Documentation/devicetree/bindings/interrupt-controller/actions,owl-sirq.yaml
index 5da333c644c9..c058810cf475 100644
--- a/Documentation/devicetree/bindings/interrupt-controller/actions,owl-sirq.yaml
+++ b/Documentation/devicetree/bindings/interrupt-controller/actions,owl-sirq.yaml
@@ -14,6 +14,9 @@ description: |
   This interrupt controller is found in the Actions Semi Owl SoCs (S500, S700
   and S900) and provides support for handling up to 3 external interrupt lines.
 
+allOf:
+  - $ref: /schemas/interrupt-controller.yaml#
+
 properties:
   compatible:
     enum:
@@ -46,7 +49,7 @@ required:
   - '#interrupt-cells'
   - 'interrupts'
 
-additionalProperties: false
+unevaluatedProperties: false
 
 examples:
   - |
-- 
2.32.0

