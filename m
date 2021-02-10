Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8D812315E81
	for <lists+devicetree@lfdr.de>; Wed, 10 Feb 2021 06:04:04 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229451AbhBJFDs (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 10 Feb 2021 00:03:48 -0500
Received: from esa6.hgst.iphmx.com ([216.71.154.45]:20609 "EHLO
        esa6.hgst.iphmx.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229592AbhBJFDr (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 10 Feb 2021 00:03:47 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
  t=1612933427; x=1644469427;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=aoKNRmpsieVqZQfH9jmT4jDXbR2ecaAZxAOVYPky1SM=;
  b=mwUWAb0upBqc4HQks2UKlkm6ur7rWNqbZiXGN+wzp3ySt63unWnUOPPT
   G3BmJ+cXUA1qBedT1/cfNiK3tVcptWMREgI2OJz5yqc1TvwErJjOQwYGd
   R0lCMhY/t5ZxX5SHAE+P8bYPzn5Ff0n3YzxTb7PoN2VYtwHnk2xjrmBqL
   /ogadmpwUc1qs6wEI4Dz5xksCEd3MtU7QcP3D3HrOa+KvRmg3ywG8Gnif
   zl47S02liVOOhFB4nmC6WDe4/WEHkqXkQ6/w3xR4v8LrLQqH8drtBHwrQ
   4OV67wpXEfoTVIGezfjkS0XDkDst7MUH3mDi0oXCdLbUe7xbd9GL4V46e
   Q==;
IronPort-SDR: yFEY3it/PiTLFLQAouCRJvl2XvGze/CwtlgAAl4m2TWg3nqE2YBLeSIKXJjdfJ/MOPmVWGJlGE
 dg/RTnC4FvU/AYmZT9DQ0jt+mkGao4eh+XfKWT39H9Q5qv1NQH1zOnC8E1Py4wE3tYO/AvjJvT
 OyNm3LkxXhWhEn3pNg2LCGfj/hOBUA3bebbXgqFLmGjh+cP/Da0SNbtHB1UJSl4aB7vMQu358V
 JkPSdtFFGHxmGfifnwjZQ9uga8XEIPL0Vr8WDuYjV4I6nJgwD6JQNfAsmzikTuIUgTVqcbZonh
 Fzo=
X-IronPort-AV: E=Sophos;i="5.81,167,1610380800"; 
   d="scan'208";a="160775804"
Received: from uls-op-cesaip02.wdc.com (HELO uls-op-cesaep02.wdc.com) ([199.255.45.15])
  by ob1.hgst.iphmx.com with ESMTP; 10 Feb 2021 13:02:42 +0800
IronPort-SDR: ptTc+JLfIYpF9N/+GY+XOZrZ5T8NP8i4GFwI6a135oDWGJBeiy+veX8gF7KuxVJZMImR0I2uZl
 vC4Oc5QDSZDgDd/aPgMyOK4JoNo4D6eOMkTCTRhRzwN4v6t9ik6E7Zwa9axAuKGShWHlCMuIBy
 AJqAeh7AvVhdHXtrnzTJIhbQTau9KmPz9vWxxqlbtfzBl3ip2of6w3DsKFy35aRQaCjfFjysr3
 qLw6EKZaP+0Kcck6P1XgQbPBPC6yio9+dIRGCmDWzAvawy/67rhO3MnKTR9ageQtVZzlpylPjY
 zhLd4AahUP57fpVyZu8l2XDv
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
  by uls-op-cesaep02.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 09 Feb 2021 20:44:34 -0800
IronPort-SDR: 12P0yy/TUPAgk9Qz7V5KTAB/XeAzocyey5MnZTMdaxyFPUVN0ame8hMraDdaoL6DWng8QLomxx
 49hRR1DI64mQUAK3W7D2Q27s/5wguQoNpJ2WNOcS9lbTDakeI7HY5e5/+nkBDn2jogMkF4f4Y1
 baq+Cu8P8KAHqMvlW1+tU+SX/mrnbwjcpcC2h+H4peLgew7XJma/66HNzLChMPE9pdEZ80Jnxp
 8T8OYB/i/WSmDttmJPXx9nyBqg1PTKGDC3V91mMZGzNz5hcM8oIR3msxDq5QuP6khqG88zm9XO
 syc=
WDCIronportException: Internal
Received: from hdrdzf2.ad.shared (HELO twashi.fujisawa.hgst.com) ([10.84.71.72])
  by uls-op-cesaip02.wdc.com with ESMTP; 09 Feb 2021 21:02:41 -0800
From:   Damien Le Moal <damien.lemoal@wdc.com>
To:     Palmer Dabbelt <palmer@dabbelt.com>,
        linux-riscv@lists.infradead.org
Cc:     Atish Patra <atish.patra@wdc.com>, Anup Patel <anup.patel@wdc.com>,
        Sean Anderson <seanga2@gmail.com>,
        Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org
Subject: [PATCH v19 02/17] dt-bindings: update MAINTAINERS file
Date:   Wed, 10 Feb 2021 14:02:15 +0900
Message-Id: <20210210050230.131281-3-damien.lemoal@wdc.com>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210210050230.131281-1-damien.lemoal@wdc.com>
References: <20210210050230.131281-1-damien.lemoal@wdc.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add a reference to the Canaan K210 system controller driver bindings
file Documentation/devicetree/bindings/mfd/canaan,k210-sysctl.yaml
in the MAINTAINERS file entry for this driver.

Cc: Rob Herring <robh@kernel.org>
Cc: devicetree@vger.kernel.org
Signed-off-by: Damien Le Moal <damien.lemoal@wdc.com>
---
 MAINTAINERS | 1 +
 1 file changed, 1 insertion(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index 3031c2012865..dbb293fef3e4 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -3878,6 +3878,7 @@ CANAAN/KENDRYTE K210 SOC SYSTEM CONTROLLER DRIVER
 M:	Damien Le Moal <damien.lemoal@wdc.com>
 L:	linux-riscv@lists.infradead.org
 S:	Maintained
+F:      Documentation/devicetree/bindings/mfd/canaan,k210-sysctl.yaml
 F:	drivers/soc/canaan/
 F:	include/soc/canaan/
 
-- 
2.29.2

