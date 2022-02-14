Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id ED0904B43C1
	for <lists+devicetree@lfdr.de>; Mon, 14 Feb 2022 09:17:39 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241726AbiBNIRA (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 14 Feb 2022 03:17:00 -0500
Received: from mxb-00190b01.gslb.pphosted.com ([23.128.96.19]:43788 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S241728AbiBNIQ4 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 14 Feb 2022 03:16:56 -0500
Received: from smtp-relay-internal-1.canonical.com (smtp-relay-internal-1.canonical.com [185.125.188.123])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 149485F8F5
        for <devicetree@vger.kernel.org>; Mon, 14 Feb 2022 00:16:49 -0800 (PST)
Received: from mail-ed1-f69.google.com (mail-ed1-f69.google.com [209.85.208.69])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id EFFAE40513
        for <devicetree@vger.kernel.org>; Mon, 14 Feb 2022 08:16:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1644826607;
        bh=1xNmK//HjGNaIQp8eaYbachy53dRAmEobraHrPxOQCQ=;
        h=From:To:Subject:Date:Message-Id:In-Reply-To:References:
         MIME-Version;
        b=o3tEdobawI1R8rqF1yzEPyCxXisRbs4PX/sRxzDhDbEUaf5CDY5FgQ7TJGsWYBO8i
         nbFSnTo3ZnB8qhr8tdsVx2odTeXOJI4qzS07n3rYkCbvGmsIo8WCfT5jaluCVJys3B
         4esXek5aOW1MsotWiDerkLb/z1gms5DC8gsmScJpXmS9yIfqKZoBuzTB1X0EChL9Xi
         2du2Bd+eFPvko/9gEMiF3ghPoK2ZLsBAsfgE/YotGczKloP4N9L9XTXbpoaWVIYCVa
         8fas2tF+KEFYvM/rc8EuWaosW6EkHnXFAg+mYqo0Op9QkOPd4XdRIuQtDkmu9SaO/G
         GD0RUekNNzS2Q==
Received: by mail-ed1-f69.google.com with SMTP id cr7-20020a056402222700b0040f59dae606so9754978edb.11
        for <devicetree@vger.kernel.org>; Mon, 14 Feb 2022 00:16:47 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=1xNmK//HjGNaIQp8eaYbachy53dRAmEobraHrPxOQCQ=;
        b=IjDTm+DYCKcV9SrougU0tW67k+WvlXl5XgFDxDyU/0RZf521ITSwnX8W/PZJInCEu7
         +5S5hxl0+3GvxSXsEOifN0jdtvzhLa3pxlZPDN1cRi9HRpcinfW2pV5FFkgYZjFBi0ZM
         J1SGvUEO1zSzxEGjyM40n+axQqlosov/paKcHAZDotxbrUnYtPWrSE3Vu7D2WOLWYwVE
         y1dr6Xzh4F0x0SswownwPBwZNOyQdzF0icHdJ0yy9oluRYN6soaB42q02lFcYcf6A0bh
         IRmHuVIJmp6m1yvA1lfqq6sFEU8B19GWTMPyQl8fgGgmNJAF3EBJFyywFXjF1UyXJGbN
         CEYQ==
X-Gm-Message-State: AOAM530YJI1skVi4RH48P5TdvbjfDFKxFOfDn0g27gMZcUt8he0nt4mW
        YW0L2nrGH5raxwHRUjZOKQ4LIG8lUGedekU9BBpfM1KNUvBoY2cJdnX7bASnILu9U69EWS9Bb1J
        DU6P3HnlXZTJpVjEqvOm7ih/Dq86ahcX91AK+cxo=
X-Received: by 2002:a17:906:29d:: with SMTP id 29mr3045132ejf.183.1644826607509;
        Mon, 14 Feb 2022 00:16:47 -0800 (PST)
X-Google-Smtp-Source: ABdhPJyFwQjCgryJA08f/ZPqu91gByLS1lXUPn3UYgvNgieSyLAvCFuIrk9GLlp5SVzdDUHhPKf2qw==
X-Received: by 2002:a17:906:29d:: with SMTP id 29mr3045116ejf.183.1644826607316;
        Mon, 14 Feb 2022 00:16:47 -0800 (PST)
Received: from localhost.localdomain (xdsl-188-155-168-84.adslplus.ch. [188.155.168.84])
        by smtp.gmail.com with ESMTPSA id t21sm3363642edd.74.2022.02.14.00.16.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 14 Feb 2022 00:16:46 -0800 (PST)
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
Subject: [PATCH 05/15] dt-bindings: pwm: mxs: include generic pwm schema
Date:   Mon, 14 Feb 2022 09:15:55 +0100
Message-Id: <20220214081605.161394-5-krzysztof.kozlowski@canonical.com>
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
 Documentation/devicetree/bindings/pwm/mxs-pwm.yaml | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/pwm/mxs-pwm.yaml b/Documentation/devicetree/bindings/pwm/mxs-pwm.yaml
index 8740e076061e..a34cbc13f691 100644
--- a/Documentation/devicetree/bindings/pwm/mxs-pwm.yaml
+++ b/Documentation/devicetree/bindings/pwm/mxs-pwm.yaml
@@ -10,6 +10,9 @@ maintainers:
   - Shawn Guo <shawnguo@kernel.org>
   - Anson Huang <anson.huang@nxp.com>
 
+allOf:
+  - $ref: pwm.yaml#
+
 properties:
   compatible:
     enum:
@@ -28,7 +31,6 @@ properties:
 required:
   - compatible
   - reg
-  - "#pwm-cells"
   - fsl,pwm-number
 
 additionalProperties: false
-- 
2.32.0

