Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3F60925705C
	for <lists+devicetree@lfdr.de>; Sun, 30 Aug 2020 22:04:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726155AbgH3UEd (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 30 Aug 2020 16:04:33 -0400
Received: from mout.kundenserver.de ([217.72.192.75]:60403 "EHLO
        mout.kundenserver.de" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726150AbgH3UEd (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 30 Aug 2020 16:04:33 -0400
Received: from buildfff.adridolf.com ([188.192.134.246]) by
 mrelayeu.kundenserver.de (mreue107 [212.227.15.183]) with ESMTPSA (Nemesis)
 id 1Ma1HG-1k75lp28pA-00Vvfu; Sun, 30 Aug 2020 22:04:21 +0200
From:   Adrian Schmutzler <freifunk@adrianschmutzler.de>
To:     Rob Herring <robh+dt@kernel.org>, Ray Jui <rjui@broadcom.com>,
        Scott Branden <sbranden@broadcom.com>,
        bcm-kernel-feedback-list@broadcom.com, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
Subject: [PATCH] arm64: dts: broadcom: replace status value "ok" by "okay"
Date:   Sun, 30 Aug 2020 22:03:33 +0200
Message-Id: <20200830200333.1333-1-freifunk@adrianschmutzler.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Provags-ID: V03:K1:2R7i9aZp1hYXo4cBMbsBKV4GPeLbv06leGGim8BoTcAzRxKdkgp
 EFDk0ysQ6SWglpgM0bYSk5MN2nNyOH8lI5x2JvffpnTqqAYkg2Vnk9eaNanWv8FqCqEcLxE
 v9aiEM/r7kHcYClrqLScZIDsJZuU19RNnvjQaRYuUlHsWfDgIHlYu5hY5/hzBJ1CktPL+HZ
 7pLB7+07bPrxwMdPy7PIw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:4KagnJbFWxQ=:g0ZUtMsam27pLdqsHDrqRC
 pn69mCvikETMahNM0XqyxsPPeEjyxQsLJnB2rhQ6YCBds1XPFQo4jnAyC8Svm70nn8iRQMwVO
 U4MWP5I/sLuVj9vGuz0EAmjzaEsNYY8sYiMpfmdvqtd4dsy1amF+vCtuO03HFQ6ABOqTtw/ZW
 nLUcj+UBu2Mud3GYBMjDjbEOKHeSYE2ijdxHVh+5sP/fyqsTV+FCTvcR/EIKaGuzBfvu4+3Wy
 0sMlbwUTTuwXFavFMD29PPjx68JWznC96ELBog8VyLQB2wAAcNzYDZqrioY/nAey6HB39B6Dd
 CqfcZ82tkOYHNcXHT0mytgIJr5S6Jgf3/UyJO1+v5pP1zXD4Oto0m0C1FngoFS65Ryygfq7QA
 NkC/sWTwwqlxxUNM+n687a3ztAK+tLNQrnA4lh2ZQDLlb+f5nRy5CAF0JQuYE6V5f0J9xIu3d
 7z94bh+j+iXcjnRcApPWQZyLZrBQn798eDH4oyKSiuRp4OKqrIxWmV3/mtiGmx6A7+8oAxQL3
 64nKZAZ6HuY5XDQvbEhA0vKtlghFg4YaeIkuFT1vpJtHt4WHh+nUO3oUulMcQdRZBVNSnOkql
 vOO26lUbS4HShXXGtu0p/oIpbQJfrH/xTCxzOVjit5gNdpe/4Ga7pbGFeUgwnc8F6Sxqkpjma
 CIZpS5lUAwnoiRgt2pVVetjgo22+JY/nLWV2upQXKeeZfALm2SFBlBCNcEfTT0/OgjAMl/PMM
 adNHzYRFnvy5QdoYkhRFLU4Nnjy4ZloirebKD7WBGWHZwtTZlX8z206l9bNa9c8Dnvkl74xBo
 lyt3gDJ0GnQt9t1p/EwgLEymusm9B3yyTSYgUWuodq9P/HPwPvCvbhUJfhniSs6t9F3xWeAo3
 vqOXUPTNNTaMg5BcDcxw==
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

While the DT parser recognizes "ok" as a valid value for the
"status" property, it is actually mentioned nowhere. Use the
proper value "okay" instead, as done in the majority of files
already.

Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>
---
 arch/arm64/boot/dts/broadcom/stingray/bcm958742-base.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/broadcom/stingray/bcm958742-base.dtsi b/arch/arm64/boot/dts/broadcom/stingray/bcm958742-base.dtsi
index a9b92e52d50e..43aa5e9c0020 100644
--- a/arch/arm64/boot/dts/broadcom/stingray/bcm958742-base.dtsi
+++ b/arch/arm64/boot/dts/broadcom/stingray/bcm958742-base.dtsi
@@ -151,7 +151,7 @@
 };
 
 &nand {
-	status = "ok";
+	status = "okay";
 	nandcs@0 {
 		compatible = "brcm,nandcs";
 		reg = <0>;
-- 
2.20.1

