Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 49F5B6793D9
	for <lists+devicetree@lfdr.de>; Tue, 24 Jan 2023 10:19:26 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232753AbjAXJTZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 24 Jan 2023 04:19:25 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49446 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229502AbjAXJTY (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 24 Jan 2023 04:19:24 -0500
Received: from mail-wr1-x432.google.com (mail-wr1-x432.google.com [IPv6:2a00:1450:4864:20::432])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5039B3BDA6
        for <devicetree@vger.kernel.org>; Tue, 24 Jan 2023 01:19:23 -0800 (PST)
Received: by mail-wr1-x432.google.com with SMTP id n7so13200480wrx.5
        for <devicetree@vger.kernel.org>; Tue, 24 Jan 2023 01:19:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=43A1eeWrpE679NQnTX4HGXlIW2NbDWo9ZcYcCEyQGv8=;
        b=ONjezc3uRXZlJmtLiPWC5mw58yms5cO1PTcTCwcnTPM7f+VvICxnFSBl4X/nLpZfmY
         aFmZ3dz8KHuvPhnMycUrIU/wfcpj8N8tsdpFu5yuGNIbgryu8ovn89HtaD4MKOiJKEDX
         szOT9ZhlzqEDlnnFaMRhnlVV5qYKwvhQwI3JN7baJMOGma2Qj4R0RJVNKqfbbQMGyvKQ
         Tip/5m94Y2UniXLOdCInty6j5cE1B0Bn5OkDlTQr+FOLfGUpyhQQlBlj7sINgWJ53+VX
         1JUDRoNwSdUHX6CRdmFB63SsqOSneNpY5t3UXCyF/IZuzsgGFD/JuD03wzIN/9nfsVus
         YW/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=43A1eeWrpE679NQnTX4HGXlIW2NbDWo9ZcYcCEyQGv8=;
        b=kPvBPMNpppNJLmDaclwXVOsXbxZZnMf8uUYL06scYF9nBoaVIKzOG2TyYHTJmMPgo3
         Y8OYCDZjT4TL0iIa1xKeIBJbSA2aZmvzl/EqRNjObcwfVDpGX76Cop1KLhOMa/zs3/n2
         qLHdXMJgAvFRBI9O2CAABMki+D1tBFg/lvCDwJgPbCOBmfiypMfWos9c0b+wrp6ioCXL
         ewAYb6WQN5DgkEAz7IvWUiIp4Efm20pBTUdE11FiQ+Ee4Yme4UkHcQw0MyOUSnt+Eqaw
         jeM+bvoNXYRnWqo78A27y3oTrCby9xhGdReFe7kADkqVc8nr8/hGpEq0/ZrC1/ost3P9
         7iuA==
X-Gm-Message-State: AFqh2kpBxzvyYpEjW4Lo+n+afgGoz0a5vxZ3p6V2ZL7dvf/qfoVxKCZ8
        wWBBFaVWQxcGNkF6kkaQGhA1OA==
X-Google-Smtp-Source: AMrXdXtDeqK3bf9pLkBQmMDNhFtINAt86Lm3kD2eTMHoeuC73VR+7IfQ6qYkFopm1Ln3EMVZmWg2kw==
X-Received: by 2002:a05:6000:1706:b0:2bd:dfbe:c17f with SMTP id n6-20020a056000170600b002bddfbec17fmr28359868wrc.58.1674551961808;
        Tue, 24 Jan 2023 01:19:21 -0800 (PST)
Received: from krzk-bin.. ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id i22-20020a05600c355600b003a84375d0d1sm13672242wmq.44.2023.01.24.01.19.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Jan 2023 01:19:21 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Kevin Hilman <khilman@baylibre.com>,
        Jerome Brunet <jbrunet@baylibre.com>,
        Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        Palmer Dabbelt <palmer@dabbelt.com>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        Alexandre Torgue <alexandre.torgue@foss.st.com>,
        Lubomir Rintel <lkundrak@v3.sk>,
        Vignesh Raghavendra <vigneshr@ti.com>,
        Michal Simek <michal.simek@xilinx.com>,
        Chester Lin <clin@suse.com>, Fugang Duan <fugang.duan@nxp.com>,
        Magnus Damm <magnus.damm@gmail.com>,
        Geert Uytterhoeven <geert+renesas@glider.be>,
        Pragnesh Patel <pragnesh.patel@sifive.com>,
        Le Ray <erwan.leray@foss.st.com>,
        Peter Korsgaard <jacmet@sunsite.dk>,
        Tomer Maimon <tmaimon77@gmail.com>,
        linux-serial@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-amlogic@lists.infradead.org, linux-riscv@lists.infradead.org,
        linux-stm32@st-md-mailman.stormreply.com
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v2 03/12] dt-bindings: serial: pl011: allow ARM Primecell properties
Date:   Tue, 24 Jan 2023 10:19:07 +0100
Message-Id: <20230124091916.45054-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230124091602.44027-1-krzysztof.kozlowski@linaro.org>
References: <20230124091602.44027-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Reference ARM Primecell bindings to allow typical Primecell device node properties:

  broadcom/bcm2711-rpi-400.dtb: serial@7e201000: Unevaluated properties are not allowed ('arm,primecell-periphid' was unexpected)

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 Documentation/devicetree/bindings/serial/pl011.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/serial/pl011.yaml b/Documentation/devicetree/bindings/serial/pl011.yaml
index 80af72859876..9571041030b7 100644
--- a/Documentation/devicetree/bindings/serial/pl011.yaml
+++ b/Documentation/devicetree/bindings/serial/pl011.yaml
@@ -10,6 +10,7 @@ maintainers:
   - Rob Herring <robh@kernel.org>
 
 allOf:
+  - $ref: /schemas/arm/primecell.yaml#
   - $ref: serial.yaml#
 
 # Need a custom select here or 'arm,primecell' will match on lots of nodes
-- 
2.34.1

