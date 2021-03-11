Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 590EC337BD7
	for <lists+devicetree@lfdr.de>; Thu, 11 Mar 2021 19:11:09 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230131AbhCKSKd (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 11 Mar 2021 13:10:33 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50754 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230204AbhCKSKG (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 11 Mar 2021 13:10:06 -0500
Received: from mail-ed1-x52a.google.com (mail-ed1-x52a.google.com [IPv6:2a00:1450:4864:20::52a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6CA2BC061574
        for <devicetree@vger.kernel.org>; Thu, 11 Mar 2021 10:10:06 -0800 (PST)
Received: by mail-ed1-x52a.google.com with SMTP id bf3so4202861edb.6
        for <devicetree@vger.kernel.org>; Thu, 11 Mar 2021 10:10:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=Qa4VJOH7edLfgrfvR8OaRVl2g9iMvgF1hLjXeKfPqA4=;
        b=U/jGIF63pHPQlTFqvJpaJD7y9g+zXOMxUTmCLDoTDyWdGD5ahnTKhiB0+yP1TPeGqH
         Y3icOkQRASyeOTj2NZ+XfONHMstpPOJ8mN4ydGBu/TpdiuNgyzsKeNcUXMqwsd7YiLse
         2geJarY3Nr+Ph0PCxWmwKjoSHqE8CpQEHdy4dw17QFpaMzKxlgHS4kK5UVqQ8j9eapwU
         5NE8BdQ6SJSzkdbBHotU8Bx5Btuy6qelmhRaJ5gSv8D+5hjrMPc/R39OoW5JYJoyVfa9
         qIbuLHliGA48AfXB8A1lDZRvC7CDnxrSyffrzWp9RhEDfeYmI02kgOH+hMsIW5xDppHq
         z+mA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=Qa4VJOH7edLfgrfvR8OaRVl2g9iMvgF1hLjXeKfPqA4=;
        b=SFIKkYrVQ7urLUPT0rJs73R60rtMp0m51egNfKIZTxWEl7mFysgrrzolL0kws6NW/E
         liJlyA6J6vWIm8VmxN095z7p06NGj0nPAy59RG9OoB+EqbOLPpXmJOwjqENE574HHyDi
         DzJAxeSXSFQWcYTIZ1gNZLKLkV55Xz/t7tib38g3ZlYLYCu0f/Mx3XCZoeQG0QjJqUth
         pRz4I3GQoxMV5S78WsU48tF0XxUOkN3KnBg/1oaNNSiThv0+oaFFePJrMIZTid2Umi1B
         +OCR35Q/Nya5yvq/4ObUNmDARYEJWNyQGLST3QC+xQpKd/QmSXnEOt3+LEGHVdq8WYo1
         r81Q==
X-Gm-Message-State: AOAM532yp+Rjx5+kRPNPUhDg+KgNEa25ob6YoF41gUy7hA3ZySV8qIAT
        8ewHIyTtPjPZjOepQKUgm+tISw==
X-Google-Smtp-Source: ABdhPJxQYlVKZoxoNhRG//Zv4/sGy/BTCwUuDVISE+v2ISlgRpQDIPd0dUHftdLOu+MiBlqu4EAsqg==
X-Received: by 2002:a05:6402:104c:: with SMTP id e12mr9544330edu.108.1615486205083;
        Thu, 11 Mar 2021 10:10:05 -0800 (PST)
Received: from localhost.localdomain ([2a02:2454:3e3:5f00:8e01:34c:da50:eb7e])
        by smtp.gmail.com with ESMTPSA id a22sm1741290ejr.89.2021.03.11.10.10.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Mar 2021 10:10:04 -0800 (PST)
From:   Robert Foss <robert.foss@linaro.org>
To:     agross@kernel.org, bjorn.andersson@linaro.org,
        robert.foss@linaro.org, todor.too@gmail.com, mchehab@kernel.org,
        robh+dt@kernel.org, angelogioacchino.delregno@somainline.org,
        linux-arm-msm@vger.kernel.org, linux-media@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        AngeloGioacchino Del Regno <kholk11@gmail.com>,
        Sakari Ailus <sakari.ailus@iki.fi>,
        Andrey Konovalov <andrey.konovalov@linaro.org>,
        Hans Verkuil <hverkuil@xs4all.nl>
Cc:     Rob Herring <robh@kernel.org>, Tomasz Figa <tfiga@chromium.org>,
        Azam Sadiq Pasha Kapatrala Syed <akapatra@quicinc.com>,
        Sarvesh Sridutt <Sarvesh.Sridutt@smartwirelesscompute.com>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Jonathan Marek <jonathan@marek.ca>
Subject: [PATCH v7 04/22] media: camss: Add CAMSS_845 camss version
Date:   Thu, 11 Mar 2021 19:09:30 +0100
Message-Id: <20210311180948.268343-5-robert.foss@linaro.org>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20210311180948.268343-1-robert.foss@linaro.org>
References: <20210311180948.268343-1-robert.foss@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add enum representing the SDM845 SOC, which incorporates version
170 of the Titan architecture ISP.

Signed-off-by: Robert Foss <robert.foss@linaro.org>
Reviewed-by: Andrey Konovalov <andrey.konovalov@linaro.org>
---

Changes since v5:
 - Andrey: Add r-b


 drivers/media/platform/qcom/camss/camss.h | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/media/platform/qcom/camss/camss.h b/drivers/media/platform/qcom/camss/camss.h
index e29466d07ad2..63b35ea2ca36 100644
--- a/drivers/media/platform/qcom/camss/camss.h
+++ b/drivers/media/platform/qcom/camss/camss.h
@@ -66,6 +66,7 @@ enum camss_version {
 	CAMSS_8x16,
 	CAMSS_8x96,
 	CAMSS_660,
+	CAMSS_845,
 };
 
 struct camss {
-- 
2.27.0

