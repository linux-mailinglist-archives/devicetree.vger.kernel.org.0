Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 187344B43BF
	for <lists+devicetree@lfdr.de>; Mon, 14 Feb 2022 09:17:39 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241765AbiBNIRU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 14 Feb 2022 03:17:20 -0500
Received: from mxb-00190b01.gslb.pphosted.com ([23.128.96.19]:44580 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S241786AbiBNIRP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 14 Feb 2022 03:17:15 -0500
Received: from smtp-relay-internal-0.canonical.com (smtp-relay-internal-0.canonical.com [185.125.188.122])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 622315F8FE
        for <devicetree@vger.kernel.org>; Mon, 14 Feb 2022 00:17:08 -0800 (PST)
Received: from mail-ed1-f71.google.com (mail-ed1-f71.google.com [209.85.208.71])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 070AD407F1
        for <devicetree@vger.kernel.org>; Mon, 14 Feb 2022 08:17:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1644826627;
        bh=iIyJdPXcEBkqUXDuGqxhbnQvntH0bGkCRSvxS5pcFZw=;
        h=From:To:Subject:Date:Message-Id:In-Reply-To:References:
         MIME-Version;
        b=k63KSDNhFpkSlYbosGMch36sDtSsQjWrlJp2qD4FKIzRCcoYJa1LWGvVyBE9IKbYt
         +vdJVIZTIGaoukAWKNo8g2onneNxJOVpTO32TlW8JRnw9FlZirDpAKyF4H+twfimLB
         LBxJsWK0fWkcynyKw+Du8yIVyOzmzYoZkyPEhMVIXCK1vOTF07NhBtq1LktLNYu2//
         /lndAfqpxmUUqxVnvKgKPIPOZqOFkW/aReQbz/oRlBI0gP1Ij4iZlj0KMMyWd1I63n
         G2EBYtNWRxnCQxTvuI2BSOhCn2O+CQjCszMFOkQsyP7BzTePMNsUhU2uUR4uVWMN0D
         l/EZQNCdYBl7Q==
Received: by mail-ed1-f71.google.com with SMTP id b26-20020a056402139a00b004094fddbbdfso9796060edv.12
        for <devicetree@vger.kernel.org>; Mon, 14 Feb 2022 00:17:07 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=iIyJdPXcEBkqUXDuGqxhbnQvntH0bGkCRSvxS5pcFZw=;
        b=I3wn2rBP+MUCb2KtHTflzIsw9V55gLSdiESKSFxnEH4KGgoDq9ZM7L2AVcs0qf0vxc
         ou7PYKCrwTsVh/bKqzyztegPcySq8/iciY4/oIZW9GmlJQKJimxkdtOb9YdurFBlVbJ6
         hurw9EJ3hb9XgCUS4J7q59CYDaKUy+wjnJ3fPYTXrit8/t5mN4tLEcmCOcz9SpXxNPbz
         myo5pZPXk8vjADG8yWIVv0w9CrY7qIGc+5MOdTcPNAl7snoSy2D7SnPEHUmEO8L645Rr
         vU8ZgpwfSmdZTFWmac84WyOfNMJff4EQA1xCHmNprPhyeyW5ZpDYLe8BcdLgKw78XrJw
         APaw==
X-Gm-Message-State: AOAM530Xpvpy+Fo/0G7ANgzHLlqjv4TxTWKndjUPCaq5gF+UavQzHJzb
        HlDDGhE6GxQmUNlNrkhut2IFW0BWcRIsyLaBli8SYhj3GIwK4RRloQWJIpuVDqXvLFzzk3H633a
        d7U6qsIw+bYhr4I72kQyNzgEUrgPtSwRkjubjVxE=
X-Received: by 2002:a17:906:7482:: with SMTP id e2mr10548246ejl.84.1644826626209;
        Mon, 14 Feb 2022 00:17:06 -0800 (PST)
X-Google-Smtp-Source: ABdhPJxq33v0frVviF6aoq/yzn0yigEhIAPUAXD+ZluCWsCIVgJnTB15DwsxtEtp09CYMHvANYnT6g==
X-Received: by 2002:a17:906:7482:: with SMTP id e2mr10548195ejl.84.1644826625992;
        Mon, 14 Feb 2022 00:17:05 -0800 (PST)
Received: from localhost.localdomain (xdsl-188-155-168-84.adslplus.ch. [188.155.168.84])
        by smtp.gmail.com with ESMTPSA id t21sm3363642edd.74.2022.02.14.00.17.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 14 Feb 2022 00:17:05 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     Thierry Reding <thierry.reding@gmail.com>,
        =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= 
        <u.kleine-koenig@pengutronix.de>, Lee Jones <lee.jones@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        Maxime Ripard <mripard@kernel.org>,
        Chen-Yu Tsai <wens@csie.org>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        Florian Fainelli <f.fainelli@gmail.com>,
        bcm-kernel-feedback-list@broadcom.com,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        Heiko Stuebner <heiko@sntech.de>,
        Palmer Dabbelt <palmer@dabbelt.com>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Nobuhiro Iwamatsu <nobuhiro1.iwamatsu@toshiba.co.jp>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Anson Huang <anson.huang@nxp.com>,
        Vijayakannan Ayyathurai <vijayakannan.ayyathurai@intel.com>,
        Rahul Tanwar <rtanwar@maxlinear.com>,
        Jeff LaBundy <jeff@labundy.com>,
        Yash Shah <yash.shah@sifive.com>,
        Sagar Kadam <sagar.kadam@sifive.com>,
        Vignesh R <vigneshr@ti.com>,
        Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
        Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>,
        linux-pwm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev,
        linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
        linux-riscv@lists.infradead.org
Subject: [PATCH 15/15] dt-bindings: pwm: renesas,tpu: do not require pwm-cells
Date:   Mon, 14 Feb 2022 09:16:05 +0100
Message-Id: <20220214081605.161394-15-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220214081605.161394-1-krzysztof.kozlowski@canonical.com>
References: <20220214081605.161394-1-krzysztof.kozlowski@canonical.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-4.5 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

pwm-cells are already required by pwm.yaml schema.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
---
 Documentation/devicetree/bindings/pwm/renesas,tpu-pwm.yaml | 1 -
 1 file changed, 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/pwm/renesas,tpu-pwm.yaml b/Documentation/devicetree/bindings/pwm/renesas,tpu-pwm.yaml
index 1f5c6384182e..c6b2ab56b7fe 100644
--- a/Documentation/devicetree/bindings/pwm/renesas,tpu-pwm.yaml
+++ b/Documentation/devicetree/bindings/pwm/renesas,tpu-pwm.yaml
@@ -68,7 +68,6 @@ properties:
 required:
   - compatible
   - reg
-  - '#pwm-cells'
   - clocks
   - power-domains
 
-- 
2.32.0

