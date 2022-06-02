Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 55C0753B70D
	for <lists+devicetree@lfdr.de>; Thu,  2 Jun 2022 12:27:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232632AbiFBK1K (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 2 Jun 2022 06:27:10 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49690 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233760AbiFBK1A (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 2 Jun 2022 06:27:00 -0400
Received: from mickerik.phytec.de (mickerik.phytec.de [195.145.39.210])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 672265715F
        for <devicetree@vger.kernel.org>; Thu,  2 Jun 2022 03:26:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; d=phytec.de; s=a4; c=relaxed/simple;
        q=dns/txt; i=@phytec.de; t=1654164699; x=1656756699;
        h=From:Sender:Reply-To:Subject:Date:Message-Id:To:Cc:MIME-Version:Content-Type:
        Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:Resent-From:
        Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
        List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
        bh=rWpz/NbNumD+nE549nrwaxuxbkAkpjLY9L+YcbbzVas=;
        b=KAfT8YOxFMTYfB03xtBB43JkEgfola+NBLZzIBaoP1fMtbIkidb2/62rOcQJ/Jp2
        IMMs38nkAky/mNFqnsOlh33rXC95Eni9Fbj29wJ8+vvFH2M+ynzwEO4tiP4OypYU
        12a+Vve77aBIxRryj4ku2wgZI144XU+Q1a3bT9HI5jc=;
X-AuditID: c39127d2-b3a2d70000001dbe-29-62988cdb289c
Received: from idefix.phytec.de (Unknown_Domain [172.25.0.20])
        by mickerik.phytec.de (PHYTEC Mail Gateway) with SMTP id 2F.E1.07614.BDC88926; Thu,  2 Jun 2022 12:11:39 +0200 (CEST)
Received: from augenblix2.phytec.de ([172.25.0.51])
          by idefix.phytec.de (IBM Domino Release 9.0.1FP7)
          with ESMTP id 2022060212113908-85942 ;
          Thu, 2 Jun 2022 12:11:39 +0200 
From:   Teresa Remmet <t.remmet@phytec.de>
To:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Fabio Estevam <festevam@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        Sascha Hauer <s.hauer@pengutronix.de>, upstream@phytec.de
Subject: [PATCH 2/3] arm64: defconfig: Enable gpio-fan support
Date:   Thu, 2 Jun 2022 12:11:37 +0200
Message-Id: <20220602101138.2492028-2-t.remmet@phytec.de>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220602101138.2492028-1-t.remmet@phytec.de>
References: <20220602101138.2492028-1-t.remmet@phytec.de>
MIME-Version: 1.0
X-MIMETrack: Itemize by SMTP Server on Idefix/Phytec(Release 9.0.1FP7|August  17, 2016) at
 02.06.2022 12:11:39,
        Serialize by Router on Idefix/Phytec(Release 9.0.1FP7|August  17, 2016) at
 02.06.2022 12:11:39
X-TNEFEvaluated: 1
Content-Transfer-Encoding: quoted-printable
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFjrDLMWRmVeSWpSXmKPExsWyRpJBRPd2z4wkg8/vJCzmHznHavHwqr9F
        34uHzBabHl9jtej6tZLZonXvEXaLv9s3sVi82CLuwOGxc9Zddo9NqzrZPO5c28PmsXlJvcfG
        dzuYPPr/Gnh83iQXwB7FZZOSmpNZllqkb5fAlTH5z0bWgs2sFR/X/WZsYHzI0sXIySEhYCKx
        4P0jIJuLQ0hgG6NEY9t0RgjnLKPEoobzzCBVbAIaEk9XnGYCsUUEXCQ6H6wD62AWaGSS2HHs
        AliRsICdxM5fXYwgNouAisSNt5fAGngFLCU6785lhVgnLzHz0nd2EJtTwEpi9r1VYDVCQDVP
        1s5lhKgXlDg58wnYAgmBK4wSvb27mCCahSROLz4LtoxZQFti2cLXzBMYBWYh6ZmFJLWAkWkV
        o1BuZnJ2alFmtl5BRmVJarJeSuomRmCIH56ofmkHY98cj0OMTByMhxglOJiVRHhLdk1NEuJN
        SaysSi3Kjy8qzUktPsQozcGiJM57v4cpUUggPbEkNTs1tSC1CCbLxMEp1cA42f+cgET69v48
        60w/xmksriev72GtuLZCJMnSqdRILfrxPctrzawf/k+6ksLFu/fl/A6h0mNlT1+Ezj2cfGHX
        8mbmadaLBOft/cujK33gsNfxo/4+InNnLmT9ci/rhnINV9uCT3k8KxakeUzjzmu4x98YPk9p
        UnTanbkx5/Yw6phdKNl6dM4iJZbijERDLeai4kQAtSrl6V8CAAA=
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

