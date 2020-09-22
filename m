Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 67BC3273E76
	for <lists+devicetree@lfdr.de>; Tue, 22 Sep 2020 11:23:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726533AbgIVJX4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 22 Sep 2020 05:23:56 -0400
Received: from mickerik.phytec.de ([195.145.39.210]:46208 "EHLO
        mickerik.phytec.de" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726526AbgIVJXz (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 22 Sep 2020 05:23:55 -0400
DKIM-Signature: v=1; a=rsa-sha256; d=phytec.de; s=a1; c=relaxed/simple;
        q=dns/txt; i=@phytec.de; t=1600766634; x=1603358634;
        h=From:Sender:Reply-To:Subject:Date:Message-Id:To:Cc:MIME-Version:Content-Type:
        Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:Resent-From:
        Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
        List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
        bh=vIvY2rPuJfqeZ9JCqAfhYaCoF8gbZEuOWok1MyeWxb0=;
        b=N/oIAVONUxowtng/mxeDJ5DVojlvr1yKXHLMlw4llHpxb6dhCFUDjnvHMTA5Ydru
        BERuDAAfJwp1nJE52I0CJLYwdIdJks/NdFwRkwr8PICBanUIgjKhjXuXtAWnZhMO
        bYjFlJSdCJrfMM36uMUcgAf5fYhSgg+watXBHJP32Uw=;
X-AuditID: c39127d2-253ff70000001c25-a2-5f69c2aa1555
Received: from idefix.phytec.de (Unknown_Domain [172.16.0.10])
        by mickerik.phytec.de (PHYTEC Mail Gateway) with SMTP id 50.E6.07205.AA2C96F5; Tue, 22 Sep 2020 11:23:54 +0200 (CEST)
Received: from lws-riedmueller.phytec.de ([172.16.23.108])
          by idefix.phytec.de (IBM Domino Release 9.0.1FP7)
          with ESMTP id 2020092211235416-473850 ;
          Tue, 22 Sep 2020 11:23:54 +0200 
From:   Stefan Riedmueller <s.riedmueller@phytec.de>
To:     Shawn Guo <shawnguo@kernel.org>
Cc:     Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        Stefan Riedmueller <s.riedmueller@phytec.de>
Subject: [PATCH 2/6] ARM: dts: imx6: phytec: Set correct eeprom compatible
Date:   Tue, 22 Sep 2020 11:23:09 +0200
Message-Id: <20200922092313.151293-2-s.riedmueller@phytec.de>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200922092313.151293-1-s.riedmueller@phytec.de>
References: <20200922092313.151293-1-s.riedmueller@phytec.de>
MIME-Version: 1.0
X-MIMETrack: Itemize by SMTP Server on Idefix/Phytec(Release 9.0.1FP7|August  17, 2016) at
 22.09.2020 11:23:54,
        Serialize by Router on Idefix/Phytec(Release 9.0.1FP7|August  17, 2016) at
 22.09.2020 11:23:54
X-TNEFEvaluated: 1
Content-Transfer-Encoding: quoted-printable
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFtrOLMWRmVeSWpSXmKPExsWyRoCBS3fVocx4g4V3FSzmHznHavHwqr/F
        psfXWC3+79nBbvF3+yYWixdbxB3YPHbOusvusWlVJ5vH5iX1Hv1/DTw+b5ILYI3isklJzcks
        Sy3St0vgynj5YhV7QQNXxat9z1kbGA9xdDFyckgImEgcur6NsYuRi0NIYBujxJHza1ggnGuM
        EiuX7WEFqWITMJJYMK2RCcQWEVCWOLWxjx2kiFngDqPE2uW32EASwgJeEr92zAKyOThYBFQl
        tu+VAgnzCthKnFhzghVim7zEzEvf2UFsTgE7iWXnJzKC2EJANWuvTGGDqBeUODnzCdgREgJX
        GCWO7l/CCNEsJHF68VlmEJtZQFti2cLXzBMYBWYh6ZmFJLWAkWkVo1BuZnJ2alFmtl5BRmVJ
        arJeSuomRmDgHp6ofmkHY98cj0OMTByMhxglOJiVRHjVjNLjhXhTEiurUovy44tKc1KLDzFK
        c7AoifNu4C0JExJITyxJzU5NLUgtgskycXBKNTAq1HAUSlecup4S48NmK5Ss+93WSoUjpKG5
        e1rbjDPP+B61zZXc6P/mH0cj37Fpanu6l9WHRv52kvXhfxL/dtvv+LBjZU5VG5/dfOLkvOeV
        YIduNYv56UUbZsfm/9/TkHtCYsfDidvKT7Rs7Txw9NWdm8+TlFau219iEThn0sTVzWtyXN6p
        m1cqsRRnJBpqMRcVJwIAIN1TM0oCAAA=
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Set the correct EEPROM compatible for phyCORE-i.MX 6 and phyFLEX-i.MX 6,
as stated in the device tree bindings.

Signed-off-by: Stefan Riedmueller <s.riedmueller@phytec.de>
---
 arch/arm/boot/dts/imx6qdl-phytec-pfla02.dtsi      | 2 +-
 arch/arm/boot/dts/imx6qdl-phytec-phycore-som.dtsi | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boot/dts/imx6qdl-phytec-pfla02.dtsi b/arch/arm/boot/d=
ts/imx6qdl-phytec-pfla02.dtsi
index bc43c75f1745..aa7fdb9ea5bd 100644
--- a/arch/arm/boot/dts/imx6qdl-phytec-pfla02.dtsi
+++ b/arch/arm/boot/dts/imx6qdl-phytec-pfla02.dtsi
@@ -116,7 +116,7 @@ &i2c1 {
 	status =3D "okay";
=20
 	som=5Feeprom: eeprom@50 {
-		compatible =3D "atmel,24c32";
+		compatible =3D "catalyst,24c32", "atmel,24c32";
 		reg =3D <0x50>;
 	};
=20
diff --git a/arch/arm/boot/dts/imx6qdl-phytec-phycore-som.dtsi b/arch/arm/b=
oot/dts/imx6qdl-phytec-phycore-som.dtsi
index 41ebe4599e43..a3f4e8f6cc9e 100644
--- a/arch/arm/boot/dts/imx6qdl-phytec-phycore-som.dtsi
+++ b/arch/arm/boot/dts/imx6qdl-phytec-phycore-som.dtsi
@@ -84,7 +84,7 @@ &i2c3 {
 	status =3D "okay";
=20
 	eeprom@50 {
-		compatible =3D "atmel,24c32";
+		compatible =3D "st,24c32", "atmel,24c32";
 		reg =3D <0x50>;
 	};
=20
--=20
2.25.1

