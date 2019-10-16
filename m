Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id C5A1DD9A4D
	for <lists+devicetree@lfdr.de>; Wed, 16 Oct 2019 21:38:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2394469AbfJPTiC (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 16 Oct 2019 15:38:02 -0400
Received: from mail-qt1-f194.google.com ([209.85.160.194]:40573 "EHLO
        mail-qt1-f194.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2394449AbfJPThc (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 16 Oct 2019 15:37:32 -0400
Received: by mail-qt1-f194.google.com with SMTP id m61so37886058qte.7
        for <devicetree@vger.kernel.org>; Wed, 16 Oct 2019 12:37:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=E2xMtfg5bJTmZe94/qx4v5HPv3cpP1DHi2yBTTi4UXk=;
        b=yiEGyuxwygGASqd+4EnfQQXnAstv6WNIJC4tpcMTrjTHMRBlAxqUUmy3TXbQ9wu1OS
         jDd/n79uL5Fh7FnlU3t+AjYcBamWvQW9x5Fk4Wu2074XgFIzZ614l7R8FsvKfxEMRsWJ
         ITsuWypSAEltVlevAHN+PVhr+CvPw2BZNuOgs/ZRm91Ly7xpPDomQ4Rv00ssBs+cxQFg
         0B3G4r0phywCDRzo2iFnxSmyTQTnWVtEJDawys7gUkmESDhvMhbJb7XHsia+hkyAB/of
         7OowfA6qoW5J/sGNBUqAGvouMHJQYZA2yIbTy4NzsYAcJZ4oqmGDXC087MoHr6rLPfiA
         LnkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=E2xMtfg5bJTmZe94/qx4v5HPv3cpP1DHi2yBTTi4UXk=;
        b=SRCRBPJrzTMIgwwLj0aXX7GESeY7jFnmuqADRRMS/HQHqS2CNYtleR2MOmiIBDzWWn
         Jtk7fHgF5wyml2D7xbsJEJ1rAOMsWa4hAIcJXBDKnPEg0xjjff12XDf8M1bb7gGOC6Qc
         W/TVaxzdQDXeqhEbU/Z0d6G29mvw7fuY8h0uNzmAIaAp42LyiEb7TTNG5dBHD+B84YKJ
         VXXqLRNSWNdT2ZcazM3ddIS+qR/LOXvj0ez759vnzk/X2WpmrGUfF9WSOp6WjKjYrIJ7
         J4pcaxGHthsLkLhmerGSVxtlJpWA3uL3eAZL4frM0ogxs705CDa1T4exo7YVrG3g/213
         t0HQ==
X-Gm-Message-State: APjAAAU20qWrkfu4G2tMUEV8C9AK/IjNB7gsAMxIDsfQhppjUCidEbRe
        uKK7qRDLPJypx0Ul7noTctQ5MA==
X-Google-Smtp-Source: APXvYqzM2qvnUjfMlRvsvXUMH3bvdX6uNGcU6wQ3RSuMt0JXSDsqGZCSUlK0OwltEypjlC181PH/Vg==
X-Received: by 2002:ac8:3652:: with SMTP id n18mr13523277qtb.232.1571254651349;
        Wed, 16 Oct 2019 12:37:31 -0700 (PDT)
Received: from Thara-Work-Ubuntu.fios-router.home (pool-71-255-246-27.washdc.fios.verizon.net. [71.255.246.27])
        by smtp.googlemail.com with ESMTPSA id 54sm16246030qts.75.2019.10.16.12.37.29
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 16 Oct 2019 12:37:30 -0700 (PDT)
From:   Thara Gopinath <thara.gopinath@linaro.org>
To:     edubezval@gmail.com, rui.zhang@intel.com, ulf.hansson@linaro.org,
        daniel.lezcano@linaro.org, bjorn.andersson@linaro.org,
        agross@kernel.org
Cc:     amit.kucheria@verdurent.com, mark.rutland@arm.com,
        rjw@rjwysocki.net, linux-pm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: [PATCH v3 2/7] soc: qcom: rpmhpd: Introduce function to retrieve power domain performance state count
Date:   Wed, 16 Oct 2019 15:37:16 -0400
Message-Id: <1571254641-13626-3-git-send-email-thara.gopinath@linaro.org>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1571254641-13626-1-git-send-email-thara.gopinath@linaro.org>
References: <1571254641-13626-1-git-send-email-thara.gopinath@linaro.org>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Populate .get_performace_state_count in genpd ops to retrieve the count
of performance states supported by a rpmh power domain.

Signed-off-by: Thara Gopinath <thara.gopinath@linaro.org>
---
 drivers/soc/qcom/rpmhpd.c | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/drivers/soc/qcom/rpmhpd.c b/drivers/soc/qcom/rpmhpd.c
index 5741ec3..9d37534 100644
--- a/drivers/soc/qcom/rpmhpd.c
+++ b/drivers/soc/qcom/rpmhpd.c
@@ -285,6 +285,13 @@ static unsigned int rpmhpd_get_performance_state(struct generic_pm_domain *genpd
 	return dev_pm_opp_get_level(opp);
 }
 
+static int rpmhpd_performance_states_count(struct generic_pm_domain *domain)
+{
+	struct rpmhpd *pd = domain_to_rpmhpd(domain);
+
+	return pd->level_count;
+}
+
 static int rpmhpd_update_level_mapping(struct rpmhpd *rpmhpd)
 {
 	int i;
@@ -373,6 +380,8 @@ static int rpmhpd_probe(struct platform_device *pdev)
 		rpmhpds[i]->pd.power_on = rpmhpd_power_on;
 		rpmhpds[i]->pd.set_performance_state = rpmhpd_set_performance_state;
 		rpmhpds[i]->pd.opp_to_performance_state = rpmhpd_get_performance_state;
+		rpmhpds[i]->pd.get_performance_state_count =
+					rpmhpd_performance_states_count;
 		pm_genpd_init(&rpmhpds[i]->pd, NULL, true);
 
 		data->domains[i] = &rpmhpds[i]->pd;
-- 
2.1.4

