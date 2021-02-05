Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id AD8FD310997
	for <lists+devicetree@lfdr.de>; Fri,  5 Feb 2021 11:55:29 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231809AbhBEKzK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 5 Feb 2021 05:55:10 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34434 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231651AbhBEKxC (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 5 Feb 2021 05:53:02 -0500
Received: from mail-wr1-x42d.google.com (mail-wr1-x42d.google.com [IPv6:2a00:1450:4864:20::42d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 460DFC0698DB
        for <devicetree@vger.kernel.org>; Fri,  5 Feb 2021 02:45:25 -0800 (PST)
Received: by mail-wr1-x42d.google.com with SMTP id m13so7094833wro.12
        for <devicetree@vger.kernel.org>; Fri, 05 Feb 2021 02:45:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=fUGwtlmgXSNtLs4jeYoyMy0OUjwWufxEelxvIP0w1pA=;
        b=Fwx1ouohDc1t1SRm9bp+trJ4XgAH3o7xsafjqV8b3Z8BSs756P7sNCFXezdm+oIYEI
         1LzOAiYEi+yiOCxpqno4ZeEsNAqi+Nh/dwKU78S6R1oCjsivIrNO8HgfsoT9pJ1OjJ7e
         JKEqgDe4l5a1f7yfz3WXlAd8CDZa0LzSO523xHV68YrOnqQSmp2OD94YDz6AusIsE0ce
         EAAdKhmGiJ+HbqbjZl7IuyRb6CHTVG2iu6e/4uEBiY/PtLkgw4ODHU25u96w7GhlYM1i
         ixzulomlgu5/0ZZkIVlEpymV1wlpo84KNks75nbunUNfvMxrEU4xO+otpS/e2ndtUn7D
         Dzgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=fUGwtlmgXSNtLs4jeYoyMy0OUjwWufxEelxvIP0w1pA=;
        b=rJm5udyAMmeLVdSDid6u6MJhiTPI9kXF3Dha0R9rjvw0SNbf1ZU9oYC6BYbuHs4BfF
         dwpswqM1pd7JdsYY6G3vW9Ittj8P1DhdzJ/x9HbYTKvQpNZG9kQiv9Gdjh/GRK+kfGpD
         2VSGvy6/77xnKUeAgfrltvQX+kL96TpFp+Png/e3tjxVtuKN6iedw5EN0A2wtZ5tJpvc
         ixiRDKhD278RAVlSrEKKdzO719iW0DFeT/MlKm2vMEZSs3fx+M253Mipz59b1ba5Wdqt
         Q0PRGqQ8r7BdnYp1zbbf9KxJPTeFfKj+x+H/E/tmN96QuQtimE8lRfcNSIlK4BdyOAqO
         9SmQ==
X-Gm-Message-State: AOAM531A+B1Cgrmf08KRAaomE5+qJzpbrZaZqVxblD11+wJXXNmH2/Fa
        oNK+H4WIr331WGKajxDokoVLVA==
X-Google-Smtp-Source: ABdhPJwTcctxZeQ/VmfTFSbXLstzOjpQA92T6jyVM+woDgkju33ipwaN46VApTeLxaZTphfjXZb1Tw==
X-Received: by 2002:a5d:6305:: with SMTP id i5mr4270526wru.314.1612521924035;
        Fri, 05 Feb 2021 02:45:24 -0800 (PST)
Received: from localhost.localdomain ([2a02:2450:102f:d6a:38fd:e0db:ea01:afc8])
        by smtp.gmail.com with ESMTPSA id u4sm11300233wrr.37.2021.02.05.02.45.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 05 Feb 2021 02:45:23 -0800 (PST)
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
Subject: [PATCH v4 18/22] MAINTAINERS: Change CAMSS documentation to use dtschema bindings
Date:   Fri,  5 Feb 2021 11:44:10 +0100
Message-Id: <20210205104414.299732-19-robert.foss@linaro.org>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20210205104414.299732-1-robert.foss@linaro.org>
References: <20210205104414.299732-1-robert.foss@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Due to the complexity of describing multiple hardware generations
in one document, switch to using separate dt-bindings.

Signed-off-by: Robert Foss <robert.foss@linaro.org>
---
 MAINTAINERS | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/MAINTAINERS b/MAINTAINERS
index cdf1556c6007..7c5a494d9113 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -14686,7 +14686,7 @@ M:	Todor Tomov <todor.too@gmail.com>
 L:	linux-media@vger.kernel.org
 S:	Maintained
 F:	Documentation/admin-guide/media/qcom_camss.rst
-F:	Documentation/devicetree/bindings/media/qcom,camss.txt
+F:	Documentation/devicetree/bindings/media/*camss*
 F:	drivers/media/platform/qcom/camss/
 
 QUALCOMM CORE POWER REDUCTION (CPR) AVS DRIVER
-- 
2.27.0

