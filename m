Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 0CAB59DCF6
	for <lists+devicetree@lfdr.de>; Tue, 27 Aug 2019 07:06:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729267AbfH0FGk (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 27 Aug 2019 01:06:40 -0400
Received: from mail-pg1-f196.google.com ([209.85.215.196]:33435 "EHLO
        mail-pg1-f196.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729072AbfH0FGk (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 27 Aug 2019 01:06:40 -0400
Received: by mail-pg1-f196.google.com with SMTP id n190so11953496pgn.0
        for <devicetree@vger.kernel.org>; Mon, 26 Aug 2019 22:06:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=VYL3HdVny3FjP/wO+XxHHdBUD9pdN47WSuHO2lt5w60=;
        b=WEt1MMvwgNdusrEbrNFjSez3tEixw//zKssAQYwRsRUKy/pgeg/u4i9C06/Oi7qw/Y
         iocKb9KvtvWV5pSKbamyUc7z3Z0XtMtSYlEUdHXnOBpCPbWxWNlewegjlpstjK+1OS0k
         /DMg7gErRDGB+q4puRCiCFGmqjpSHWzcFdSIf5LsvXFoNbinYMXR7PQWqlCdJW4Rjj8v
         mTg8x943ZLPfJplGvgY3vM2YTDzdWXQX7dYzpmoyzAtm4BJgq8s4/eqqwsuAGO416myf
         K+VvGzUn+WKqBXnOfB8V1hR6JOc5I4FkIkzbL4nhzfvuEovX+Ii43xs37BV2lQta8MOv
         r1cA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=VYL3HdVny3FjP/wO+XxHHdBUD9pdN47WSuHO2lt5w60=;
        b=Ztt5q7RufYcsfX8tCDnbfB1Sn7SdT0Hxpv0NIAjkXB/1PfJEiDBF8404QtMp5gqQ6W
         HZaRLFCLyJtn6zIhmbC7ENJYbDaNILc4F0J8zXyGsvXIOihXej7svDPhnybfrQHFqLFH
         C0vqZ9RIK3aMUBqJS/5VMwmkCG2+ynsotFIYgiv+G8kgNg2yhdEV6sxarqaasG718i5x
         gTziYBKLuIF7kdiXcuEi6KQGErSdwJqi6G75jG/z2cw6/CRDt3c3Ng80Eomb0G/8iwN+
         7jslOoEkQrmGtj8MX7PVwkQPfQ1u7w1axqhKXIYoH7+9F06s5aOFTR+g5glzujbrHERl
         GhwA==
X-Gm-Message-State: APjAAAUcwNP/C11H+xRN1ku0+I3u/HDKXa6NCm1VXIKFSxAS9K28okbu
        u37srnCn0b/rBnX3dPmjkO9JIw==
X-Google-Smtp-Source: APXvYqw5XnLL4FU55AVh6pVhf3wlNoIftUqMrAB+AkrajMTqZ0ROSrHT3EwP1NqkPYcBj8Wltz8dYg==
X-Received: by 2002:a63:3046:: with SMTP id w67mr20111427pgw.37.1566882399562;
        Mon, 26 Aug 2019 22:06:39 -0700 (PDT)
Received: from buildserver-90.open-silicon.com ([114.143.65.226])
        by smtp.googlemail.com with ESMTPSA id q8sm896414pjq.20.2019.08.26.22.06.35
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 26 Aug 2019 22:06:38 -0700 (PDT)
From:   Yash Shah <yash.shah@sifive.com>
To:     davem@davemloft.net, netdev@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-riscv@lists.infradead.org
Cc:     robh+dt@kernel.org, mark.rutland@arm.com,
        nicolas.ferre@microchip.com, palmer@sifive.com,
        paul.walmsley@sifive.com, ynezz@true.cz, sachin.ghadi@sifive.com,
        Yash Shah <yash.shah@sifive.com>
Subject: [PATCH v2 1/2] macb: bindings doc: update sifive fu540-c000 binding
Date:   Tue, 27 Aug 2019 10:36:03 +0530
Message-Id: <1566882364-23891-2-git-send-email-yash.shah@sifive.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1566882364-23891-1-git-send-email-yash.shah@sifive.com>
References: <1566882364-23891-1-git-send-email-yash.shah@sifive.com>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

As per the discussion with Nicolas Ferre[0], rename the compatible property
to a more appropriate and specific string.

[0] https://lore.kernel.org/netdev/CAJ2_jOFEVZQat0Yprg4hem4jRrqkB72FKSeQj4p8P5KA-+rgww@mail.gmail.com/

Signed-off-by: Yash Shah <yash.shah@sifive.com>
Acked-by: Nicolas Ferre <nicolas.ferre@microchip.com>
Reviewed-by: Paul Walmsley <paul.walmsley@sifive.com>
Reviewed-by: Rob Herring <robh@kernel.org>
---
 Documentation/devicetree/bindings/net/macb.txt | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/net/macb.txt b/Documentation/devicetree/bindings/net/macb.txt
index 63c73fa..0b61a90 100644
--- a/Documentation/devicetree/bindings/net/macb.txt
+++ b/Documentation/devicetree/bindings/net/macb.txt
@@ -15,10 +15,10 @@ Required properties:
   Use "atmel,sama5d4-gem" for the GEM IP (10/100) available on Atmel sama5d4 SoCs.
   Use "cdns,zynq-gem" Xilinx Zynq-7xxx SoC.
   Use "cdns,zynqmp-gem" for Zynq Ultrascale+ MPSoC.
-  Use "sifive,fu540-macb" for SiFive FU540-C000 SoC.
+  Use "sifive,fu540-c000-gem" for SiFive FU540-C000 SoC.
   Or the generic form: "cdns,emac".
 - reg: Address and length of the register set for the device
-	For "sifive,fu540-macb", second range is required to specify the
+	For "sifive,fu540-c000-gem", second range is required to specify the
 	address and length of the registers for GEMGXL Management block.
 - interrupts: Should contain macb interrupt
 - phy-mode: See ethernet.txt file in the same directory.
-- 
1.9.1

