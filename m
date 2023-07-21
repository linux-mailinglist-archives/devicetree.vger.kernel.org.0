Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9112375CC01
	for <lists+devicetree@lfdr.de>; Fri, 21 Jul 2023 17:36:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232145AbjGUPgs (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 21 Jul 2023 11:36:48 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38474 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232119AbjGUPgm (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 21 Jul 2023 11:36:42 -0400
Received: from mail-lf1-x135.google.com (mail-lf1-x135.google.com [IPv6:2a00:1450:4864:20::135])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C6BD135BF
        for <devicetree@vger.kernel.org>; Fri, 21 Jul 2023 08:36:23 -0700 (PDT)
Received: by mail-lf1-x135.google.com with SMTP id 2adb3069b0e04-4fbaef9871cso3376090e87.0
        for <devicetree@vger.kernel.org>; Fri, 21 Jul 2023 08:36:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1689953781; x=1690558581;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=MNUICTxnlbcuu6TsxJcDmPsv2jDduZwKIbr4jq2nPiE=;
        b=FxO8nHJ9tGXbB7IfuT1CmevZoQZXsNk5VstzgldyuWmH8QjicpW5JXPIu9xtfvLm9a
         suUn7BufbjSbCYuTfPRR74yso2UY7LrNZ8H7zo5UOFdmZFf/wZSyDsDTO3bIVfHmFEG7
         Tb+i1Fimkhh0Sk/GKrfyC7a4HW4tgbbpcVcyMn3LqPwK6wP9sCj8T2ThLR+EjQrn7tr+
         XTxDxLLt5Pg5UGTNWS93n/+BShi7kU9qD0Z3MCr2q+oTljrjTnGPtJU4UMPBtArmtLlM
         ByYdk10cMuPejfwfrmh3Ezo7UzhNye/KNP9uy6sQnPE0m2GVsHv4xbcD6flxKDxxxoEk
         cjVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689953781; x=1690558581;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=MNUICTxnlbcuu6TsxJcDmPsv2jDduZwKIbr4jq2nPiE=;
        b=Szp9YZROXBxcLqXtAQwJCRT3k6OGZSIOD4enfRqs1RJgl0pIZ5PnrpIyC2XzYv3fF9
         ukLfreu0qSqC/NraF4+PCJIXvI+Tv4uZE1of3h1J/rH1eq/CSeRN9jWJAJyu4HeMdz2L
         +yhmueYjuESFhOCl99JwcU+2IYGqQ20GdnovX37WwDunpOdFtrR89mqpyeUjNfoq3maC
         L3Nkhxn6W0z2k8cMlIqJs3la6IqBmU4IYJVq1wJYo5yl7+Rxgg5yqZwjYHtHqQCUgWzm
         pKRJixOm3WSiOn9GckBIQneE3c8blKXQzOdF8hcadcexIyDsR6tso4J79hw8/RmJyZtu
         eRoQ==
X-Gm-Message-State: ABy/qLaWFnC65OGNLEIx8Chbzt71XGjY6WQ6RLH2b+QOS0Ye1vzfxQPm
        Lr8xFMdT8g6Bo2kOOV9QfOjiSQ==
X-Google-Smtp-Source: APBJJlExmYhLxeeaOdBaiERFqCcHbHWYrFzCi9iuKfhw8e44eeFGcg1b8vJ25CzMerA7teNU2vK0Sg==
X-Received: by 2002:a19:ca1b:0:b0:4fa:d522:a38e with SMTP id a27-20020a19ca1b000000b004fad522a38emr1558937lfg.35.1689953781726;
        Fri, 21 Jul 2023 08:36:21 -0700 (PDT)
Received: from [192.168.1.101] (abyj181.neoplus.adsl.tpnet.pl. [83.9.29.181])
        by smtp.gmail.com with ESMTPSA id t9-20020a19ad09000000b004fba1278e6dsm782535lfc.107.2023.07.21.08.36.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 Jul 2023 08:36:21 -0700 (PDT)
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
Date:   Fri, 21 Jul 2023 17:36:10 +0200
Subject: [PATCH 07/11] dt-bindings: remoteproc: qcom,msm8996-mss-pil:
 Remove PNoC clock
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20230721-topic-rpm_clk_cleanup-v1-7-cf6cd5c621d5@linaro.org>
References: <20230721-topic-rpm_clk_cleanup-v1-0-cf6cd5c621d5@linaro.org>
In-Reply-To: <20230721-topic-rpm_clk_cleanup-v1-0-cf6cd5c621d5@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Mathieu Poirier <mathieu.poirier@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Sibi Sankar <quic_sibis@quicinc.com>
Cc:     Marijn Suijten <marijn.suijten@somainline.org>,
        linux-arm-msm@vger.kernel.org, linux-remoteproc@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@linaro.org>
X-Mailer: b4 0.12.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1689953767; l=1239;
 i=konrad.dybcio@linaro.org; s=20230215; h=from:subject:message-id;
 bh=jKrBSqmQqDi2ZJyNjrxGcg/2wJRcACv9okZf11mQ+SQ=;
 b=7CV1L2V2H/dnJ6ctd3ChhF6D1IGCFWOas9FFBVWupM2vsh9QTQQm+vwKIQ/MRsBI8VBtz9Rn/
 EN3vk9syzBUDZMsg+F92NGAADpPy4u0EmxltXCQYU2tWBS4jCrnp+Mv
X-Developer-Key: i=konrad.dybcio@linaro.org; a=ed25519;
 pk=iclgkYvtl2w05SSXO5EjjSYlhFKsJ+5OSZBjOkQuEms=
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The PNoC clock is a clock for the entire PNoC bus, managed from
within the interconnect driver. Attaching it to MSS was a total hack.
Get rid of it.

Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
---
 Documentation/devicetree/bindings/remoteproc/qcom,msm8996-mss-pil.yaml | 2 --
 1 file changed, 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/remoteproc/qcom,msm8996-mss-pil.yaml b/Documentation/devicetree/bindings/remoteproc/qcom,msm8996-mss-pil.yaml
index 0643faae2c39..971734085d51 100644
--- a/Documentation/devicetree/bindings/remoteproc/qcom,msm8996-mss-pil.yaml
+++ b/Documentation/devicetree/bindings/remoteproc/qcom,msm8996-mss-pil.yaml
@@ -220,7 +220,6 @@ allOf:
             - description: GCC MSS GPLL0 clock
             - description: GCC MSS SNOC_AXI clock
             - description: GCC MSS MNOC_AXI clock
-            - description: RPM PNOC clock
             - description: RPM QDSS clock
         clock-names:
           items:
@@ -231,7 +230,6 @@ allOf:
             - const: gpll0_mss
             - const: snoc_axi
             - const: mnoc_axi
-            - const: pnoc
             - const: qdss
         glink-edge: false
       required:

-- 
2.41.0

