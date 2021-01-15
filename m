Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D6B792F7DB9
	for <lists+devicetree@lfdr.de>; Fri, 15 Jan 2021 15:08:13 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726030AbhAOOHI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 15 Jan 2021 09:07:08 -0500
Received: from esa6.hgst.iphmx.com ([216.71.154.45]:1768 "EHLO
        esa6.hgst.iphmx.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1732225AbhAOOHI (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 15 Jan 2021 09:07:08 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
  t=1610719629; x=1642255629;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=6Hey1gBLFBlTZ5G4DZApRpa+IynzpXO3Am42+Zc7r64=;
  b=SzIWSM0D/TNH0LihT3J3XqHWhQaCMCqEuZrCAopoAcEe/rFKcHFY2r6i
   DeA6EDlyD1v4lQVWeJHgmQ9lJAYTMFwnAmqid4oapHtaEGel1k30DB/US
   +CUSMOQeYO5lo2ACN8w9yDHllfNaXd2eBlWhVq02J+Tbc12E2A0+m/MbD
   B73VSbiOX1CMJK3MoNfkgNV7lO/zFuzdxe4HSyUp0REZGdyDDiFhKX+4l
   JbJFre40C8VIGw9TvcGk8n00cOmzoh4rGagarv5FtVUyTaRZquvXCjaUs
   51Xa/ir9ybCCZtoU1hD/avq/omUbtdx1jSo3WxwdHhNyk6i/CW9k5nLyN
   g==;
IronPort-SDR: BbrJtpOB6a7bEwBPabJJay7cXDWHQ7V8JACwq6TokTeZHgEyiuGupVhWqUv9iagHAWh/iRQIiK
 LSM3cbMH/SiCEM0YrqISudrT/pD4bpSeinGVsglxaxkCsOyRoRa0NH8AWJTHbCg/HNdiS9g0+B
 b4leP9h3mHewLjZcoVc4/ORfPFxS5WqI5tnx0qfLV6+FlE6+1tzWqcVSJOMmKMptYUnLuLX/2P
 bd803hXObDbPImJTpwjJznq1+caOk76kduxrgu21dGfr2684MzMezny890oX0jpqez5m34oMxn
 pDs=
X-IronPort-AV: E=Sophos;i="5.79,349,1602518400"; 
   d="scan'208";a="158693667"
Received: from uls-op-cesaip01.wdc.com (HELO uls-op-cesaep01.wdc.com) ([199.255.45.14])
  by ob1.hgst.iphmx.com with ESMTP; 15 Jan 2021 22:04:50 +0800
IronPort-SDR: I+t7c5dbzXa7MqREtk1/hlmv+CLifdyJV4jh2jOrOfr6kiRWM/AFdAi2X/eVFm4ormR/vaZOZ9
 gDeK6eyoqzMqiXAkTpeGfEfH8xGx3FwfEAnJXiF5QvJIP/ZYTNvW3nHQCh1BaSmnZjprelNR09
 +HAAaefd4PxKbFlxQ22seyarWX323jRnGwUN7OOn6fOGK6OSOyip2F/eb0CFds8u4SbGTL2jdm
 aUGBcQ6j9eBALrFQy9ekFtQx+/5zsIsyTt7Hix9KI5qUu44VefNAp4KtKbexscYtXQ4ZgivXhR
 LmTgJpgELDMTk99WuFVoFFII
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
  by uls-op-cesaep01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 15 Jan 2021 05:49:31 -0800
IronPort-SDR: 07YQ9R4XlMpkoOR+DsPyg/KEDFXvGd1xFmU7Mjkeuj4dO5vcGvduSEHy2+O0aHQd/SczwDpv3c
 3aXFGn7aKJYerpf3MSL0Rf/B1KYGl+e3hUAOkKdSlms3I1N9aPOpBCeIQ/2Y8sbWVnn0baUbwB
 gOwwBFvuzUNqjfbfzRGcLlHLHs/ITDZ0CwuUucyO6/izphmv9LVkB7qybAsEWzzsFdR2RByLfG
 2YtPnXY4xEoiOoTz8x9+293gMkIIT8Tx25J1LCxdsSYzKBNgzWpzMiE8TqLv7j95vFZhAqwrJB
 irI=
WDCIronportException: Internal
Received: from wdapacbjl0003.my.asia.wdc.com (HELO twashi.fujisawa.hgst.com) ([10.84.70.177])
  by uls-op-cesaip02.wdc.com with ESMTP; 15 Jan 2021 06:04:49 -0800
From:   Damien Le Moal <damien.lemoal@wdc.com>
To:     Palmer Dabbelt <palmer@dabbelt.com>,
        linux-riscv@lists.infradead.org
Cc:     Sean Anderson <seanga2@gmail.com>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org
Subject: [PATCH v12 09/17] dt-bindings: update sifive serial
Date:   Fri, 15 Jan 2021 23:03:44 +0900
Message-Id: <20210115140352.146941-10-damien.lemoal@wdc.com>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210115140352.146941-1-damien.lemoal@wdc.com>
References: <20210115140352.146941-1-damien.lemoal@wdc.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add the compatible string "canaan,k210-uarths" to the sifive uart
bindings as the Canaan Kendryte K210 includes a Sifive uart IP block for
the main serial console.

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

