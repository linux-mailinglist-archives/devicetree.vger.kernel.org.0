Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id F35D653B992
	for <lists+devicetree@lfdr.de>; Thu,  2 Jun 2022 15:21:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231612AbiFBNVe (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 2 Jun 2022 09:21:34 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47282 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235103AbiFBNVb (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 2 Jun 2022 09:21:31 -0400
Received: from mickerik.phytec.de (mickerik.phytec.de [195.145.39.210])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 58A0A271787
        for <devicetree@vger.kernel.org>; Thu,  2 Jun 2022 06:21:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; d=phytec.de; s=a4; c=relaxed/simple;
        q=dns/txt; i=@phytec.de; t=1654176087; x=1656768087;
        h=From:Sender:Reply-To:Subject:Date:Message-Id:To:Cc:MIME-Version:Content-Type:
        Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:Resent-From:
        Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
        List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
        bh=cdahC/5nlyUIheY+UzGUdILqSwg5Y/JBiHdKZ40eYfk=;
        b=PGcxQM5MFKtqjM6T+RunQxDk4FMWl0auLjPZ1rt9CdUs0BB2QOXfqpppl2nWN9Pq
        9e2PPUM40/xxbT3ZhUl2N47qjngbSVh+4E2Wi2BL4gBFXdrd26WOs7mYOjKPqamk
        2diAD8OLNIMRcxLzxHFGQdQ+bCBFoVB+290dRVgsrP4=;
X-AuditID: c39127d2-b5e2e70000001dbe-79-6298b9574ca9
Received: from idefix.phytec.de (Unknown_Domain [172.25.0.20])
        by mickerik.phytec.de (PHYTEC Mail Gateway) with SMTP id 8A.04.07614.759B8926; Thu,  2 Jun 2022 15:21:27 +0200 (CEST)
Received: from augenblix2.phytec.de ([172.25.0.51])
          by idefix.phytec.de (IBM Domino Release 9.0.1FP7)
          with ESMTP id 2022060215212724-87583 ;
          Thu, 2 Jun 2022 15:21:27 +0200 
From:   Teresa Remmet <t.remmet@phytec.de>
To:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Fabio Estevam <festevam@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        Sascha Hauer <s.hauer@pengutronix.de>, upstream@phytec.de
Subject: [PATCH v2 2/3] arm64: defconfig: Enable gpio-fan support
Date:   Thu, 2 Jun 2022 15:21:26 +0200
Message-Id: <20220602132127.95333-2-t.remmet@phytec.de>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220602132127.95333-1-t.remmet@phytec.de>
References: <20220602132127.95333-1-t.remmet@phytec.de>
MIME-Version: 1.0
X-MIMETrack: Itemize by SMTP Server on Idefix/Phytec(Release 9.0.1FP7|August  17, 2016) at
 02.06.2022 15:21:27,
        Serialize by Router on Idefix/Phytec(Release 9.0.1FP7|August  17, 2016) at
 02.06.2022 15:21:27
X-TNEFEvaluated: 1
Content-Transfer-Encoding: quoted-printable
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFjrNLMWRmVeSWpSXmKPExsWyRpJBRDd854wkg28z1S3mHznHavHwqr9F
        34uHzBabHl9jtej6tZLZonXvEXaLv9s3sVi82CLuwOGxc9Zddo9NqzrZPO5c28PmsXlJvcfG
        dzuYPPr/Gnh83iQXwB7FZZOSmpNZllqkb5fAlbF/wgnWgq2sFR/X/WZsYHzI0sXIySEhYCJx
        49gWxi5GLg4hgW2MEveeH2aDcM4ySlye/p4NpIpNQEPi6YrTTCC2iICLROeDdSwgRcwCjUwS
        O45dYAZJCAs4Sux9OgmsiEVARaLn1h9WEJtXwFxiyunZbBDr5CVmXvrODmJzClhI7Fy4DSwu
        BFSzec8tNoh6QYmTM59AnXeFUeLSlyQIW0ji9OKzYLuYBbQlli18zTyBUWAWkpZZSFILGJlW
        MQrlZiZnpxZlZusVZFSWpCbrpaRuYgQG+OGJ6pd2MPbN8TjEyMTBeIhRgoNZSYS3ZNfUJCHe
        lMTKqtSi/Pii0pzU4kOM0hwsSuK893uYEoUE0hNLUrNTUwtSi2CyTBycUg2MMjdm9VkKfKhM
        aOex3bwvMkzF/sDNsECVNh+L+d0HpubU/2KO+zutfpL2AgEPZZ1Z0Ys+r/yucYBbOPdu5qll
        Iod231s1eb+7a7RNveKiUjWtNLZvtzdpXWh36o8q6N6w9KvpvO9XbEKjXvP7qyzQOBq8ku+Q
        2RsFJek/b+eWhv9/xnyj8W2aEktxRqKhFnNRcSIAnk4/x14CAAA=
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

