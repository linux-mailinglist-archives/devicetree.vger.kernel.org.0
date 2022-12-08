Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 647A0646806
	for <lists+devicetree@lfdr.de>; Thu,  8 Dec 2022 04:54:10 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229602AbiLHDyJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 7 Dec 2022 22:54:09 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50220 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229576AbiLHDyI (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 7 Dec 2022 22:54:08 -0500
Received: from phobos.denx.de (phobos.denx.de [IPv6:2a01:238:438b:c500:173d:9f52:ddab:ee01])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A87B18C463
        for <devicetree@vger.kernel.org>; Wed,  7 Dec 2022 19:54:06 -0800 (PST)
Received: from tr.lan (ip-86-49-120-218.bb.vodafone.cz [86.49.120.218])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        (Authenticated sender: marex@denx.de)
        by phobos.denx.de (Postfix) with ESMTPSA id 510DE8363D;
        Thu,  8 Dec 2022 04:53:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
        s=phobos-20191101; t=1670471644;
        bh=lpuBG2yZoTMgVBMI8KC17xviFeFI7olLWyma3F566Nk=;
        h=From:To:Cc:Subject:Date:From;
        b=kSgF8XPthdAlT1eaRx9wA+O7YUuGs2wHiq5emIGMT2co1e/ahOV42iymwDFEIdhPz
         ygszGalAHsTJXhQgpj23degzv6BiGhcX1QsEzvKXe/E/r7tfDpAcjrxYaRxio1JlU2
         QKBJt6IHZQq0X72sXiA0g7sAwGvZP5C8+A6dx5kMKHx+ZyCtaV3AK9D1D9jOjexkcc
         294T2xwcnI9YJ6eqIuZ8fmkXLdNsDl9ZTaCbX3O1+1iaNrWndrKyfXU/99etSFqxFr
         aMXFUbqON2LVp5i6MPDVRk3Ghl0dQeVXSIPy0YhtlpyhKEhNdyRdfnoy0jdebJkrcy
         2JOfUVjiFqhIA==
From:   Marek Vasut <marex@denx.de>
To:     alsa-devel@alsa-project.org
Cc:     Marek Vasut <marex@denx.de>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Shengjiu Wang <shengjiu.wang@nxp.com>,
        devicetree@vger.kernel.org
Subject: [PATCH] ASoC: dt-bindings: fsl-sai: Reinstate i.MX93 SAI compatible string
Date:   Thu,  8 Dec 2022 04:53:54 +0100
Message-Id: <20221208035354.255438-1-marex@denx.de>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Virus-Scanned: clamav-milter 0.103.6 at phobos.denx.de
X-Virus-Status: Clean
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
        SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The ASoC: dt-bindings: fsl-sai: Fix mx6ul and mx7d compatible strings
dropped i.MX93 SAI compatible string, reinstate it.

Fixes: 81b6c043e7ba ("ASoC: dt-bindings: fsl-sai: Fix mx6ul and mx7d compatible strings")
Signed-off-by: Marek Vasut <marex@denx.de>
---
Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Liam Girdwood <lgirdwood@gmail.com>
Cc: Mark Brown <broonie@kernel.org>
Cc: Rob Herring <robh+dt@kernel.org>
Cc: Shengjiu Wang <shengjiu.wang@nxp.com>
Cc: devicetree@vger.kernel.org
To: alsa-devel@alsa-project.org
---
 Documentation/devicetree/bindings/sound/fsl,sai.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/sound/fsl,sai.yaml b/Documentation/devicetree/bindings/sound/fsl,sai.yaml
index 022da1f4583d6..c59e4edd7570c 100644
--- a/Documentation/devicetree/bindings/sound/fsl,sai.yaml
+++ b/Documentation/devicetree/bindings/sound/fsl,sai.yaml
@@ -38,6 +38,7 @@ properties:
               - fsl,imx8mq-sai
               - fsl,imx8qm-sai
               - fsl,imx8ulp-sai
+              - fsl,imx93-sai
               - fsl,vf610-sai
 
   reg:
-- 
2.35.1

