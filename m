Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 468353116AC
	for <lists+devicetree@lfdr.de>; Sat,  6 Feb 2021 00:19:38 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230523AbhBEXKG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 5 Feb 2021 18:10:06 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33282 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231531AbhBEKr4 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 5 Feb 2021 05:47:56 -0500
Received: from mail-wr1-x433.google.com (mail-wr1-x433.google.com [IPv6:2a00:1450:4864:20::433])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8EC0BC061225
        for <devicetree@vger.kernel.org>; Fri,  5 Feb 2021 02:44:57 -0800 (PST)
Received: by mail-wr1-x433.google.com with SMTP id v15so7145277wrx.4
        for <devicetree@vger.kernel.org>; Fri, 05 Feb 2021 02:44:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=PC2sXSUCVtuCTR4UN7c8iTkNydyknx8hb/BTqhYKVYU=;
        b=pw0xT5R4xAolv33/DY+QxAaUfrkOzA2ibWdy8q2XWEF9UQOQV/Oa35PJ5DuXZdr4pK
         72P3REz3BUtZYV8hTlTNkJaoq+Ud2R6W0fFFbbFrDngR8xqzM6ldGSgn4kiHVEZ1tgFK
         iLRnlqjQDJsl6R11g5A45hmssF4Rn2QHZaxlXAKhFWzhXXKAnhPMbLAjfmi/nJDO6wqe
         JXSvAfRrvDRfW9lDyOKxRmAP82Mb4f9HuvVCLLx//dMKeRuAlTugcLaqL8n4DjoZZ+ne
         Wu2HWNHGLSIUZLH55zcrhQXBlo8frw8YpQwHT95RU1OSHKJh3iNaHTm5vNlJ8DFOJHG+
         lpFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=PC2sXSUCVtuCTR4UN7c8iTkNydyknx8hb/BTqhYKVYU=;
        b=kynXcTk86wxxe8QBSHQpgeU2kL2P4d/S6Uodn6qN6wUuHyfPJBWwe3uMCCOrGaUa3F
         tiUqIOpz+4R+GdWlQb/i6kH1tUeIbNWDx9M46PNgn8iXWetqVZ/x8GVtT4YfFz38xUb5
         qOORhsUsWgCXwp50hjcqbnP7+OSVOjtQ/GGND+bfQgnxqHMg6yLQlwiQuJ+SNla3rO0O
         wpFpBwrGpaEWnsgqTk8r+nFNhuYkGHNtCNAnpdRpBapkTg3FZjC3xtfpQaO3U++Uk5Z8
         fUlR+sT/wPC10Mr2bq8S8rELKJFZSV6owy66Lrp78fj3ARWPMcgcoYbovdl0YsJpnuZ9
         bQRg==
X-Gm-Message-State: AOAM530H5Dj8FJEGvp4/gBkHZ+w1z1Hlq3HQPCl7xHg4jrnIWn4RnkOV
        P6W6O3dnjSpCIQK6qK34M1q2Yw==
X-Google-Smtp-Source: ABdhPJxLHmo7nzATzHG/wa1BTfeWAwzy6jY0NwVBM5lppwz08/+RctJa4dvBIUZGHcXISQJ4qLgZUA==
X-Received: by 2002:a5d:55c6:: with SMTP id i6mr4403941wrw.145.1612521896376;
        Fri, 05 Feb 2021 02:44:56 -0800 (PST)
Received: from localhost.localdomain ([2a02:2450:102f:d6a:38fd:e0db:ea01:afc8])
        by smtp.gmail.com with ESMTPSA id u4sm11300233wrr.37.2021.02.05.02.44.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 05 Feb 2021 02:44:55 -0800 (PST)
From:   Robert Foss <robert.foss@linaro.org>
To:     robert.foss@linaro.org, todor.too@gmail.com, agross@kernel.org,
        bjorn.andersson@linaro.org, mchehab@kernel.org, robh+dt@kernel.org,
        angelogioacchino.delregno@somainline.org,
        linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        AngeloGioacchino Del Regno <kholk11@gmail.com>,
        Rob Herring <robh@kernel.org>,
        Sakari Ailus <sakari.ailus@iki.fi>,
        Nicolas Boichat <drinkcat@chromium.org>,
        Andrey Konovalov <andrey.konovalov@linaro.org>
Cc:     Tomasz Figa <tfiga@chromium.org>,
        Azam Sadiq Pasha Kapatrala Syed <akapatra@quicinc.com>,
        Sarvesh Sridutt <Sarvesh.Sridutt@smartwirelesscompute.com>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Jonathan Marek <jonathan@marek.ca>
Subject: [PATCH v4 04/22] media: camss: Add CAMSS_845 camss version
Date:   Fri,  5 Feb 2021 11:43:56 +0100
Message-Id: <20210205104414.299732-5-robert.foss@linaro.org>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20210205104414.299732-1-robert.foss@linaro.org>
References: <20210205104414.299732-1-robert.foss@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add enum representing the SDM845 SOC, which incorporates version
170 of the Titan architecture ISP.

Signed-off-by: Robert Foss <robert.foss@linaro.org>
---
 drivers/media/platform/qcom/camss/camss.h | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/media/platform/qcom/camss/camss.h b/drivers/media/platform/qcom/camss/camss.h
index 3a0484683cd6..46e986452824 100644
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

