Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C0AED76CCDF
	for <lists+devicetree@lfdr.de>; Wed,  2 Aug 2023 14:38:23 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232119AbjHBMiV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 2 Aug 2023 08:38:21 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58384 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233760AbjHBMiU (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 2 Aug 2023 08:38:20 -0400
Received: from mail-lj1-x232.google.com (mail-lj1-x232.google.com [IPv6:2a00:1450:4864:20::232])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7AB7D2701
        for <devicetree@vger.kernel.org>; Wed,  2 Aug 2023 05:38:18 -0700 (PDT)
Received: by mail-lj1-x232.google.com with SMTP id 38308e7fff4ca-2b9e6cc93d8so54227481fa.0
        for <devicetree@vger.kernel.org>; Wed, 02 Aug 2023 05:38:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1690979897; x=1691584697;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=nVGvOyENWPB+Ee8crCfmI+rgll1/ig00HScPt7330D4=;
        b=N5qQww5IukOtxw56VLO9mfSPjceMrjMTBxnhHfSkq2K+OdHHa5vAysSRIciF173mW+
         dC4sAMmDy+9GF9zKgx1nw/E/FOv/2xRflV+DEOGJNLxxD0G9iV+UsksDvmxEVtJUf1Z9
         nbm4sGKa8AuZ8+QUh15JUih5Uytj0dx5sdgyi7ngOFatzn4pNmM/6yhqDUM5jUDVuOdI
         i7WvjiSMMN6yTGiq5nzKmc6+vYpbXkuKUgMaolyTDXlo3CfIHUslG2dJWk9YKQGyovI9
         iKCueOEU4CDzEziapkOE4HbbVZQnIdIgwkL1IIWsbmI4N6L1SzvxELmZIMzqrD9ny9Fv
         DAWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690979897; x=1691584697;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=nVGvOyENWPB+Ee8crCfmI+rgll1/ig00HScPt7330D4=;
        b=Ku42ihfHGdva738jLTjh7hKUnP4CouFTfKi+OVydcOXdEbWz5h1ZEGenDsd8Xrm30V
         XnK1Nd880w12v9yq+yt4WgXMswSuU/fttnNpl8awY/a9Moy2cUYqAQTEoIijdyNXC70P
         20wa2ihOxxZy9S9FOjnvxf/UR9P8kKHBR72DannFvmEgaqBvi9vfpehzXuYqNKIBi4Rv
         x9M4gsexHZtuvONcGxlo62OMg2bmO7a6q3A0OYgwu2EjNhPW0vHxikt9U5fCQO5niAM7
         CG6JhxWizAmf42PQCCqJnFdSL4hRsyuCPh/zuqfKR4Mz6v7qfcOGxd9YRa7AlUM6bG/k
         OUEw==
X-Gm-Message-State: ABy/qLaZsOBcJn3JGaQOjpUGF6TthqtxuiaDlCPH/IMl96ZuXQsXd6EM
        EBcP+78Es4hjO2SfbNOoRbwCwg==
X-Google-Smtp-Source: APBJJlG2Y8RgaNPpgAh30xzlmVrZT2Mu5HUmS5xjhDuQ2lkWDLH6Yl9+kAjr5cz5yIhU39u3DibS2w==
X-Received: by 2002:a2e:780e:0:b0:2b6:cf0f:1fbf with SMTP id t14-20020a2e780e000000b002b6cf0f1fbfmr4973816ljc.42.1690979896697;
        Wed, 02 Aug 2023 05:38:16 -0700 (PDT)
Received: from [192.168.1.101] (abyk53.neoplus.adsl.tpnet.pl. [83.9.30.53])
        by smtp.gmail.com with ESMTPSA id h8-20020a2e9ec8000000b002b9e5fe86dasm1897050ljk.81.2023.08.02.05.38.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 02 Aug 2023 05:38:15 -0700 (PDT)
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
Date:   Wed, 02 Aug 2023 14:37:41 +0200
Subject: [PATCH v13 01/10] cpufreq: blocklist MSM8998 in cpufreq-dt-platdev
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20230217-topic-cpr3h-v13-1-d01cff1c54cf@linaro.org>
References: <20230217-topic-cpr3h-v13-0-d01cff1c54cf@linaro.org>
In-Reply-To: <20230217-topic-cpr3h-v13-0-d01cff1c54cf@linaro.org>
To:     AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Viresh Kumar <vireshk@kernel.org>, Nishanth Menon <nm@ti.com>,
        Stephen Boyd <sboyd@kernel.org>,
        Niklas Cassel <nks@flawful.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        "Rafael J. Wysocki" <rafael@kernel.org>,
        Viresh Kumar <viresh.kumar@linaro.org>,
        Ulf Hansson <ulf.hansson@linaro.org>
Cc:     Robert Marko <robimarko@gmail.com>, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-pm@vger.kernel.org, Jeffrey Hugo <quic_jhugo@quicinc.com>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@somainline.org>
X-Mailer: b4 0.12.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1690979891; l=931;
 i=konrad.dybcio@linaro.org; s=20230215; h=from:subject:message-id;
 bh=citMFauTCxszFsf6NvxU1uORtQU48kMUG74vy4bw6Fw=;
 b=vKpsJxYpL89MCAJpT4bYryhsP3F8N2YjfbmPybrBH8o8AH6zoFZAEaqpCSBpfYg705p/lC8t4
 CA2e301LwF4A2jsei2FfgpQKziyW8u2j9tEhzOWc12k3DeH7FwhnGZk
X-Developer-Key: i=konrad.dybcio@linaro.org; a=ed25519;
 pk=iclgkYvtl2w05SSXO5EjjSYlhFKsJ+5OSZBjOkQuEms=
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: AngeloGioacchino Del Regno <angelogioacchino.delregno@somainline.org>

Add the MSM8998 to the blocklist since the CPU scaling on this platform
is handled by a separate driver.

Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@somainline.org>
Tested-by: Jeffrey Hugo <quic_jhugo@quicinc.com>
Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
---
 drivers/cpufreq/cpufreq-dt-platdev.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/cpufreq/cpufreq-dt-platdev.c b/drivers/cpufreq/cpufreq-dt-platdev.c
index e2b20080de3a..adb3579a1fee 100644
--- a/drivers/cpufreq/cpufreq-dt-platdev.c
+++ b/drivers/cpufreq/cpufreq-dt-platdev.c
@@ -143,6 +143,7 @@ static const struct of_device_id blocklist[] __initconst = {
 
 	{ .compatible = "qcom,apq8096", },
 	{ .compatible = "qcom,msm8996", },
+	{ .compatible = "qcom,msm8998", },
 	{ .compatible = "qcom,qcs404", },
 	{ .compatible = "qcom,sa8155p" },
 	{ .compatible = "qcom,sa8540p" },

-- 
2.41.0

