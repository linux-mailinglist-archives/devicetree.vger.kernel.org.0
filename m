Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id B6567C10B8
	for <lists+devicetree@lfdr.de>; Sat, 28 Sep 2019 14:08:00 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726642AbfI1MH7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 28 Sep 2019 08:07:59 -0400
Received: from mout.gmx.net ([212.227.15.18]:35327 "EHLO mout.gmx.net"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726560AbfI1MH7 (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Sat, 28 Sep 2019 08:07:59 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
        s=badeba3b8450; t=1569672458;
        bh=hfLTzkanvHdv0805iskYFMrxghx9/3ubOyaD3u2YZUY=;
        h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
        b=FtEJEaY35SSLY0AJoBw0G9Ie8oJOAWqcnInt5Ic5QKMqyKjRuwA+ONAavEgU1Rgr1
         zy+99Ag/jSTgjoIWBiKCQQbjBBRxu5hY5KNOM3xilQ5xTWWA3x/sNvGk7rqbGGcDMk
         CntXxdJ17OKRBtV2xzMucFyrjENsw8g/tpmYEGqQ=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([37.4.249.130]) by mail.gmx.com
 (mrgmx005 [212.227.17.190]) with ESMTPSA (Nemesis) id
 1MHGCo-1iRR4E0xoe-00DDJd; Sat, 28 Sep 2019 14:07:38 +0200
From:   Stefan Wahren <wahrenst@gmx.net>
To:     Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Eric Anholt <eric@anholt.net>,
        Florian Fainelli <f.fainelli@gmail.com>,
        Ray Jui <rjui@broadcom.com>,
        Scott Branden <sbranden@broadcom.com>
Cc:     Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>,
        bcm-kernel-feedback-list@broadcom.com,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        Stefan Wahren <wahrenst@gmx.net>
Subject: [PATCH V3 5/8] dt-bindings: arm: bcm2835: Add Raspberry Pi 4 to DT schema
Date:   Sat, 28 Sep 2019 14:07:11 +0200
Message-Id: <1569672435-19823-6-git-send-email-wahrenst@gmx.net>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1569672435-19823-1-git-send-email-wahrenst@gmx.net>
References: <1569672435-19823-1-git-send-email-wahrenst@gmx.net>
X-Provags-ID: V03:K1:oQxad6CfBtrzG7FQm3rKGx9Rbi/ZJs5SyFOtihvCF2Dk9OnwMHh
 tUmrUo8XmcrRCWKTKT62nO+g3zr5MWkifkP643JLzGoeujJq6eGOYKrsR9xcU55sQt+GwGE
 8xLbrN1ppl1rpLhRwTWERXm6pXpryf4kLYOFEUQWnWOeFayq6kdAUnpFiitX9MPhZKVLDFr
 jaN/2aQTjxBXkLwvBl/Ww==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:Fsu58mNrVAg=:9qi++y7V/ZSNUId2RpTSc3
 +frP7M5zoAMAVppp6iLSmNUSpc3g49oTX2qRpFgc1z220BfEiD9ASea7dxbLhh3RFu5XM8LMs
 +Abgl6+DJ7MU3sBEAR0cTauk1bnm0nJ+dflAkpr1SEBR6vtxqkAmx8+80GNw8iaDnE/R+a4Xy
 09e1BCdk4laVvMnAIlzcQHqCBnx8unLAdjHb9yLyx8ucBNQkdbz7YIwsU6cds2Lie1I+X+Iqp
 NHqBrqy3RLTJ4mxCt4fwi8ONASZGNnP52OLOUj2UJkkKhPWiYfuPGX74dPyThvEQZM/IPTRq6
 KrVmOcmca3UT8gQRpmMZCTWHsIs3kNhclIO4S9p7aYwfuy6lXkCJboCY+R2A1f5Spdnr4xgi8
 rNU5Bb55vCDgg0chmgFn7wlbHE6lTtfQmLAyMmjJ32YUIGPrcNGOcdANepoz3ZolExKF19nkw
 NfQZcyFvW5GOKWGBHPOWMy1LyWnYuShbGMbXp2VmgSobwLpjnMuGU5fLNmMCPJVTVE9Q41w4x
 mCVB4/reD81DQswKlNjk1mSxeTf5qzQgfW2qsNGd8NxlkAFg7IjY92TfsiB1x2mvDmBi88EqN
 8QHQZnJnst4g3us4+xbv1Ye8hsMxz32zS7kLBUNLRdFm+jBAT7dWrUYi1lQMqNSI30zZpSxIG
 TNbZ0bTYzpWTBbKlntg60yHp5ACHiSfwtL14nuNgJcduVXPDREk5rWlSno7CB7jWCQ/jnU/SX
 cq9C2NjDyIwAU6/6H32uAnoMNA2Thx9bh0uhNP1t0XTIsUMVH0iGULDDmQKriheYBLNPT8hM9
 YBXDbmxCDVl4dvYoB/BiG/OwByS6DbjDRWlRpWFKREE9aYgcb++W4QziJPgXUMdtrNStAq8KT
 IVfvsvfup9NjObbHrHGmA31ez6BgP3OEd74qZOI1Jb8svUdjWeF4JgFsG0UbYraYmWXgTQBjt
 CI34cJwp0eV7kkg4iccK5gTUr0Bi3bMNpVKPeVda/wjKeSPCW6QxYx2DbKCt/rx1Rfd/LvPvv
 0HAv7iZ+L2rKAm56zjMohOGNa056EMIrQBy892of7oxkC+SSNgqph1tkva5vKWReuq5YzEPE2
 xx9pcLf8rC9lNmrgHzd410jo3d4QvL68tlmXHMXS1JFV6pL6e+VNK1qOCJUanQ3F9f09tabxg
 2+z8AJ+YrtUoOcbDXgK5B/Lsz9aYD01ErkOndStLeJiLeB44myFj9iyxrHVzc+bbSOS8Dor5n
 JrP5Hfrmh5zT45ufe0eeQxKJpx+9CC3ClRKyZSw==
Content-Transfer-Encoding: quoted-printable
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add new Raspberry Pi 4 to DT schema.

Signed-off-by: Stefan Wahren <wahrenst@gmx.net>
Acked-by: Eric Anholt <eric@anholt.net>
=2D--
 Documentation/devicetree/bindings/arm/bcm/bcm2835.yaml | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/bcm/bcm2835.yaml b/Docu=
mentation/devicetree/bindings/arm/bcm/bcm2835.yaml
index 67bf9e2..dd52e29 100644
=2D-- a/Documentation/devicetree/bindings/arm/bcm/bcm2835.yaml
+++ b/Documentation/devicetree/bindings/arm/bcm/bcm2835.yaml
@@ -15,6 +15,12 @@ properties:
     const: '/'
   compatible:
     oneOf:
+      - description: BCM2711 based Boards
+        items:
+          - enum:
+              - raspberrypi,4-model-b
+          - const: brcm,bcm2711
+
       - description: BCM2835 based Boards
         items:
           - enum:
=2D-
2.7.4

