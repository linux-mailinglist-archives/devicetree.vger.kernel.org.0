Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9413770CA8A
	for <lists+devicetree@lfdr.de>; Mon, 22 May 2023 22:14:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231810AbjEVUOZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 22 May 2023 16:14:25 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56862 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230131AbjEVUOY (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 22 May 2023 16:14:24 -0400
Received: from mail-ot1-x32a.google.com (mail-ot1-x32a.google.com [IPv6:2607:f8b0:4864:20::32a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9661DB6
        for <devicetree@vger.kernel.org>; Mon, 22 May 2023 13:14:23 -0700 (PDT)
Received: by mail-ot1-x32a.google.com with SMTP id 46e09a7af769-6ab1b3aabc9so437639a34.1
        for <devicetree@vger.kernel.org>; Mon, 22 May 2023 13:14:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1684786463; x=1687378463;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=sybPf+/8ke3E2YAuDVQ4i1Dw/8g4ElYsw86Q8QXTisc=;
        b=fdtZdqZ5PTr9Gd/g+3nfRg4Wl8JAViU0Zm2ekmkQJWF2MZQTySal6v3tVwLXkcMdsD
         H9WjIBj9b1PWWTiiTJJASlq4rdavesI24MT1EZSQXrr0Lc0UkV8ZRRNC5feAo7lOOxWM
         Pnpt8dR4iP3LEyFJgrE9ME/i8mIVvNybg8/vYmw4Aoq2ZVuNYkL8JQkuUrvRXAarOOqL
         Ipd4kVcZ/bRBD50fZl1qpx+uXsZcXprru8kDZ4qNBq6STcSndDsgQ2cLnccd2//hu4ZE
         jANyg+1W+Dk+EgvCLNLd8EqW5D3xbC+TLmWAFjitOS9cMYfc8VAV/Lung8+ozEpX/2AL
         tD/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684786463; x=1687378463;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=sybPf+/8ke3E2YAuDVQ4i1Dw/8g4ElYsw86Q8QXTisc=;
        b=eiJ+eZnDoKNP72X0xo/lU09n6v7thvtmVnfu0p1VsMaXgl1FBPX9ZYZjXZG2tENfyg
         y4jGqk1OaPoSxZxzKAPP2eKTBN1MWVN9TXCQ+ch3paVuugI9qMDEW+JsP+4WDu0YKi6N
         DafrXpfGENZxQLRwJNJW1EhYBn/A7aAKu3qsntX296l29uzU5wRaSfTsMew1x9sPMo2K
         AHtLTRXLvtlfRRi+BbNlpEqbBycfyoEphpzQSPmlKbJvhLCCJPlArgM0+ETGWlakEu8J
         NBnGRKaoqwFDQzISIJPXW7EJFG0g+XTCSrLCf6jxcMQYT5szNi81Hzn8+h2WPLrWFUzz
         p+IA==
X-Gm-Message-State: AC+VfDwY3LGEmeg7riTcSL54bKflobZNibapuWqtMhO39g/a5k1ZojkS
        74dmJrWDy7L0Q6dNjIxjy8c=
X-Google-Smtp-Source: ACHHUZ4bchwHW/pOdK54YmhP2UQGITCQajOokg1je7+vf/vl6aO/BJo5jeAKYzaLV09OklUVG8PZ5Q==
X-Received: by 2002:a05:6830:6209:b0:6af:78e9:4d88 with SMTP id cd9-20020a056830620900b006af78e94d88mr2735525otb.3.1684786462878;
        Mon, 22 May 2023 13:14:22 -0700 (PDT)
Received: from fabio-Precision-3551.. ([2804:14c:485:4b69:9a57:1c6:1c2e:4047])
        by smtp.gmail.com with ESMTPSA id q11-20020a056830018b00b006aaff32ac36sm2692857ota.66.2023.05.22.13.14.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 May 2023 13:14:22 -0700 (PDT)
From:   Fabio Estevam <festevam@gmail.com>
To:     shawnguo@kernel.org
Cc:     marex@denx.de, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, conor+dt@kernel.org,
        bhelgaas@google.com, Fabio Estevam <festevam@denx.de>
Subject: [PATCH v6 1/5] PCI: imx6: Use a more specific i.MX6SX GPR compatible
Date:   Mon, 22 May 2023 17:14:00 -0300
Message-Id: <20230522201404.660242-1-festevam@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Fabio Estevam <festevam@denx.de>

On the i.MX6SX case, the more specific GPR (General Purpose
Register) compatible, "fsl,imx6sx-iomuxc-gpr", can be used instead
of the more generic "fsl,imx6q-iomuxc-gpr" one.

Switch to using the more specific i.MX6SX GPR compatible.

The motivation for this change is to allow the introduction of
i.MX6SX GPR driver that will be used to control the i.MX6SX LDB bridge.

Old DTBs are unaffected by this change.

Suggested-by: Marek Vasut <marex@denx.de>
Signed-off-by: Fabio Estevam <festevam@denx.de>
---
Changes since v5:
- Newly introduced.

 drivers/pci/controller/dwc/pci-imx6.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/pci/controller/dwc/pci-imx6.c b/drivers/pci/controller/dwc/pci-imx6.c
index 52906f999f2b..4803e3c9ee37 100644
--- a/drivers/pci/controller/dwc/pci-imx6.c
+++ b/drivers/pci/controller/dwc/pci-imx6.c
@@ -1460,7 +1460,7 @@ static const struct imx6_pcie_drvdata drvdata[] = {
 		.flags = IMX6_PCIE_FLAG_IMX6_PHY |
 			 IMX6_PCIE_FLAG_IMX6_SPEED_CHANGE |
 			 IMX6_PCIE_FLAG_SUPPORTS_SUSPEND,
-		.gpr = "fsl,imx6q-iomuxc-gpr",
+		.gpr = "fsl,imx6sx-iomuxc-gpr",
 	},
 	[IMX6QP] = {
 		.variant = IMX6QP,
-- 
2.34.1

