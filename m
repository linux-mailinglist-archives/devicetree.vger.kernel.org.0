Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4B9522A3212
	for <lists+devicetree@lfdr.de>; Mon,  2 Nov 2020 18:50:32 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726055AbgKBRuI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 2 Nov 2020 12:50:08 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52188 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725768AbgKBRuH (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 2 Nov 2020 12:50:07 -0500
Received: from mail-lf1-x142.google.com (mail-lf1-x142.google.com [IPv6:2a00:1450:4864:20::142])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5226FC061A47
        for <devicetree@vger.kernel.org>; Mon,  2 Nov 2020 09:50:07 -0800 (PST)
Received: by mail-lf1-x142.google.com with SMTP id k14so3359688lfg.7
        for <devicetree@vger.kernel.org>; Mon, 02 Nov 2020 09:50:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=SyrNRlrzgocwFtm4m1D+vgyjZWlJZcz7p/Dz+/oWD3I=;
        b=jilr5NWGihlWgkg2pUaIK6f9uhoXKlUq0CrREz5XbM4t2WTToluxjqd1dqjzKNFyXw
         rFbklMSzb5AZxxoms2yoUEk3die/vQXbtHRmwe5LerAqWzSWJrxfqiRWMIJ/sQx7m3QG
         3DfhUFenb/SSMGbhXfKBh2mNA1Wlsyf0aGCuO/YftpyhhWSTxdTVQnQt+iog5LwfWAeS
         KNZGTd8wokLK24AiMG2yCweN4uHOzddKdrJSejAlyQhhcwDcQV04poOnLxG8ppnBilZX
         LgjeOM4z5t9T3LUFERdcUuxRLk46PUrL7qETtF9abQVjXEtXwYhcMhY3DZoDK0HFljB1
         pIQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=SyrNRlrzgocwFtm4m1D+vgyjZWlJZcz7p/Dz+/oWD3I=;
        b=uMlNa3oev3EJllziaN9H4eKveAKRdqqb8FZvcy+/vuMHNh47vWqdaWqKW6msHJkd5l
         M2H8n8V+z06hRHQHsDMkdaJxIvzSgzXveKfC3XuM/05dTtRLVVzLQl/jz99VfpMAaKJS
         zMxyBrgKEueBhTGZpnv1m8Wu9Y41I1vOZcdGlof/+Nnkm48oStn+yiv6jKC+qIBK6pqw
         mjOCy8+kadkDG5cnzb09IX15jrJ08mFilzd+NBboYi6uCZMUnq8qksv3cdbNWs3szDdl
         5wU2zxYU8YGoavfBT8WPFdKQeu4TaFGspoaBj9ixoMemwgu/d3Dnsm67i2auzUMEVKnW
         576g==
X-Gm-Message-State: AOAM530bKXJ4Z9qSKUR76aK5GRU8XSzuX4TMjDOa4SLbH5TiX7Pc/pSC
        +unGh+vf/7RQUyp4Xcbeh/Oi4g==
X-Google-Smtp-Source: ABdhPJw11w3m/cU925dZCjrCAf5j93I86cy46wxiwAr9UjFfbGm390nM673JEyS7GZg5zqTPlsx30A==
X-Received: by 2002:a19:6912:: with SMTP id e18mr5862809lfc.427.1604339405825;
        Mon, 02 Nov 2020 09:50:05 -0800 (PST)
Received: from eriador.lan ([94.25.229.254])
        by smtp.gmail.com with ESMTPSA id r7sm2516163lfc.206.2020.11.02.09.50.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Nov 2020 09:50:05 -0800 (PST)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Zhang Rui <rui.zhang@intel.com>,
        Daniel Lezcano <daniel.lezcano@linaro.org>,
        Amit Kucheria <amitk@kernel.org>,
        Jonathan Cameron <jic23@kernel.org>,
        Hartmut Knaack <knaack.h@gmx.de>,
        Lars-Peter Clausen <lars@metafoo.de>,
        Peter Meerwald-Stadler <pmeerw@pmeerw.net>
Cc:     linux-arm-msm@vger.kernel.org, linux-pm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-iio@vger.kernel.org,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
        Jishnu Prakash <jprakash@qti.qualcomm.com>,
        Jonathan Cameron <Jonathan.Cameron@huawei.com>
Subject: [PATCH v9 04/15] iio: adc: qcom-vadc-common: use fixp_linear_interpolate
Date:   Mon,  2 Nov 2020 20:49:39 +0300
Message-Id: <20201102174950.1148498-5-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201102174950.1148498-1-dmitry.baryshkov@linaro.org>
References: <20201102174950.1148498-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Use new function fixp_linear_interpolate() instead of hand-coding the
linear interpolation.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Reviewed-by: Jonathan Cameron <Jonathan.Cameron@huawei.com>
---
 drivers/iio/adc/qcom-vadc-common.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/iio/adc/qcom-vadc-common.c b/drivers/iio/adc/qcom-vadc-common.c
index d11f3343ad52..40d77b3af1bb 100644
--- a/drivers/iio/adc/qcom-vadc-common.c
+++ b/drivers/iio/adc/qcom-vadc-common.c
@@ -2,6 +2,7 @@
 #include <linux/bug.h>
 #include <linux/kernel.h>
 #include <linux/bitops.h>
+#include <linux/fixp-arith.h>
 #include <linux/math64.h>
 #include <linux/log2.h>
 #include <linux/err.h>
@@ -368,10 +369,9 @@ static int qcom_vadc_map_voltage_temp(const struct vadc_map_pt *pts,
 	} else {
 		/* result is between search_index and search_index-1 */
 		/* interpolate linearly */
-		*output = (((s32)((pts[i].y - pts[i - 1].y) *
-			(input - pts[i - 1].x)) /
-			(pts[i].x - pts[i - 1].x)) +
-			pts[i - 1].y);
+		*output = fixp_linear_interpolate(pts[i - 1].x, pts[i - 1].y,
+						  pts[i].x, pts[i].y,
+						  input);
 	}
 
 	return 0;
-- 
2.28.0

