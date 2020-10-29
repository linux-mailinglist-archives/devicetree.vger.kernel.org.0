Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 954DD29E4E9
	for <lists+devicetree@lfdr.de>; Thu, 29 Oct 2020 08:49:47 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1731791AbgJ2Ht2 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 29 Oct 2020 03:49:28 -0400
Received: from mickerik.phytec.de ([195.145.39.210]:51576 "EHLO
        mickerik.phytec.de" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1731839AbgJ2Ht1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 29 Oct 2020 03:49:27 -0400
DKIM-Signature: v=1; a=rsa-sha256; d=phytec.de; s=a1; c=relaxed/simple;
        q=dns/txt; i=@phytec.de; t=1603955021; x=1606547021;
        h=From:Sender:Reply-To:Subject:Date:Message-Id:To:Cc:MIME-Version:Content-Type:
        Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:Resent-From:
        Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
        List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
        bh=2EBpuMyHprn0mrS41ctlTETH3PtVxtMaL9k4D6EyNvA=;
        b=ZRGPK3wdAV1meHnTo1GVskYocaiJ33UvDTn+z1vE19xmrZ9Fs7TqCZM5nmwNhyvA
        wdZZmDfMTkcZr0y9LpMho87HS+VTNJobPRUVfZoKhxhjHqQi4xfzjs1qiHInWnKn
        qa3zUxAM8srLEzBMqLP0Rzbn2pWDquYJ+Dv56tPYAXk=;
X-AuditID: c39127d2-269ff70000001c25-1f-5f9a694dab09
Received: from idefix.phytec.de (Unknown_Domain [172.16.0.10])
        by mickerik.phytec.de (PHYTEC Mail Gateway) with SMTP id 9D.4B.07205.D496A9F5; Thu, 29 Oct 2020 08:03:41 +0100 (CET)
Received: from lws-riedmueller.phytec.de ([172.16.23.108])
          by idefix.phytec.de (IBM Domino Release 9.0.1FP7)
          with ESMTP id 2020102908034090-690350 ;
          Thu, 29 Oct 2020 08:03:40 +0100 
From:   Stefan Riedmueller <s.riedmueller@phytec.de>
To:     Shawn Guo <shawnguo@kernel.org>
Cc:     Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        Stefan Riedmueller <s.riedmueller@phytec.de>
Subject: [PATCH v2 6/6] ARM: dts: imx6ul: segin: peb-av-02: Mark stmpe touch as wakeup-source
Date:   Thu, 29 Oct 2020 08:03:24 +0100
Message-Id: <20201029070324.16057-6-s.riedmueller@phytec.de>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20201029070324.16057-1-s.riedmueller@phytec.de>
References: <20201029070324.16057-1-s.riedmueller@phytec.de>
MIME-Version: 1.0
X-MIMETrack: Itemize by SMTP Server on Idefix/Phytec(Release 9.0.1FP7|August  17, 2016) at
 29.10.2020 08:03:41,
        Serialize by Router on Idefix/Phytec(Release 9.0.1FP7|August  17, 2016) at
 29.10.2020 08:03:41
X-TNEFEvaluated: 1
Content-Transfer-Encoding: quoted-printable
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFtrBLMWRmVeSWpSXmKPExsWyRoCBS9c3c1a8wcTHAhbzj5xjtXh41d9i
        0+NrrBb/9+xgt/i7fROLxYst4g5sHjtn3WX32LSqk81j85J6j/6/Bh6fN8kFsEZx2aSk5mSW
        pRbp2yVwZfzYuJu1oIWtYk73ZPYGxlmsXYycHBICJhJLP71j62Lk4hAS2Moo8WbdbUYI5xqj
        xJKJ7UwgVWwCRhILpjWC2SICyhKnNvaxgxQxC9xhlFi7/BYbSEJYIFbi/ZwVYEUsAqoSP+4u
        YQaxeQVsJM6fO8wOsU5eYual72A2p4CtxJTG+WC9QkA13XeOsUPUC0qcnPmEBWSBhMAVRokn
        u9ugmoUkTi8+CzaUWUBbYtnC18wTGAVmIemZhSS1gJFpFaNQbmZydmpRZrZeQUZlSWqyXkrq
        JkZg6B6eqH5pB2PfHI9DjEwcjIcYJTiYlUR4XwjOjBfiTUmsrEotyo8vKs1JLT7EKM3BoiTO
        u4G3JExIID2xJDU7NbUgtQgmy8TBKdXAmMmxanlHnqBnjpC2TJKemQAbl9E/i8vrt5WEyyRq
        b1u/bd7swMcp0qE/OXV4fWQ+X+R6k9YtqXTxn1W8vrvIG6Hsg9GdPbn6vBO8Lt8/9Nr7joVe
        ofgJqd/zW9i8NI6oMl5SfirzzPb5X589tzeHrV7RHnFMRcNz5a8FzoEt3+y9fNasZ9FWYinO
        SDTUYi4qTgQABytxmksCAAA=
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Mark the STMPE resistive touch controller as a wakeup-source.

Signed-off-by: Stefan Riedmueller <s.riedmueller@phytec.de>
---
 arch/arm/boot/dts/imx6ul-phytec-segin-peb-av-02.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/boot/dts/imx6ul-phytec-segin-peb-av-02.dtsi b/arch/ar=
m/boot/dts/imx6ul-phytec-segin-peb-av-02.dtsi
index b511c6dec427..7cda6944501d 100644
--- a/arch/arm/boot/dts/imx6ul-phytec-segin-peb-av-02.dtsi
+++ b/arch/arm/boot/dts/imx6ul-phytec-segin-peb-av-02.dtsi
@@ -58,6 +58,7 @@ stmpe: touchscreen@44 {
 		pinctrl-0 =3D <&pinctrl=5Fstmpe>;
 		interrupts =3D <3 IRQ=5FTYPE=5FLEVEL=5FLOW>;
 		interrupt-parent =3D <&gpio5>;
+		wakeup-source;
 		status =3D "disabled";
=20
 		stmpe=5Ftouchscreen {
--=20
2.25.1

