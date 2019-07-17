Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 3D5546B651
	for <lists+devicetree@lfdr.de>; Wed, 17 Jul 2019 08:11:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726894AbfGQGLC (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 17 Jul 2019 02:11:02 -0400
Received: from mail-pg1-f193.google.com ([209.85.215.193]:37240 "EHLO
        mail-pg1-f193.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725799AbfGQGLC (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 17 Jul 2019 02:11:02 -0400
Received: by mail-pg1-f193.google.com with SMTP id g15so10618786pgi.4
        for <devicetree@vger.kernel.org>; Tue, 16 Jul 2019 23:11:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=vN79lmOQ+vzumU1jDpqE7NFEQZL1EfXi0bwxGYdVrVI=;
        b=tm2mbZg6hha+q1G9c4kaetRiZMsb6+GMeXdyEK9s+xiCXMjwjzqAlHeOQ/fMUbeD0W
         wu7s49zatRRw/wpRb1aXNDxc0go3LI4pFc7EDAr6aM+ulHogSDI/U80Bnl/r/zzHe3j2
         YGhGdP/d2w6s6BKVDvRX2pMu5/XTHZuOy2cancQoj++vMHTsxfSETaYjfCDUD2zEcUCL
         VobPZkRq+xDb3YPUowTi6AtLYK5IEkI5VpIhbW8rp6z09XXJti3sX1sIaYOm6g43B3kQ
         z5SCDiQBfNbgcduk5aiGCI8fxY64zdLYmaZxU75GDSfo7WoosRucOGlfddt9WvHeTrMF
         5+Aw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=vN79lmOQ+vzumU1jDpqE7NFEQZL1EfXi0bwxGYdVrVI=;
        b=Jdvyo8UkkyAlamCH+LJos6B+/PpnlZ4xwE/Pbs9nUW97orFKSTAbAhwnMwVO75G7ZQ
         2EVMv76rIDfNANxP2s3K/bCdzdWkjcJvE423lCHfcE2qBA1SruHAuiAV9ogMDS9f57Q+
         5d6rxR6I4xHvyz5EHizkh92OvzFjr1gyGGq4Kt2WoxeUthaC1q5aBm4EzRhvXfR10490
         FUYNKKwVxiaxFQ+qZj8tyTzHpxQiN6lpHAuqxMn2lbjforn8zc92Dgymui2tjI6ZWcNi
         tDbXfrL+LE06DMHTLDw3zf6/z39VK29NSfqg8KUWwtblaQUIqc25/mPdVUoakV9rPKhN
         2wgQ==
X-Gm-Message-State: APjAAAUDPdV9D28f383o+1Xm/2Ue65NDC7W20vlQ9pZXfM1QeUt4fTKm
        wV8/dUBixZIzOsCR3VPkz0Xz
X-Google-Smtp-Source: APXvYqzsCsoCU0LtZpW6aTjrP7Q95hULw+ZhlXOavzCScJo+T+BGRa+MK/t5qSfF8EgwqbbRpxPRkg==
X-Received: by 2002:a65:458d:: with SMTP id o13mr38583589pgq.34.1563343861778;
        Tue, 16 Jul 2019 23:11:01 -0700 (PDT)
Received: from localhost.localdomain ([2405:204:7301:59e6:f493:40df:9c8a:5041])
        by smtp.gmail.com with ESMTPSA id r27sm25993313pgn.25.2019.07.16.23.10.55
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Tue, 16 Jul 2019 23:11:01 -0700 (PDT)
From:   Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To:     shawnguo@kernel.org, s.hauer@pengutronix.de, robh+dt@kernel.org
Cc:     kernel@pengutronix.de, festevam@gmail.com, linux-imx@nxp.com,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org, Darshak.Patel@einfochips.com,
        kinjan.patel@einfochips.com, prajose.john@einfochips.com,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: [PATCH 1/3] dt-bindings: Add Vendor prefix for Einfochips
Date:   Wed, 17 Jul 2019 11:40:37 +0530
Message-Id: <20190717061039.9271-2-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190717061039.9271-1-manivannan.sadhasivam@linaro.org>
References: <20190717061039.9271-1-manivannan.sadhasivam@linaro.org>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add devicetree vendor prefix for Einfochips.
https://www.einfochips.com/

Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index 1acf806b62bf..9b74c4de5676 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -255,6 +255,8 @@ patternProperties:
     description: Emerging Display Technologies
   "^eeti,.*":
     description: eGalax_eMPIA Technology Inc
+  "^einfochips,.*":
+    description: Einfochips
   "^elan,.*":
     description: Elan Microelectronic Corp.
   "^elgin,.*":
-- 
2.17.1

