Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9489627E606
	for <lists+devicetree@lfdr.de>; Wed, 30 Sep 2020 12:02:33 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729307AbgI3KCW (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 30 Sep 2020 06:02:22 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48386 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729215AbgI3KCU (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 30 Sep 2020 06:02:20 -0400
Received: from mail-pf1-x444.google.com (mail-pf1-x444.google.com [IPv6:2607:f8b0:4864:20::444])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 37562C061755
        for <devicetree@vger.kernel.org>; Wed, 30 Sep 2020 03:02:20 -0700 (PDT)
Received: by mail-pf1-x444.google.com with SMTP id o20so824276pfp.11
        for <devicetree@vger.kernel.org>; Wed, 30 Sep 2020 03:02:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=+/QT6UypySF4QeQQr1NJ9OfElfsrvGkWJzbgC4+/Alo=;
        b=p4QY1lYxYus8DoK0qaFTT6mMjnoop8EVlOX9itVvWd7xqWub68H73qSHcPtRn6phEt
         yI7QEJfoaU+R0IY6u7InBJ1oAlAfml8zQodUrN5QM2tpVEn75NtvMla5IJ8aqP5g8PKz
         qtV4XjceZdIo53BFoLthMbvzyclquMmhTVutbimWiC37D/RYByHrEMYW8cBw8Gqcx+q6
         UGzjbuI8pqHD/KMa2fZR/HmfnvprUBRmYkvSh9g3dA68R85c4Wh45oUlG9X+xJipE0HI
         Gj8bJ1hR7a2ajHUUCyKylRGTfSbwQWWLTaiWR3c3vJYlkGHDOuvFJP+t7p6whDEZCSkM
         JYFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=+/QT6UypySF4QeQQr1NJ9OfElfsrvGkWJzbgC4+/Alo=;
        b=Dv4geTdMDEFO4S9YfHipORIdTbtrqZCpf0sXzEPmYyaW6xWaF+nSnManlUEJbgL63o
         E1ley2QRiD1BfFaKrqsuSp8iKrPqagA3PvmslIjnOofJMJFCX4UDEp8AZV/tL3dyS2tC
         Nmff0da+wQHbW/w2rLcRrHt8ib+kmlhXYNIArO+Gmxnhmz+ICW2Wdslfowv7Szs3n/BG
         rQsYYRr4B768b3tWqHK7aKQWcB1qlX9DDtmIASV1hrhqtV/k2ujrcqsdN2WjhhIuHYsV
         Bx5JZVG3F9Vkdac9ekLJ4krhzlL43LpJE2IvUp7oHimj9Ypi8OKZvqTVKLvJsLoXWehD
         VI1g==
X-Gm-Message-State: AOAM531BiNY7AbnVIb0ACtCxmpq1WnPQ8u6MGgclbVkYzTYhAjC4Ny2e
        PpXKGm3EqbyX0zb6P4cOwoxq4A==
X-Google-Smtp-Source: ABdhPJyvGQ9CBpxV3+QWg19XnalSjj3UeiqYh1rqmQa40CMiUXBXVJIhVxkgqmDzYwF33IWtVYqEEA==
X-Received: by 2002:a63:786:: with SMTP id 128mr1554506pgh.69.1601460139751;
        Wed, 30 Sep 2020 03:02:19 -0700 (PDT)
Received: from localhost.localdomain (li519-153.members.linode.com. [66.175.222.153])
        by smtp.gmail.com with ESMTPSA id b2sm1890002pfp.3.2020.09.30.03.02.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 30 Sep 2020 03:02:19 -0700 (PDT)
From:   Jun Nie <jun.nie@linaro.org>
To:     stephan@gerhold.net, bjorn.andersson@linaro.org, agross@kernel.org,
        linux-pm@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        robh@kernel.org
Cc:     shawn.guo@linaro.org, Jun Nie <jun.nie@linaro.org>
Subject: [PATCH v3 2/2] soc: qcom: rpmpd: Add MSM8939 power-domains
Date:   Wed, 30 Sep 2020 18:01:45 +0800
Message-Id: <20200930100145.9457-3-jun.nie@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200930100145.9457-1-jun.nie@linaro.org>
References: <20200930100145.9457-1-jun.nie@linaro.org>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add the shared modemcx/cx/mx power-domains found on MSM8939.

Signed-off-by: Jun Nie <jun.nie@linaro.org>
---
 drivers/soc/qcom/rpmpd.c | 27 +++++++++++++++++++++++++++
 1 file changed, 27 insertions(+)

diff --git a/drivers/soc/qcom/rpmpd.c b/drivers/soc/qcom/rpmpd.c
index daeea119d48a..3887d57a5a15 100644
--- a/drivers/soc/qcom/rpmpd.c
+++ b/drivers/soc/qcom/rpmpd.c
@@ -136,6 +136,32 @@ static const struct rpmpd_desc msm8916_desc = {
 	.max_state = MAX_CORNER_RPMPD_STATE,
 };
 
+/* msm8939 RPM Power Domains */
+DEFINE_RPMPD_PAIR(msm8939, vddmd, vddmd_ao, SMPA, CORNER, 1);
+DEFINE_RPMPD_VFC(msm8939, vddmd_vfc, SMPA, 1);
+
+DEFINE_RPMPD_PAIR(msm8939, vddcx, vddcx_ao, SMPA, CORNER, 2);
+DEFINE_RPMPD_VFC(msm8939, vddcx_vfc, SMPA, 2);
+
+DEFINE_RPMPD_PAIR(msm8939, vddmx, vddmx_ao, LDOA, CORNER, 3);
+
+static struct rpmpd *msm8939_rpmpds[] = {
+	[MSM8939_VDDMDCX] =	&msm8939_vddmd,
+	[MSM8939_VDDMDCX_AO] =	&msm8939_vddmd_ao,
+	[MSM8939_VDDMDCX_VFC] =	&msm8939_vddmd_vfc,
+	[MSM8939_VDDCX] =	&msm8939_vddcx,
+	[MSM8939_VDDCX_AO] =	&msm8939_vddcx_ao,
+	[MSM8939_VDDCX_VFC] =	&msm8939_vddcx_vfc,
+	[MSM8939_VDDMX] =	&msm8939_vddmx,
+	[MSM8939_VDDMX_AO] =	&msm8939_vddmx_ao,
+};
+
+static const struct rpmpd_desc msm8939_desc = {
+	.rpmpds = msm8939_rpmpds,
+	.num_pds = ARRAY_SIZE(msm8939_rpmpds),
+	.max_state = MAX_CORNER_RPMPD_STATE,
+};
+
 /* msm8976 RPM Power Domains */
 DEFINE_RPMPD_PAIR(msm8976, vddcx, vddcx_ao, SMPA, LEVEL, 2);
 DEFINE_RPMPD_PAIR(msm8976, vddmx, vddmx_ao, SMPA, LEVEL, 6);
@@ -242,6 +268,7 @@ static const struct rpmpd_desc qcs404_desc = {
 
 static const struct of_device_id rpmpd_match_table[] = {
 	{ .compatible = "qcom,msm8916-rpmpd", .data = &msm8916_desc },
+	{ .compatible = "qcom,msm8939-rpmpd", .data = &msm8939_desc },
 	{ .compatible = "qcom,msm8976-rpmpd", .data = &msm8976_desc },
 	{ .compatible = "qcom,msm8996-rpmpd", .data = &msm8996_desc },
 	{ .compatible = "qcom,msm8998-rpmpd", .data = &msm8998_desc },
-- 
2.17.1

