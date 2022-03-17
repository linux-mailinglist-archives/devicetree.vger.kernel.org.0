Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E2CBA4DC52E
	for <lists+devicetree@lfdr.de>; Thu, 17 Mar 2022 12:58:58 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233361AbiCQL71 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 17 Mar 2022 07:59:27 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34540 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233300AbiCQL7N (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 17 Mar 2022 07:59:13 -0400
Received: from smtp-relay-internal-1.canonical.com (smtp-relay-internal-1.canonical.com [185.125.188.123])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CA5CF14FBBC
        for <devicetree@vger.kernel.org>; Thu, 17 Mar 2022 04:57:54 -0700 (PDT)
Received: from mail-wr1-f72.google.com (mail-wr1-f72.google.com [209.85.221.72])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id DE39A40018
        for <devicetree@vger.kernel.org>; Thu, 17 Mar 2022 11:57:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1647518271;
        bh=9NVaJhFyk/7XIToYVXJ7m5aI93pLstb15hWUEyZBYi8=;
        h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
         MIME-Version:Content-Type;
        b=BVA3CyFnW+aYsuzhQzooLGLNnxqljgchgIRMSoMtA4bCJfAfbMnLJ3OC+WfYn+p9f
         n6Q9QjPzKaInRhlJ2+PaocDb/SKtZ+FWgQkCpRE/oPRwtIJDiagBqQXLLLeuaJ7l2c
         hx0+fUao1+lUEbDEOdLdPkT2Bnsntdgglvq/rEYZLtJTaub1dMj+jd5wFVfdByncRv
         I6CMQ7iCVjYX5ohPJCV3CSW1VeJo/Rm+6R4uLETP8Tcfsj/jvo9yesygPY/qUGywoL
         wdF50+LGlm+qZTSUTjjDe1hxp2kQz7NBVfjT7leyc5q7mG3pzkHBX7ijB4Oote8lOD
         H0eXRvOE9pm6g==
Received: by mail-wr1-f72.google.com with SMTP id t15-20020adfdc0f000000b001ef93643476so1480154wri.2
        for <devicetree@vger.kernel.org>; Thu, 17 Mar 2022 04:57:51 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=9NVaJhFyk/7XIToYVXJ7m5aI93pLstb15hWUEyZBYi8=;
        b=SOzzG5oMgcZaCTQPmevtblSARfXReZjSZHJJEd1JPFG1gEOIfU5pW8oPB/O2QDkazS
         RLljv46QtAhBYVYlva/wp5KJN2/WHW6vjQ01m2+3tNxNkIQooAnAQGV3/YRwTua/S5Lq
         TKCim1pUcgcbyqFvYvff3ktpa38hcnuJkohjhRveuEsnhaefQHC9VMKUzsczsAV+tVcb
         agntbp3fSO3nAprq4WY/9xfC4x3DSl0mGGRCw3IzkghYfrTMOc9UJS+PLeYQvNuRR9II
         3DIrPHWFtOe804ejBvpJSDGt8Unb8guDU89hNFn0iK7SaueJkmDbSnJbW0ddskqyxk3S
         CnJQ==
X-Gm-Message-State: AOAM531M33Z9cfwBLmOyoHZkT2QuA7vtC5X0YGJX/YCcoJ4UBtIpdNE2
        hrbqTkNEcl4n5OA1iCdYWUiNlQGD1z4dGHi04V+YbgPvoWSwwtBhSjnXbjH0KoLFkT3sSKNIC6O
        +SmxDHaDIDhj1gQAuWbn4TTWjyLJFJimogst7Gi0=
X-Received: by 2002:a05:6000:156f:b0:1f1:f99e:779e with SMTP id 15-20020a056000156f00b001f1f99e779emr3699055wrz.99.1647518266486;
        Thu, 17 Mar 2022 04:57:46 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJymVAcTeO15IweAkScwvNQ6HG8sMEO3vGt45XqrwFfDK9yidy0suv6zYu7bE0rR0hIs55pTgQ==
X-Received: by 2002:a05:6000:156f:b0:1f1:f99e:779e with SMTP id 15-20020a056000156f00b001f1f99e779emr3699013wrz.99.1647518266228;
        Thu, 17 Mar 2022 04:57:46 -0700 (PDT)
Received: from krzk-bin.. (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id r65-20020a1c4444000000b0038c48dd23b9sm5824900wma.5.2022.03.17.04.57.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 17 Mar 2022 04:57:45 -0700 (PDT)
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
Subject: [PATCH 14/18] dt-bindings: irqchip: nuvoton,wpcm450-aic: include generic schema
Date:   Thu, 17 Mar 2022 12:57:01 +0100
Message-Id: <20220317115705.450427-13-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220317115542.450032-1-krzysztof.kozlowski@canonical.com>
References: <20220317115542.450032-1-krzysztof.kozlowski@canonical.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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
 .../bindings/interrupt-controller/nuvoton,wpcm450-aic.yaml | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/interrupt-controller/nuvoton,wpcm450-aic.yaml b/Documentation/devicetree/bindings/interrupt-controller/nuvoton,wpcm450-aic.yaml
index 9ce6804bdb99..285c20de0962 100644
--- a/Documentation/devicetree/bindings/interrupt-controller/nuvoton,wpcm450-aic.yaml
+++ b/Documentation/devicetree/bindings/interrupt-controller/nuvoton,wpcm450-aic.yaml
@@ -9,6 +9,9 @@ title: Nuvoton WPCM450 Advanced Interrupt Controller bindings
 maintainers:
   - Jonathan Neuschäfer <j.neuschaefer@gmx.net>
 
+allOf:
+  - $ref: /schemas/interrupt-controller.yaml#
+
 properties:
   '#interrupt-cells':
     const: 2
@@ -21,14 +24,14 @@ properties:
   reg:
     maxItems: 1
 
-additionalProperties: false
-
 required:
   - '#interrupt-cells'
   - compatible
   - reg
   - interrupt-controller
 
+unevaluatedProperties: false
+
 examples:
   - |
     aic: interrupt-controller@b8002000 {
-- 
2.32.0

