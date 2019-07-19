Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id A3D8D6E16E
	for <lists+devicetree@lfdr.de>; Fri, 19 Jul 2019 09:10:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727600AbfGSHKA (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 19 Jul 2019 03:10:00 -0400
Received: from mail-pl1-f174.google.com ([209.85.214.174]:45015 "EHLO
        mail-pl1-f174.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727590AbfGSHKA (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 19 Jul 2019 03:10:00 -0400
Received: by mail-pl1-f174.google.com with SMTP id t14so15140385plr.11
        for <devicetree@vger.kernel.org>; Fri, 19 Jul 2019 00:09:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=wejlJJPjvhTTbCNGB4VjnLtYjtQuI5s6iJfj743WH8I=;
        b=lmu043Hz6zAVciotAIw/JtZ9gpdYGTWPlmxnLrJhHiguq63+npVZdwXC9Yq94o9dJF
         S4TYuKUcrC6nPnjd3BoJ26izYVnpbfMWHrQvcpxMsztSF9K7Kvnfu1Vdky+C9p+gB1Zp
         Oh98xM0LMQHYPgE5MPM55pH1qK/dWz/oMTk9FAQNd/n2TLrd4Zx4+cJg4skaK5RhkwQ5
         mmYmxYJ+RsBdPoz6T2IK9wpbNw8VVu3BekgcTs1guzTY3y5zCFtFv1TktgnaCAkobBJR
         6fZY01Q5OT7IG4FvrdcYcT6OueIt4s/UXex6ghjoDNm2sLmYY++Lg/bJlFs7dvfH+KVO
         RiHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=wejlJJPjvhTTbCNGB4VjnLtYjtQuI5s6iJfj743WH8I=;
        b=hInx6VnjIjumDp77erVrBEW+1X3QY/6Rg4FvfBWmvKALsqQmUu/jSi4THZx8Q2b/Db
         ZiDVMZi6dX0vj2QK/Jnl6dTvwD6p33UfIocqABC6jNMO472fX/tuUjAZIprb4R6kTLFg
         P6VkIRaIwXvqLTIeoqvVXKOLLyDrF/UCEpQ2CTd56pasHOJpdW1O7K4WvOViNcJUOVm8
         kffYCsecAIJjeFzacxmv/jsprd1eInXq9vLp1Z1asLiS2UNifYMbaOJmZBqohihGhuVU
         xaeHTHNNtTqPaijIJFKcDuQ1mjChYr+cT4v2u5+zW54buYbRyndgO0Fv4XLFVrYTDniD
         uomA==
X-Gm-Message-State: APjAAAV+zMnaw1XBoe0iDCLaQUT95lOKQ/Xa2EPfIajypV4SJCuKPT9f
        cpo+vZemo9Jhx9lyYIZtfeBFQB3Q0Q==
X-Google-Smtp-Source: APXvYqyvX2dItjj9s9D7tuG12+0UPJBQozTDJS4lYY0lsaWB25b6IUqfd8X/oUBdeEUOluWrLVNr9Q==
X-Received: by 2002:a17:902:7894:: with SMTP id q20mr53150658pll.339.1563520198971;
        Fri, 19 Jul 2019 00:09:58 -0700 (PDT)
Received: from localhost.localdomain ([2405:204:730b:4a40:d09e:c7ec:fbb:1676])
        by smtp.gmail.com with ESMTPSA id r6sm56259346pjb.22.2019.07.19.00.09.52
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Fri, 19 Jul 2019 00:09:58 -0700 (PDT)
From:   Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To:     shawnguo@kernel.org, s.hauer@pengutronix.de, robh+dt@kernel.org
Cc:     kernel@pengutronix.de, festevam@gmail.com, linux-imx@nxp.com,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org, Darshak.Patel@einfochips.com,
        kinjan.patel@einfochips.com, prajose.john@einfochips.com,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: [PATCH v2 2/3] dt-bindings: arm: Document i.MX8QXP AI_ML board binding
Date:   Fri, 19 Jul 2019 12:39:25 +0530
Message-Id: <20190719070926.29114-3-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190719070926.29114-1-manivannan.sadhasivam@linaro.org>
References: <20190719070926.29114-1-manivannan.sadhasivam@linaro.org>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Document devicetree binding of i.MX8QXP AI_ML board from Einfochips.

Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Reviewed-by: Dong Aisheng <aisheng.dong@nxp.com>
---
 Documentation/devicetree/bindings/arm/fsl.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/fsl.yaml b/Documentation/devicetree/bindings/arm/fsl.yaml
index 407138ebc0d0..8e9209a75478 100644
--- a/Documentation/devicetree/bindings/arm/fsl.yaml
+++ b/Documentation/devicetree/bindings/arm/fsl.yaml
@@ -180,6 +180,7 @@ properties:
       - description: i.MX8QXP based Boards
         items:
           - enum:
+              - einfochips,imx8qxp-ai_ml  # i.MX8QXP AI_ML Board
               - fsl,imx8qxp-mek           # i.MX8QXP MEK Board
           - const: fsl,imx8qxp
 
-- 
2.17.1

