Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2074D315E89
	for <lists+devicetree@lfdr.de>; Wed, 10 Feb 2021 06:05:16 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229475AbhBJFFM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 10 Feb 2021 00:05:12 -0500
Received: from esa6.hgst.iphmx.com ([216.71.154.45]:20609 "EHLO
        esa6.hgst.iphmx.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229456AbhBJFFL (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 10 Feb 2021 00:05:11 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
  t=1612933511; x=1644469511;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=AIY+mENCG0OfDogqN2TK/zkNool8y2CBwzDhCDvMBTc=;
  b=h19XYuStqtXSf0y4EpVkDmoQrlDWqdwxn/4V7Vd9q0nMgXKhwUNIGaBy
   ZeRgvdTcGNYfApE2DPbArBArK+15adTgR3y4v9Hp+sBluqlIXXiNx3SM5
   sDmy0k7+Vub0ZVaa/0/pBNF53nAhwn91zziXAvKTWWRXeyehETjE2pkHW
   OOFTyAikU+3F0mGk+WnujHqwUdqsO1QNqNNVs0L9uXhsoARNffsSJt18b
   yMWZEW+9nbE/59onYtXrVgfjvhz5hHkfJwLiPYtdsoRLKWHkZFxto2YSm
   eiVibcx3unMIP/Q1aE0MUhFRKJsTs/xwQGykmoByLX7kHjgA0x60Nmuia
   g==;
IronPort-SDR: PGPBmTBr1glaYJLoHcpOkpZcGGvv/dQ1CcK/Zn1LSd1lekVQbRBu3WefQdBe3UHzF6ii0Gpkk5
 Fk3qSVzcJDywiI+iPbSYrlpfVl+4Vh84ZG1COmp1ewQBK9Yq3UpDIizu4CbaoKRh3K8XEc7o/w
 EC11nfN56A9t/y3V1wQ01bNdDnzJt8zrbR32/w4DFxy8wy27baUrPxoeRY1Ti992rj2J9YZiH4
 4dh0bQtLjiAUQMFQbzBA7F4mPI2uTPRXy5qoJBDs92rrhVDGFNpFwxN1BHFdK3tC0R7etlbyli
 ryM=
X-IronPort-AV: E=Sophos;i="5.81,167,1610380800"; 
   d="scan'208";a="160775819"
Received: from uls-op-cesaip02.wdc.com (HELO uls-op-cesaep02.wdc.com) ([199.255.45.15])
  by ob1.hgst.iphmx.com with ESMTP; 10 Feb 2021 13:02:50 +0800
IronPort-SDR: LtqsyJ7BXoZ4pPWfzUw+UlAlS9cetLSx67tS4a6W4Lf0DKqHV7MAv3QqJEsTsFZmd14VrM3wAt
 3r+YfMFUSIJUpqHlU68dKF8qDeFXoJqp3LucjcooRMJ7H6fEFSf72TOUWux5Io+gekPvAWYB2R
 4lvRHPTaBUffxqzPE5+Ke0IRbBrpeiXJU0c+v7INlqf6sZpTjojfTQfbQhvkjuyLXcHX6Lkxac
 9L21k1u1cDFYHMLjV3DX8LazEV45cHo5GKKebZzjq+fINZhdWzE4N3LA/YuFEdghuow9Nl0AUw
 JywqR3YjBn0nKfsHRnTZ7bpg
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
  by uls-op-cesaep02.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 09 Feb 2021 20:44:42 -0800
IronPort-SDR: eZwUjlfnXPNdbdespLK5RaDb3UvE5ofxqGzBxus1CBffsYCb3EUh9At4XdN+Su6QotJhybAeB3
 BCJofYp/eAE/zNg+oKVaI6NSOriPEzGkx8j08bo5vn2gutdWdIS5Rrsfbr3xtE0O0SqOqf3G2c
 O+7C1VdLkxIEXWV8naL9FzFMunNT9Spe3fbDaE7Fn1HyQCv4JPHS4Utsp8D1FLnYJ16DRs3mMR
 k1Wqy8laRCYV5b/bpuJfw7JpFilOOWJi1SLDMfSr89Rdtqg8lD8+/GD4RUDWtVNlkoy9XFtexL
 T1Y=
WDCIronportException: Internal
Received: from hdrdzf2.ad.shared (HELO twashi.fujisawa.hgst.com) ([10.84.71.72])
  by uls-op-cesaip02.wdc.com with ESMTP; 09 Feb 2021 21:02:49 -0800
From:   Damien Le Moal <damien.lemoal@wdc.com>
To:     Palmer Dabbelt <palmer@dabbelt.com>,
        linux-riscv@lists.infradead.org
Cc:     Atish Patra <atish.patra@wdc.com>, Anup Patel <anup.patel@wdc.com>,
        Sean Anderson <seanga2@gmail.com>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org
Subject: [PATCH v19 07/17] dt-bindings: update sifive uart compatible string
Date:   Wed, 10 Feb 2021 14:02:20 +0900
Message-Id: <20210210050230.131281-8-damien.lemoal@wdc.com>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210210050230.131281-1-damien.lemoal@wdc.com>
References: <20210210050230.131281-1-damien.lemoal@wdc.com>
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

