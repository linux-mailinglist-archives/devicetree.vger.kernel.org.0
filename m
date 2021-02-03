Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9795A30DA7B
	for <lists+devicetree@lfdr.de>; Wed,  3 Feb 2021 14:03:31 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229777AbhBCNCJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 3 Feb 2021 08:02:09 -0500
Received: from esa2.hgst.iphmx.com ([68.232.143.124]:14163 "EHLO
        esa2.hgst.iphmx.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231535AbhBCNCB (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 3 Feb 2021 08:02:01 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
  t=1612357913; x=1643893913;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=TaWTUb08qqhShpx6lMxoupwm0adN9S1R3Qvyg1Dne/8=;
  b=ORlMC2KZzbZdim8ZxDrelYwxhxycTrS13dNHku24j9VYYpVk2T7lS0ZA
   gRymu6QEHO1Ty9uZ1wPa8jj5n9GY0oWAHMh69idXWaA8agmv72wCqSm1d
   UTNLTm8sDOLGtM2FSdKgKx7obTmafGBVRe9DxBAZ2dSceBF+TceHSS1/B
   7jj23XufKzf6cXXzGJHo1HRLDAkHg3ZmXbcvXLIj9+mjKzNCAbQb/7Azg
   0OeYjTCnD/EHPyaAS6yH1ouQloyp23IcQpYyAPpGyM+kwOl/SLs2iTdGJ
   7FzZJ6X9M68OyRYjqg6XlA2dMDaIs1OL2+gvV2VbZBWRX/HYgS5BxVWRQ
   A==;
IronPort-SDR: Rlhcai9O9nrqC9MKOCHX5OkU+dsEvOl31lweFbnd8l/7O/nWrY2ApWYZSuhGekRRQ2a2aY+IxI
 KyB3fVPT6t2hxHuDRb/OYJ1bsCR62UvbcUTdG7gmsqf8U53bLWpesjsxR4xuvhmJX6xrlwsqkq
 j1h1vZ13GgKJ2++NNdQUbOVkHEBTnGTVfpGgDqCD8fYz3Ig1pC1lJtEFbRBdvXkP/O8QHOEsHk
 8heWGlm76EI6Ek1cjWu4RyhjKgqjZtYXsfT32zI6ZZ0tFloPn6JmqIm9KLMgcUwtHPFUkOTzDY
 EkY=
X-IronPort-AV: E=Sophos;i="5.79,398,1602518400"; 
   d="scan'208";a="263106936"
Received: from h199-255-45-14.hgst.com (HELO uls-op-cesaep01.wdc.com) ([199.255.45.14])
  by ob1.hgst.iphmx.com with ESMTP; 03 Feb 2021 21:08:37 +0800
IronPort-SDR: kJloCjaSf3Dn/G4MMZcv5A7d3WsSr0O8Dc+59BbdA5khL4iskaw2M0VRgTzB7g02ArJO5+CMyP
 atpn/j3bSYj9Itrdumu/AHjM5RsieQq8En2R9OJ36TbPWPunh/QfyXb0MCgPeyvreSc+ZcgxVZ
 +EUEYhbNEUCAcVvr+Y2MXdApPZiqUSYlOr8uX/D9hBCnKo8+ZPKNoCeFRvHKmxBdq5o0Rpgi1s
 I7BEQK50X7xSaOtQE6YH8nQFsQWlhkIwtJ3fJGhMqTTV/qXilNDi7Fm1/cafDxp1X9vh12KNdG
 qFMFM7OzC3KcW62Bx+e1PbBv
Received: from uls-op-cesaip01.wdc.com ([10.248.3.36])
  by uls-op-cesaep01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 03 Feb 2021 04:43:50 -0800
IronPort-SDR: bwpVQRTkmsEEutI7n/QSmnzRz9yD75I9XT92hMwsd/3dN8Lpj5RqgXJ9GWaxtXR+jDgQ+kSsTa
 JoogOprpxnY5zsBBTMABzLfI7UiH+d4Ua5Vm2SrGZevSBOsvq0LIjygvviWM2Jtg5qIeEVVI3n
 jsfZrPpd7RPmugSrguLw5XF+46mT2SQXEIU5BS5oGFmS6vFS63hBK4dtyW0YWii4e7/ArXvrKS
 vNnfU16HGTmmuYJUrOGHEAMjv2C+Oaunuwg4iWk1ruIUGDengbR5Zc9cKojHPV492LuP3WOe8f
 VTA=
WDCIronportException: Internal
Received: from wdapacbjl0003.my.asia.wdc.com (HELO twashi.fujisawa.hgst.com) ([10.84.71.58])
  by uls-op-cesaip01.wdc.com with ESMTP; 03 Feb 2021 04:59:48 -0800
From:   Damien Le Moal <damien.lemoal@wdc.com>
To:     Palmer Dabbelt <palmer@dabbelt.com>,
        linux-riscv@lists.infradead.org
Cc:     Atish Patra <atish.patra@wdc.com>, Anup Patel <anup.patel@wdc.com>,
        Sean Anderson <seanga2@gmail.com>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org
Subject: [PATCH v15 06/16] dt-bindings: update sifive uart compatible string
Date:   Wed,  3 Feb 2021 21:59:03 +0900
Message-Id: <20210203125913.390949-7-damien.lemoal@wdc.com>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210203125913.390949-1-damien.lemoal@wdc.com>
References: <20210203125913.390949-1-damien.lemoal@wdc.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add the compatible string "canaan,k210-uarths" to the sifive uart
bindings to indicate the use of this IP block in the Canaan Kendryte
K210 SoC.

Cc: Paul Walmsley <paul.walmsley@sifive.com>
Cc: Rob Herring <robh@kernel.org>
Cc: devicetree@vger.kernel.org
Signed-off-by: Damien Le Moal <damien.lemoal@wdc.com>
Reviewed-by: Atish Patra <atish.patra@wdc.com>
---
 Documentation/devicetree/bindings/serial/sifive-serial.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/serial/sifive-serial.yaml b/Documentation/devicetree/bindings/serial/sifive-serial.yaml
index 3ac5c7ff2758..5fa94dacbba9 100644
--- a/Documentation/devicetree/bindings/serial/sifive-serial.yaml
+++ b/Documentation/devicetree/bindings/serial/sifive-serial.yaml
@@ -20,6 +20,7 @@ properties:
       - enum:
           - sifive,fu540-c000-uart
           - sifive,fu740-c000-uart
+          - canaan,k210-uarths
       - const: sifive,uart0
 
     description:
-- 
2.29.2

