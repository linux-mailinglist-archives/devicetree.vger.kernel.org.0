Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9D8AE552B7D
	for <lists+devicetree@lfdr.de>; Tue, 21 Jun 2022 09:10:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1345981AbiFUHKx (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 21 Jun 2022 03:10:53 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43790 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236786AbiFUHKw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 21 Jun 2022 03:10:52 -0400
Received: from mickerik.phytec.de (mickerik.phytec.de [195.145.39.210])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 989C821E3D
        for <devicetree@vger.kernel.org>; Tue, 21 Jun 2022 00:10:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; d=phytec.de; s=a4; c=relaxed/simple;
        q=dns/txt; i=@phytec.de; t=1655795449; x=1658387449;
        h=From:Sender:Reply-To:Subject:Date:Message-Id:To:Cc:MIME-Version:Content-Type:
        Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:Resent-From:
        Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
        List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
        bh=rWpz/NbNumD+nE549nrwaxuxbkAkpjLY9L+YcbbzVas=;
        b=iDAjIz+3cGq9mstD7QqvsU3LG13P2bybg5JvuuOyAoeh+puJ5R3mYkbZMR3utQZQ
        Cw0GoLpSNkeUzqkJ0k6AdTHneChCh3QUCUmmVe6fyTp4u/VBQGtumy00ATXHv8Ad
        XPVBvL5r8M7BZgZXUCCj8jN1ShGZEOPSJ0wAVmoLzu8=;
X-AuditID: c39127d2-b3a2d70000001dbe-98-62b16ef90d09
Received: from idefix.phytec.de (Unknown_Domain [172.25.0.20])
        by mickerik.phytec.de (PHYTEC Mail Gateway) with SMTP id BF.57.07614.9FE61B26; Tue, 21 Jun 2022 09:10:49 +0200 (CEST)
Received: from augenblix2.phytec.de ([172.25.0.51])
          by idefix.phytec.de (IBM Domino Release 9.0.1FP7)
          with ESMTP id 2022062109104877-207924 ;
          Tue, 21 Jun 2022 09:10:48 +0200 
From:   Teresa Remmet <t.remmet@phytec.de>
To:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Fabio Estevam <festevam@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        Sascha Hauer <s.hauer@pengutronix.de>, upstream@phytec.de
Subject: [PATCH v3 2/3] arm64: defconfig: Enable gpio-fan support
Date:   Tue, 21 Jun 2022 09:10:47 +0200
Message-Id: <20220621071048.1876093-2-t.remmet@phytec.de>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220621071048.1876093-1-t.remmet@phytec.de>
References: <20220621071048.1876093-1-t.remmet@phytec.de>
MIME-Version: 1.0
X-MIMETrack: Itemize by SMTP Server on Idefix/Phytec(Release 9.0.1FP7|August  17, 2016) at
 21.06.2022 09:10:48,
        Serialize by Router on Idefix/Phytec(Release 9.0.1FP7|August  17, 2016) at
 21.06.2022 09:10:49
X-TNEFEvaluated: 1
Content-Transfer-Encoding: quoted-printable
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFjrJLMWRmVeSWpSXmKPExsWyRpJBRPdn3sYkg46JbBbzj5xjtXh41d+i
        78VDZotNj6+xWnT9Wsls0br3CLvF3+2bWCxebBF34PDYOesuu8emVZ1sHneu7WHz2Lyk3mPj
        ux1MHv1/DTw+b5ILYI/isklJzcksSy3St0vgypj8ZyNrwWbWio/rfjM2MD5k6WLk4JAQMJFY
        sjaui5GLQ0hgG6PE53utbBDOeUaJtc0nGLsYOTnYBDQknq44zQRiiwi4SHQ+WMcCUsQs0Mgk
        sePYBWaQhLCAo8TTzatZQWwWAVWJ01s2MINs4BWwlHh0zxEkLCEgLzHz0nd2EJtTwEpiy+Wz
        YLYQUMnLdRdZQGxeAUGJkzOfsEDUX2GUaF6pAmELSZxefBZsFbOAtsSyha+ZJzAKzELSMgtJ
        agEj0ypGodzM5OzUosxsvYKMypLUZL2U1E2MwOA+PFH90g7GvjkehxiZOBgPMUpwMCuJ8Npw
        b0gS4k1JrKxKLcqPLyrNSS0+xCjNwaIkznu/hylRSCA9sSQ1OzW1ILUIJsvEwSnVwChZMUtO
        rdDlpt/TolmR+bICO7tSP8tNsXlhHvbAd1Wr6cuMc1PeOKSuMjwxWTZ7x6Tp6zvs481Wx3hs
        WbSKM6z+2LrAL1k3G1gWqFc++9K1KG1C7bJ3QSt7Q3imPpi8vjbmosav93sOFM7ndd95/WB8
        iZ2+QZNFxvZwDR1BkSprCb7lDekaE5RYijMSDbWYi4oTAX7a2IFcAgAA
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

