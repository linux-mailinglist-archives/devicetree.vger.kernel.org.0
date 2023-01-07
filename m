Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 49477660E91
	for <lists+devicetree@lfdr.de>; Sat,  7 Jan 2023 13:08:48 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231819AbjAGMIq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 7 Jan 2023 07:08:46 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40974 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231865AbjAGMIp (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 7 Jan 2023 07:08:45 -0500
Received: from mail-lj1-x22d.google.com (mail-lj1-x22d.google.com [IPv6:2a00:1450:4864:20::22d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0294B5C1F2
        for <devicetree@vger.kernel.org>; Sat,  7 Jan 2023 04:08:44 -0800 (PST)
Received: by mail-lj1-x22d.google.com with SMTP id bn6so4041628ljb.13
        for <devicetree@vger.kernel.org>; Sat, 07 Jan 2023 04:08:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=XW7RLQwSsuJOklNws0vv7F30PK+Xw6g9m1ThmRDdI/Y=;
        b=akuFM2gIw7qAdEFk8SMz8dhvgq4NjaWtWXEhBNM0mWVr6cN+I+JP6h63Mbnnniuf1E
         UCPNjXlIbhlO5wpaP53Ico83zc7dnJgMzqp+f24GqJKU0+Bta6cSGSkdKlUq/tvlWmcS
         MtvXph84H2gK0iLWD0QvhDe7Gr4iQr5QhwSnuRyzRoR/LXoH+Eh3r2sfAkekDdvr6hQv
         AoSCB+zd1sk6c5h4aCQjrXe+dpW4YuHPG5WvggHzhQEWodtJWX0A3YqyuwabxzceSM74
         kvJmf2BMWiE2yaHKbwRRDFfYft0t6qWVVoD+j1xSRHOhJNgkxjTVGPmgYf74FTs09hmS
         w2gg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=XW7RLQwSsuJOklNws0vv7F30PK+Xw6g9m1ThmRDdI/Y=;
        b=aYFb8hGFt/hMCKGyaOeOFM3KODNXLdi23ZQsKGDoODlHePJDQvEd5/wY9OrsoNCrTN
         25suzc1aWXzZkn/RRvazvb44j5+lXCD1bTCeG2FvyfNyD+kocUOpFnSah7oXNbyfY0JH
         zo/2RVsC8uG/LNSCzK2uU2gB/U/KZG7j/lHCfP3jjNqe16rvEUaYv8MHiUoqnUkml69x
         US7gtYgLbWj0N2f3v8wHC3EfAgJm9ZxLZH5EXDNB04m2eHjbqf50CZ4XvuJI3lujT+zI
         GPQiDM9zqdX68/ssfBVn7pcNbXlHM6cCnncRi55HKl7tFcMCZ9L3wIR4CBFHQHCzNbmN
         EJ6w==
X-Gm-Message-State: AFqh2kpGT9oEfvwTcyhEGSbcFaTeq6crojwi4/VD4jxRT3T8HLBn1q61
        m5/42MgTn18PtJkP9gbEIhnGJw==
X-Google-Smtp-Source: AMrXdXuOmZKjALEpBiQrh2a02iChCNORo3Sp0Y5qvcGWO1uGh9m1MmJd+HLpXYARgTIbDzZ8so5a7Q==
X-Received: by 2002:a2e:9385:0:b0:27f:fc5c:bf9c with SMTP id g5-20020a2e9385000000b0027ffc5cbf9cmr4590798ljh.26.1673093322339;
        Sat, 07 Jan 2023 04:08:42 -0800 (PST)
Received: from localhost.localdomain (abxi45.neoplus.adsl.tpnet.pl. [83.9.2.45])
        by smtp.gmail.com with ESMTPSA id h14-20020a05651c124e00b0027fd474e7aasm340858ljh.74.2023.01.07.04.08.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 07 Jan 2023 04:08:42 -0800 (PST)
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
To:     linux-arm-msm@vger.kernel.org, andersson@kernel.org,
        agross@kernel.org, krzysztof.kozlowski@linaro.org
Cc:     marijn.suijten@somainline.org,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Mathieu Poirier <mathieu.poirier@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        linux-remoteproc@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: [PATCH v2 2/2] remoteproc: qcom: pas: Add SM6375 MPSS
Date:   Sat,  7 Jan 2023 13:08:38 +0100
Message-Id: <20230107120838.1903498-2-konrad.dybcio@linaro.org>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20230107120838.1903498-1-konrad.dybcio@linaro.org>
References: <20230107120838.1903498-1-konrad.dybcio@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add a config for the MPSS present on SM6375.

Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
---
v1 -> v2:
- Drop now-removed has_aggre2_clk

 drivers/remoteproc/qcom_q6v5_pas.c | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/drivers/remoteproc/qcom_q6v5_pas.c b/drivers/remoteproc/qcom_q6v5_pas.c
index d8a4ecec8535..10eaef85816d 100644
--- a/drivers/remoteproc/qcom_q6v5_pas.c
+++ b/drivers/remoteproc/qcom_q6v5_pas.c
@@ -831,6 +831,21 @@ static const struct adsp_data slpi_resource_init = {
 		.ssctl_id = 0x16,
 };
 
+static const struct adsp_data sm6375_mpss_resource = {
+	.crash_reason_smem = 421,
+	.firmware_name = "modem.mdt",
+	.pas_id = 4,
+	.minidump_id = 3,
+	.auto_boot = false,
+	.proxy_pd_names = (char*[]){
+		"cx",
+		NULL
+	},
+	.ssr_name = "mpss",
+	.sysmon_name = "modem",
+	.ssctl_id = 0x12,
+};
+
 static const struct adsp_data sm8150_slpi_resource = {
 		.crash_reason_smem = 424,
 		.firmware_name = "slpi.mdt",
@@ -950,6 +965,7 @@ static const struct of_device_id adsp_of_match[] = {
 	{ .compatible = "qcom,sm6350-mpss-pas", .data = &mpss_resource_init},
 	{ .compatible = "qcom,sm6375-adsp-pas", .data = &sm6350_adsp_resource},
 	{ .compatible = "qcom,sm6375-cdsp-pas", .data = &sm8150_cdsp_resource},
+	{ .compatible = "qcom,sm6375-mpss-pas", .data = &sm6375_mpss_resource},
 	{ .compatible = "qcom,sm8150-adsp-pas", .data = &sm8150_adsp_resource},
 	{ .compatible = "qcom,sm8150-cdsp-pas", .data = &sm8150_cdsp_resource},
 	{ .compatible = "qcom,sm8150-mpss-pas", .data = &mpss_resource_init},
-- 
2.39.0

