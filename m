Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 03EDE25C2FD
	for <lists+devicetree@lfdr.de>; Thu,  3 Sep 2020 16:42:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729317AbgICOmD (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 3 Sep 2020 10:42:03 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37532 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729394AbgICOif (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 3 Sep 2020 10:38:35 -0400
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com [IPv6:2a00:1450:4864:20::443])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7108FC0619EF
        for <devicetree@vger.kernel.org>; Thu,  3 Sep 2020 06:31:43 -0700 (PDT)
Received: by mail-wr1-x443.google.com with SMTP id c18so3229072wrm.9
        for <devicetree@vger.kernel.org>; Thu, 03 Sep 2020 06:31:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=K0z+nN4Q2Lop7WGeqT2R4X33dK+rJ9oWoUAFXO5nbng=;
        b=vOSGEgf6njBXHejEOPLRHy4TZAUQbPHyzsizQv5UbjVey2hgli2PPE3iNmgeVMMFs0
         meXBmX3GehNJYf3Ml6pbsP2w+4GF+P6VawqJTS1rRAj2/4oGepg1b1xG2XaSI+e7RWit
         8HUcIb5RhAPVg5TvwMbJZEM/MIjDq/fbCrqfS6Y053rTcS1XYTsuVRGfBIvafn9rNkmi
         JEwAseO17PL7oWFMSA4A66UwSwyoHr2SapFY34R7ouYM7Gj0Ukfc4mWUoe51kB+Gc+MZ
         cN+Ql6/5tuaw74VyLSTTKCj6J2l3AVXNMioaOfqFNUGt1QtHYWuOnVdgucewh50lSBBR
         KCIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=K0z+nN4Q2Lop7WGeqT2R4X33dK+rJ9oWoUAFXO5nbng=;
        b=emPhbLMlUZ+zlJuXTOebDrCl7OPBklPLLa3Us3vz0whdYAle+GWIrhPngwpVFNTfEm
         CXVdlNKn1GaidQeFZa8INGRfprxoey8vzo38O4/Msn1BJCdGa5/t6HkF4z3escGqmjqh
         9P3hhPGZCsvPJPLYl+8qwizpCWnU3mSrczKsShuzgQEAmUJarAHN+fvm5nCGUmKQQt2e
         OJQRlH2rqOuGQnVvrxfwh/RjOj1DcB9qF/3Wr3CZVuoD/UycN6W8D/+XmchVrAmw2yU1
         tNR6QZCTIX17J64CmKShxjhEIYGFL/Ev/Dvtn1sqxO9xQNPTpvl/OGO3BJddtQZpunwm
         rzFQ==
X-Gm-Message-State: AOAM533oyLYIJ9VPU8lu4C1DdXLGosW/Kcmt0ChEmvfCYfazQGjAImpO
        AiavBiKQwWnuTYJVf0EXex2BKQ==
X-Google-Smtp-Source: ABdhPJxTxGCfwDBn+/7V1YSvROvPT1ttvkiv0uIYlja7weTTbnepk4txpD42uCKrL8YHil8kIzqmkQ==
X-Received: by 2002:adf:fe42:: with SMTP id m2mr2451454wrs.367.1599139902154;
        Thu, 03 Sep 2020 06:31:42 -0700 (PDT)
Received: from localhost.localdomain ([212.45.67.2])
        by smtp.googlemail.com with ESMTPSA id b2sm4310768wmh.47.2020.09.03.06.31.40
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 03 Sep 2020 06:31:41 -0700 (PDT)
From:   Georgi Djakov <georgi.djakov@linaro.org>
To:     linux-pm@vger.kernel.org, bjorn.andersson@linaro.org
Cc:     devicetree@vger.kernel.org, robh+dt@kernel.org,
        sibis@codeaurora.org, mka@chromium.org, dianders@chromium.org,
        georgi.djakov@linaro.org, linux-kernel@vger.kernel.org
Subject: [PATCH v3 4/7] interconnect: qcom: sdm845: Replace xlate with xlate_extended
Date:   Thu,  3 Sep 2020 16:31:31 +0300
Message-Id: <20200903133134.17201-5-georgi.djakov@linaro.org>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20200903133134.17201-1-georgi.djakov@linaro.org>
References: <20200903133134.17201-1-georgi.djakov@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Use the qcom_icc_xlate_extended() in order to parse tags, that are
specified as an additional arguments to the path endpoints in DT.

Tested-by: Sibi Sankar <sibis@codeaurora.org>
Reviewed-by: Sibi Sankar <sibis@codeaurora.org>
Reviewed-by: Matthias Kaehlcke <mka@chromium.org>
Signed-off-by: Georgi Djakov <georgi.djakov@linaro.org>
---
 drivers/interconnect/qcom/sdm845.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/interconnect/qcom/sdm845.c b/drivers/interconnect/qcom/sdm845.c
index f6c7b969520d..3b81dbb71b0b 100644
--- a/drivers/interconnect/qcom/sdm845.c
+++ b/drivers/interconnect/qcom/sdm845.c
@@ -469,7 +469,7 @@ static int qnoc_probe(struct platform_device *pdev)
 	provider->set = qcom_icc_set;
 	provider->pre_aggregate = qcom_icc_pre_aggregate;
 	provider->aggregate = qcom_icc_aggregate;
-	provider->xlate = of_icc_xlate_onecell;
+	provider->xlate_extended = qcom_icc_xlate_extended;
 	INIT_LIST_HEAD(&provider->nodes);
 	provider->data = data;
 
