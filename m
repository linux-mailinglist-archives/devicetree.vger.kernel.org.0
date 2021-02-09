Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6E048314EEE
	for <lists+devicetree@lfdr.de>; Tue,  9 Feb 2021 13:32:55 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229918AbhBIMcy (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 9 Feb 2021 07:32:54 -0500
Received: from esa3.hgst.iphmx.com ([216.71.153.141]:39021 "EHLO
        esa3.hgst.iphmx.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229917AbhBIMcx (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 9 Feb 2021 07:32:53 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
  t=1612873972; x=1644409972;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=AIY+mENCG0OfDogqN2TK/zkNool8y2CBwzDhCDvMBTc=;
  b=jYmKzCOGn72c+8rE9brQSsyqy8Ff5hqZmQ9ljitsuOfOSeIEv1L3YnZv
   dyS+YG0QWiCLFt1+7uWZcPqj/XQaLIMKw8H1fwXq7PXwV+jRyWYhB7Oru
   xt5D/4Yowuj88+DOY6oVzBo/kz7LQjwco4JMNM+1VwWsdfJQCwwNnrJhA
   5ChARNkr76Rs4IToOo/T1QX4+Yvop0AVRhS1/hCNSG6eWUqdM7HHxP18y
   WmbVGzLHqWMUIwey2jzOQ16PG+wyOwqFXAJzfQyT2aD4+x0ydHH0bPDnj
   N3jkVAt8gib4Kg57bkj0V3gWrxbaRlObvaDBUAGltDj7rlVpq3oudwVlM
   A==;
IronPort-SDR: cT8E/7VW5/FzjeDIUZqqDLdWF6RLVylr/T9d3eal8UhTZEfHmgldUVYu/0DAgEfzwzJnjudaRM
 LpGXjHx4I4avY3OusFmX4g1Eol1SXtnMRJO6/iJEdpG24kiaPxkW3lRpEw40OB8d0HE2dMJZts
 vzP9gKRm5yWy+9MIIMAOzxH6rRstMFVDLW690MDmgzuFxNq5F8uQL410C9sQ/is4W6+PzkZp3y
 JyViKwPjxL5GwGo/UQN5GiwI92LE3ObkEsv+kqMaJtQRGSsm8it9Gsu29GiI1uPHpkO5QbWHlY
 IYc=
X-IronPort-AV: E=Sophos;i="5.81,164,1610380800"; 
   d="scan'208";a="163996811"
Received: from uls-op-cesaip01.wdc.com (HELO uls-op-cesaep01.wdc.com) ([199.255.45.14])
  by ob1.hgst.iphmx.com with ESMTP; 09 Feb 2021 20:30:27 +0800
IronPort-SDR: FRqFNW2hs/ceAqioSARlBFyU4cEqQ2IqRT1b8KErZFaCQc/msrlJPNhO9Dp3/RTCH53pF4nQ4q
 87nNJ73+OloCnUKITKaFGx0mPf7l5LKTvbpne5uMiGOXvnAR8APfxqPm8+csqP2TU3+AqULNgu
 N//KUPqSp7VXmiR4oEdRu0W5MGFCsLUoJvRffnQvULugnDttsG6eK4/mm9vxklKTcZxlbLXn7e
 b8SLb+jWpsEyHRmqrP32/CiI6ueGX1QQ17qydMy3FNf4nFHDzsFHgtLnfKPCrTkpSafba8gTXi
 ndI9pX1P/EmlVexaTR/9xMhJ
Received: from uls-op-cesaip01.wdc.com ([10.248.3.36])
  by uls-op-cesaep01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 09 Feb 2021 04:14:12 -0800
IronPort-SDR: lupY98j76pDHZuYYE2dQnSvWhf/sfGpMDlmBHyuIQEEnke/G2Oyg/37jDggAlx2Zd9ElclfcPk
 c2BdbxJJx5Mxs8PkBvAz+pIAoozWNypYTFm/zP4z4oLlF51Kuykg2QgyQGn6oBJGgVofsZX4tO
 IM1XA4IbvyPTHB8f+cWPsyoF+FE5+irbtsY9/RdjWvAW7JdO9nkTiwx4LlxMahUOspwwSSQ3nw
 6h6YFTUZuKh24aZXVLuIR455J5JVBfDDYEJ7sen5dHxf9F6F9rEYV3fjQuZBSAaTwIAzf3JkYJ
 OIM=
WDCIronportException: Internal
Received: from phd004806.ad.shared (HELO twashi.fujisawa.hgst.com) ([10.84.71.69])
  by uls-op-cesaip01.wdc.com with ESMTP; 09 Feb 2021 04:30:27 -0800
From:   Damien Le Moal <damien.lemoal@wdc.com>
To:     Palmer Dabbelt <palmer@dabbelt.com>,
        linux-riscv@lists.infradead.org
Cc:     Atish Patra <atish.patra@wdc.com>, Anup Patel <anup.patel@wdc.com>,
        Sean Anderson <seanga2@gmail.com>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org
Subject: [PATCH v18 06/16] dt-bindings: update sifive uart compatible string
Date:   Tue,  9 Feb 2021 21:30:04 +0900
Message-Id: <20210209123014.165928-7-damien.lemoal@wdc.com>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210209123014.165928-1-damien.lemoal@wdc.com>
References: <20210209123014.165928-1-damien.lemoal@wdc.com>
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
Acked-by: Rob Herring <robh@kernel.org>
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

