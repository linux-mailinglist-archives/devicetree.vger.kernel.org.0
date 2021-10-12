Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 70D7742A4A4
	for <lists+devicetree@lfdr.de>; Tue, 12 Oct 2021 14:37:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236570AbhJLMjU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 12 Oct 2021 08:39:20 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33370 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236514AbhJLMjO (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 12 Oct 2021 08:39:14 -0400
Received: from mail-ed1-x534.google.com (mail-ed1-x534.google.com [IPv6:2a00:1450:4864:20::534])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C8160C061767
        for <devicetree@vger.kernel.org>; Tue, 12 Oct 2021 05:37:11 -0700 (PDT)
Received: by mail-ed1-x534.google.com with SMTP id g10so79783426edj.1
        for <devicetree@vger.kernel.org>; Tue, 12 Oct 2021 05:37:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=pqrs.dk; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=INDYqtUols/uVG+LIBQeijVm3kwPp6AgjgHg2loetxk=;
        b=mqfcPMuE9S4mXDkJQXAK+8J0ecbnyDA92UApMbqkVadP7nIOOp5cC2WiW8gXmidpJN
         mND/2SLjs4IJT77Ca5vAZ+EsSHd7EXidHVvHJHLGMB83o+kjprPH+FDtXqJf0BDyEsdX
         BzHugoBn1Oe3bXeyKHvAiRGrLy8T/ISAkX9oM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=INDYqtUols/uVG+LIBQeijVm3kwPp6AgjgHg2loetxk=;
        b=aF0Zf+nOf/4z7P61e7RyhU3rmq8Ku6JeDwI40lDfWIGdP/fq+cXl1EzbTO2MW4zLbE
         PaafZ7IdmD3i7KkTDVivAUT84+vihBXWG1VGx5cFuJpMyR7H7xhuxNjQiWJL//jahCim
         eCW7dpS445iwA6N1SIkXpS7jkhP8pnDfOYxA1HKpZpCxcCkzaQnO2ogseCyrr8j116Dp
         ZZ+wNwXkqsUrmTgQHswBp+vP3LelATvzHE7bzyvsJJYULik4j4eCgDtDtNOFskFfrRht
         f9ofhvuQ2J9GApgGoRWPEIQU16Sl3H4EKEy1Cui1st2sMClPbgnzPtFTPy/1EyiwBQ0o
         fLCQ==
X-Gm-Message-State: AOAM5333nBlyp2EMmUGmBFW9HYaJuaROoHqA75VA9uSSsKg8YNTZ8ZG2
        ovd6NQv6T6rI3Kah0Gye5ZLG5g==
X-Google-Smtp-Source: ABdhPJxs0V9OZqWxQlU/9Dpl6E9pFhEQkhfEImHdkPNMA3JYcF/sdTfjJSAEJvEjYZXY68/QNI+xJw==
X-Received: by 2002:a17:906:1f49:: with SMTP id d9mr32664491ejk.150.1634042230410;
        Tue, 12 Oct 2021 05:37:10 -0700 (PDT)
Received: from capella.. (27-reverse.bang-olufsen.dk. [193.89.194.27])
        by smtp.gmail.com with ESMTPSA id b5sm5763629edu.13.2021.10.12.05.37.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 12 Oct 2021 05:37:10 -0700 (PDT)
From:   =?UTF-8?q?Alvin=20=C5=A0ipraga?= <alvin@pqrs.dk>
To:     Linus Walleij <linus.walleij@linaro.org>,
        Andrew Lunn <andrew@lunn.ch>,
        Vivien Didelot <vivien.didelot@gmail.com>,
        Florian Fainelli <f.fainelli@gmail.com>,
        Vladimir Oltean <olteanv@gmail.com>,
        "David S. Miller" <davem@davemloft.net>,
        Jakub Kicinski <kuba@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Heiner Kallweit <hkallweit1@gmail.com>,
        Russell King <linux@armlinux.org.uk>
Cc:     =?UTF-8?q?Alvin=20=C5=A0ipraga?= <alsi@bang-olufsen.dk>,
        Rob Herring <robh@kernel.org>, netdev@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH net-next 3/6] dt-bindings: net: dsa: realtek-smi: document new compatible rtl8365mb
Date:   Tue, 12 Oct 2021 14:35:52 +0200
Message-Id: <20211012123557.3547280-4-alvin@pqrs.dk>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20211012123557.3547280-1-alvin@pqrs.dk>
References: <20211012123557.3547280-1-alvin@pqrs.dk>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Alvin Šipraga <alsi@bang-olufsen.dk>

rtl8365mb is a new realtek-smi subdriver for the RTL8365MB-VC 4+1 port
10/100/1000M Ethernet switch controller. Its compatible string is
"realtek,rtl8365mb".

Signed-off-by: Alvin Šipraga <alsi@bang-olufsen.dk>
Reviewed-by: Andrew Lunn <andrew@lunn.ch>
Reviewed-by: Florian Fainelli <f.fainelli@gmail.com>
Acked-by: Rob Herring <robh@kernel.org>
Reviewed-by: Linus Walleij <linus.walleij@linaro.org>
---

RFC -> v1: no change; collect Reviewed-by and Acked-by

 Documentation/devicetree/bindings/net/dsa/realtek-smi.txt | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/net/dsa/realtek-smi.txt b/Documentation/devicetree/bindings/net/dsa/realtek-smi.txt
index b6ae8541bd55..ee03eb40a488 100644
--- a/Documentation/devicetree/bindings/net/dsa/realtek-smi.txt
+++ b/Documentation/devicetree/bindings/net/dsa/realtek-smi.txt
@@ -9,6 +9,7 @@ SMI-based Realtek devices.
 Required properties:
 
 - compatible: must be exactly one of:
+      "realtek,rtl8365mb" (4+1 ports)
       "realtek,rtl8366"
       "realtek,rtl8366rb" (4+1 ports)
       "realtek,rtl8366s"  (4+1 ports)
-- 
2.32.0

