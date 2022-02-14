Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 803FF4B43CD
	for <lists+devicetree@lfdr.de>; Mon, 14 Feb 2022 09:17:43 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241781AbiBNIRf (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 14 Feb 2022 03:17:35 -0500
Received: from mxb-00190b01.gslb.pphosted.com ([23.128.96.19]:44756 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S241898AbiBNIRa (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 14 Feb 2022 03:17:30 -0500
Received: from smtp-relay-internal-1.canonical.com (smtp-relay-internal-1.canonical.com [185.125.188.123])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9A72D5FF01
        for <devicetree@vger.kernel.org>; Mon, 14 Feb 2022 00:17:13 -0800 (PST)
Received: from mail-wr1-f69.google.com (mail-wr1-f69.google.com [209.85.221.69])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 77CD74033B
        for <devicetree@vger.kernel.org>; Mon, 14 Feb 2022 08:17:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1644826632;
        bh=bOhlBRyYjdc4olCsTRd9yvmwLAfAPm/hGaoOpjTnzVA=;
        h=From:To:Subject:Date:Message-Id:In-Reply-To:References:
         MIME-Version;
        b=nvR8HYrs67ggslT4ASUAdGJzrcw55S0M2iScduJi80VfzUsnIjEYaDzMv4vi0Vyet
         /v7VASQD9X/eoOznXCxcSApyinWIxfqfFe/a0ndkYw7b4lHXkz0runXbo005n/k/Gy
         C9zuEvwowi1vw4HbO/Zlo/SRzgY1wBoOWGJeAeZ556BS9VHY3a8FZHnimwxUvXTd3c
         h4ngR5/0O5nTmQBrwvMbTUqUdbNwiZZEyNtABdBXnCcm6fKXikj9SbFaSUQ6fM5AXu
         gPWjpADrjzNUh5l6+oLO6F1eJXy9nMdJTG0MoSd4Eww+UWMYUgea3R+JYPdJR/S06l
         ziq7J3xQRCNPw==
Received: by mail-wr1-f69.google.com with SMTP id v17-20020adfc5d1000000b001e6405c2b56so1577568wrg.7
        for <devicetree@vger.kernel.org>; Mon, 14 Feb 2022 00:17:12 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=bOhlBRyYjdc4olCsTRd9yvmwLAfAPm/hGaoOpjTnzVA=;
        b=x0vkdqpIoEjT5wmVp2KK92zDaaulzsND4M1fOiUw43Tb+WAgTKNfc+hjSxEwraTxgR
         zYHpje6nl3YD/OqMNdXmpCF4egxvqGwgvWL7vHQM2FujWiQhbxU1lok3A727v1pHlsbG
         JjIad6otQydK5YOvhtQqUN2EDQ4hzz6Gp2AIqKA7kgMfQerJGGh/XCdhXiyF9L4iqEQR
         gP5xv7HdaZnzrRQk2wg6Fw7upxRJ5/oyhseqshwEOhiMKv0+jwBUpfVdkf38J3QKkt2j
         tfIqSDTQfhRaudqrZmfCCwCynnxtrSpqLeqcFwXIsCifSQALDu+u5/Z5ya4tthKA2yls
         hr2A==
X-Gm-Message-State: AOAM530JZhWUcebh/e6H+bglY3V6wOuTly7JJNjWEXGIikE+c6aZ2vXA
        Lm9vdz3eEPAfeOrwG+PS50m21SlwcVeVECa/XuND2BXrPBNv1BzuUIzMEZa40FxJW+Gmj2uvsjq
        E7zdfmqwwCwcoaJPYbt76oj/dWwxEHFFQQcm2AsE=
X-Received: by 2002:a17:907:f9c:: with SMTP id kb28mr10076895ejc.213.1644826621260;
        Mon, 14 Feb 2022 00:17:01 -0800 (PST)
X-Google-Smtp-Source: ABdhPJxxVq42SC5ZUR0wG1GQiAhOdCRluJBdfCYPvNoUVrfESuZAlthB1iFEyURnQo2Crc/39Bc5gA==
X-Received: by 2002:a17:907:f9c:: with SMTP id kb28mr10076870ejc.213.1644826621102;
        Mon, 14 Feb 2022 00:17:01 -0800 (PST)
Received: from localhost.localdomain (xdsl-188-155-168-84.adslplus.ch. [188.155.168.84])
        by smtp.gmail.com with ESMTPSA id t21sm3363642edd.74.2022.02.14.00.16.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 14 Feb 2022 00:17:00 -0800 (PST)
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
Subject: [PATCH 13/15] dt-bindings: pwm: tiecap: do not require pwm-cells
Date:   Mon, 14 Feb 2022 09:16:03 +0100
Message-Id: <20220214081605.161394-13-krzysztof.kozlowski@canonical.com>
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
 Documentation/devicetree/bindings/pwm/pwm-tiecap.yaml | 1 -
 1 file changed, 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/pwm/pwm-tiecap.yaml b/Documentation/devicetree/bindings/pwm/pwm-tiecap.yaml
index ed35b6cc48d5..3840ae709bc6 100644
--- a/Documentation/devicetree/bindings/pwm/pwm-tiecap.yaml
+++ b/Documentation/devicetree/bindings/pwm/pwm-tiecap.yaml
@@ -47,7 +47,6 @@ properties:
 required:
   - compatible
   - reg
-  - "#pwm-cells"
   - clocks
   - clock-names
 
-- 
2.32.0

