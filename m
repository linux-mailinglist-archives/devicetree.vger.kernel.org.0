Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9E61E557E01
	for <lists+devicetree@lfdr.de>; Thu, 23 Jun 2022 16:41:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229768AbiFWOld (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 23 Jun 2022 10:41:33 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37440 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231631AbiFWOl3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 23 Jun 2022 10:41:29 -0400
Received: from mickerik.phytec.de (mickerik.phytec.de [195.145.39.210])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8D3A445AE9
        for <devicetree@vger.kernel.org>; Thu, 23 Jun 2022 07:41:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; d=phytec.de; s=a4; c=relaxed/simple;
        q=dns/txt; i=@phytec.de; t=1655995285; x=1658587285;
        h=From:Sender:Reply-To:Subject:Date:Message-Id:To:Cc:MIME-Version:Content-Type:
        Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:Resent-From:
        Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
        List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
        bh=rWpz/NbNumD+nE549nrwaxuxbkAkpjLY9L+YcbbzVas=;
        b=AbZB8wz7TmX33YEu72tgZ7xqtCNtFdUs8U8eHDgL8iQfRrBa5HFbgN2TyDDo0KIM
        tPbW0KHu70gM8kUWQj2B8REs+Vgo1vMCvR+xa/jg7vfk2H+F7vpfI3hxUyyYbqC/
        hvg/qg2KE0nN7SJ1b0JD/EusDFzDRWUji6g8edQ9bx8=;
X-AuditID: c39127d2-b3a2d70000001dbe-ba-62b47b95ad3c
Received: from idefix.phytec.de (Unknown_Domain [172.25.0.20])
        by mickerik.phytec.de (PHYTEC Mail Gateway) with SMTP id 62.50.07614.59B74B26; Thu, 23 Jun 2022 16:41:25 +0200 (CEST)
Received: from augenblix2.phytec.de ([172.25.0.51])
          by idefix.phytec.de (IBM Domino Release 9.0.1FP7)
          with ESMTP id 2022062316412490-228335 ;
          Thu, 23 Jun 2022 16:41:24 +0200 
From:   Teresa Remmet <t.remmet@phytec.de>
To:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Fabio Estevam <festevam@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        Sascha Hauer <s.hauer@pengutronix.de>, upstream@phytec.de
Subject: [PATCH v4 2/3] arm64: defconfig: Enable gpio-fan support
Date:   Thu, 23 Jun 2022 16:41:23 +0200
Message-Id: <20220623144124.1821570-2-t.remmet@phytec.de>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220623144124.1821570-1-t.remmet@phytec.de>
References: <20220623144124.1821570-1-t.remmet@phytec.de>
MIME-Version: 1.0
X-MIMETrack: Itemize by SMTP Server on Idefix/Phytec(Release 9.0.1FP7|August  17, 2016) at
 23.06.2022 16:41:25,
        Serialize by Router on Idefix/Phytec(Release 9.0.1FP7|August  17, 2016) at
 23.06.2022 16:41:25
X-TNEFEvaluated: 1
Content-Transfer-Encoding: quoted-printable
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFjrDLMWRmVeSWpSXmKPExsWyRpJBRHdq9ZYkg78/eCzmHznHavHwqr9F
        34uHzBabHl9jtej6tZLZonXvEXaLv9s3sVi82CLuwOGxc9Zddo9NqzrZPO5c28PmsXlJvcfG
        dzuYPPr/Gnh83iQXwB7FZZOSmpNZllqkb5fAlTH5z0bWgs2sFR/X/WZsYHzI0sXIySEhYCLx
        a/Jm1i5GLg4hgW2MEp+aZrFBOOcZJe59/cIOUsUmoCHxdMVpJhBbRMBFovPBOhaQImaBRiaJ
        HccuMIMkhAUcJRpe94KNZRFQlTiw6R0riM0rYCmx6VUzI8Q6eYmZl76DDeUUsJL4vm8qmC0E
        VLPq9VVmiHpBiZMzn4AtkBC4wihxasI/ZohmIYnTi8+C2cwC2hLLFr5mnsAoMAtJzywkqQWM
        TKsYhXIzk7NTizKz9QoyKktSk/VSUjcxAkP88ET1SzsY++Z4HGJk4mA8xCjBwawkwvvi/+Yk
        Id6UxMqq1KL8+KLSnNTiQ4zSHCxK4rz3e5gShQTSE0tSs1NTC1KLYLJMHJxSDYzuPtu+/5rk
        seTLhSzWtiIzJcdSnpTX/IfZyk1KpgYod76VSxVZeDjqxhSfyGbTg4uPbGKrujJj/6XtGbV7
        J80veBXdyZT0pP7pSrmrPMvnuly6YmhaVB061dhkjcBNRamMrcEN+xh/q9/310lp8bctOLOx
        5vwR57otnGtW+4ffzTUwzL7u+k6JpTgj0VCLuag4EQBQu3XXXwIAAA==
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,SPF_HELO_PASS,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Enable gpio-fan support as this is needed by phyBOARD-Polis-i.MX8M Mini.

Signed-off-by: Teresa Remmet <t.remmet@phytec.de>
---
 arch/arm64/configs/defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index 7d1105343bc2..e04422b5e45a 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -577,6 +577,7 @@ CONFIG=5FCHARGER=5FBQ25890=3Dm
 CONFIG=5FCHARGER=5FBQ25980=3Dm
 CONFIG=5FSENSORS=5FARM=5FSCMI=3Dy
 CONFIG=5FSENSORS=5FARM=5FSCPI=3Dy
+CONFIG=5FSENSORS=5FGPIO=5FFAN=3Dm
 CONFIG=5FSENSORS=5FJC42=3Dm
 CONFIG=5FSENSORS=5FLM75=3Dm
 CONFIG=5FSENSORS=5FLM90=3Dm
--=20
2.25.1

