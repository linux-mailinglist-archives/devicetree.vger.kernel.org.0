Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4A07F29E4E3
	for <lists+devicetree@lfdr.de>; Thu, 29 Oct 2020 08:49:45 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1731806AbgJ2HtV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 29 Oct 2020 03:49:21 -0400
Received: from mickerik.phytec.de ([195.145.39.210]:51578 "EHLO
        mickerik.phytec.de" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1732000AbgJ2HtL (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 29 Oct 2020 03:49:11 -0400
DKIM-Signature: v=1; a=rsa-sha256; d=phytec.de; s=a1; c=relaxed/simple;
        q=dns/txt; i=@phytec.de; t=1603955017; x=1606547017;
        h=From:Sender:Reply-To:Subject:Date:Message-Id:To:Cc:MIME-Version:Content-Type:
        Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:Resent-From:
        Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
        List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
        bh=6pNi0QdMkpb5jxHWyHUIMp4+ZUX4kbwaW0KngftVPgA=;
        b=j7K0XTjqztcwdhTou7zoq/hgegJhgJ7hXHUf1+URfWbh5UaE4YFyN2WX5GY/JxPZ
        CYN1CNsIwPy5iEXFSVIUhgPgsqn0Oiue067uBynT7dcrtW1z2tAbYblmM4U3EP6+
        OdT9b0Lq30zM1EkNimXBq1OUf8g0DplbQJv1ZarTDhg=;
X-AuditID: c39127d2-253ff70000001c25-1c-5f9a6949569f
Received: from idefix.phytec.de (Unknown_Domain [172.16.0.10])
        by mickerik.phytec.de (PHYTEC Mail Gateway) with SMTP id 4C.4B.07205.9496A9F5; Thu, 29 Oct 2020 08:03:37 +0100 (CET)
Received: from lws-riedmueller.phytec.de ([172.16.23.108])
          by idefix.phytec.de (IBM Domino Release 9.0.1FP7)
          with ESMTP id 2020102908033700-690347 ;
          Thu, 29 Oct 2020 08:03:37 +0100 
From:   Stefan Riedmueller <s.riedmueller@phytec.de>
To:     Shawn Guo <shawnguo@kernel.org>
Cc:     Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        Stefan Riedmueller <s.riedmueller@phytec.de>
Subject: [PATCH v2 3/6] ARM: dts: imx6: phytec: Add eeprom pagesize
Date:   Thu, 29 Oct 2020 08:03:21 +0100
Message-Id: <20201029070324.16057-3-s.riedmueller@phytec.de>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20201029070324.16057-1-s.riedmueller@phytec.de>
References: <20201029070324.16057-1-s.riedmueller@phytec.de>
MIME-Version: 1.0
X-MIMETrack: Itemize by SMTP Server on Idefix/Phytec(Release 9.0.1FP7|August  17, 2016) at
 29.10.2020 08:03:37,
        Serialize by Router on Idefix/Phytec(Release 9.0.1FP7|August  17, 2016) at
 29.10.2020 08:03:37
X-TNEFEvaluated: 1
Content-Transfer-Encoding: quoted-printable
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFtrGLMWRmVeSWpSXmKPExsWyRoCBS9czc1a8wac9whbzj5xjtXh41d9i
        0+NrrBb/9+xgt/i7fROLxYst4g5sHjtn3WX32LSqk81j85J6j/6/Bh6fN8kFsEZx2aSk5mSW
        pRbp2yVwZRzu7WEvuMFbcfzjTZYGxpvcXYycHBICJhIPjq1h6mLk4hAS2Moo8XTNfTYI5xqj
        xJct09hBqtgEjCQWTGtkArFFBJQlTm3sYwcpYha4wyixdvktoA4ODmEBZ4lDj5NAalgEVCVO
        /9rMDhLmFbCROHGKCWKZvMTMS9/BRnIK2EpMaZzPBmILAZV03zkGFucVEJQ4OfMJC8h4CYEr
        jBKbu+6yQDQLSZxefJYZxGYW0JZYtvA18wRGgVlIemYhSS1gZFrFKJSbmZydWpSZrVeQUVmS
        mqyXkrqJERi2hyeqX9rB2DfH4xAjEwfjIUYJDmYlEd4XgjPjhXhTEiurUovy44tKc1KLDzFK
        c7AoifNu4C0JExJITyxJzU5NLUgtgskycXBKNTAGx0xLYU6ZoR2wiFtg7dEDbbk9RjtM5XIX
        ngvM3jOJa8Wj3/7mCyctmHT/cop2nxHzoa43N3admrd528E7whP+H5BY3HAttevEDFkrVvbs
        O1qNintqQ9Im5sk9z3ij+/WBUM+LfVFlSXt4NV7+4Vqzs+Rn+lHXyjIOP5Y1UyVY5JRm1hxa
        V/1IiaU4I9FQi7moOBEAtn2DOEkCAAA=
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Defining the EEPROM pagesize can increase the write speed significantly.
Set it to the pagesize stated in the EEPROM's datasheet for
phyCORE-i.MX 6UL, phyCORE-i.MX 6 and phyFLEX-i.MX 6.

Signed-off-by: Stefan Riedmueller <s.riedmueller@phytec.de>
---
 arch/arm/boot/dts/imx6qdl-phytec-pfla02.dtsi      | 1 +
 arch/arm/boot/dts/imx6qdl-phytec-phycore-som.dtsi | 1 +
 arch/arm/boot/dts/imx6ul-phytec-phycore-som.dtsi  | 1 +
 3 files changed, 3 insertions(+)

diff --git a/arch/arm/boot/dts/imx6qdl-phytec-pfla02.dtsi b/arch/arm/boot/d=
ts/imx6qdl-phytec-pfla02.dtsi
index d51852857758..7a1e53195785 100644
--- a/arch/arm/boot/dts/imx6qdl-phytec-pfla02.dtsi
+++ b/arch/arm/boot/dts/imx6qdl-phytec-pfla02.dtsi
@@ -117,6 +117,7 @@ &i2c1 {
=20
 	som=5Feeprom: eeprom@50 {
 		compatible =3D "catalyst,24c32", "atmel,24c32";
+		pagesize =3D <32>;
 		reg =3D <0x50>;
 	};
=20
diff --git a/arch/arm/boot/dts/imx6qdl-phytec-phycore-som.dtsi b/arch/arm/b=
oot/dts/imx6qdl-phytec-phycore-som.dtsi
index a3f4e8f6cc9e..a80aa08a37cb 100644
--- a/arch/arm/boot/dts/imx6qdl-phytec-phycore-som.dtsi
+++ b/arch/arm/boot/dts/imx6qdl-phytec-phycore-som.dtsi
@@ -85,6 +85,7 @@ &i2c3 {
=20
 	eeprom@50 {
 		compatible =3D "st,24c32", "atmel,24c32";
+		pagesize =3D <32>;
 		reg =3D <0x50>;
 	};
=20
diff --git a/arch/arm/boot/dts/imx6ul-phytec-phycore-som.dtsi b/arch/arm/bo=
ot/dts/imx6ul-phytec-phycore-som.dtsi
index ce14ce685d12..11fa3fb5947b 100644
--- a/arch/arm/boot/dts/imx6ul-phytec-phycore-som.dtsi
+++ b/arch/arm/boot/dts/imx6ul-phytec-phycore-som.dtsi
@@ -75,6 +75,7 @@ &i2c1 {
=20
 	eeprom@52 {
 		compatible =3D "catalyst,24c32", "atmel,24c32";
+		pagesize =3D <32>;
 		reg =3D <0x52>;
 	};
 };
--=20
2.25.1

