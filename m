Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4B58F4DC547
	for <lists+devicetree@lfdr.de>; Thu, 17 Mar 2022 12:59:07 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233212AbiCQL6w (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 17 Mar 2022 07:58:52 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34002 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233221AbiCQL6t (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 17 Mar 2022 07:58:49 -0400
Received: from smtp-relay-internal-1.canonical.com (smtp-relay-internal-1.canonical.com [185.125.188.123])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A62EA1E6EB3
        for <devicetree@vger.kernel.org>; Thu, 17 Mar 2022 04:57:33 -0700 (PDT)
Received: from mail-wm1-f71.google.com (mail-wm1-f71.google.com [209.85.128.71])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 80D6D3FFD1
        for <devicetree@vger.kernel.org>; Thu, 17 Mar 2022 11:57:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1647518251;
        bh=q6L0pTvWqCbYxp4ud2xHQC7gNboKzwtZb8Qa+W91MLY=;
        h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
         MIME-Version;
        b=i+yAbbFvds6D9dLYCY0vZ+oaR4SfURtQfKPYQdMWWljzNzEKnxVHSTLFbmgggPVmi
         WBuwAgTpDx594lKi2mnrqhOcz/NNxrd+MCHcOPnRIiy7+AYP0vVar3BK82IpfCOR/9
         E+syl7B15a/XTmtqLseoE/oq+aOLEfSU/N3imps5gnfRxi8VT+I++TVEci77WgvKPB
         hE87NyBxJMduk6TUy9DxpPPHJpoQm/Le0XNlVzkV4Bp7HFsGPlqJC/SgDvP/6qFLV4
         /iDY4a6vD2SD3g+ThzZqHJhxo4OTncylYijVmiZEmEX9p4t/0NlCPTZGshuo7ViaSR
         8SI5C9YYRu0Zw==
Received: by mail-wm1-f71.google.com with SMTP id r64-20020a1c2b43000000b0038b59eb1940so3005861wmr.0
        for <devicetree@vger.kernel.org>; Thu, 17 Mar 2022 04:57:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=q6L0pTvWqCbYxp4ud2xHQC7gNboKzwtZb8Qa+W91MLY=;
        b=5j7+sBwRNMV3EmIybU6qpL8uFc6mAnuYkjZ5wB/z1V2nxWttjO6vxvL574DyeN/kSO
         UtNWnYe/jXjk7vcmq+QC/qfXjDZZz3w0Qtc+bHyMld9UPxuZn++4tiwvA0nOmzeepodf
         HpLM5KnV/E/LfA92cEPA4+hvYefJao7uynXbJiOJ1CNUA85U6fww9PONngNaGHSoHLTg
         y514el/nLRcllVk6BNFuW5Kd7gLKc1ernGtrlVc/KZ1Z5E3R3tjMgNUNK7OHIrI4Dh8L
         B6idFZ/jEP6d5g4VXrkiLtK7636Yz/Ka7BOdWVqYkHmFTBPtuEEQyMjqdBXZJaJK3qtv
         l7hA==
X-Gm-Message-State: AOAM5320/T7pvv0t2bYmnsn/XsAw/L/PAvqVg65njiNwxa0TsKNJyf0u
        lTbP+ppwLjaipoTEyrPf17Xq9duaG+rh/VtgGV4EQsKJhegodpu1q9f7LHb+AS9fNhLjQBz4iZp
        N+VhiZv3abEc+aDcrqUZLMWLXVuq5rDN3D7qwh34=
X-Received: by 2002:a1c:f219:0:b0:38c:782c:3bb with SMTP id s25-20020a1cf219000000b0038c782c03bbmr2376110wmc.94.1647518249487;
        Thu, 17 Mar 2022 04:57:29 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxX1jxnKZiD0NuCgy5RBXKK6my/n/GYxN3iuUU96hXmDCoERczZgFOzB2MQI7Nkvxk6j0Zexw==
X-Received: by 2002:a1c:f219:0:b0:38c:782c:3bb with SMTP id s25-20020a1cf219000000b0038c782c03bbmr2376082wmc.94.1647518249282;
        Thu, 17 Mar 2022 04:57:29 -0700 (PDT)
Received: from krzk-bin.. (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id r65-20020a1c4444000000b0038c48dd23b9sm5824900wma.5.2022.03.17.04.57.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 17 Mar 2022 04:57:28 -0700 (PDT)
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
Subject: [PATCH 08/18] dt-bindings: irqchip: kontron,sl28cpld: include generic schema
Date:   Thu, 17 Mar 2022 12:56:55 +0100
Message-Id: <20220317115705.450427-7-krzysztof.kozlowski@canonical.com>
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
 .../bindings/interrupt-controller/kontron,sl28cpld-intc.yaml | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/interrupt-controller/kontron,sl28cpld-intc.yaml b/Documentation/devicetree/bindings/interrupt-controller/kontron,sl28cpld-intc.yaml
index e8dfa6507f64..1d0939390631 100644
--- a/Documentation/devicetree/bindings/interrupt-controller/kontron,sl28cpld-intc.yaml
+++ b/Documentation/devicetree/bindings/interrupt-controller/kontron,sl28cpld-intc.yaml
@@ -29,6 +29,9 @@ description: |
     7  n/a           not used
   ==== ============= ==================================
 
+allOf:
+  - $ref: /schemas/interrupt-controller.yaml#
+
 properties:
   compatible:
     enum:
@@ -51,4 +54,4 @@ required:
   - "#interrupt-cells"
   - interrupt-controller
 
-additionalProperties: false
+unevaluatedProperties: false
-- 
2.32.0

