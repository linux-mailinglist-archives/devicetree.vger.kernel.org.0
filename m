Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2CAC44DC53A
	for <lists+devicetree@lfdr.de>; Thu, 17 Mar 2022 12:59:03 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233408AbiCQL7w (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 17 Mar 2022 07:59:52 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35252 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233269AbiCQL7Z (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 17 Mar 2022 07:59:25 -0400
Received: from smtp-relay-internal-1.canonical.com (smtp-relay-internal-1.canonical.com [185.125.188.123])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F28081704EE
        for <devicetree@vger.kernel.org>; Thu, 17 Mar 2022 04:58:02 -0700 (PDT)
Received: from mail-wm1-f71.google.com (mail-wm1-f71.google.com [209.85.128.71])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id CABD43F20A
        for <devicetree@vger.kernel.org>; Thu, 17 Mar 2022 11:57:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1647518276;
        bh=KFmifwXJp5W4UT7dzRYgwV6FTL9sctX1thCEx5C+nkM=;
        h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
         MIME-Version;
        b=uAZySwa+94JUOmbeRBa83DQ1M8Uv4aSCzoloaoS5A+WbsuddyeIi+uQ0/BSxVBegi
         0sXeiDZBmv5dd+rh4FQn2ERuZ11TcE6eiX86V2ytjv9NhgjfOoUyVtb7m+r+h4VJ9J
         vReHmRFs/adn2At51s/L1iVYvy3TfHbUVxwJ10CwEFcLx8whasThu8T12WNVfjcR8n
         SG49/LT0E5swjqg0h1ILtGMN/tifJtLoH5Zmz8tLpWatfBXnmH3QMXW/xKtT2y0Drh
         bUMyTWAvCc3tSKMAb0lQq5k+Y+MRHl8lxLQlj/eb4mwVvhrS/LqqxzNteBYzCoOGoQ
         /g/vNQTfHJGaQ==
Received: by mail-wm1-f71.google.com with SMTP id n62-20020a1ca441000000b0038124c99ebcso1548017wme.9
        for <devicetree@vger.kernel.org>; Thu, 17 Mar 2022 04:57:56 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=KFmifwXJp5W4UT7dzRYgwV6FTL9sctX1thCEx5C+nkM=;
        b=fQ+9IGH9cS7bahfVr0gTT4Xf1TW3OAJwqYvQlpxtjOsgm27OfDaYzxqI1MhXqxFROG
         nLVPhhX1dJh5sEINuNxt1lfBXRhMedQo21pMQl8flYtkbVv1knpoT97syOyJfPLoYVDn
         La2HqIJfTul/Vc8e4XyhsKmRF7g3ixOG1iii1k178gmkkIFDNgIyvpIHQEC54eUphfew
         mKCk77cDj2spx6A/Dyd+Xu7mBR6q6r3z9tOhM+SkFQ0M2Y0XpZsu6qqhHOPEz+tRZUOG
         ZM3eykCZu/dJsXoGYpefZGslbuNlMYD+n6paBcTQjm0GssM5Jrsi/3Mcc1NmzggcGzc3
         OsTQ==
X-Gm-Message-State: AOAM530hkGhcuuT7om0BbL2GNsv4XmrXBLyq39DSNGnUenXxPnlNw0AY
        U0IqcSezu+V/fNJc8fdhGD81l0kmX9zyZDphWWnsafF1ky2+62XjC0cYIH1ed7ZvieP6BYhURBj
        TLuin3cEj0EoOmEMFVYv7g0LrL2uSNpX1QDuC8DU=
X-Received: by 2002:a05:6000:15c1:b0:1f0:73d6:b716 with SMTP id y1-20020a05600015c100b001f073d6b716mr3663297wry.293.1647518274486;
        Thu, 17 Mar 2022 04:57:54 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwQvKKHcnhZqthCpzLO2USNLVXIsLYfJdNKGccVKarN3fEhfI5+MqhVsRHbxfF78ndbEuW0XA==
X-Received: by 2002:a05:6000:15c1:b0:1f0:73d6:b716 with SMTP id y1-20020a05600015c100b001f073d6b716mr3663274wry.293.1647518274258;
        Thu, 17 Mar 2022 04:57:54 -0700 (PDT)
Received: from krzk-bin.. (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id r65-20020a1c4444000000b0038c48dd23b9sm5824900wma.5.2022.03.17.04.57.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 17 Mar 2022 04:57:53 -0700 (PDT)
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
Subject: [PATCH 17/18] dt-bindings: irqchip: sifive: include generic schema
Date:   Thu, 17 Mar 2022 12:57:04 +0100
Message-Id: <20220317115705.450427-16-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220317115542.450032-1-krzysztof.kozlowski@canonical.com>
References: <20220317115542.450032-1-krzysztof.kozlowski@canonical.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-5.9 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
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
 .../bindings/interrupt-controller/sifive,plic-1.0.0.yaml     | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/interrupt-controller/sifive,plic-1.0.0.yaml b/Documentation/devicetree/bindings/interrupt-controller/sifive,plic-1.0.0.yaml
index 27092c6a86c4..e3c08cff89d2 100644
--- a/Documentation/devicetree/bindings/interrupt-controller/sifive,plic-1.0.0.yaml
+++ b/Documentation/devicetree/bindings/interrupt-controller/sifive,plic-1.0.0.yaml
@@ -44,6 +44,9 @@ maintainers:
   - Paul Walmsley  <paul.walmsley@sifive.com>
   - Palmer Dabbelt <palmer@dabbelt.com>
 
+allOf:
+  - $ref: /schemas/interrupt-controller.yaml#
+
 properties:
   compatible:
     oneOf:
@@ -91,7 +94,7 @@ required:
   - interrupts-extended
   - riscv,ndev
 
-additionalProperties: false
+unevaluatedProperties: false
 
 examples:
   - |
-- 
2.32.0

