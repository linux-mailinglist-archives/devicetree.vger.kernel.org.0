Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 28D7D4B5CAC
	for <lists+devicetree@lfdr.de>; Mon, 14 Feb 2022 22:27:40 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231163AbiBNVWr (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 14 Feb 2022 16:22:47 -0500
Received: from mxb-00190b01.gslb.pphosted.com ([23.128.96.19]:49046 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231203AbiBNVWo (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 14 Feb 2022 16:22:44 -0500
Received: from smtp-relay-internal-1.canonical.com (smtp-relay-internal-1.canonical.com [185.125.188.123])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 56AEB13CEFE
        for <devicetree@vger.kernel.org>; Mon, 14 Feb 2022 13:22:24 -0800 (PST)
Received: from mail-lj1-f199.google.com (mail-lj1-f199.google.com [209.85.208.199])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 00E6F404AE
        for <devicetree@vger.kernel.org>; Mon, 14 Feb 2022 21:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1644873743;
        bh=2POCSk/6TwWTazpis9hGbBMQ4KYz1OTALCTDWqaBti4=;
        h=From:To:Subject:Date:Message-Id:In-Reply-To:References:
         MIME-Version;
        b=N7rCwLfX/3zn8mXM9ZbZY0LWs9QWQS58BM1JQVHAOclODQ5WNrFLOO8WbpiPgecoU
         Zy2/kUKQmtpn7gzME7zQCbghHxMJUD6JSmcf09NB7irb7N2NdQtiPoFnkSRJKC1yGx
         v16Oh7jufXtieYkwupPGl/2Gc7Vemak5UCtydxzgJtBr/+Q2Fdqx/vnohXlqSjJimX
         QxDnljnMCJSo7//HfCqFfkc8jbvit/O2Ook83dDYpq2UW5D4wW1oGY6nxJjvTL5M6x
         9l0NXUtRQnUjaOBcflRhxVJvIZEtSDcJk+Rp8V52NKQOZwRSvmqG4qNQAd479jXOPM
         nrx1SoA/8nDuw==
Received: by mail-lj1-f199.google.com with SMTP id l18-20020a2e7012000000b00244db28e67cso581563ljc.8
        for <devicetree@vger.kernel.org>; Mon, 14 Feb 2022 13:22:22 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=2POCSk/6TwWTazpis9hGbBMQ4KYz1OTALCTDWqaBti4=;
        b=2Ckjac3FAO/lRBtFaZ16Me+Vzku12pjQWNxixlvD27jsPxCPzvyfW1AfLyS1aaktXF
         epO4Fnj0AKUH8nc3xAgKuKoTD63m/HonfUoCALlF8OlBBkPostY78uyHHNfR8j6jARnr
         6/t8Pw8vSPfVtL72xy7E2sF5kg+dnwiQ/RGOzDhNnO62KFsOF+r5mHUrRaXoQQ2ef/R6
         2bXWLMlwYXxBLKOPpmUkOJi/sHLYvxuq9YGOooxWOrXPo6qM3DUpB0kIrYEDGNs9tUx3
         qKOrjfBRywxb0HSPtf5twJWGNGZSyH3+BjfjheCMSKsICJAbobnYAwZZ3KZ5CMQfxhC7
         BYdw==
X-Gm-Message-State: AOAM5307MlWtyILohJOACMGQinQXo7zR6pHGN96TTz2wfYIznkDe619i
        gv+HtJksjOzouSkcvg830V/VE1TCuFq51KpwXE9HZV0HpWF2wee0MI0IA5ACgGa7GWRME//oTxD
        Bt+uQ1SeQPagVag/v5EwRnwlbh6hUWr9NqOpLgbg=
X-Received: by 2002:a17:907:6091:: with SMTP id ht17mr542190ejc.607.1644873731283;
        Mon, 14 Feb 2022 13:22:11 -0800 (PST)
X-Google-Smtp-Source: ABdhPJwORNXxcION04IJzU5Gu/UfUyFurARbus6zd7xUK4wKOMUXzkjvihbjj39qrz7zMUkHFrH18A==
X-Received: by 2002:a17:907:6091:: with SMTP id ht17mr542177ejc.607.1644873731059;
        Mon, 14 Feb 2022 13:22:11 -0800 (PST)
Received: from localhost.localdomain (xdsl-188-155-168-84.adslplus.ch. [188.155.168.84])
        by smtp.gmail.com with ESMTPSA id v24sm2327203ejf.7.2022.02.14.13.22.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 14 Feb 2022 13:22:10 -0800 (PST)
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
Subject: [PATCH v2 07/15] dt-bindings: pwm: sifive: Include generic pwm schema
Date:   Mon, 14 Feb 2022 22:21:46 +0100
Message-Id: <20220214212154.8853-8-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220214212154.8853-1-krzysztof.kozlowski@canonical.com>
References: <20220214212154.8853-1-krzysztof.kozlowski@canonical.com>
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

Include generic pwm.yaml schema, which enforces PWM node naming and
brings pwm-cells requirement.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
---
 Documentation/devicetree/bindings/pwm/pwm-sifive.yaml | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/pwm/pwm-sifive.yaml b/Documentation/devicetree/bindings/pwm/pwm-sifive.yaml
index 84e66913d042..676b2160bada 100644
--- a/Documentation/devicetree/bindings/pwm/pwm-sifive.yaml
+++ b/Documentation/devicetree/bindings/pwm/pwm-sifive.yaml
@@ -22,6 +22,9 @@ description:
 
   https://github.com/sifive/sifive-blocks/tree/master/src/main/scala/devices/pwm
 
+allOf:
+  - $ref: pwm.yaml#
+
 properties:
   compatible:
     items:
@@ -55,7 +58,6 @@ required:
   - compatible
   - reg
   - clocks
-  - "#pwm-cells"
   - interrupts
 
 additionalProperties: false
-- 
2.32.0

