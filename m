Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0A5474DC543
	for <lists+devicetree@lfdr.de>; Thu, 17 Mar 2022 12:59:06 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233227AbiCQL6y (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 17 Mar 2022 07:58:54 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34192 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233216AbiCQL6v (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 17 Mar 2022 07:58:51 -0400
Received: from smtp-relay-internal-1.canonical.com (smtp-relay-internal-1.canonical.com [185.125.188.123])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BE0BF1E6E8D
        for <devicetree@vger.kernel.org>; Thu, 17 Mar 2022 04:57:35 -0700 (PDT)
Received: from mail-wm1-f69.google.com (mail-wm1-f69.google.com [209.85.128.69])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 931E53F312
        for <devicetree@vger.kernel.org>; Thu, 17 Mar 2022 11:57:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1647518254;
        bh=rkZlJ0igM03Y8VkMiNizWzNDbnqGn+aUyjhq4DWqgik=;
        h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
         MIME-Version;
        b=tdlh/m2jh6vSg7/MWfaZ8iUQziaDT1AQcdrR1uwajdnL9yITNCrtpicUWGWvpyNRO
         msvAsjLNziQGBlWHXbweONI2ySq+no2O9HzqPDS+GsR3umQeE2Uf+Ula/SKsk2wAhn
         v5J/8RcPRju3zhfvImDCmo9SLvN/nyTx0I73wAL5hL6KBnUF4mZbTQnNgx16u8gmO/
         DsqAOXczM9To+ApnN+fpTIcqGzlZnlFiHXR8XsepHT78RG3CE+d/+TlhPHo+3eiSmg
         RFQQh+liCzj6caD0rXXPA3xPzyQ/kQNlYDWOVhnzqUSS5pDt15CLGWKDWdyMftDgeI
         n4ufhbn5FuiOw==
Received: by mail-wm1-f69.google.com with SMTP id h127-20020a1c2185000000b0038c6f7e22a4so2195653wmh.9
        for <devicetree@vger.kernel.org>; Thu, 17 Mar 2022 04:57:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=rkZlJ0igM03Y8VkMiNizWzNDbnqGn+aUyjhq4DWqgik=;
        b=J+LHBvyLDMzFvF5+o0NyAM++4lr3pdOvcqy6+IWOtnC2dk9oFLqqm91v03sd5SPUD8
         glBenC8QFt4/zXCMZc1mevDEBLBNTSycF77cXYhAmMx0vA9w/IA2M1IjUMFVwqRoX1iq
         G6Zze4G3eR3MNWF8C96+oOoCPZcO5eoPrAHUUqYCnUaAQ4y9ude7ltazNgGp2n6zaHrf
         1RauAABNiCFl1tHFFtiTJKKt4/GSvWe/MkemG55KeQlktCbG1dFv461nfPsUuyCZRluJ
         rUCjE1ReaMXiZ9QwSEE8MbCKPwQtCKm5UL63goMcThW0NXo4vfXbYDqKpDWnZolInIyL
         ZM0Q==
X-Gm-Message-State: AOAM531sETM9HQ/kPTKa+9LRS53Re2a42J7SfxC4augBcS/ZxMtqiO7D
        666zGd8gj8cBIulHnGNgmC1vbNOJdTG5qDfeq61/Hd1AcOJJ2fetxZgPBVmDQDTswoy90zzB8YU
        cTell+AtB/QThOjbqygKXpQQ31blGBUFEqsiRvGk=
X-Received: by 2002:a5d:608e:0:b0:203:e8a3:36f3 with SMTP id w14-20020a5d608e000000b00203e8a336f3mr2822221wrt.176.1647518244239;
        Thu, 17 Mar 2022 04:57:24 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwPfOj+UeHfKmqSbS2Hx8bnxirl/NYvL3z9HsIpNergGiYK9EsV7ImtjHZaqXnE8okb/mRUOw==
X-Received: by 2002:a5d:608e:0:b0:203:e8a3:36f3 with SMTP id w14-20020a5d608e000000b00203e8a336f3mr2822186wrt.176.1647518244048;
        Thu, 17 Mar 2022 04:57:24 -0700 (PDT)
Received: from krzk-bin.. (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id r65-20020a1c4444000000b0038c48dd23b9sm5824900wma.5.2022.03.17.04.57.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 17 Mar 2022 04:57:23 -0700 (PDT)
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
Subject: [PATCH 06/18] dt-bindings: irqchip: ingenic: include generic schema
Date:   Thu, 17 Mar 2022 12:56:53 +0100
Message-Id: <20220317115705.450427-5-krzysztof.kozlowski@canonical.com>
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
 .../bindings/interrupt-controller/ingenic,intc.yaml          | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/interrupt-controller/ingenic,intc.yaml b/Documentation/devicetree/bindings/interrupt-controller/ingenic,intc.yaml
index 0358a7739c8e..74597a98f86c 100644
--- a/Documentation/devicetree/bindings/interrupt-controller/ingenic,intc.yaml
+++ b/Documentation/devicetree/bindings/interrupt-controller/ingenic,intc.yaml
@@ -9,6 +9,9 @@ title: Ingenic SoCs interrupt controller devicetree bindings
 maintainers:
   - Paul Cercueil <paul@crapouillou.net>
 
+allOf:
+  - $ref: /schemas/interrupt-controller.yaml#
+
 properties:
   $nodename:
     pattern: "^interrupt-controller@[0-9a-f]+$"
@@ -50,7 +53,7 @@ required:
   - "#interrupt-cells"
   - interrupt-controller
 
-additionalProperties: false
+unevaluatedProperties: false
 
 examples:
   - |
-- 
2.32.0

