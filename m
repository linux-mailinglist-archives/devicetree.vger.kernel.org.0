Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8896D25C2FB
	for <lists+devicetree@lfdr.de>; Thu,  3 Sep 2020 16:42:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729274AbgICOmC (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 3 Sep 2020 10:42:02 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37588 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729396AbgICOix (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 3 Sep 2020 10:38:53 -0400
Received: from mail-wm1-x343.google.com (mail-wm1-x343.google.com [IPv6:2a00:1450:4864:20::343])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 15533C061A03
        for <devicetree@vger.kernel.org>; Thu,  3 Sep 2020 06:31:46 -0700 (PDT)
Received: by mail-wm1-x343.google.com with SMTP id w2so2924715wmi.1
        for <devicetree@vger.kernel.org>; Thu, 03 Sep 2020 06:31:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=dKzq9Wd5pDbV7/549EiQnkURmwLmMM//csWdIgiebW8=;
        b=oNKNZMQ+vrelVEaKz3G2tJGNGftiIxHVRLIev4M2tPePieqANfyRxtVoH6DG1ffGPH
         QgoHxmL89GvxQF/eyfr61LHpT0ixxjGe1jgqNqmbhgw2lVP5A8DHa8houG2AicqIWgq6
         Ux6nx0xaWhS2ZZYDwtVlDZebBBThqipXRhbIj4LV0jK3AZf3sW5hlEndjrU+/rutAYcq
         PkmgCeVLpiKUd//KkVCZk6VJIxWO/mpKUDpMjiH9UqrqurNMw5g/3uUIy+ofrgXqpa7w
         RdMCCtyl5iIQi18Jvq3L6D5BkirG/fLLC0g7ZKfGfHe5kTA87i2+TINQbqwuO1forBad
         L2WA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=dKzq9Wd5pDbV7/549EiQnkURmwLmMM//csWdIgiebW8=;
        b=swgwGLlTOni2iA0g3OdWE0fzlvRH7F4OeK22MduI6G4dm60418xkYYN5Pp0cbqfweA
         q0hOoCZMK8wy2HTiZPWLI48I4r58zIfKd5nNI7tHG3x4/gqvokotY+VUjB24+dH1aIbq
         Db8GiU/3ohvMCKmWV2fQdi/V0eVStT39eVFxweZ8pVi+HY6xAvNKt/LzZxPyEij8XqAr
         fMkZsPCgpzq0w4aJpBbzlTWWKKDc6hba08yFb47qYRD6t3SC+GEjlD+40yLKOReRI//Z
         LyxDVwKgHN/3pmSQpxxpdvenI/b6gX+4ZuPqaKaJnuoKAiX2H1GocHHPEuQ79rg9siJw
         my3w==
X-Gm-Message-State: AOAM532px07kiH2LrRSiOuj90Z9rRhyjOhb+3ZVt7gRgtTkMRje9hP6x
        wC2WcvXRF0OYk2j2YZmbQBYPGA==
X-Google-Smtp-Source: ABdhPJwideaMwQI0vVOO9NOjJGo+l6Etw+5ZlFofKjM7BTEhZ9Aoj2Q50gaHXWsGR97506yHtsDNMQ==
X-Received: by 2002:a1c:e0d4:: with SMTP id x203mr2725879wmg.91.1599139904767;
        Thu, 03 Sep 2020 06:31:44 -0700 (PDT)
Received: from localhost.localdomain ([212.45.67.2])
        by smtp.googlemail.com with ESMTPSA id b2sm4310768wmh.47.2020.09.03.06.31.43
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 03 Sep 2020 06:31:44 -0700 (PDT)
From:   Georgi Djakov <georgi.djakov@linaro.org>
To:     linux-pm@vger.kernel.org, bjorn.andersson@linaro.org
Cc:     devicetree@vger.kernel.org, robh+dt@kernel.org,
        sibis@codeaurora.org, mka@chromium.org, dianders@chromium.org,
        georgi.djakov@linaro.org, linux-kernel@vger.kernel.org
Subject: [PATCH v3 6/7] interconnect: qcom: sc7180: Replace xlate with xlate_extended
Date:   Thu,  3 Sep 2020 16:31:33 +0300
Message-Id: <20200903133134.17201-7-georgi.djakov@linaro.org>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20200903133134.17201-1-georgi.djakov@linaro.org>
References: <20200903133134.17201-1-georgi.djakov@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Sibi Sankar <sibis@codeaurora.org>

Use the qcom_icc_xlate_extended() in order to parse tags, that are
specified as an additional arguments to the path endpoints in DT.

Signed-off-by: Sibi Sankar <sibis@codeaurora.org>
Tested-by: Matthias Kaehlcke <mka@chromium.org>
Reviewed-by: Matthias Kaehlcke <mka@chromium.org>
Signed-off-by: Georgi Djakov <georgi.djakov@linaro.org>
---
 drivers/interconnect/qcom/sc7180.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/interconnect/qcom/sc7180.c b/drivers/interconnect/qcom/sc7180.c
index dcf493d07928..a6f119f363b1 100644
--- a/drivers/interconnect/qcom/sc7180.c
+++ b/drivers/interconnect/qcom/sc7180.c
@@ -535,7 +535,7 @@ static int qnoc_probe(struct platform_device *pdev)
 	provider->set = qcom_icc_set;
 	provider->pre_aggregate = qcom_icc_pre_aggregate;
 	provider->aggregate = qcom_icc_aggregate;
-	provider->xlate = of_icc_xlate_onecell;
+	provider->xlate_extended = qcom_icc_xlate_extended;
 	INIT_LIST_HEAD(&provider->nodes);
 	provider->data = data;
 
