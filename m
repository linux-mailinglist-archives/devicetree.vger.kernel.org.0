Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 2B634C10B9
	for <lists+devicetree@lfdr.de>; Sat, 28 Sep 2019 14:08:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726560AbfI1MIA (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 28 Sep 2019 08:08:00 -0400
Received: from mout.gmx.net ([212.227.15.19]:34589 "EHLO mout.gmx.net"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1725857AbfI1MIA (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Sat, 28 Sep 2019 08:08:00 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
        s=badeba3b8450; t=1569672460;
        bh=ZImZAahcnUC+FQfe8Me4GQOgCgge3ZbsQMf5FxCzQ74=;
        h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
        b=FbaHs9o3otier+ijkio2Bedmml36n9mNyP8wScF6sb8Ve2ec2JaPWCyMZYJDDaKqA
         o6PcZD73tGM8rJXRwbgcyr4nrFJ1Cdnv54/cidm84ZmRGDcbKLMypKa7lRv/bCOtR6
         B9WwOYY6ZwrGiORtF8TB6N73KGntlY+1/0d+IGDw=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([37.4.249.130]) by mail.gmx.com
 (mrgmx005 [212.227.17.190]) with ESMTPSA (Nemesis) id
 1Mk0Ne-1hlkaR2tWS-00kMD7; Sat, 28 Sep 2019 14:07:39 +0200
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
Subject: [PATCH V3 8/8] MAINTAINERS: Add BCM2711 to BCM2835 ARCH
Date:   Sat, 28 Sep 2019 14:07:14 +0200
Message-Id: <1569672435-19823-9-git-send-email-wahrenst@gmx.net>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1569672435-19823-1-git-send-email-wahrenst@gmx.net>
References: <1569672435-19823-1-git-send-email-wahrenst@gmx.net>
X-Provags-ID: V03:K1:UDpTJAU1MPUAlXMwedv/m4gEGTFPk9iDRiXEq9EnoWkZdvoZuAB
 TBUNbk+gDwBhHG7w35+Rsf6Xp6ykaXCGjqmAlZqCmSYPSO7kjnqF55P5uRz+ygNVMqs5Nh9
 4Ff6ZUIkPn3FrpWBSsn8nCiaf1IqzanJRaFWsfI3xXYWsWvLZI486jLXkim1u3dlZKXc4a0
 HTpp9Q9xpmHZ0/UDsYz2g==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:CdBwK5UlnAs=:lvdrA/NfApj+bc7ICAMkEu
 JSc2MetLb+48zGJrgpIJm25h4t41M4QO+6n/vc+gc6KV71yja9VLysXs7Tr/dwHo7Tep4iZhb
 sX9vra5jP38MfpT993ZrmaJBnWu1q11SF3f5vvWWxvacJ49JxtFmyoxBChGSnxSRGic4jTZwQ
 L8hAQVSJIoEx1Nbfz94genL/S9wh2d5vc2lE2eebL84DFWjYONxQ+cinRJCyFTKgncXPGJCNY
 iBqGVlNaMJ2c5zTIeHSERspZEwtUm4S/IyAAOE6yT2IItpzlJHb2AGnuMZbk0CilI8IeSXWIq
 7RchQOjmOJ1tm9uU0fxMX02m52Oc4XSlBd/vW0ls3iP7+OZ1sobt3M24rGwv6GN6ZWbQ5E8dX
 bl48mjXGD48J+ndoc4ev+kd2cGPbpgbEvlwFmrSQXUhwI7Z7GUsNPiZyHe+5IcW3RjPwOrYJN
 hkRk3pGV1eNKkJs3f22OJgg7avCuOwsUu/4RPVZ5kFPPU0CWzjw89uZ9sKCksIIDahtQSnKcn
 61YeP9nZ3p456ouh8xueGeWWf6EWELggfOWj6jViGnf6Vxa0W+xhrvzi0BULcE9cxtrWOeiQf
 Lvv7N6ztnLedjz/Jz6mo03y+J+xgZZi6ITx980pzR7k5fCwI88YFirfEpDYapA4jfazPdLkCC
 nfnAGMsqaVE4iKEm3A4M+crO494k4BD54RlpKclwy7MaoylTtU2sDJneNmRb0ZkpJlQxNOomr
 vzqHFwr/t/wGwaosD7JgFvO7EmwoqWVK3lo9uZBi8lDr/AeoRVB4YJbuRkCiooFNpbron70qF
 k1ql8/ZQICBhp1aGEYkSueQfwlPIZqEZuYGS/mqtl1mdOq8aGm90kFURCrhuDtAygWS2pPb5V
 hCuqHuD6s7GoL2pOJtVdms3sgVMyYV2lgOESXe9fi4+Fr6IyBt8Pfv4OvEa0yP7K5eo3YnvD8
 XSiy/NN/3aRUdVp/2Zde2J2zO/jiszneo2tyz/n4xf6+GbAZd5BqfkkW74YD7qqLVJYs7sH8S
 5xYUE+9KCG4IAftC5rvTOKV/fOp+OyMWdM5K5ermrHnjbcDBfn+mu78iknre1950KMkoJerOO
 ocYlHCtZdU22IS/lSJAM0bIhZ4vbpQ8McIFFz8pFIQ8n6NAG1Js4jQA6DskAFkc5Gtunyh92w
 O/qj7cBgVNPHN7V+udMhDpkwEqP60z6VXYKk3y0/OdwVVqM1r5w3SU1itmghaCs2WzBLLH6/x
 oAc2tV+OwiVqnRquSntGAZvy2P3l0nbIfuuMOVg==
Content-Transfer-Encoding: quoted-printable
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Clarify that BCM2711 belongs to the BCM2835 ARCH.

Signed-off-by: Stefan Wahren <wahrenst@gmx.net>
Acked-by: Eric Anholt <eric@anholt.net>
=2D--
 MAINTAINERS | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/MAINTAINERS b/MAINTAINERS
index 857611c..49420e0 100644
=2D-- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -3186,7 +3186,7 @@ N:	bcm216*
 N:	kona
 F:	arch/arm/mach-bcm/

-BROADCOM BCM2835 ARM ARCHITECTURE
+BROADCOM BCM2711/BCM2835 ARM ARCHITECTURE
 M:	Eric Anholt <eric@anholt.net>
 M:	Stefan Wahren <wahrenst@gmx.net>
 L:	bcm-kernel-feedback-list@broadcom.com
@@ -3194,6 +3194,7 @@ L:	linux-rpi-kernel@lists.infradead.org (moderated f=
or non-subscribers)
 L:	linux-arm-kernel@lists.infradead.org (moderated for non-subscribers)
 T:	git git://github.com/anholt/linux
 S:	Maintained
+N:	bcm2711
 N:	bcm2835
 F:	drivers/staging/vc04_services

=2D-
2.7.4

