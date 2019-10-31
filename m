Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 69A31EB4DF
	for <lists+devicetree@lfdr.de>; Thu, 31 Oct 2019 17:41:37 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728645AbfJaQld (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 31 Oct 2019 12:41:33 -0400
Received: from shell.v3.sk ([90.176.6.54]:48153 "EHLO shell.v3.sk"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1728636AbfJaQld (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Thu, 31 Oct 2019 12:41:33 -0400
X-Greylist: delayed 381 seconds by postgrey-1.27 at vger.kernel.org; Thu, 31 Oct 2019 12:41:32 EDT
Received: from localhost (localhost [127.0.0.1])
        by zimbra.v3.sk (Postfix) with ESMTP id C5E12510E3;
        Thu, 31 Oct 2019 17:35:11 +0100 (CET)
Received: from shell.v3.sk ([127.0.0.1])
        by localhost (zimbra.v3.sk [127.0.0.1]) (amavisd-new, port 10032)
        with ESMTP id tdqN4OfZRjxL; Thu, 31 Oct 2019 17:35:02 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
        by zimbra.v3.sk (Postfix) with ESMTP id 15A5451140;
        Thu, 31 Oct 2019 17:35:02 +0100 (CET)
X-Virus-Scanned: amavisd-new at zimbra.v3.sk
Received: from shell.v3.sk ([127.0.0.1])
        by localhost (zimbra.v3.sk [127.0.0.1]) (amavisd-new, port 10026)
        with ESMTP id SPJhv-z29mOM; Thu, 31 Oct 2019 17:34:59 +0100 (CET)
Received: from belphegor.redhat.com (nat-pool-brq-t.redhat.com [213.175.37.10])
        by zimbra.v3.sk (Postfix) with ESMTPSA id 1183251142;
        Thu, 31 Oct 2019 17:34:59 +0100 (CET)
From:   Lubomir Rintel <lkundrak@v3.sk>
To:     soc@kernel.org
Cc:     Olof Johansson <olof@lixom.net>, Arnd Bergmann <arnd@arndb.de>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        Lubomir Rintel <lkundrak@v3.sk>
Subject: [PATCH 3/4] ARM: dts: mmp3-dell-ariel: Add a name to /memory node
Date:   Thu, 31 Oct 2019 17:34:54 +0100
Message-Id: <20191031163455.1711872-4-lkundrak@v3.sk>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191031163455.1711872-1-lkundrak@v3.sk>
References: <20191031163455.1711872-1-lkundrak@v3.sk>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Ponted out by DTC:

  <stdout>: Warning (unit_address_vs_reg): /memory: node has a reg or ran=
ges
  property, but no unit name

Signed-off-by: Lubomir Rintel <lkundrak@v3.sk>
---
 arch/arm/boot/dts/mmp3-dell-ariel.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/mmp3-dell-ariel.dts b/arch/arm/boot/dts/mm=
p3-dell-ariel.dts
index 61edb4d06880b..0855b5f1d1f35 100644
--- a/arch/arm/boot/dts/mmp3-dell-ariel.dts
+++ b/arch/arm/boot/dts/mmp3-dell-ariel.dts
@@ -21,7 +21,7 @@
 		bootargs =3D "earlyprintk=3DttyS2,115200 console=3DttyS2,115200";
 	};
=20
-	memory {
+	memory@0 {
 		linux,usable-memory =3D <0x0 0x7f600000>;
 		available =3D <0x7f700000 0x7ff00000 0x00000000 0x7f600000>;
 		reg =3D <0x0 0x80000000>;
--=20
2.23.0

