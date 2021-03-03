Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 917BE32C056
	for <lists+devicetree@lfdr.de>; Thu,  4 Mar 2021 01:00:58 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1354868AbhCCSn3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 3 Mar 2021 13:43:29 -0500
Received: from mout.gmx.net ([212.227.17.22]:59475 "EHLO mout.gmx.net"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S233570AbhCCQBs (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Wed, 3 Mar 2021 11:01:48 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
        s=badeba3b8450; t=1614787180;
        bh=6Klx+LARlH5Cs/YxTUDW1nPNa3j7+K+6thHFi7p4CDc=;
        h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
        b=T06HiFZI/FcTB7EbCAlsJTWt97LobgNrF7WFrCQVgqE+HbKhdChIQdbWSWp0PFU1b
         CpmcSP7GX1iwTPU39ZhmqMJPrr09bsfGTr2JDh8buc8H8Y/YYcb2t33lp7TmsEcdTw
         zEKu68qmcPPmooLIMNs8RrByfRSrnrmk19kAPo9U=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from longitude ([37.201.215.134]) by mail.gmx.net (mrgmx105
 [212.227.17.168]) with ESMTPSA (Nemesis) id 1MRCOK-1lTewi04sm-00NAoC; Wed, 03
 Mar 2021 16:47:32 +0100
From:   =?UTF-8?q?Jonathan=20Neusch=C3=A4fer?= <j.neuschaefer@gmx.net>
To:     openbmc@lists.ozlabs.org, devicetree@vger.kernel.org
Cc:     =?UTF-8?q?Jonathan=20Neusch=C3=A4fer?= <j.neuschaefer@gmx.net>,
        Avi Fishman <avifishman70@gmail.com>,
        Tomer Maimon <tmaimon77@gmail.com>,
        Tali Perry <tali.perry1@gmail.com>,
        Patrick Venture <venture@google.com>,
        Nancy Yuen <yuenn@google.com>,
        Benjamin Fair <benjaminfair@google.com>,
        Rob Herring <robh+dt@kernel.org>, linux-kernel@vger.kernel.org
Subject: [PATCH v2 RESEND 2/2] ARM: dts: Add board-specific compatible string to npcm750-evb devicetree
Date:   Wed,  3 Mar 2021 16:46:20 +0100
Message-Id: <20210303154622.3018839-2-j.neuschaefer@gmx.net>
X-Mailer: git-send-email 2.30.1
In-Reply-To: <20210303154622.3018839-1-j.neuschaefer@gmx.net>
References: <20210303154622.3018839-1-j.neuschaefer@gmx.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
X-Provags-ID: V03:K1:oZazP4cwJZAwbnbneWa1/KK2gj3wzLE2XLsYWmGXk3CjSRbfvMF
 48WVhwdzIpwnyXALsuw6Kf0JtAzusEePLg3qpNFm8NuhG6ZAaKCWpGgQeRcfPS9A9ufIKMa
 N2k76/1dfqa7IHeZxlS2kcPkGBSH7W5lbWUuD4jItsf1CdwCdLaEuh3umHfAargzddIfRxR
 APd80CkmU+7Pdu2nEaUBQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:OcJFblGDn5k=:ZEtyGXGoaflX5j6CeeYZZt
 NoUKV6tRFSssaRU8n6Ig0TCPyodtle7u53YHLCb5Cf8Ve7A679gMsnoAZa2pjIzZ1xQx4pWbd
 U1oZJlZr1MrgRkKjgiH5cvb9tPNrOAEivUpE3dpGwrHr4KeKxFjsceRPGMIdUj1jKmD6HvpYo
 seMd2CfdshQV7YDewqR0eBEH57LvQDQRwbKlr9QhZtIyH4uHhFyIQXpO/ynH5CeK8m2ko6VcA
 la87cRaFjsN6W8AzsyKoJ9CJivW4PkuaOhGqjKcoRGg26N5Q1YpyxD4LEoa8oOT9B2Emf67bZ
 8K20yM8lOcXq0GgQbLbeT6rDRJrfczpchgiPhZC3V0L9nfEeSl0d1mNseAF7xrbRPiztOpxg1
 Ir2etf9nC063ozIH5pffxjU5W98iudK4vOAznSV4P0AVqzonYHuxn1+4Kzt0vWVIdTG6io3Sk
 7iezNpqZpipDXep3XR0qIZI1BrTAFSDAsVDwQRZA/TaI9nPxm2i0TzUTYCuaLy87Qs9Fp6UW8
 va+mpcIgqqdUR1jYSFA49LjunijhFocfn1VT/68PYAx+WjI0c8FjeanpfuqvN8Tjqvmou+u8G
 HkQ8ij7EOOxxmmHNMsZFijYdCDMY1s6mu0EczVJ/Gy9CqqWKGpPBO6X4J78Zv6bA/eG0BJrAo
 m1V4jc9K+8r31092ycx7/rOUB/LpjvR/8OtqbONt9x4HTwJOdndyC+Nt1k9Davfs2/OBU2Ufg
 FeYqMGjTob7fNEFlkVeDFH/FlyQ/SmUizHQihj66RWe0C50r9+vUiWuJHJnME6vjLZM/k+pwF
 pjKcmRT66kCvsKNs5MwvDRnXFPFK4ul6g8cl2RuCtxnUON0vPot8dCVMRMPdHLefFDUMkZhoC
 mBQJRWNy2qI/4HLA19lg==
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

According to the revised binding, the devicetree needs a board-specific
compatible string.

Signed-off-by: Jonathan Neusch=C3=A4fer <j.neuschaefer@gmx.net>
=2D--

v2:
- no changes
=2D--
 arch/arm/boot/dts/nuvoton-npcm750-evb.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/nuvoton-npcm750-evb.dts b/arch/arm/boot/dts=
/nuvoton-npcm750-evb.dts
index 9f13d08f5804e..dea3dbc4a6a52 100644
=2D-- a/arch/arm/boot/dts/nuvoton-npcm750-evb.dts
+++ b/arch/arm/boot/dts/nuvoton-npcm750-evb.dts
@@ -9,7 +9,7 @@

 / {
 	model =3D "Nuvoton npcm750 Development Board (Device Tree)";
-	compatible =3D "nuvoton,npcm750";
+	compatible =3D "nuvoton,npcm750-evb", "nuvoton,npcm750";

 	aliases {
 		ethernet2 =3D &gmac0;
=2D-
2.29.2

