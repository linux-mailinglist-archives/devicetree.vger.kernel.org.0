Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id A481075FA2
	for <lists+devicetree@lfdr.de>; Fri, 26 Jul 2019 09:21:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726391AbfGZHV0 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 26 Jul 2019 03:21:26 -0400
Received: from mail-pg1-f194.google.com ([209.85.215.194]:35639 "EHLO
        mail-pg1-f194.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725903AbfGZHVZ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 26 Jul 2019 03:21:25 -0400
Received: by mail-pg1-f194.google.com with SMTP id s1so18026536pgr.2
        for <devicetree@vger.kernel.org>; Fri, 26 Jul 2019 00:21:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=bryuP5AdFGVr6HHrw1EtAVKw7WCYNq7V2nl1DGECvfA=;
        b=gps6OGJTOEXQrFDHI9KKDyeJAzkYfi0TmbZdKCbEVIfNPXO1MGIyvHCxKJZKZ2908D
         8XhglJ9iu97qcWacqggfiZbM3MgPQAxKVysMA1FLX022aoa88vdKAroM1s8uWc2h0PT0
         Kpn0ecFWdL5evyDt/j6yMWM6Q8Zng4FpW/EpDk/7uSf7lrykUAdOTdU5J+vuOry7coOp
         guNCY1bzr+id756TYU4TSqeXOb4oOORc+SXP1I6ZwkiyJoYwtMbjooqI2nfXC9f5jwVi
         uINDC8XBa8bXnc5pzc8jVs3S/HmX9owAqK91YB8T0EPBFtqSV2efYSE6gkZN9fd9bKVg
         5COw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=bryuP5AdFGVr6HHrw1EtAVKw7WCYNq7V2nl1DGECvfA=;
        b=JKjl2A/czLQkZ+KebYiQQceg4yuB5yjpvkJRHQTbvP4mzpWgbJfE9Gr7CRNBWQs9/X
         5dL36q0gXu3DC+niOmmifLd1FrUbpIGHBNAvsXe592FHDHE51GjdY0O9bCSmlhiKN8bO
         S1BIrb31TM5ZgKx4FGaJMZeNK3COdGiPt6CGJ9aI9QuIEEwU6hJVbRmqP4sg9dOGsfp/
         OMtDaSPMxgTOsOQmTvHTav4cQF9ZtgX7vklG0/9pyWGezyy3/sT6h2JWBrJEPNy0FLvS
         h/sK62YNgPtOm3WfExLagjULzsAhVDPr3HkTPXpt2G6lCyfdPbQilJjbspA+oQJmRGvZ
         jMKQ==
X-Gm-Message-State: APjAAAWqQ77W7ngGCBAbsOeWlOT56pUQV2LtzMPglrslu4mv9mu3+DU7
        51rfeIdDcOLoBjHFzhJtWqEKEw==
X-Google-Smtp-Source: APXvYqzS59p+DlCx6jRNsTMAnzW6kRqAEKsib4wA9AHCRCnW1gi6S9Ot0/7XGf3sPxBezwzHe9aWmg==
X-Received: by 2002:a17:90a:1aa4:: with SMTP id p33mr98101963pjp.27.1564125684991;
        Fri, 26 Jul 2019 00:21:24 -0700 (PDT)
Received: from baolinwangubtpc.spreadtrum.com ([117.18.48.82])
        by smtp.gmail.com with ESMTPSA id o12sm39216152pjr.22.2019.07.26.00.21.21
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 26 Jul 2019 00:21:24 -0700 (PDT)
From:   Baolin Wang <baolin.wang@linaro.org>
To:     broonie@kernel.org, robh+dt@kernel.org, mark.rutland@arm.com,
        orsonzhai@gmail.com, zhang.lyra@gmail.com
Cc:     weicx@spreadst.com, sherry.zong@unisoc.com, baolin.wang@linaro.org,
        vincent.guittot@linaro.org, linux-spi@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH 1/6] spi: sprd: adi: Remove redundant address bits setting
Date:   Fri, 26 Jul 2019 15:20:48 +0800
Message-Id: <3cb57b8aadb7747a9f833e9b4fe8596ba738d9f6.1564125131.git.baolin.wang@linaro.org>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <cover.1564125131.git.baolin.wang@linaro.org>
References: <cover.1564125131.git.baolin.wang@linaro.org>
In-Reply-To: <cover.1564125131.git.baolin.wang@linaro.org>
References: <cover.1564125131.git.baolin.wang@linaro.org>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The ADI default transfer address bits is 12bit on Spreadtrum SC9860
platform, thus there is no need to set again, remove it.

Signed-off-by: Baolin Wang <baolin.wang@linaro.org>
---
 drivers/spi/spi-sprd-adi.c |    3 ---
 1 file changed, 3 deletions(-)

diff --git a/drivers/spi/spi-sprd-adi.c b/drivers/spi/spi-sprd-adi.c
index df5960b..11880db 100644
--- a/drivers/spi/spi-sprd-adi.c
+++ b/drivers/spi/spi-sprd-adi.c
@@ -380,9 +380,6 @@ static void sprd_adi_hw_init(struct sprd_adi *sadi)
 	const __be32 *list;
 	u32 tmp;
 
-	/* Address bits select default 12 bits */
-	writel_relaxed(0, sadi->base + REG_ADI_CTRL0);
-
 	/* Set all channels as default priority */
 	writel_relaxed(0, sadi->base + REG_ADI_CHN_PRIL);
 	writel_relaxed(0, sadi->base + REG_ADI_CHN_PRIH);
-- 
1.7.9.5

