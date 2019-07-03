Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 08D255EC21
	for <lists+devicetree@lfdr.de>; Wed,  3 Jul 2019 21:03:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726951AbfGCTDB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 3 Jul 2019 15:03:01 -0400
Received: from mail-pf1-f194.google.com ([209.85.210.194]:43151 "EHLO
        mail-pf1-f194.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727239AbfGCTDA (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 3 Jul 2019 15:03:00 -0400
Received: by mail-pf1-f194.google.com with SMTP id i189so1712642pfg.10
        for <devicetree@vger.kernel.org>; Wed, 03 Jul 2019 12:03:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=x1DRYxM4S/B7SoxMDhNxSzKMNHFlAjuQUN144vOww2A=;
        b=EiT8BWbl+xHvb7JFvpcjaMBfzfBwNgp5IyVQl4JjzJ7b6sxwpmksLvde9vYcrpQreD
         sRJqJbjhYOYJBEZompfAK7sofYrjSgbr3fdLQJ2n4MyEJ/tNP4N8IInWdCHMZ7wjDu6g
         ofrPqbN6sZFxyvHDXBpRnX31lju59FJeiu5ao9NWIoOajR3+rnbMoO9tb6S1+cVNT5WK
         HOUWSNdjAjNLEk8ssEXpuoRe33pQouijP6A8ueGkJJ7KeJNAmfDcfhq3SmmrXvFM0rIE
         MWHD64RlAdRvOL/6ylNB8a9b9WZENN2Zn6wKnLQjbEys6SQJHq03eJP2+jKrOWhuJcPU
         MAdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=x1DRYxM4S/B7SoxMDhNxSzKMNHFlAjuQUN144vOww2A=;
        b=du8HmMHc8ZeaWjwE2+pQz0iBpa9on6Iza9CUqCpASDWjtvdnERUSyunCGsXyV5ZjuY
         24N1nZ9lLkFze2hu2Aby/wcaYhLV0p0nombQ4AA7oIDRb2up86zv5mxn+lriHyMgBWjn
         ydYDqB2IY5Ytd2E9EZcQNA8m7JO818cFzqFAOEg8Ap3MSbMJkKBHQghbL3tbsBEWX2lp
         0GQ5nolA0wy0juXaL11JYhvaw3qCqyUO7pdgaIcwVcR9+btTetnJJ8AQiEZuA2eo1UCO
         xfF/LP/Ts3bbFFTald3dPOiHLjbs/sLs5NnyQXRAeURuG75PFD3T/O99n+3nHvHYPRJs
         Zdgw==
X-Gm-Message-State: APjAAAVLcy/kz8f/Ej7uf8VBrtLKIwUpRK0eDWXkIfZfGmv+vfxS1q68
        NeCUkXqzQe4TUl4NT5ej/eVAD6qa2w==
X-Google-Smtp-Source: APXvYqy8mtloT40dRnY/gaVB9FpkscYftIb1iPR1fDiwsvm8UFmgRrDb0Wh22kBTCyQyQyviBDgDXw==
X-Received: by 2002:a63:d04e:: with SMTP id s14mr13153497pgi.189.1562180579800;
        Wed, 03 Jul 2019 12:02:59 -0700 (PDT)
Received: from localhost.localdomain ([2409:4072:117:d72f:1d34:d0bb:bb4e:3065])
        by smtp.gmail.com with ESMTPSA id j14sm3631503pfn.120.2019.07.03.12.02.54
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Wed, 03 Jul 2019 12:02:59 -0700 (PDT)
From:   Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To:     mchehab@kernel.org, robh+dt@kernel.org
Cc:     linux-media@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        c.barrett@framos.com, a.brela@framos.com,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: [PATCH 3/3] MAINTAINERS: Add entry for IMX290 CMOS image sensor driver
Date:   Thu,  4 Jul 2019 00:32:30 +0530
Message-Id: <20190703190230.12392-4-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190703190230.12392-1-manivannan.sadhasivam@linaro.org>
References: <20190703190230.12392-1-manivannan.sadhasivam@linaro.org>
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
index d0ed735994a5..27e4c1f57b61 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -14669,6 +14669,14 @@ S:	Maintained
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

