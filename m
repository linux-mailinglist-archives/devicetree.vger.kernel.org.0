Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8D4BC359E74
	for <lists+devicetree@lfdr.de>; Fri,  9 Apr 2021 14:17:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233019AbhDIMRn (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 9 Apr 2021 08:17:43 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55846 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229801AbhDIMRl (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 9 Apr 2021 08:17:41 -0400
Received: from mail-out.m-online.net (mail-out.m-online.net [IPv6:2001:a60:0:28:0:1:25:1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3BF75C061760
        for <devicetree@vger.kernel.org>; Fri,  9 Apr 2021 05:17:26 -0700 (PDT)
Received: from frontend01.mail.m-online.net (unknown [192.168.8.182])
        by mail-out.m-online.net (Postfix) with ESMTP id 4FGxvy5BSYz1s3jm;
        Fri,  9 Apr 2021 14:17:18 +0200 (CEST)
Received: from localhost (dynscan1.mnet-online.de [192.168.6.70])
        by mail.m-online.net (Postfix) with ESMTP id 4FGxvy4YFQz1qqwq;
        Fri,  9 Apr 2021 14:17:18 +0200 (CEST)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from mail.mnet-online.de ([192.168.8.182])
        by localhost (dynscan1.mail.m-online.net [192.168.6.70]) (amavisd-new, port 10024)
        with ESMTP id vp04uE0GItTW; Fri,  9 Apr 2021 14:17:17 +0200 (CEST)
X-Auth-Info: 6cUHTxaw6yLdTy3TORAiyNMbP0Gi19vgyCj4vDD9cvg=
Received: from localhost.localdomain (85-222-111-42.dynamic.chello.pl [85.222.111.42])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by mail.mnet-online.de (Postfix) with ESMTPSA;
        Fri,  9 Apr 2021 14:17:17 +0200 (CEST)
From:   Lukasz Majewski <lukma@denx.de>
To:     Rob Herring <robh+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
        Krzysztof Kozlowski <krzk@kernel.org>
Cc:     devicetree@vger.kernel.org,
        Oleksij Rempel <linux@rempel-privat.de>,
        Lukasz Majewski <lukma@denx.de>
Subject: [PATCH 1/2] dt-bindings: arm: fsl: add Liebherr's XEA board
Date:   Fri,  9 Apr 2021 14:17:06 +0200
Message-Id: <20210409121706.29961-1-lukma@denx.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add Liebherr's XEA imx28 based board.

Signed-off-by: Lukasz Majewski <lukma@denx.de>
---
 Documentation/devicetree/bindings/arm/fsl.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/fsl.yaml b/Documentation/devicetree/bindings/arm/fsl.yaml
index 297c87f45db8..731ba104ff2e 100644
--- a/Documentation/devicetree/bindings/arm/fsl.yaml
+++ b/Documentation/devicetree/bindings/arm/fsl.yaml
@@ -92,6 +92,7 @@ properties:
               - fsl,imx28-evk
               - i2se,duckbill
               - i2se,duckbill-2
+              - lwn,imx28-xea
               - technologic,imx28-ts4600
           - const: fsl,imx28
       - description: i.MX28 Duckbill 2 based Boards
-- 
2.20.1

