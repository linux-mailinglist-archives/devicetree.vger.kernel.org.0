Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BB0924B43B9
	for <lists+devicetree@lfdr.de>; Mon, 14 Feb 2022 09:17:36 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241754AbiBNIRH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 14 Feb 2022 03:17:07 -0500
Received: from mxb-00190b01.gslb.pphosted.com ([23.128.96.19]:44102 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S241790AbiBNIRF (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 14 Feb 2022 03:17:05 -0500
Received: from smtp-relay-internal-0.canonical.com (smtp-relay-internal-0.canonical.com [185.125.188.122])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5E5225FF1B
        for <devicetree@vger.kernel.org>; Mon, 14 Feb 2022 00:16:57 -0800 (PST)
Received: from mail-wr1-f69.google.com (mail-wr1-f69.google.com [209.85.221.69])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 38E04407EC
        for <devicetree@vger.kernel.org>; Mon, 14 Feb 2022 08:16:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1644826616;
        bh=Vx5pgZq+wTDk2cXNM++1rpL4of1cb6TeLTw59n/JqH4=;
        h=From:To:Subject:Date:Message-Id:In-Reply-To:References:
         MIME-Version;
        b=mcpr9xnsk9KFdIZeauIxn4YqePJ00wS3vTDUmtfEzzCrZK2MzZx3zlor295tjZmVz
         foe2UBDOBOOfVCb+mUsGx9OTL9Vteqg8t20JX/JYMb3SkkH0UQgzI39RyYreaTeiBk
         O5hgyZQTSPQVTqIu8wyEHqWsGnr6nR2jSVAmGGUxQmqtK/Lhe5JgIwq20kP2cdHBB4
         +ThLGZPSwedIny64DuMduR5EZpSs5rVIcVFi+FvlAIrB2oO5NUmVbN7fbENzd8b/Zn
         0IvnlXCgLn9ePIRWXepO+4kniatD1D2nceKuk/SP99PYb5pHEqhlnEW9u+5acMA6yj
         SunOzZM0Xa1Jw==
Received: by mail-wr1-f69.google.com with SMTP id p9-20020adf9589000000b001e333885ac1so6583273wrp.10
        for <devicetree@vger.kernel.org>; Mon, 14 Feb 2022 00:16:56 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=Vx5pgZq+wTDk2cXNM++1rpL4of1cb6TeLTw59n/JqH4=;
        b=WJrRxd0HgWQ0ALwFuD7mDOuGNxCmGyQpc7N8nTHfl4TCNKPA2KI4tiRL9uBs5RmB3A
         BXu3M6UhPAcSISlmsKOBuPaqdUtlQP2WzzHNPUO2+JL/RitDjlslYRNJiztQdmuzlN+O
         CL/YqJt0R9M6R8agFSCqXTG4HVneT30qvH6O+yDNB2MQuYWlQFrOjX+xFkuwHtG7Aze6
         LSBczgkHhhT8KifAXytAyZUF+IGVh5QxFl7EDyeA6Q3z0WbbOZOEjajqpTCXASTpASet
         Fm+DzS9P0bCeXfy5Z7LJE9SVpjuMAf4nWnPbR5pvwC0FU3/YUWZhLUXqjXHwaLUkor61
         gLgw==
X-Gm-Message-State: AOAM531pHaOukbJ/wVFRAdToD4c458fm9D5hl0x4FzYq9n/Yb1+xAaSX
        8CD5EDvDINISLzJ22diBY+MDlWW9Dz2lDEvvpm9WWZRLuqwBgiDgyg6Bk9E5ivxv1viFGonLPqM
        K8oHb3j9TgjAtDcTYEg1eYhNcg10HLfGiJM7IdCg=
X-Received: by 2002:a17:907:86a1:: with SMTP id qa33mr10593896ejc.516.1644826604831;
        Mon, 14 Feb 2022 00:16:44 -0800 (PST)
X-Google-Smtp-Source: ABdhPJzHLCvj9EOOMBQpfPrsB+GOXcyF6v8PbErxtuwvlpLnjLHBW4y7stXTy+wJs5s8ptFN23VAWQ==
X-Received: by 2002:a17:907:86a1:: with SMTP id qa33mr10593877ejc.516.1644826604628;
        Mon, 14 Feb 2022 00:16:44 -0800 (PST)
Received: from localhost.localdomain (xdsl-188-155-168-84.adslplus.ch. [188.155.168.84])
        by smtp.gmail.com with ESMTPSA id t21sm3363642edd.74.2022.02.14.00.16.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 14 Feb 2022 00:16:43 -0800 (PST)
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
Subject: [PATCH 03/15] dt-bindings: pwm: intel,lgm: include generic pwm schema
Date:   Mon, 14 Feb 2022 09:15:53 +0100
Message-Id: <20220214081605.161394-3-krzysztof.kozlowski@canonical.com>
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

Include generic pwm.yaml schema, which enforces PWM node naming and
brings pwm-cells requirement.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
---
 Documentation/devicetree/bindings/pwm/intel,lgm-pwm.yaml | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/pwm/intel,lgm-pwm.yaml b/Documentation/devicetree/bindings/pwm/intel,lgm-pwm.yaml
index 11a606536169..59d7c4d864c1 100644
--- a/Documentation/devicetree/bindings/pwm/intel,lgm-pwm.yaml
+++ b/Documentation/devicetree/bindings/pwm/intel,lgm-pwm.yaml
@@ -9,6 +9,9 @@ title: LGM SoC PWM fan controller
 maintainers:
   - Rahul Tanwar <rtanwar@maxlinear.com>
 
+allOf:
+  - $ref: pwm.yaml#
+
 properties:
   compatible:
     const: intel,lgm-pwm
-- 
2.32.0

