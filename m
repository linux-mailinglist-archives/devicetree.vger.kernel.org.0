Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4BCB03FF8BE
	for <lists+devicetree@lfdr.de>; Fri,  3 Sep 2021 03:53:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1347219AbhICByY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 2 Sep 2021 21:54:24 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37014 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1347088AbhICByX (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 2 Sep 2021 21:54:23 -0400
Received: from mail-pj1-x1034.google.com (mail-pj1-x1034.google.com [IPv6:2607:f8b0:4864:20::1034])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 996BEC061575
        for <devicetree@vger.kernel.org>; Thu,  2 Sep 2021 18:53:24 -0700 (PDT)
Received: by mail-pj1-x1034.google.com with SMTP id z24-20020a17090acb1800b0018e87a24300so2889633pjt.0
        for <devicetree@vger.kernel.org>; Thu, 02 Sep 2021 18:53:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=Mm2cYuMSJW2ZFjT+fHr5kFu0FfpFJ6P76HgMeBngx2I=;
        b=PPCloGI2VVy0nvz1aii56tlati5w430XqltBd7TM1AtGEmbsEnxyNZhcV3BB7OObsa
         P7nbuzKEJGzxOAo1lXvcA4nMgya6p1WDupRazWS1J55Ku45ydHGPpa63ngriUgGFkg7M
         aP3/53qwl/ZZMtaFsAURC6vk4VB47vxILDmkIAYMDSuH7p4F9JhtUAWZEouq2/hDp88J
         Bc8pIBAOVdfX9KAg3giRoO1yxDSUsejFppKvXDdskLLYEoJZp5B9CuAwrkGntVAhdTEk
         gWANr0CtSs4ck1wTT52HVCzGk69q2t5BqPHIH+kQSTlLhP48YuleJdpfrzjH7LCe0quj
         lFWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :mime-version:content-transfer-encoding;
        bh=Mm2cYuMSJW2ZFjT+fHr5kFu0FfpFJ6P76HgMeBngx2I=;
        b=WX92c80UBVc4tqCjErPK/caFoZSsqJFsNHg0+9wR3DBc8LGMgAlIvZQK9zi/IgZstx
         wZ0l+/eM157ombCMLO4a/Y77SHE739S8w5WaqgEyGDLI+ZPPFhfKOFmsbuFULG8C5NMc
         AlSgErNCpovM9+afaBOMfDsiUOa667Ew83EPSG5ARIlBw+ZGoMr0BUno2Ek6E8uC6NQY
         7O68jLW0m8YbK9fbhMaLxeuoFDz9FzCWxK+LU8LXqmNASQfx2VkHGIbJhoOMcMXznqhz
         jcWSMxB3nvBF+ZGo/DUSblF6OjxwIhTKxES0/Enr2ojsnG1O6im5oDjaSXAQ0UlzYF49
         FIdQ==
X-Gm-Message-State: AOAM531um4DCD31LclYx8yOEJef7FgGWDeDQtdaqYfcfgu2C3OepkeUD
        D7PWx7PMTh0XefFCR54DrwY=
X-Google-Smtp-Source: ABdhPJxRhXxhp7dptMcx+XfCEgRqLaXreFkz3eMODkK3BqrZSy68RN//cwCLj5IlzFlBlMT8oyMlfg==
X-Received: by 2002:a17:902:c38d:b0:135:509b:7ba0 with SMTP id g13-20020a170902c38d00b00135509b7ba0mr1147075plg.50.1630634004080;
        Thu, 02 Sep 2021 18:53:24 -0700 (PDT)
Received: from voyager.lan ([45.124.203.15])
        by smtp.gmail.com with ESMTPSA id o10sm3786689pgp.68.2021.09.02.18.53.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 02 Sep 2021 18:53:23 -0700 (PDT)
Sender: "joel.stan@gmail.com" <joel.stan@gmail.com>
From:   Joel Stanley <joel@jms.id.au>
To:     Corey Minyard <minyard@acm.org>
Cc:     openipmi-developer@lists.sourceforge.net,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        Andrew Jeffery <andrew@aj.id.au>
Subject: [PATCH] ipmi: bt: Add ast2600 compatible string
Date:   Fri,  3 Sep 2021 11:23:14 +0930
Message-Id: <20210903015314.177987-1-joel@jms.id.au>
X-Mailer: git-send-email 2.33.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The AST2600 has the same register set as the previous generation SoCs.

Signed-off-by: Joel Stanley <joel@jms.id.au>
---
 .../devicetree/bindings/ipmi/aspeed,ast2400-ibt-bmc.txt          | 1 +
 drivers/char/ipmi/bt-bmc.c                                       | 1 +
 2 files changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/ipmi/aspeed,ast2400-ibt-bmc.txt b/Documentation/devicetree/bindings/ipmi/aspeed,ast2400-ibt-bmc.txt
index 028268fd99ee..c9902fd4b38b 100644
--- a/Documentation/devicetree/bindings/ipmi/aspeed,ast2400-ibt-bmc.txt
+++ b/Documentation/devicetree/bindings/ipmi/aspeed,ast2400-ibt-bmc.txt
@@ -9,6 +9,7 @@ Required properties:
 - compatible : should be one of
 	"aspeed,ast2400-ibt-bmc"
 	"aspeed,ast2500-ibt-bmc"
+	"aspeed,ast2600-ibt-bmc"
 - reg: physical address and size of the registers
 
 Optional properties:
diff --git a/drivers/char/ipmi/bt-bmc.c b/drivers/char/ipmi/bt-bmc.c
index 6e3d247b55d1..d16516be9ac9 100644
--- a/drivers/char/ipmi/bt-bmc.c
+++ b/drivers/char/ipmi/bt-bmc.c
@@ -508,6 +508,7 @@ static int bt_bmc_remove(struct platform_device *pdev)
 static const struct of_device_id bt_bmc_match[] = {
 	{ .compatible = "aspeed,ast2400-ibt-bmc" },
 	{ .compatible = "aspeed,ast2500-ibt-bmc" },
+	{ .compatible = "aspeed,ast2600-ibt-bmc" },
 	{ },
 };
 
-- 
2.33.0

