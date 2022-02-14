Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C70FD4B5C96
	for <lists+devicetree@lfdr.de>; Mon, 14 Feb 2022 22:22:24 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230506AbiBNVWR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 14 Feb 2022 16:22:17 -0500
Received: from mxb-00190b01.gslb.pphosted.com ([23.128.96.19]:48758 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230521AbiBNVWP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 14 Feb 2022 16:22:15 -0500
Received: from smtp-relay-internal-0.canonical.com (smtp-relay-internal-0.canonical.com [185.125.188.122])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 53E97119F4E
        for <devicetree@vger.kernel.org>; Mon, 14 Feb 2022 13:22:05 -0800 (PST)
Received: from mail-ej1-f71.google.com (mail-ej1-f71.google.com [209.85.218.71])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 17C2C405EC
        for <devicetree@vger.kernel.org>; Mon, 14 Feb 2022 21:22:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1644873724;
        bh=Vx5pgZq+wTDk2cXNM++1rpL4of1cb6TeLTw59n/JqH4=;
        h=From:To:Subject:Date:Message-Id:In-Reply-To:References:
         MIME-Version;
        b=bmLRHw85gqw8wok9EReyAa+vURzmKNoVTAS1Gmmh0QXhzcY4HXzEGqpBSdjwnmpTl
         CwuHKNJMV/NeIGy6Gbl1VT7MrcpcOT7e3buhCka08ugmem9W6Dh7wPZHbvbqC/E0Wx
         MmJuzntmYz0UiMM27SIUYC4ux37SMH/B2OGsQWEkl/6s6yJ7Ac++SQXantgpih5LWO
         j9kIWtBMWS8XHVTONkL/MNE3IYZox5OxVb33TwcukZLBBCLEJSpE4o/NjtRG72obH5
         /MBDtvgYlkUmlV458eOJHUBuV/9s0Ai7PEO1fXjY0dxN8IYKxQa9CSDKlxIknmoOb4
         cabgrUg8bSsxQ==
Received: by mail-ej1-f71.google.com with SMTP id q3-20020a17090676c300b006a9453c33b0so6339754ejn.13
        for <devicetree@vger.kernel.org>; Mon, 14 Feb 2022 13:22:04 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=Vx5pgZq+wTDk2cXNM++1rpL4of1cb6TeLTw59n/JqH4=;
        b=olWMofgSW98U4r4lbnqqyibedJpSohuKw9aIw1BC+SFHm+6YOu+TVKvSq8malVUTN9
         DWURK1Ssaxjtc1Clzcu+xEMatRUBNafJsgHGJFrlamYuaTgNXqSRu955rXnm+Mr7v/jY
         ykgQ4LXLJf52p3kdoQizfPG7rVOdnMZGa54wxWrEAgdfwSrAQd123zNDXe62d0Go9wxs
         aRwsMvg/fISBu7eRaLT5SDIURrlR2AVlVKT83BkFucMgd5ilZEhGa4xq4YFI84qgRtfY
         W6QHKX/Gl92pJLMfLIkaq4u0ng5sOz6xqQX/CA3NNDFd05ji98Ax9DK0n88XAITjJ5WF
         Me8g==
X-Gm-Message-State: AOAM533Qv0c2HVGo0hkCza8bEGN5fs3xwVe1Z7NtOM3pbXskle14dHC1
        kFy9CllSaOeB5KvL3cZzZdU/MQcFDojLjYuHkHaA7+cckkkvc16MTk0xhcIdqcYt3+lPnnATIE4
        QRRzYc/1wOD22JPcZkMznTqPK8mXSq7lFccommn0=
X-Received: by 2002:a17:907:d17:: with SMTP id gn23mr511684ejc.719.1644873723783;
        Mon, 14 Feb 2022 13:22:03 -0800 (PST)
X-Google-Smtp-Source: ABdhPJzn9EFz2R0CbHcclhbUA8j9QL+yRr4fQpPA+X8j3jV9fWd1mKh939ozog2RabglBFb1m4mDQw==
X-Received: by 2002:a17:907:d17:: with SMTP id gn23mr511652ejc.719.1644873723619;
        Mon, 14 Feb 2022 13:22:03 -0800 (PST)
Received: from localhost.localdomain (xdsl-188-155-168-84.adslplus.ch. [188.155.168.84])
        by smtp.gmail.com with ESMTPSA id v24sm2327203ejf.7.2022.02.14.13.22.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 14 Feb 2022 13:22:02 -0800 (PST)
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
Subject: [PATCH v2 03/15] dt-bindings: pwm: intel,lgm: Include generic pwm schema
Date:   Mon, 14 Feb 2022 22:21:42 +0100
Message-Id: <20220214212154.8853-4-krzysztof.kozlowski@canonical.com>
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

