Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BFDC54B43B3
	for <lists+devicetree@lfdr.de>; Mon, 14 Feb 2022 09:17:34 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241843AbiBNIRM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 14 Feb 2022 03:17:12 -0500
Received: from mxb-00190b01.gslb.pphosted.com ([23.128.96.19]:44340 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S241765AbiBNIRK (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 14 Feb 2022 03:17:10 -0500
Received: from smtp-relay-internal-1.canonical.com (smtp-relay-internal-1.canonical.com [185.125.188.123])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5653E5F8FF
        for <devicetree@vger.kernel.org>; Mon, 14 Feb 2022 00:17:02 -0800 (PST)
Received: from mail-ej1-f71.google.com (mail-ej1-f71.google.com [209.85.218.71])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 34B2840336
        for <devicetree@vger.kernel.org>; Mon, 14 Feb 2022 08:17:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1644826621;
        bh=2POCSk/6TwWTazpis9hGbBMQ4KYz1OTALCTDWqaBti4=;
        h=From:To:Subject:Date:Message-Id:In-Reply-To:References:
         MIME-Version;
        b=uKfYYfGk8rjS0XOWJqoTPC16mJqDHK5h+c5RcrYvV0mmiMRQr4AW91RBrrigLM6Bv
         oivdvyo8iCqrLFZIz+nMkk8CvyDduF9HbK1pDPsWgmAsRFARTO/nl32HCbxtF/N/rp
         70s5OD+8Yj2G8I7ONp7zB3Vef6vyjwV9BAlepfHwqIV0ZLaqMNBoSjSXEIgTcb5u73
         2HL2UjrKpD02FrIXLB4Qt8b836EtAeakoPoazTqsoT+inH4RrVzbNNZuydnoYu8aOH
         zgUjMuJeDHv2WKBhDWkj49NNvUwJPG81IaVfrkzL+XZ+RTjnOi5bdcLy78tKSAVY1P
         qgVbBy1ThkgeA==
Received: by mail-ej1-f71.google.com with SMTP id v2-20020a170906292200b006a94a27f903so5508683ejd.8
        for <devicetree@vger.kernel.org>; Mon, 14 Feb 2022 00:17:01 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=2POCSk/6TwWTazpis9hGbBMQ4KYz1OTALCTDWqaBti4=;
        b=wa9J2TQqZsAZOV0LcFyLrbtfetTQ5an3vnAblpV4XeZfHK6VHt1H6yiO8jMXfrawAN
         x6wsxPePzyf9etr9KYHZN98O9ybGALBCu5ClA2FHLc/fdlgA3u4iQmtcKnE6JatOvNUU
         5bRkQQiqcHVs07K8AfkdXG3Mp48q2whST/yD63+2MekNnQCQEDEpCC/a6I7bkRmnLSfy
         NXmauUf/yBAU8fba9ZZJ8RfsfHzo7fHnu2bMC6zlvSHxDjFOudGR/wWm026spRoeIBK3
         bglc0Q8SbFfZqzW40t/LijFQOUMMnJ/bQ+RTAdkyT89bWslHmu6lFWZGRATGcF3FEIqr
         IMuA==
X-Gm-Message-State: AOAM532QbAs3LmVDNG48cmbC0jfLvtX0x07/P1YDti6Df5wcgKEJd26H
        zP6qzFihW6J0YiXUJiHGbiQfm1+pOwRDwWv8UWhI3E3kRYIIdq7+dvCxhhbzfJ2umWt2PW3Eguy
        Xo20qx8fALJ1IgrWrgGO6hka0IUzdy/I+DGrt2FE=
X-Received: by 2002:a05:6402:d0:: with SMTP id i16mr14154270edu.163.1644826610626;
        Mon, 14 Feb 2022 00:16:50 -0800 (PST)
X-Google-Smtp-Source: ABdhPJzehUJnpv0saAzMdWPLDXiuxxvQr3Bh+VUR68F9vzvxoszvsgh+RQPNbOAs8Fmy07wTsUQlpA==
X-Received: by 2002:a05:6402:d0:: with SMTP id i16mr14154229edu.163.1644826610426;
        Mon, 14 Feb 2022 00:16:50 -0800 (PST)
Received: from localhost.localdomain (xdsl-188-155-168-84.adslplus.ch. [188.155.168.84])
        by smtp.gmail.com with ESMTPSA id t21sm3363642edd.74.2022.02.14.00.16.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 14 Feb 2022 00:16:49 -0800 (PST)
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
Subject: [PATCH 07/15] dt-bindings: pwm: sifive: include generic pwm schema
Date:   Mon, 14 Feb 2022 09:15:57 +0100
Message-Id: <20220214081605.161394-7-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220214081605.161394-1-krzysztof.kozlowski@canonical.com>
References: <20220214081605.161394-1-krzysztof.kozlowski@canonical.com>
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

