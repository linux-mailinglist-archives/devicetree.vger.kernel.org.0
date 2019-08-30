Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id C1B47A33A8
	for <lists+devicetree@lfdr.de>; Fri, 30 Aug 2019 11:20:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728164AbfH3JUL (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 30 Aug 2019 05:20:11 -0400
Received: from mail-pf1-f193.google.com ([209.85.210.193]:46482 "EHLO
        mail-pf1-f193.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728152AbfH3JUJ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 30 Aug 2019 05:20:09 -0400
Received: by mail-pf1-f193.google.com with SMTP id q139so4237490pfc.13
        for <devicetree@vger.kernel.org>; Fri, 30 Aug 2019 02:20:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=iZqgNQFAGZFiAL+MaQauEs39+uIHNVqT3urPZ1OfwvY=;
        b=vEEMZErjrqbkE0Yt2O0M3pSZapLdQhKFR6Jz5LV86q7cH0uJZmqmSn4UxyeR201COp
         t3B6qRntiLYgA+1MM5JpQpQnA4+WGVyFeGb+b1QgOLONuEoeviEyzTo4mIlQU93a1cyP
         U7NKYVgViyjNKl6VAWDhM6ToSI2koxMxpXeC1NY4mItJl2YHEEHp0tTJrYrbsgtD6JEE
         2pzRxpKMONBU8+8Vp5/uO59LhyHzyL1cVOIb6hUmdqwFxrrzMUpe0jXUjvi/rel9OMRy
         RLuNThpYJNgLmIKuZd5POYNg07J5G0fODzVn5Oj4u/8XsYVAoYbIStDGTV+la2PeUpD6
         BUxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=iZqgNQFAGZFiAL+MaQauEs39+uIHNVqT3urPZ1OfwvY=;
        b=r5er86B4vQbgoUf+CJ2HVcU7bVBqgNmX8SN0YbfI56qqEwviZ6ynm0tBf++o7YTXkO
         rJ+HUnj0wJwByAoQ2OpZJB0ikdWALQOuBbPf45nQ5rf41KMbLjU94YYm8W5sKUwu4zV0
         +KZFFnE/5FbOHMc0qbWQZCgQ5AYjtVNc3+1aJmh4KOZEXrYSpe2httsY3FkAZ15m0jkp
         zxGGHduYimvTzq7Tyhw/gZ4wvPW3nIafxJVc0kiir8tS/Scmd44UlDCUV7y/7+d2Ja1y
         BESaRgT8qkLo+HOioZCWYrgcgPVA94m9umZ+tlmWhB7q7KWl0d8RWRV9+AWJ7Jl9O8fo
         +dJw==
X-Gm-Message-State: APjAAAUDsL4Xd1oAIfZtO51R0zxpICpevIqZTeH6nknqJRwcRPFeF362
        wd0Gk/u1kuWQneLL8QvowMqh
X-Google-Smtp-Source: APXvYqzRFHNDr9oad7voBnS6/n543GjlV3A1iB44aDSh9qfP+WzcmpPz9MGSnjRwedesjP+mvAADmQ==
X-Received: by 2002:a17:90a:ad84:: with SMTP id s4mr15052314pjq.32.1567156808627;
        Fri, 30 Aug 2019 02:20:08 -0700 (PDT)
Received: from localhost.localdomain ([103.59.132.163])
        by smtp.googlemail.com with ESMTPSA id g202sm3142676pfb.155.2019.08.30.02.20.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 30 Aug 2019 02:20:08 -0700 (PDT)
From:   Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To:     mchehab@kernel.org, robh+dt@kernel.org, sakari.ailus@iki.fi
Cc:     linux-media@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        c.barrett@framos.com, a.brela@framos.com,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: [PATCH v3 3/3] MAINTAINERS: Add entry for IMX290 CMOS image sensor driver
Date:   Fri, 30 Aug 2019 14:49:43 +0530
Message-Id: <20190830091943.22646-4-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190830091943.22646-1-manivannan.sadhasivam@linaro.org>
References: <20190830091943.22646-1-manivannan.sadhasivam@linaro.org>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add MAINTAINERS entry for Sony IMX290 CMOS image sensor driver.

Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 MAINTAINERS | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index f7c84004187d..0ee261fca602 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -14962,6 +14962,14 @@ S:	Maintained
 F:	drivers/media/i2c/imx274.c
 F:	Documentation/devicetree/bindings/media/i2c/imx274.txt
 
+SONY IMX290 SENSOR DRIVER
+M:	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
+L:	linux-media@vger.kernel.org
+T:	git git://linuxtv.org/media_tree.git
+S:	Maintained
+F:	drivers/media/i2c/imx290.c
+F:	Documentation/devicetree/bindings/media/i2c/imx290.txt
+
 SONY IMX319 SENSOR DRIVER
 M:	Bingbu Cao <bingbu.cao@intel.com>
 L:	linux-media@vger.kernel.org
-- 
2.17.1

