Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5D44B53B711
	for <lists+devicetree@lfdr.de>; Thu,  2 Jun 2022 12:27:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233582AbiFBK0u (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 2 Jun 2022 06:26:50 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48888 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233767AbiFBK0t (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 2 Jun 2022 06:26:49 -0400
X-Greylist: delayed 902 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Thu, 02 Jun 2022 03:26:44 PDT
Received: from mickerik.phytec.de (mickerik.phytec.de [195.145.39.210])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 443CF56773
        for <devicetree@vger.kernel.org>; Thu,  2 Jun 2022 03:26:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; d=phytec.de; s=a4; c=relaxed/simple;
        q=dns/txt; i=@phytec.de; t=1654164699; x=1656756699;
        h=From:Sender:Reply-To:Subject:Date:Message-Id:To:Cc:MIME-Version:Content-Type:
        Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:Resent-From:
        Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
        List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
        bh=oKfG7AujEBtPECKlIzCn6nPytNMUT8OeJM2nV4VllBc=;
        b=ZJvODy4BxF5fUF0KSmr004TpCJvU1010PaCXGZXnNGo2CIdCfZh+ZG4sqZePz3ED
        9llROLH+ULCdoULdQUUNVfoxlC5dZikkPdR1jFlTVC0QT8XfHwkPoubI4SXgmHxS
        BDtnxq0mJchccK+T0q3GMB8KuBEHVQlBXj32ART2SQI=;
X-AuditID: c39127d2-40b8624000001dbe-27-62988cdb1216
Received: from idefix.phytec.de (Unknown_Domain [172.25.0.20])
        by mickerik.phytec.de (PHYTEC Mail Gateway) with SMTP id 7E.E1.07614.BDC88926; Thu,  2 Jun 2022 12:11:39 +0200 (CEST)
Received: from augenblix2.phytec.de ([172.25.0.51])
          by idefix.phytec.de (IBM Domino Release 9.0.1FP7)
          with ESMTP id 2022060212113881-85941 ;
          Thu, 2 Jun 2022 12:11:38 +0200 
From:   Teresa Remmet <t.remmet@phytec.de>
To:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Fabio Estevam <festevam@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        Sascha Hauer <s.hauer@pengutronix.de>, upstream@phytec.de
Subject: [PATCH 1/3] bindings: arm: fsl: Add PHYTEC i.MX8MM devicetree bindings
Date:   Thu, 2 Jun 2022 12:11:36 +0200
Message-Id: <20220602101138.2492028-1-t.remmet@phytec.de>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-MIMETrack: Itemize by SMTP Server on Idefix/Phytec(Release 9.0.1FP7|August  17, 2016) at
 02.06.2022 12:11:39,
        Serialize by Router on Idefix/Phytec(Release 9.0.1FP7|August  17, 2016) at
 02.06.2022 12:11:39
X-TNEFEvaluated: 1
Content-Transfer-Encoding: quoted-printable
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFtrMLMWRmVeSWpSXmKPExsWyRpJBRPd2z4wkg5OreSzmHznHavHwqr9F
        34uHzBabHl9jtej6tZLZonXvEXaLv9s3sVi82CLuwOGxc9Zddo9NqzrZPO5c28PmsXlJvcfG
        dzuYPPr/Gnh83iQXwB7FZZOSmpNZllqkb5fAlTHltHfBao6Kx1+PMDYwHmTrYuTkkBAwkZj1
        6DFTFyMXh5DANkaJyzdms0E4Zxklrj9fzgJSxSagIfF0xWkmEFtEwEWi88E6FpAiZoFGJokd
        xy4wgySEBfwlXr1rBxvLIqAiMe3wBzCbV8BS4te6x4wQ6+QlZl76zg4RF5Q4OfMJ2CAJgSuM
        Er29u5ggioQkTi8+CzaUWUBbYtnC18wTGPlmIemZhSS1gJFpFaNQbmZydmpRZrZeQUZlSWqy
        XkrqJkZgwB6eqH5pB2PfHI9DjEwcjIcYJTiYlUR4S3ZNTRLiTUmsrEotyo8vKs1JLT7EKM3B
        oiTOe7+HKVFIID2xJDU7NbUgtQgmy8TBKdXAWMCm/prZOWTHjeV5IU+Z06tFk6ot7VPORbtN
        PHN6yz6Dlq23hS/wnzm02WnDQcfPbuU6T1elbu8OSbzV8uNInotVhEyyTeWNk1cMEp4wS1RV
        L4z9NvOgb7uD1qdMtvdVfpKtcYurnBv7GkPY1psJFUQW6FQUtc3eta5i5zOD/yaHlTf9DhdR
        YinOSDTUYi4qTgQAhy1FDEYCAAA=
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,SPF_HELO_PASS,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add devicetree bindings for i.MX8MM based phyCORE-i.MX8MM
and phyBOARD-Polis RDK.

Signed-off-by: Teresa Remmet <t.remmet@phytec.de>
---
 Documentation/devicetree/bindings/arm/fsl.yaml | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/fsl.yaml b/Documentation=
/devicetree/bindings/arm/fsl.yaml
index ef524378d449..84134fdcf4f1 100644
--- a/Documentation/devicetree/bindings/arm/fsl.yaml
+++ b/Documentation/devicetree/bindings/arm/fsl.yaml
@@ -865,6 +865,12 @@ properties:
           - const: toradex,verdin-imx8mm          # Verdin iMX8M Mini Modu=
le
           - const: fsl,imx8mm
=20
+      - description: PHYTEC phyCORE-i.MX8MM SoM based boards
+        items:
+          - const: phytec,imx8mm-phyboard-polis-rdk # phyBOARD-Polis RDK
+          - const: phytec,imx8mm-phycore-som        # phyCORE-i.MX8MM SoM
+          - const: fsl,imx8mm
+
       - description: Variscite VAR-SOM-MX8MM based boards
         items:
           - const: variscite,var-som-mx8mm-symphony
--=20
2.25.1

