Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 75586765A5D
	for <lists+devicetree@lfdr.de>; Thu, 27 Jul 2023 19:33:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231576AbjG0Rdd (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 27 Jul 2023 13:33:33 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:32904 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231603AbjG0Rdb (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 27 Jul 2023 13:33:31 -0400
Received: from mail-lf1-x135.google.com (mail-lf1-x135.google.com [IPv6:2a00:1450:4864:20::135])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8A06A2D76
        for <devicetree@vger.kernel.org>; Thu, 27 Jul 2023 10:33:29 -0700 (PDT)
Received: by mail-lf1-x135.google.com with SMTP id 2adb3069b0e04-4fe04882c66so2167224e87.3
        for <devicetree@vger.kernel.org>; Thu, 27 Jul 2023 10:33:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1690479208; x=1691084008;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=2zU/cjwRMTTz2495il9q5eV7STYjp78SNHViO7CJZv4=;
        b=N8d5PEF4efmEA0EhQaQWGBK5z1GtvonNSws9JNyLBwykYcDlZDzGE76si2sl8g1LiN
         np0rNmHkf79LoI9tK+R++1N2HoNRlp7p1SMHqKilxBfjycWcOa9PQVLNVAMh4AUZGJ9b
         7/udGcVbbPhKIEfsiEYqS03cVfGRPKKnikOTNoSRN5WsDyuf+3kDhTXfPrGb5zKt6IG0
         2kngTrzEAc9k2TEz8dU8H8C/iN14xVVUcAWavyMwsZ7zaAS2uoX1eMSPo3vfDjwx7f+J
         89+tL5/BIo32M7UBTQW02ewurQV/rMIzMfwQfzuJpYFKfSmXQWUztmTTnJAKzmyAfZKC
         33gg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690479208; x=1691084008;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=2zU/cjwRMTTz2495il9q5eV7STYjp78SNHViO7CJZv4=;
        b=HpsdS777O6xC0hq/yeYboP+WiE9yXO0ek73jKd17raqQSe8HF2Dic/weG0BH187JWI
         GfLpjjq78Sn3hX8f9hoS874h4OaQzZoPvuKRhLaUI0hFsd1/o0WIBIyHie2E2Fra04kB
         NvPzE208LNEPVDv6RRGIVnip6K38pfGXjXe/dO8HDaZaxzmgTCw67rke5oNzC/FZwM2j
         YL56je3c18KMJC31Hx610KFWnOZUSPtDlnmrFmv6ZZDqB+KxO0N+TaX414cU4AZ6OSR6
         SKW8IsWV5AMWrdJeweA7pbvJOT5AeuAklEQ3NCjZK/eQn6gGUyYvnJZcP1wLfP0EdbpG
         o3sA==
X-Gm-Message-State: ABy/qLaQb1F6RHO6Ro5HhREyB0JVlMTkxLzYUqBQEWqQ2MTWfT9GnJ8M
        a11IeHHCVf6iuaf2BDUKHhj4Lw==
X-Google-Smtp-Source: APBJJlFLZ+7kfHF1+btz2Bf3Qwq8581ll27cAP4w+uf+K6K4zg9kauFawNUx8bbmAESVTdSDqToJFA==
X-Received: by 2002:a19:7512:0:b0:4fb:9da2:6cec with SMTP id y18-20020a197512000000b004fb9da26cecmr2285617lfe.7.1690479207657;
        Thu, 27 Jul 2023 10:33:27 -0700 (PDT)
Received: from [192.168.1.101] (abxi99.neoplus.adsl.tpnet.pl. [83.9.2.99])
        by smtp.gmail.com with ESMTPSA id g4-20020a19ac04000000b004fe07f06337sm412089lfc.53.2023.07.27.10.33.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 27 Jul 2023 10:33:26 -0700 (PDT)
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
Date:   Thu, 27 Jul 2023 19:33:22 +0200
Subject: [PATCH v5 2/3] remoteproc: qcom: pas: Add SM6375 ADSP & CDSP
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20230725-topic-6375_rproc-v5-2-a8e9cde56a20@linaro.org>
References: <20230725-topic-6375_rproc-v5-0-a8e9cde56a20@linaro.org>
In-Reply-To: <20230725-topic-6375_rproc-v5-0-a8e9cde56a20@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Mathieu Poirier <mathieu.poirier@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>
Cc:     Marijn Suijten <marijn.suijten@somainline.org>,
        linux-arm-msm@vger.kernel.org, linux-remoteproc@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
X-Mailer: b4 0.12.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1690479202; l=1093;
 i=konrad.dybcio@linaro.org; s=20230215; h=from:subject:message-id;
 bh=dhLWSUNPf4MHw81JBZTsRJ2sX68bGcNHGXn7nRcPQs0=;
 b=gzkyaQ6/ofOUqpvt1ivZImnV4ynsHOFETL170ObvEWPjt1AMTQE+p/TkX2lH3oFt/1iF7Xuvg
 p7Wkmpb9aT3Brn5oZqoegSVEj1t38p8oYRTs7SGZ+EK1Wko2IPPTaEi
X-Developer-Key: i=konrad.dybcio@linaro.org; a=ed25519;
 pk=iclgkYvtl2w05SSXO5EjjSYlhFKsJ+5OSZBjOkQuEms=
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add a config for the ADSP&CDSP present on SM6375.

Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
---
 drivers/remoteproc/qcom_q6v5_pas.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/remoteproc/qcom_q6v5_pas.c b/drivers/remoteproc/qcom_q6v5_pas.c
index b5447dd2dd35..0d58b5be9a77 100644
--- a/drivers/remoteproc/qcom_q6v5_pas.c
+++ b/drivers/remoteproc/qcom_q6v5_pas.c
@@ -1180,6 +1180,8 @@ static const struct of_device_id adsp_of_match[] = {
 	{ .compatible = "qcom,sm6350-adsp-pas", .data = &sm6350_adsp_resource},
 	{ .compatible = "qcom,sm6350-cdsp-pas", .data = &sm6350_cdsp_resource},
 	{ .compatible = "qcom,sm6350-mpss-pas", .data = &mpss_resource_init},
+	{ .compatible = "qcom,sm6375-adsp-pas", .data = &sm6350_adsp_resource},
+	{ .compatible = "qcom,sm6375-cdsp-pas", .data = &sm8150_cdsp_resource},
 	{ .compatible = "qcom,sm8150-adsp-pas", .data = &sm8150_adsp_resource},
 	{ .compatible = "qcom,sm8150-cdsp-pas", .data = &sm8150_cdsp_resource},
 	{ .compatible = "qcom,sm8150-mpss-pas", .data = &mpss_resource_init},

-- 
2.41.0

