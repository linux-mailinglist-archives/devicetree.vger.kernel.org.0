Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 762C6673CAE
	for <lists+devicetree@lfdr.de>; Thu, 19 Jan 2023 15:46:51 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231153AbjASOqs (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 19 Jan 2023 09:46:48 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36224 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231162AbjASOqY (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 19 Jan 2023 09:46:24 -0500
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E242D8C927
        for <devicetree@vger.kernel.org>; Thu, 19 Jan 2023 06:43:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1674139416; x=1705675416;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=MxvAgWwx3j8bs/X7hks889d23qZmaIa2T4rMGUUlcGE=;
  b=lM2cyZEljUOAEMQv6V/QqKlQQmOiLTuyRi6TvBsHkTAVNDM7TfsPP5sq
   reRBWZ7AG39hhUGsbCHB4FFQlGZaKslrdMjD+aSI4c4Y+57HmJjChvuPv
   3gcMrUQPCJGQu/dcr66YgZIjz/ccXcBKVMpByTv52/fP4GYyjhVEUw76H
   Drt/rpBZ6SISnOTOBuWlbmvJhpy/MWlRC93JYgn7191oQZUk6Tsw25ehd
   qmNBbV8TvjKo6Vt9L2yKiO141V/0ETvIMNiKBt5o6LMWQYNsiUalKIoa+
   +PuCtRyfaDFp7muc/hK1YQYjTiwqNyvPkZw0Z+n9070d3VvA1k2RnZCWS
   g==;
X-IronPort-AV: E=Sophos;i="5.97,229,1669071600"; 
   d="scan'208";a="28537302"
Received: from unknown (HELO tq-pgp-pr1.tq-net.de) ([192.168.6.15])
  by mx1-pgp.tq-group.com with ESMTP; 19 Jan 2023 15:42:43 +0100
Received: from mx1.tq-group.com ([192.168.6.7])
  by tq-pgp-pr1.tq-net.de (PGP Universal service);
  Thu, 19 Jan 2023 15:42:43 +0100
X-PGP-Universal: processed;
        by tq-pgp-pr1.tq-net.de on Thu, 19 Jan 2023 15:42:43 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1674139363; x=1705675363;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=MxvAgWwx3j8bs/X7hks889d23qZmaIa2T4rMGUUlcGE=;
  b=aSTjBsEtY/VD7iKipXUekoChgXfUDK04nhTpZqbVujOTk0YEil3TsogR
   Q1VZOvI6SQg8SDxwa6FXjS6xjS0jrthRb3fWtBhGtuys3WnxI+syCNOLR
   MMSYGIlpmCsb5lSDHuCsh4A1Lc29gxPryHXTfafranMkuQXzPd5+voACU
   BarJGnQOBky/z/loXrdx+NJ/05yaoGNsu30K1+x4g+8bd/eRn4j1f3McO
   cZi+kgkL5hTNw1Sbt5G1j8rdxf/kvAEj0AUY+pnWJiL7ysW/ANDyZhXar
   3VgTdxXq0ZlqViHS+7vcpOzk3/Xvo+7Ob7i54yhxwLOwFqeeq0G0F4GX9
   A==;
X-IronPort-AV: E=Sophos;i="5.97,229,1669071600"; 
   d="scan'208";a="28537300"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 19 Jan 2023 15:42:43 +0100
Received: from steina-w.tq-net.de (unknown [10.123.53.21])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id 34949280072;
        Thu, 19 Jan 2023 15:42:43 +0100 (CET)
From:   Alexander Stein <alexander.stein@ew.tq-group.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Arnd Bergmann <arnd@arndb.de>, Olof Johansson <olof@lixom.net>,
        Shawn Guo <shawnguo@kernel.org>, Li Yang <leoyang.li@nxp.com>,
        Russell King <linux@armlinux.org.uk>,
        Marek Vasut <marex@denx.de>,
        Marcel Ziswiler <marcel.ziswiler@toradex.com>
Cc:     Matthias Schiffer <matthias.schiffer@tq-group.com>, soc@kernel.org,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Alexander Stein <alexander.stein@ew.tq-group.com>
Subject: [PATCH 1/9] dt-bindings: arm: fsl: add TQ-Systems LS1021A board
Date:   Thu, 19 Jan 2023 15:42:28 +0100
Message-Id: <20230119144236.3541751-2-alexander.stein@ew.tq-group.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230119144236.3541751-1-alexander.stein@ew.tq-group.com>
References: <20230119144236.3541751-1-alexander.stein@ew.tq-group.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_EF,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Matthias Schiffer <matthias.schiffer@tq-group.com>

TQMLS102xA is a SOM family using NXP LS1021A CPU family.
MBLS102xA is an evaluation mainbord for this SOM.

Signed-off-by: Matthias Schiffer <matthias.schiffer@tq-group.com>
Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
---
 Documentation/devicetree/bindings/arm/fsl.yaml | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/fsl.yaml b/Documentation/devicetree/bindings/arm/fsl.yaml
index 3ba354578e8f9..b54a920934c9d 100644
--- a/Documentation/devicetree/bindings/arm/fsl.yaml
+++ b/Documentation/devicetree/bindings/arm/fsl.yaml
@@ -1164,6 +1164,13 @@ properties:
               - fsl,ls1021a-twr
           - const: fsl,ls1021a
 
+      - description: TQ-Systems TQMLS1021A SoM on MBLS102xA board
+        items:
+          - enum:
+              - tq,ls1021a-tqmls1021a-mbls102xa
+          - const: tq,ls1021a-tqmls1021a
+          - const: fsl,ls1021a
+
       - description: LS1028A based Boards
         items:
           - enum:
-- 
2.34.1

