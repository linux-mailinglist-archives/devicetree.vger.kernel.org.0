Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DB1EF2E7FE0
	for <lists+devicetree@lfdr.de>; Thu, 31 Dec 2020 13:24:51 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726627AbgLaMYp (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 31 Dec 2020 07:24:45 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56976 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726583AbgLaMYo (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 31 Dec 2020 07:24:44 -0500
Received: from mail-lf1-x136.google.com (mail-lf1-x136.google.com [IPv6:2a00:1450:4864:20::136])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3845FC06179C
        for <devicetree@vger.kernel.org>; Thu, 31 Dec 2020 04:24:04 -0800 (PST)
Received: by mail-lf1-x136.google.com with SMTP id l11so43832995lfg.0
        for <devicetree@vger.kernel.org>; Thu, 31 Dec 2020 04:24:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=50YWbAm2z8JFqRwTF3PvDhtM81i1dEM3p4jr1MtmPig=;
        b=PXVKzo0T7Mph11Zl83nrk6DA/kopMT898iZtYT9ONiZdgROQcq+HD3DjLiQyxaX0Ab
         z0Q6e2yUTUfEe0fIQlC2DSDaLXYrMoroHGEkyLfyjvDvfBDqQprBTQZ6SZT69DQkMUup
         f2pIpsxAfNfiGjaucfZfgHzVEs/DCSYY6ygivFMtaGBEp54gmcRTI1EsCHmy8auX2EjQ
         lFr0itxVAfJ61NvJlkJ4fR1svLtIZ6YTSvxr+IcV0n96eDtOzIPNxOrKzDee3OYa/KON
         omiN8DcH0Z5Wx5uIK7a+II4CU9qjvVB+0GMUyNCgX7tspMrvWTcIupV29XdHiSzzU31l
         5PxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=50YWbAm2z8JFqRwTF3PvDhtM81i1dEM3p4jr1MtmPig=;
        b=JJsof25QxwPvABoDnlo991G62od5d7Ck//Z4uIDnMMK/D8PR1k9J0ns0HAzGoRCuXx
         EWtMBoH1mP5uOg4/Pdk0OPMmb7aaXlJ+nhd4CAB+50sUa5kh5OH/np5JAXRjV0f7eBRX
         FmZkqu9Ul53YOUgNNERLs1n7NNbF1NJ3dHUYpugFpxdhJBtWGbXsZfuliNfqPbRLWm3q
         RpS0c4vLJfT7BvmjK5e96Pyph3Zi3RKlC96h0ZQmKX3j6P/aOY4tQQg4hdj7YUpf4R4v
         2Aqb9Y4bTraH7urYhm4c7cEnX04sJUfX9221fceKBrif6yyxt85rO+XejT6/BFr/K8Nu
         T7mQ==
X-Gm-Message-State: AOAM531ykY59HN8aSTAhZxDJrUTDBeWCA6Hlya0HgElj9C+8OQF88f2r
        wcwdv/i4SUn+Dg+2CT6hQY4VnA==
X-Google-Smtp-Source: ABdhPJx+TfN1rUj02in1TY0rQeJUD3WgK3bc6epu5SG0UmQyibtkyH/S1P0de8c54obgdUylFsLJnw==
X-Received: by 2002:a19:797:: with SMTP id 145mr23778136lfh.651.1609417442743;
        Thu, 31 Dec 2020 04:24:02 -0800 (PST)
Received: from eriador.lumag.spb.ru ([94.25.228.115])
        by smtp.gmail.com with ESMTPSA id n10sm428569lji.99.2020.12.31.04.23.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 31 Dec 2020 04:24:02 -0800 (PST)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>
Cc:     Vinod Koul <vkoul@kernel.org>, linux-arm-msm@vger.kernel.org,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH 1/4] dt-bindings: regulator: qcom,rpmh-regulator: add pm8009 revision
Date:   Thu, 31 Dec 2020 15:23:45 +0300
Message-Id: <20201231122348.637917-2-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20201231122348.637917-1-dmitry.baryshkov@linaro.org>
References: <20201231122348.637917-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

PMIC pm8009 has special revision (P=1) made for sm8250 platform. The
major difference is the S2 regulator which supplies 0.95 V instead of
2.848V. Add special compatibility string for this chip revision.
The datasheet calls the chip just pm8009-1, so use the same name.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 .../devicetree/bindings/regulator/qcom,rpmh-regulator.txt        | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/regulator/qcom,rpmh-regulator.txt b/Documentation/devicetree/bindings/regulator/qcom,rpmh-regulator.txt
index b8f0b7809c02..7d462b899473 100644
--- a/Documentation/devicetree/bindings/regulator/qcom,rpmh-regulator.txt
+++ b/Documentation/devicetree/bindings/regulator/qcom,rpmh-regulator.txt
@@ -44,6 +44,7 @@ First Level Nodes - PMIC
 	Definition: Must be one of below:
 		    "qcom,pm8005-rpmh-regulators"
 		    "qcom,pm8009-rpmh-regulators"
+		    "qcom,pm8009-1-rpmh-regulators"
 		    "qcom,pm8150-rpmh-regulators"
 		    "qcom,pm8150l-rpmh-regulators"
 		    "qcom,pm8350-rpmh-regulators"
-- 
2.29.2

