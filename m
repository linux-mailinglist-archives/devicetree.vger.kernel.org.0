Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C53596766A3
	for <lists+devicetree@lfdr.de>; Sat, 21 Jan 2023 15:06:40 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229679AbjAUOGj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 21 Jan 2023 09:06:39 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56380 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229450AbjAUOGi (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 21 Jan 2023 09:06:38 -0500
X-Greylist: delayed 310 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Sat, 21 Jan 2023 06:06:37 PST
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.126.134])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2628037572
        for <devicetree@vger.kernel.org>; Sat, 21 Jan 2023 06:06:36 -0800 (PST)
Received: from stefanw-SCHENKER ([37.4.248.41]) by mrelayeu.kundenserver.de
 (mreue011 [212.227.15.167]) with ESMTPSA (Nemesis) id
 1MYedH-1pDtFm3qqZ-00VhCd; Sat, 21 Jan 2023 15:01:10 +0100
From:   Stefan Wahren <stefan.wahren@i2se.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Shawn Guo <shawnguo@kernel.org>,
        =?UTF-8?q?S=C3=A9bastien=20Szymanski?= 
        <sebastien.szymanski@armadeus.com>,
        Fabio Estevam <festevam@gmail.com>
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Stefan Wahren <stefan.wahren@i2se.com>
Subject: [PATCH 1/2] dt-bindings: arm: fsl: Fix bindings for APF28Dev board
Date:   Sat, 21 Jan 2023 15:00:52 +0100
Message-Id: <20230121140053.10242-1-stefan.wahren@i2se.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Provags-ID: V03:K1:m/qtbCjTa6f6YCKuwLo8SE2HJuwwQsMlWM8AeR1+mDd8cui9W9L
 IhygPd2kLBJ+pkcOyVtMELEesmoaELyOxGgRJh+uScQ47MbCkad8jFPFsSBLZj+1Yo9DBWg
 XMbtUQSQUJoCMOrIkhQT/WUEl1ScpdPjMZR7wl2o6bS4gMaclB/5rYy4ZR6cuxxIJM2xwbb
 +rQax9f0Do1ozYRSMq8xA==
UI-OutboundReport: notjunk:1;M01:P0:KWuc9aDLCt4=;nes2RBEFZzJlDo4K1gLG4e3naL8
 U+jShRUUfCHLAXcqKA+5w066CR1+/ORoqVMcsPAXnOImvJnvdjeGF5EZe5feQXpsaZV6X1e7J
 fvRUkbPIpN/7PFiYkxn/rMiMEIZ1W8hxT+Q2I4QXmuzoozRVwKuHYzEj7BAR8hebaVCqZhQPk
 hYnP3oghgAcJ7/B66JYMhRi3KKXY/tT8N6WKLRprVCVpE3VUNQET7h4oSKy8hsbjXlg1iTl2a
 JFu0usb3mBISCwP+aHq0Z7cmitILf61yh7UseE6I/9avJSXuM48Y9oBnsWA8gNKLqhbM0q4h2
 qFRRgbXEHbgO5HcMU311/SAFO1syYOTLqYvTeMTc1nmDI0nid3HJ06BlbB9SCiFK/v2Zni/f7
 FjT9xCVopnB+KNk+DsVRPedRzZ3mo9orrWxWvaeEmlpAu4OscxoqMzO+VfSmVm62vdFDuuSOK
 61zG5PFN8hsINWhmQPdLT+DG2JlPuUsXYqAC2tgzp4Gr/PYMhY8qF37pdrDTsvgeXzg+Eu00k
 nz/9dtp2Lkrjz00nObHUX27Vv8Re9HFF4soY8SnSkRe6FOnSqUlLw7n7OfFX7+1TBlRsZYObY
 5FmIgttjC1BuMCo2Deb42BbKripGWMXjnjGpyv6zisiB2PsfaHFKjou6D/m5bZEuVIUlGe76H
 1D/0V9OFD2IOYAjWOppVRz8Jv5F/N1rORa/g929Z3A==
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Adjust the compatibles for the APF28Dev board in order to fix the
dtbs_check warning:

  DTC_CHK arch/arm/boot/dts/imx28-apf28dev.dtb
/home/stefanw/torvalds/arch/arm/boot/dts/imx28-apf28dev.dtb: /: compatible:
  oneOf' conditional failed, one must be fixed:
  ['armadeus,imx28-apf28dev', 'armadeus,imx28-apf28', 'fsl,imx28'] is too long
  ['armadeus,imx28-apf28dev', 'armadeus,imx28-apf28', 'fsl,imx28'] is too short
  ...

Fixes: 3d735471d066 ("dt-bindings: arm: Document Armadeus SoM and Dev boards devicetree binding")
Signed-off-by: Stefan Wahren <stefan.wahren@i2se.com>
---
 Documentation/devicetree/bindings/arm/fsl.yaml | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/arm/fsl.yaml b/Documentation/devicetree/bindings/arm/fsl.yaml
index 3ba354578e8f..599e8fcec6bc 100644
--- a/Documentation/devicetree/bindings/arm/fsl.yaml
+++ b/Documentation/devicetree/bindings/arm/fsl.yaml
@@ -88,12 +88,18 @@ properties:
         items:
           - enum:
               - armadeus,imx28-apf28      # APF28 SoM
-              - armadeus,imx28-apf28dev   # APF28 SoM on APF28Dev board
               - fsl,imx28-evk
               - i2se,duckbill
               - i2se,duckbill-2
               - technologic,imx28-ts4600
           - const: fsl,imx28
+
+      - description: i.MX28 Armadeus Systems APF28Dev Board
+        items:
+          - const: armadeus,imx28-apf28dev
+          - const: armadeus,imx28-apf28
+          - const: fsl,imx28
+
       - description: i.MX28 Duckbill 2 based Boards
         items:
           - enum:
-- 
2.34.1

