Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 26ED2487DF
	for <lists+devicetree@lfdr.de>; Mon, 17 Jun 2019 17:51:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728559AbfFQPuz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 17 Jun 2019 11:50:55 -0400
Received: from mail-pl1-f193.google.com ([209.85.214.193]:45025 "EHLO
        mail-pl1-f193.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728279AbfFQPuz (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 17 Jun 2019 11:50:55 -0400
Received: by mail-pl1-f193.google.com with SMTP id t7so4251395plr.11
        for <devicetree@vger.kernel.org>; Mon, 17 Jun 2019 08:50:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=NQ6QeGRRwWpLQqcLyIgK5BRWjkN7YKs7Jyn+T3KU9nA=;
        b=Fq8DdlBrF03jhPDYG0pss5OnBdYYhk3qiKfxgrtoJKAZ0OhtMQpnKTRQo85CMOPEV1
         YokavXCe5BEJad2n3xc3F1yBy6ADyyNZD2hM/YbKBbwc0sTEFV0inhchm8/k3CU79N2g
         bv2kw7CF8Iry5oYKahMVIriaEd6sETYdlsbRjtHs4JRGwFQzcUjLayrAcrf8IVFfC90d
         4bK7yOxZ1aDhayshz7uyA0yoLHnBqBg1APmjeCNjJ1KE5+EyFXQAtjTt0RosoFvXZmr1
         Ui2RLFNd8GiYoR6eEpj79QAAz1rs9hybUg//Nv5R4RSpXQ5DSqR4xCCl9ewCk4fba5GB
         KnAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=NQ6QeGRRwWpLQqcLyIgK5BRWjkN7YKs7Jyn+T3KU9nA=;
        b=RGztt/O8vVca98xzwM3xThn7v4b488kKwik2iszX91H4nIcO2p6ttMHkGpnirAs9k0
         ZJI+6T84hxz3H3f57F4DI9hdqEmwhIq1V7WR8kRK2hS6/k0CyCtKNFkKpkt/0fP3+u11
         64MOU3AHSR5RpcxNcp4ZPRv/U85hl0Ddv7AKEmIg7Hdth+jV3IXEFcPTj5wAUbs6LIqH
         w/hAckgAfWPkw0iWgV6fqZvYSQOkx+xUZ/18itbMbPMP6agjWUHno8X9EywM/QQlK2uk
         6Ziix/t7KKZXmOA8YNOf0hqjmgJiVHnS95c0esDh7u0JhqGfjyeKg+F3ND4u7BHm1yhS
         iZwQ==
X-Gm-Message-State: APjAAAXCrlDowcF+ZiZboZLaI/ZMdrVKKzA7jmksOhP+MOAjng1bB2sh
        pJMvp4IvljDoSYsw5uP4LFW2
X-Google-Smtp-Source: APXvYqx0N7SKT7isauDwfe9f+VsvEdgvY9+gJTbRIvT8GbAMvhmKnl3qZ6FpjSaVY5WIbppfQps1nA==
X-Received: by 2002:a17:902:8490:: with SMTP id c16mr28861348plo.1.1560786654595;
        Mon, 17 Jun 2019 08:50:54 -0700 (PDT)
Received: from localhost.localdomain ([2409:4072:629b:c246:9431:2a24:7932:6dba])
        by smtp.gmail.com with ESMTPSA id n2sm11023603pff.104.2019.06.17.08.50.49
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 17 Jun 2019 08:50:54 -0700 (PDT)
From:   Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To:     lee.jones@linaro.org, lgirdwood@gmail.com, broonie@kernel.org,
        robh+dt@kernel.org
Cc:     afaerber@suse.de, linux-actions@lists.infradead.org,
        linux-kernel@vger.kernel.org, thomas.liau@actions-semi.com,
        devicetree@vger.kernel.org, linus.walleij@linaro.org,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: [PATCH 4/4] MAINTAINERS: Add entry for ATC260x PMIC
Date:   Mon, 17 Jun 2019 21:20:11 +0530
Message-Id: <20190617155011.15376-5-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190617155011.15376-1-manivannan.sadhasivam@linaro.org>
References: <20190617155011.15376-1-manivannan.sadhasivam@linaro.org>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add MAINTAINERS entry for ATC260x PMIC.

Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 MAINTAINERS | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index 11d6937c4688..57112194cd90 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -2646,6 +2646,15 @@ S:	Supported
 F:	Documentation/aoe/
 F:	drivers/block/aoe/
 
+ATC260X PMIC MFD DRIVER
+M:	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
+S:	Maintained
+L:	linux-actions@lists.infradead.org
+F:	Documentation/devicetree/bindings/mfd/atc260x.txt
+F:	include/linux/mfd/atc260x/*
+F:	drivers/mfd/atc260*
+F:	drivers/regulator/atc260x-regulator.c
+
 ATHEROS 71XX/9XXX GPIO DRIVER
 M:	Alban Bedel <albeu@free.fr>
 W:	https://github.com/AlbanBedel/linux
-- 
2.17.1

