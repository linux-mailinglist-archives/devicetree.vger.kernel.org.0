Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 071E46CABE5
	for <lists+devicetree@lfdr.de>; Mon, 27 Mar 2023 19:35:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232056AbjC0Rfl (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 27 Mar 2023 13:35:41 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38072 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229986AbjC0Rfl (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 27 Mar 2023 13:35:41 -0400
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4EC7E194
        for <devicetree@vger.kernel.org>; Mon, 27 Mar 2023 10:35:40 -0700 (PDT)
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
        by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <ukl@pengutronix.de>)
        id 1pgqkm-0002dD-5z; Mon, 27 Mar 2023 19:35:32 +0200
Received: from [2a0a:edc0:0:900:1d::77] (helo=ptz.office.stw.pengutronix.de)
        by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
        (envelope-from <ukl@pengutronix.de>)
        id 1pgqkl-00783W-GG; Mon, 27 Mar 2023 19:35:31 +0200
Received: from ukl by ptz.office.stw.pengutronix.de with local (Exim 4.94.2)
        (envelope-from <ukl@pengutronix.de>)
        id 1pgqkk-008Tyx-NQ; Mon, 27 Mar 2023 19:35:30 +0200
From:   =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= 
        <u.kleine-koenig@pengutronix.de>
To:     Daniel Lezcano <daniel.lezcano@linaro.org>,
        Thomas Gleixner <tglx@linutronix.de>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>
Cc:     Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH 1/2] dt-bindings: timer: fsl,imxgpt: Add i.MX8MP variant
Date:   Mon, 27 Mar 2023 19:35:25 +0200
Message-Id: <20230327173526.851734-2-u.kleine-koenig@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230327173526.851734-1-u.kleine-koenig@pengutronix.de>
References: <20230327173526.851734-1-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
X-Developer-Signature: v=1; a=openpgp-sha256; l=883; i=u.kleine-koenig@pengutronix.de; h=from:subject; bh=t1sQTKgL9SN03eNQyeu1XqKkFHSBoPYLSZjKhuxiBXA=; b=owEBbQGS/pANAwAKAY+A+1h9Ev5OAcsmYgBkIdPbXI5Be5qZkx6U2IJiQ+wR7DRUpiK/VPlzB O//VlYIT96JATMEAAEKAB0WIQQ/gaxpOnoeWYmt/tOPgPtYfRL+TgUCZCHT2wAKCRCPgPtYfRL+ Tk7xB/9i95hGiLuyBhgy+PUCitAYoQJVcEbWdiJ2e+nlMKPZmrrgWnckt2H3r5ek4CoUIwAUAeF G6vW893jO+jbrrJUGTkAy/V8UBYmG4y9TezeSWylZh86UYZpUqYR5QmcJ1OxuZyW8phnSCYfJA6 wuNNvslPYLyOp5nXBz/tNTGdXeC0O/Tqefg1mEq9q10Zn/FyDKNiv5hGfHriLYWricB9Tr8h5eH aiQS9zaq3oY/uHOD0kkwOeYqgbD6v6Nof3OZIyU+7d46VOVyMCGJ1O8yZkmbBMQWCSmq08i4bR+ LNuiudDva8b6Fv9d0URe1WyBzDkI//cW7fTA0XKxdxvcNuC8
X-Developer-Key: i=u.kleine-koenig@pengutronix.de; a=openpgp; fpr=0D2511F322BFAB1C1580266BE2DCDD9132669BD6
Content-Transfer-Encoding: 8bit
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org
X-Spam-Status: No, score=-2.3 required=5.0 tests=RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The i.MX8MP has the same register layout as the i.MX6DL, so add it as a
variant allowing to add the GPT IP blocks to the i.MX8MP's dtsi file.

Signed-off-by: Uwe Kleine-König <u.kleine-koenig@pengutronix.de>
---
 Documentation/devicetree/bindings/timer/fsl,imxgpt.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/timer/fsl,imxgpt.yaml b/Documentation/devicetree/bindings/timer/fsl,imxgpt.yaml
index 716c6afcca1f..f5f8b297da13 100644
--- a/Documentation/devicetree/bindings/timer/fsl,imxgpt.yaml
+++ b/Documentation/devicetree/bindings/timer/fsl,imxgpt.yaml
@@ -31,6 +31,7 @@ properties:
           - enum:
               - fsl,imx6sl-gpt
               - fsl,imx6sx-gpt
+              - fsl,imx8mp-gpt
               - fsl,imxrt1050-gpt
               - fsl,imxrt1170-gpt
           - const: fsl,imx6dl-gpt
-- 
2.39.2

