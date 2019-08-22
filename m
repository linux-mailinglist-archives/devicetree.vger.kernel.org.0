Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 8568799C6A
	for <lists+devicetree@lfdr.de>; Thu, 22 Aug 2019 19:34:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2392355AbfHVRdl (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 22 Aug 2019 13:33:41 -0400
Received: from mail-pf1-f193.google.com ([209.85.210.193]:44487 "EHLO
        mail-pf1-f193.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2404466AbfHVRZj (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 22 Aug 2019 13:25:39 -0400
Received: by mail-pf1-f193.google.com with SMTP id c81so4384994pfc.11
        for <devicetree@vger.kernel.org>; Thu, 22 Aug 2019 10:25:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=K+pJPk2iXl0LixGuiysFHZxmO1vjBGFGOdrJivWtPCQ=;
        b=mW7Tgp1FmSapx19uGrdxDMd8OE3OgYVCxKv0qpVYm8Q5+jUgIaziiHoQzAuP0TaXs9
         b1ZDesqxvAoluWM9GSEgQ9G4QpMDXvfp1IJTvfkJGpAMme7osiW/rkqTy1V39252Dhbr
         WXc7XNRjcldsS3KQ5hKTF2F6stNSdyRfJu0zieUGc7nCMyhwFwel8ZedzEhJPaoTUDGH
         0Zl8idC+H4dtYMabKHQRwEow0I1NKJ4pbHlgdXYq69qyghfuNCeaweyDyYm2QCZ8YsEq
         NXYnSNYIG9YQ4K0Pcnaedhk/gu/Ja5KzsJqjnc094RYmDcUJAWGybU/FRQnwhBehyHjS
         Zpug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=K+pJPk2iXl0LixGuiysFHZxmO1vjBGFGOdrJivWtPCQ=;
        b=uH3+I49O7mnVR/D/YuWKF93YaJ5qpMFfTDsJ3+fKZsR72iot1nhIwt9uNyrWArMcgj
         3QZY2mypBHTBrNAgq8UsLl+qe6xbQ9iwADJUkHl/sl24Xxsb1sBB5IK4lAMC0AT426LI
         PrXlsqIcAOaNaVKrdrS/W0tnUdOWE5GgXq+nugwEyTVYyySCDYkgem9tE624i0f1Y9p6
         nZFthyNlko7MLwmoVaV1D0owIA1JHYuEglZx81Mj8tnVBgUnd0EWQ1hwwQ7YIPWv2KRs
         k/jfZf8KTLA3kL87r53TAZ2FGCWykkvbgE7tiHuLP9vMKXmHZY5MoJzEaN9gnPQqgY67
         mWhQ==
X-Gm-Message-State: APjAAAWtpSIUq4CcidvuRZnDh2P/+1ZXcazqt2qhqGYxdg2Tq52aeizu
        DPZmK3Pa+pJnZuirNlfis2F3
X-Google-Smtp-Source: APXvYqxCqc9UeYvtLws5SuOrAkw6QLX8rq7VicLc5z3Sq8OIW0mJfyReSJarPa+CAfZqwE6RSG9whQ==
X-Received: by 2002:a17:90a:b303:: with SMTP id d3mr863897pjr.28.1566494738302;
        Thu, 22 Aug 2019 10:25:38 -0700 (PDT)
Received: from localhost.localdomain ([2405:204:71cc:5738:24ad:193e:4b59:8a76])
        by smtp.gmail.com with ESMTPSA id r12sm31705798pgb.73.2019.08.22.10.25.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 Aug 2019 10:25:37 -0700 (PDT)
From:   Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To:     sboyd@kernel.org, mturquette@baylibre.com, robh+dt@kernel.org
Cc:     linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        haitao.suo@bitmain.com, darren.tsao@bitmain.com,
        fisher.cheng@bitmain.com, alec.lin@bitmain.com,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: [PATCH v4 8/8] MAINTAINERS: Add entry for BM1880 SoC clock driver
Date:   Thu, 22 Aug 2019 22:54:26 +0530
Message-Id: <20190822172426.25879-9-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190822172426.25879-1-manivannan.sadhasivam@linaro.org>
References: <20190822172426.25879-1-manivannan.sadhasivam@linaro.org>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add MAINTAINERS entry for Bitmain BM1880 SoC clock driver.

Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 MAINTAINERS | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index 997a4f8fe88e..280defec35b2 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -1503,8 +1503,10 @@ M:	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
 L:	linux-arm-kernel@lists.infradead.org (moderated for non-subscribers)
 S:	Maintained
 F:	arch/arm64/boot/dts/bitmain/
+F:	drivers/clk/clk-bm1880.c
 F:	drivers/pinctrl/pinctrl-bm1880.c
 F:	Documentation/devicetree/bindings/arm/bitmain.yaml
+F:	Documentation/devicetree/bindings/clock/bitmain,bm1880-clk.yaml
 F:	Documentation/devicetree/bindings/pinctrl/bitmain,bm1880-pinctrl.txt
 
 ARM/CALXEDA HIGHBANK ARCHITECTURE
-- 
2.17.1

