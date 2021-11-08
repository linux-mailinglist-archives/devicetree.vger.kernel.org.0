Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5A1CA448070
	for <lists+devicetree@lfdr.de>; Mon,  8 Nov 2021 14:45:13 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240058AbhKHNrn (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 8 Nov 2021 08:47:43 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58992 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240061AbhKHNrm (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 8 Nov 2021 08:47:42 -0500
Received: from mail-pj1-x1029.google.com (mail-pj1-x1029.google.com [IPv6:2607:f8b0:4864:20::1029])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 45328C061746
        for <devicetree@vger.kernel.org>; Mon,  8 Nov 2021 05:44:58 -0800 (PST)
Received: by mail-pj1-x1029.google.com with SMTP id o6-20020a17090a0a0600b001a64b9a11aeso8858398pjo.3
        for <devicetree@vger.kernel.org>; Mon, 08 Nov 2021 05:44:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=H7m5p97BKE1ln9x8mMCJwq7P//I9O+wuU0Z+Nt2052Y=;
        b=P+Utp/dlqKEWj6LUw9H9YhiIfaKS72hoEaHw6MpLEqMUryo4lbSa/EH6J0o0iegScV
         cdYm2qLfUKciJFZnblzm5/ZpoXAZeaoML+UBYTfSa33+YzfsDrLGOBa0iMW6mWoKTaQh
         C3TfeMkME+OA749VGpq+6dtLlhEO088MoXK8+v37H3tAV3WsNdnxltM7ZFeO2rPCzvrF
         Rsci752T7LTOztbaJ9a+PzAriqlW0MMWKvm3cH5Xx44p2uOaD/twNlM9UWDj+FdbSXqU
         YZPk7kN8HW+ds0EMjvaTdPDfwobr4MjYYditYbTdRdAsRTTnnADdSnmN2MR8duf50utd
         Ck7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=H7m5p97BKE1ln9x8mMCJwq7P//I9O+wuU0Z+Nt2052Y=;
        b=5oYJdS4OHw951bgKQwXxFI7D5FqqlnbsyP5ziaI/L8sUrBKrmJ3xPQm54Wf1ye9/LK
         wljqJJMpjCxnIw1qeZlhpTjFTMCwNdtnEwdITyMZ6O0fQGM52CVUbl1cR4IG6hr9qaJ9
         lXmskpafp6qTQYGz3hsuGTJHSkt5cwPxZl2nrOKObUHMQksU7oS0XHlaeg7P2LRAidiV
         wxGf8SIEEkEz0LsxYDFT0668FGJxn9CO2KMZG8jVzeNI4BgfmlGIx5mxhLIMZzGxXbgs
         xLqqG4V2DdC+QmpOzMWv07q6jmQG9X/5+kpSO3pRYNwwEZ55BhccxTa3sZnBhZWkaTrE
         9jNg==
X-Gm-Message-State: AOAM531z43RemvgBw6VBfo5VqeGoZAK927vysH04wwEYk8vVCGmwSSL+
        FPbaB36EVbtBS8S9CHeIES97rA==
X-Google-Smtp-Source: ABdhPJxP7jW2gLwiv9Q8PBw5mnZz3NE2z/LeHukHwHW64eCdd5J2Zd7+qzRP1C1lvWKdCUfie1FVag==
X-Received: by 2002:a17:90a:ab17:: with SMTP id m23mr5745396pjq.194.1636379097787;
        Mon, 08 Nov 2021 05:44:57 -0800 (PST)
Received: from localhost.localdomain (80.251.214.228.16clouds.com. [80.251.214.228])
        by smtp.gmail.com with ESMTPSA id m184sm3693974pga.61.2021.11.08.05.44.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 08 Nov 2021 05:44:57 -0800 (PST)
From:   Shawn Guo <shawn.guo@linaro.org>
To:     Bjorn Andersson <bjorn.andersson@linaro.org>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Rajendra Nayak <rnayak@codeaurora.org>,
        Loic Poulain <loic.poulain@linaro.org>,
        devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org, Shawn Guo <shawn.guo@linaro.org>
Subject: [PATCH 1/3] soc: qcom: rpmpd: Drop unused res_name from struct rpmpd
Date:   Mon,  8 Nov 2021 21:44:40 +0800
Message-Id: <20211108134442.30051-2-shawn.guo@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20211108134442.30051-1-shawn.guo@linaro.org>
References: <20211108134442.30051-1-shawn.guo@linaro.org>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The res_name field in struct rpmpd is unused.  Drop it.

Signed-off-by: Shawn Guo <shawn.guo@linaro.org>
---
 drivers/soc/qcom/rpmpd.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/soc/qcom/rpmpd.c b/drivers/soc/qcom/rpmpd.c
index 4f69fb9b2e0e..3e7905854eb9 100644
--- a/drivers/soc/qcom/rpmpd.c
+++ b/drivers/soc/qcom/rpmpd.c
@@ -102,7 +102,6 @@ struct rpmpd {
 	const bool active_only;
 	unsigned int corner;
 	bool enabled;
-	const char *res_name;
 	const int res_type;
 	const int res_id;
 	struct qcom_smd_rpm *rpm;
-- 
2.17.1

