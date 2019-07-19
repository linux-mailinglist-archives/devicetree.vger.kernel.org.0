Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 0B3D46E4C9
	for <lists+devicetree@lfdr.de>; Fri, 19 Jul 2019 13:12:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727771AbfGSLLJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 19 Jul 2019 07:11:09 -0400
Received: from mail-pg1-f196.google.com ([209.85.215.196]:43862 "EHLO
        mail-pg1-f196.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727470AbfGSLLJ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 19 Jul 2019 07:11:09 -0400
Received: by mail-pg1-f196.google.com with SMTP id f25so14314067pgv.10
        for <devicetree@vger.kernel.org>; Fri, 19 Jul 2019 04:11:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=2LpUwCj6ex4EuWz7pYkskzS9o+TUIY6ouJ6SDTvkm7g=;
        b=KNJ5AgUP+nhPQ0XA7JUBTUfni+1LDf7ptqmqWjY4nHFvVJPbmRnXMaTt/uMUXACEhr
         /cDC9w7z4WcGkB+Wp1lxULdRT+MX3mCZD3zopQaSaPBccY9CGUqu0Qc8bPHmPOAIM+EM
         2D3ApY6uxLfR5xv3LQt/vSWubpw8VMEv7/gSg7gNLGZIZhQG4qVeDjG7atcT2M+6SuXq
         RE9wro+b9iZLBNbloz4S6nGLPJRhsGheB7E2fMFI49EqLaybFhE3IXsRSoge9BRnWbYv
         7T404jj5YKtXvD3EyjyRefxifVbXztSZvgM1z0uT3YhkpXUqyoZ8CDv7I5vY1vjTR8Fc
         NWbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=2LpUwCj6ex4EuWz7pYkskzS9o+TUIY6ouJ6SDTvkm7g=;
        b=VXxldaHcXwRHqldBQnXzZblYMPc0gPt4nKGH42wHSjgYvAFZqpRvpFvGdNH5y39GqI
         viLGgSxm1qlJ7tmhMOOo2tTg9cspz7wWQQZaOoET+M/OylsCETeKLa/uWw4sJ0NuXJbJ
         sNmxQzTBA2L33HldQIlav/KjCuLW+m1mKOqKgtzFDE9typTFI7NbofSc4EAToQlWydGQ
         JwX3Wi4kMNfYhuRFvJ4XXcuLXgYAzCNujIEgr+9cce4a8wH2KFtju1sTvOB7VxtTYjtI
         nBdUW0YnmHRRfVd5Q+PhuiXhIJ6KMuWeJgX+b/8ygcJxMd0QBkh4Us+8hf6CSvo6UKxP
         vAmA==
X-Gm-Message-State: APjAAAUKw7ruaPRItNslNTiZhXl3gwKueJx+pVwRMOjk/iMrFQYZIfSJ
        LthBWnOm/7VFSE/y58xJj3ywlQ==
X-Google-Smtp-Source: APXvYqxYl9DggRwywYgz894WYfruJqLA9GZZwTOMXKLsPkulca1u7VdoxE+L79pLVGQQ0g6uCpIRsQ==
X-Received: by 2002:a63:2b0c:: with SMTP id r12mr53596123pgr.206.1563534668955;
        Fri, 19 Jul 2019 04:11:08 -0700 (PDT)
Received: from buildserver-90.open-silicon.com ([114.143.65.226])
        by smtp.googlemail.com with ESMTPSA id i9sm10196872pgg.38.2019.07.19.04.11.02
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 19 Jul 2019 04:11:08 -0700 (PDT)
From:   Yash Shah <yash.shah@sifive.com>
To:     davem@davemloft.net, robh+dt@kernel.org, paul.walmsley@sifive.com,
        netdev@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org
Cc:     mark.rutland@arm.com, palmer@sifive.com, aou@eecs.berkeley.edu,
        nicolas.ferre@microchip.com, ynezz@true.cz,
        sachin.ghadi@sifive.com, Yash Shah <yash.shah@sifive.com>
Subject: [PATCH 2/3] macb: Update compatibility string for SiFive FU540-C000
Date:   Fri, 19 Jul 2019 16:40:30 +0530
Message-Id: <1563534631-15897-2-git-send-email-yash.shah@sifive.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1563534631-15897-1-git-send-email-yash.shah@sifive.com>
References: <1563534631-15897-1-git-send-email-yash.shah@sifive.com>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Update the compatibility string for SiFive FU540-C000 as per the new
string updated in the binding doc.
Reference: https://lkml.org/lkml/2019/7/17/200

Signed-off-by: Yash Shah <yash.shah@sifive.com>
---
 drivers/net/ethernet/cadence/macb_main.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/cadence/macb_main.c b/drivers/net/ethernet/cadence/macb_main.c
index 15d0737..305371c 100644
--- a/drivers/net/ethernet/cadence/macb_main.c
+++ b/drivers/net/ethernet/cadence/macb_main.c
@@ -4112,7 +4112,7 @@ static int fu540_c000_init(struct platform_device *pdev)
 	{ .compatible = "cdns,emac", .data = &emac_config },
 	{ .compatible = "cdns,zynqmp-gem", .data = &zynqmp_config},
 	{ .compatible = "cdns,zynq-gem", .data = &zynq_config },
-	{ .compatible = "sifive,fu540-macb", .data = &fu540_c000_config },
+	{ .compatible = "sifive,fu540-c000-gem", .data = &fu540_c000_config },
 	{ /* sentinel */ }
 };
 MODULE_DEVICE_TABLE(of, macb_dt_ids);
-- 
1.9.1

