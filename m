Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 769064B43BD
	for <lists+devicetree@lfdr.de>; Mon, 14 Feb 2022 09:17:38 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241766AbiBNIRI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 14 Feb 2022 03:17:08 -0500
Received: from mxb-00190b01.gslb.pphosted.com ([23.128.96.19]:44040 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S241767AbiBNIRG (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 14 Feb 2022 03:17:06 -0500
Received: from smtp-relay-internal-0.canonical.com (smtp-relay-internal-0.canonical.com [185.125.188.122])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 15AF35F8FF
        for <devicetree@vger.kernel.org>; Mon, 14 Feb 2022 00:16:59 -0800 (PST)
Received: from mail-lj1-f198.google.com (mail-lj1-f198.google.com [209.85.208.198])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id AAD58407C2
        for <devicetree@vger.kernel.org>; Mon, 14 Feb 2022 08:16:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1644826617;
        bh=05sXSD4PIb8v0ICor9Lwlzw82mhcHvJZHXpVeLkjK/k=;
        h=From:To:Subject:Date:Message-Id:In-Reply-To:References:
         MIME-Version;
        b=O5xMOHCAWiPOFG2RX04WQJTJ/GL65cdOcjJQRC38N5RdnVce71FIkhZ7p48byVDx4
         OM4Gob75a86YctQld+xmJzBVWo1idAX2O3YYcDHgtsVYz5LRS/PA5bE2t1v59cm5Bo
         wPh1AH0fp6s0FkgIdc1Od5+Au2pJ4Jr8njPQT003QbCvT6kjNzHCxiGDzNw8Qoxura
         w0mXX/Ebg+6Ge87umyaIawdZAqJ+aHLoPBGea6J8M1DE74Pxh/bFXWm/Cl6Z1UwwtP
         jAwnR1fYu39zNbtp2KunIiUkSIWt2W+blkS8ChckJwVnKaCQIHh1uk0aPa+TW4GHVk
         ONlDgbvnd8cZw==
Received: by mail-lj1-f198.google.com with SMTP id by12-20020a05651c1a0c00b00244bf726482so769387ljb.0
        for <devicetree@vger.kernel.org>; Mon, 14 Feb 2022 00:16:57 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=05sXSD4PIb8v0ICor9Lwlzw82mhcHvJZHXpVeLkjK/k=;
        b=VZzW4SQubHJjGVvNCKS58ALCpgei1mDQLs8fCmV5pWh3wCyDwaozkgxWA+O6/xDR9T
         4HpzKSaseKq0/ldm7Z3v+Aj0Toz6cSV5T1HN1euf0vBY6HIfAkv6dS8hBSernB99X5IE
         1nxTmy4Qp+HkkG6/RNaHvo9IvHiQukPwuQAM4gXD1YSJ6lHWb1lKEAuy4DVqiNThHXQI
         vwWFnwQe2VWD6ZfcKI2vYPXDa3H+QbomP3cs7A2Cbh5DA96SuxtUBFpvJHs7jXhPH0lu
         XM5ZkssIcrjVVXTI+jK8lSCDkNZv5xhuWRPvwLXbWRqkkydjCk0NNtae6cHPFeyMLmC5
         jsGQ==
X-Gm-Message-State: AOAM531kjYvXdksUMc/fQ5cCRegj3Z/jn2VW1ZH8lOKkj781xqo8Sc2U
        I/amIOju2ziko/rxY3392VLyHyh/nGqvwwwRVTWey9jXwta1Vg8+nttoTUZgg8ngeED7b/O6vOf
        IL65zs4BFOi1MGu5AgDGxU/kkSaiy6K27FSOU3/A=
X-Received: by 2002:a17:907:3f09:: with SMTP id hq9mr10433657ejc.388.1644826606214;
        Mon, 14 Feb 2022 00:16:46 -0800 (PST)
X-Google-Smtp-Source: ABdhPJw+ZKNecHLHlMF1p9Zdz7frO6KM7oerLABDg+IKR8oKqn7czs7ZE3TIi9GnMTbsd5cUpiNWFQ==
X-Received: by 2002:a17:907:3f09:: with SMTP id hq9mr10433614ejc.388.1644826605951;
        Mon, 14 Feb 2022 00:16:45 -0800 (PST)
Received: from localhost.localdomain (xdsl-188-155-168-84.adslplus.ch. [188.155.168.84])
        by smtp.gmail.com with ESMTPSA id t21sm3363642edd.74.2022.02.14.00.16.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 14 Feb 2022 00:16:45 -0800 (PST)
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
Subject: [PATCH 04/15] dt-bindings: pwm: iqs620a: include generic pwm schema
Date:   Mon, 14 Feb 2022 09:15:54 +0100
Message-Id: <20220214081605.161394-4-krzysztof.kozlowski@canonical.com>
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
 Documentation/devicetree/bindings/pwm/iqs620a-pwm.yaml | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/pwm/iqs620a-pwm.yaml b/Documentation/devicetree/bindings/pwm/iqs620a-pwm.yaml
index 1d7c27be50da..0a46af240d83 100644
--- a/Documentation/devicetree/bindings/pwm/iqs620a-pwm.yaml
+++ b/Documentation/devicetree/bindings/pwm/iqs620a-pwm.yaml
@@ -15,6 +15,9 @@ description: |
   Documentation/devicetree/bindings/mfd/iqs62x.yaml for further details as
   well as an example.
 
+allOf:
+  - $ref: pwm.yaml#
+
 properties:
   compatible:
     enum:
@@ -25,7 +28,6 @@ properties:
 
 required:
   - compatible
-  - "#pwm-cells"
 
 additionalProperties: false
 
-- 
2.32.0

