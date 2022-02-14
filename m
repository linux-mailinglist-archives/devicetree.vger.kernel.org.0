Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3A12A4B5C9C
	for <lists+devicetree@lfdr.de>; Mon, 14 Feb 2022 22:27:35 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231221AbiBNVWy (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 14 Feb 2022 16:22:54 -0500
Received: from mxb-00190b01.gslb.pphosted.com ([23.128.96.19]:49128 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231226AbiBNVWo (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 14 Feb 2022 16:22:44 -0500
Received: from smtp-relay-internal-1.canonical.com (smtp-relay-internal-1.canonical.com [185.125.188.123])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 75BCB13D93B
        for <devicetree@vger.kernel.org>; Mon, 14 Feb 2022 13:22:28 -0800 (PST)
Received: from mail-ej1-f69.google.com (mail-ej1-f69.google.com [209.85.218.69])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 4122A40337
        for <devicetree@vger.kernel.org>; Mon, 14 Feb 2022 21:22:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1644873747;
        bh=nq4ij651Faznv2JZt1q1SNPJWaeI5lkTeLdPO5VR/U4=;
        h=From:To:Subject:Date:Message-Id:In-Reply-To:References:
         MIME-Version;
        b=Pp1ZbmNugIyIdEKY9w7eL7ZciDhFkj6T/6mXCMtMqbdd/rF5rrp1P1e4uQ85addhm
         EgHhuLqQ8CAyqf+U1ms1AicMOLk+e6ZdewH4q7Grj8UpJkTp8/54m1KJ6NVIF3CIol
         ZdbRNnCr8Rp9qm+Cgb3yNzHAaEuQMWQ2PGTYbOZ5/EmGuNLaycmWfpvWwCBnyCel4N
         RUPxTAKXbHpSYaIL5oohdbA6kHJue+w+/m6sXDRCc/F4uZ7IBX5Y/FeDzc5dvIHg/2
         x5LYI0puJAxc4m0ST/N3sYxk80fWeCwN3RQZfkC2X2JbmdyVmv085VqKqDkuyyZQ/9
         Cr0b86xBZ70aw==
Received: by mail-ej1-f69.google.com with SMTP id hq19-20020a1709073f1300b006cdd7712c2cso3737753ejc.11
        for <devicetree@vger.kernel.org>; Mon, 14 Feb 2022 13:22:27 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=nq4ij651Faznv2JZt1q1SNPJWaeI5lkTeLdPO5VR/U4=;
        b=t5JGTISZDPUzVNMkiEmVejDdtStMuYOjcRKG/3+TVfU/CeiQamd5RcaXkXpXlDWbSU
         XA+SU2GwaEX0URQHijU6+tkt2N9dXliIPeje56kJaABzatWI+7ltWiO8l2aH9bPaTfbT
         mXzHPuHQDZ5+W+OFiGg/9YYHtL8qnINqqThknF2Zqdn/GJ5a1P/0viVfmwNE7cU70Hf1
         AOBEGv6YR5dd4pH0Shbk2hPS3bbMxyuedGCA2mU4o9vdNP0JWWhkeZRGR1tXJKGbu/tI
         Gcz8Vjlf9r2AgYSkG1/QkzKjWAegxqLHnN91Ur/x2uEEjIDeoaSm4D1qmF6fmFVPE8jH
         IYKg==
X-Gm-Message-State: AOAM532EnXJL32mvMH2FSkVbyKYPpBWkceP2DCv2AbqRqP7duIegJLAk
        1C7aSBZ+Rbv7C1lFUun6IGTjhD6VXSKzcPdiLtXonGSSO/ce49Lm7v0QN2gT6G9S3B03eS/hBWq
        T0n6Xz3BLLEly5O23Jf3UGTbHzdTwW5W2PPFI6CU=
X-Received: by 2002:a05:6402:298a:: with SMTP id eq10mr800871edb.71.1644873746918;
        Mon, 14 Feb 2022 13:22:26 -0800 (PST)
X-Google-Smtp-Source: ABdhPJz80Pl7KOImaUzcJEjp8kENwO8sBpFHNKeJMvOW/i73kktJXPrP1OEMsEJv+HrKWeHE8aPXYg==
X-Received: by 2002:a05:6402:298a:: with SMTP id eq10mr800841edb.71.1644873746761;
        Mon, 14 Feb 2022 13:22:26 -0800 (PST)
Received: from localhost.localdomain (xdsl-188-155-168-84.adslplus.ch. [188.155.168.84])
        by smtp.gmail.com with ESMTPSA id v24sm2327203ejf.7.2022.02.14.13.22.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 14 Feb 2022 13:22:26 -0800 (PST)
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
Subject: [PATCH v2 15/15] dt-bindings: pwm: renesas,tpu: Do not require pwm-cells twice
Date:   Mon, 14 Feb 2022 22:21:54 +0100
Message-Id: <20220214212154.8853-16-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220214212154.8853-1-krzysztof.kozlowski@canonical.com>
References: <20220214212154.8853-1-krzysztof.kozlowski@canonical.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-4.5 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

pwm-cells property is already required by pwm.yaml schema.

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

