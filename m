Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B2FB833DAB8
	for <lists+devicetree@lfdr.de>; Tue, 16 Mar 2021 18:21:53 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239143AbhCPRVR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 16 Mar 2021 13:21:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60782 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238837AbhCPRUg (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 16 Mar 2021 13:20:36 -0400
Received: from mail-ej1-x62e.google.com (mail-ej1-x62e.google.com [IPv6:2a00:1450:4864:20::62e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 39C2DC0613E1
        for <devicetree@vger.kernel.org>; Tue, 16 Mar 2021 10:20:35 -0700 (PDT)
Received: by mail-ej1-x62e.google.com with SMTP id r17so73461214ejy.13
        for <devicetree@vger.kernel.org>; Tue, 16 Mar 2021 10:20:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=Tpy6xUUL9qRQqZuAbviQLSx2FJwSSDBmrEW1amUuagg=;
        b=II1CIP9t3QmjwNLekEO6Yuv8ojt6Xeyrh4yanM43zha/lgdv/xkw5IAEPWMz1Zd5eR
         Jh7EF2ZZHBXBHKt6jfC+FkkElMup9uRoYIy3N7IxyxZe9YZWT+azfP0sa6aCfTJHRzpw
         5m9llTm1ey3zs88tsx1m0G9/NiUwrFO4B/Jnv9VDMacOgigBUfUpoNMso0rh07bYcYIV
         1Jm+iXAkZUVksbp6xRl9uVaiuzsBlbUY13hz5k7auxQ0OhiMGPX7wn8LEAnNookDzpJK
         TeJhsoFMZQxYQ9mWhA5SvCnzn41SV7JeVs7QH0YDzRMNB+SJ9lGj4xFp8sGYwzezLTEM
         y0Eg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=Tpy6xUUL9qRQqZuAbviQLSx2FJwSSDBmrEW1amUuagg=;
        b=O9kkNBelDR1EXReCWr5II3wuwVg9exBU3RrA/AdTvaxCN7BXh9IasjRlXgjzVUOb1c
         7fovWTsGjScRBLpgm16OqCV/IJ8H/XmMg16Ilh8J/WLYsTKzMaKvtASbfLTVm9zEBURz
         C8vj6OZeE+AAXGD16o6czUWLy7rI+8yWB7uUY8WljpvEDrdn3znP2nEZU6SgncLqr55l
         0CZokLWQ1sjbZwHuW5V6yLsozEEJuYQ/9SuK+PHbpIObtZTXmnrDvdiOoNeIkWTi9BTN
         j01n0ITEuz3wcEt7iz1Iq1A6xRou4dPOugknbKE1A2/TcHpWzd/Yn23HixObJR5uWIzn
         3RKg==
X-Gm-Message-State: AOAM532S+ZAW3mnLE4S+STmc7cRFC1rMP7FBJPlDvRkzbhK/99XeFHQL
        8a9NbVy7flqNQgrYxmZv3BC42w==
X-Google-Smtp-Source: ABdhPJySbmfefwysOWNDzNJZTpAnxYzRfYDw3DEU4gdB+11DlDRdkjQGcuFRWr8AqWaNfo0/qYZrTw==
X-Received: by 2002:a17:906:b159:: with SMTP id bt25mr30543340ejb.364.1615915234017;
        Tue, 16 Mar 2021 10:20:34 -0700 (PDT)
Received: from localhost.localdomain ([37.120.1.234])
        by smtp.gmail.com with ESMTPSA id u1sm10571584edv.90.2021.03.16.10.20.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 16 Mar 2021 10:20:33 -0700 (PDT)
From:   Robert Foss <robert.foss@linaro.org>
To:     robert.foss@linaro.org, todor.too@gmail.com, agross@kernel.org,
        bjorn.andersson@linaro.org, mchehab@kernel.org, robh+dt@kernel.org,
        angelogioacchino.delregno@somainline.org,
        linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org,
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
Subject: [PATCH v9 18/22] MAINTAINERS: Change CAMSS documentation to use dtschema bindings
Date:   Tue, 16 Mar 2021 18:19:27 +0100
Message-Id: <20210316171931.812748-19-robert.foss@linaro.org>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20210316171931.812748-1-robert.foss@linaro.org>
References: <20210316171931.812748-1-robert.foss@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Due to the complexity of describing multiple hardware generations
in one document, switch to using separate dt-bindings.

Signed-off-by: Robert Foss <robert.foss@linaro.org>
Reviewed-by: Rob Herring <robh@kernel.org>
---


Changes since v4
 - Rob: Added r-b



 MAINTAINERS | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/MAINTAINERS b/MAINTAINERS
index d92f85ca831d..7da3e0c74fab 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -14787,7 +14787,7 @@ M:	Todor Tomov <todor.too@gmail.com>
 L:	linux-media@vger.kernel.org
 S:	Maintained
 F:	Documentation/admin-guide/media/qcom_camss.rst
-F:	Documentation/devicetree/bindings/media/qcom,camss.txt
+F:	Documentation/devicetree/bindings/media/*camss*
 F:	drivers/media/platform/qcom/camss/
 
 QUALCOMM CORE POWER REDUCTION (CPR) AVS DRIVER
-- 
2.27.0

