Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 65FD7312816
	for <lists+devicetree@lfdr.de>; Mon,  8 Feb 2021 00:16:17 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229609AbhBGXQB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 7 Feb 2021 18:16:01 -0500
Received: from esa2.hgst.iphmx.com ([68.232.143.124]:1047 "EHLO
        esa2.hgst.iphmx.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229601AbhBGXQA (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 7 Feb 2021 18:16:00 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
  t=1612739793; x=1644275793;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=AIY+mENCG0OfDogqN2TK/zkNool8y2CBwzDhCDvMBTc=;
  b=i/AphwM5ls+3GH7h3kasb5NdRhXJ+NwAAuTBSnsARBygY6mR4OCPi3Cb
   7GUmukB+EZ6B852P9ZJD/9uXWCPuOxCuLjp+4lTN/qRi1POhPv0p7RPYu
   YPdHZIVBAX/NqkBEfNLWxwnllftVNH67m+SL11RYHluRFK7zT5Jmhurmu
   9Xgq1J0DfNOKXFRYZ4AgiJnaAMuQ33nSIY4euhpd7cMxnWgNbgLYThM56
   r6NsSXdnhouCkrLERa/CrgTY3GkUaKuqYyL8t1ch0uuW/mhOBcIXXlWUY
   TQK/DUoUH0HYr1EwcF9eK8iS6imOzwJk9F+ySMex3Pw9VvqmjLYRhS4TN
   A==;
IronPort-SDR: RgkN4UC6EVV0QcpYD+KVkbg+Mwsxbk3kfZ+G0leqN1OX3PIzOHGZ1wE+ao9LulvTZXyaWwCG8H
 JfJV1aUyEMm/4d0de6GAQOmucFOiDC1ht6DlrH3kTut7T6khXAV6d5Ly8/Oc1m6IbzDhfUhx18
 sczdmqPT3TVj2q9A8XCfT8sn7StityVCXJeiIOxfh3ZgMG7vwwe+M7rELFn7Lb8+mzqSkKR7AW
 GUHoDqUo+iTh9GOZ/jtG+4F8EyzBtCqBooYVT+/9BoQunVkYu8A/t5/OjNqeHArXXXVqfpSdCA
 JCo=
X-IronPort-AV: E=Sophos;i="5.81,160,1610380800"; 
   d="scan'208";a="263503253"
Received: from uls-op-cesaip01.wdc.com (HELO uls-op-cesaep01.wdc.com) ([199.255.45.14])
  by ob1.hgst.iphmx.com with ESMTP; 08 Feb 2021 07:32:36 +0800
IronPort-SDR: hVIqWyTOedhKpeIizrzJJtCeblLxLK0VdLi3rd/ZstQkTG5l2xh47AVOdfxXPr7r85JSh5i4Co
 O2VRmD+1hbn9lP5yL7hJ9zSlZjBCbxOrheEbRG8vPZGN71Ck42+IR4aXXD+rtnyq2SzuhYwcFs
 X2Q22VCZxCmO+2v1Jqs7zjX844jnk0+AP6MXFLgPzR666pLVn2ZyifhL6vw5c9KKW3RgBsi2dK
 4xh73NRZlQlFJcPUhTiday0yXd6gBou6j5XLH93YsWWOEDXXUMYTnbr9OgFd4bP1JeHjtAWZsB
 bPetRP6r+HS+XPXbjk6S4RxB
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
  by uls-op-cesaep01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 07 Feb 2021 14:57:04 -0800
IronPort-SDR: hAXhT1+T+Hypmn8iiSEXz+UmnGq2tzSPYwZkH+S3BE8rqCZa0tlhOxGctiQxYb8ypGAflVuQ4S
 xDGYkC65V3ZrJbcBzh4Y8Wrc6yDVQQsBmQWqMqBTGyRmuU6VY0V5nal8jbtNU4ONxNLTaIZTf8
 NBnktXpKHd3D4t8hdIKGmmNEYHepVeVmiINRafDx2X6WHEja1QtWzeWD5oInCBGuvdyZ1pG+4T
 luIj1aZ+/8JCGMZXOAnJnHQXplYt6sj9wBN9EGfsvylIAoqIkookSNs0GnHdIOsZU9KJ1/hEuu
 VpU=
WDCIronportException: Internal
Received: from phd004806.ad.shared (HELO twashi.fujisawa.hgst.com) ([10.84.71.69])
  by uls-op-cesaip02.wdc.com with ESMTP; 07 Feb 2021 15:13:10 -0800
From:   Damien Le Moal <damien.lemoal@wdc.com>
To:     Palmer Dabbelt <palmer@dabbelt.com>,
        linux-riscv@lists.infradead.org
Cc:     Atish Patra <atish.patra@wdc.com>, Anup Patel <anup.patel@wdc.com>,
        Sean Anderson <seanga2@gmail.com>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org
Subject: [PATCH v17 06/16] dt-bindings: update sifive uart compatible string
Date:   Mon,  8 Feb 2021 08:12:46 +0900
Message-Id: <20210207231256.115130-7-damien.lemoal@wdc.com>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210207231256.115130-1-damien.lemoal@wdc.com>
References: <20210207231256.115130-1-damien.lemoal@wdc.com>
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

