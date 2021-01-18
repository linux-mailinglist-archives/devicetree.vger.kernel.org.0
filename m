Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 453772F9793
	for <lists+devicetree@lfdr.de>; Mon, 18 Jan 2021 03:06:49 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730866AbhARCFg (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 17 Jan 2021 21:05:36 -0500
Received: from esa6.hgst.iphmx.com ([216.71.154.45]:17309 "EHLO
        esa6.hgst.iphmx.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1730086AbhARCFc (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 17 Jan 2021 21:05:32 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
  t=1610935533; x=1642471533;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=lZzHJ95UHiDhalCyr0UWnRyqs9+D5T06N5O98Kg5LfU=;
  b=SX3f6ga+pOKX9VqzPjjrNz7yQquW+yKf/jPFUeXhmx8uW/d/BrM/gE0o
   YGs25Xdgjb4vgrMfqygXOEFccmmAJhP1rnEUEh1ijDQkVlUevJTPZQ3Kc
   39megIUmh59mKYEyzeS1ninchrKDdFn1/TvkS3SRF2KBEN9R1VDJ7KYuT
   0QHjcd+WD2JrHb2IH32STu3egsnfsYlMZVqlsdZV0zRj8sOogQopQDRJH
   Ku8oHN482fDrDfD1U7ZM5JNh4qN4f5ZW5cQAocKp7qcnjVnGTx5jumXYN
   DwJxua+cnQ3TK8+hQhUfUQGx3gX2S2Wqkku4Rag5OqFjudTzi4qPsuJDp
   g==;
IronPort-SDR: Fe+48VjU+oCLccnWT+S9+J1dGJeqUyFClGadDqSJzmFAmDFDvZ7JOFYxD/buwNDKVbCSMYvK+u
 3Pks7YCCdwdWr0KpGKelUP6eVGAZGlt6Ta/HoY7jIn9QquFXaaHVBXb2zMmkHSuSG1AYOc2WLx
 kC6xE7YcvHpb/nYP40rrf4diMPDKUjN1OtD6Cai3ICjg32fm3GGCw8NCodQ+H5pk3WQSrHMOyn
 DulmJCzwIMl+NfXRfa/Q+Sq/gRyYP1OOSkrLxcikgEGpaesaEtKP92JQqlBUxBpeF37gZhDIQT
 XpE=
X-IronPort-AV: E=Sophos;i="5.79,355,1602518400"; 
   d="scan'208";a="158840876"
Received: from h199-255-45-14.hgst.com (HELO uls-op-cesaep01.wdc.com) ([199.255.45.14])
  by ob1.hgst.iphmx.com with ESMTP; 18 Jan 2021 10:03:10 +0800
IronPort-SDR: v8Mu8Jle6fiHuqX+xaHgJnpDFQDD9mjhhdpQl7Bumd3yW6zsDvsDIyp0yqqeXHOyBXMX4o6dr8
 Txba5sYNXzbEvG9GRIYKzkxRmXmDtsuxyS/wBmGtXRU/lUjpKqWjLAWsJnXQPRDxQiTNKOwWZg
 62usAWdIXoYXchx4B0xsYX/9bjBRER62Ppoq4SCG1VdZ6D50+qk2XjnGm/SxBpnI+wR/fj733x
 Euqewf8v8F2oCaIqMAHQXkDUGBdFj4AiQGezXX8xjNp6HhnVHSDK70OvOqxzbQNsuCjM00up6O
 O1jVZKaUyls+QP9R7ETKOpkc
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
  by uls-op-cesaep01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 17 Jan 2021 17:47:48 -0800
IronPort-SDR: AhhaL0xISz6q3rcLrB2C5pN5bHPQuTRu60cj+e7lbzM6Q2rrrxtALiK+bPgUY7wnCHEmcJVqR/
 fPaj5lO0c/tNav4ZN132Fr9o0ZQlxGXg5KBjKyaL8+ZR0zuN5zkinde/Hz0ZjkrdcwuxhRzW84
 FiE/yZdK5IrvylhPyoZPaA+O8oBojGOFB4LexpymYt1pmzUFK6H2zttAPY6lMdYtNxrbfk8Jtb
 Xxcd1/l+TFc0e4d9we2gB+1F/tUW2ZeEtBJdNfXC1Cokbay0vhN7mMckWS1zAII5VBh8DTD5AC
 N+M=
WDCIronportException: Internal
Received: from cnf011319.ad.shared (HELO twashi.fujisawa.hgst.com) ([10.84.70.208])
  by uls-op-cesaip02.wdc.com with ESMTP; 17 Jan 2021 18:03:09 -0800
From:   Damien Le Moal <damien.lemoal@wdc.com>
To:     Palmer Dabbelt <palmer@dabbelt.com>,
        linux-riscv@lists.infradead.org
Cc:     Sean Anderson <seanga2@gmail.com>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org
Subject: [PATCH v13 07/17] dt-bindings: update sifive uart compatible string
Date:   Mon, 18 Jan 2021 11:02:34 +0900
Message-Id: <20210118020244.103451-8-damien.lemoal@wdc.com>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210118020244.103451-1-damien.lemoal@wdc.com>
References: <20210118020244.103451-1-damien.lemoal@wdc.com>
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

