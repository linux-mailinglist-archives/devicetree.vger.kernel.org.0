Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DA8516BAD67
	for <lists+devicetree@lfdr.de>; Wed, 15 Mar 2023 11:18:24 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231741AbjCOKSX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 15 Mar 2023 06:18:23 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59710 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232349AbjCOKSO (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 15 Mar 2023 06:18:14 -0400
Received: from mail-lf1-x12d.google.com (mail-lf1-x12d.google.com [IPv6:2a00:1450:4864:20::12d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0A9B177E08
        for <devicetree@vger.kernel.org>; Wed, 15 Mar 2023 03:17:40 -0700 (PDT)
Received: by mail-lf1-x12d.google.com with SMTP id y15so14105446lfa.7
        for <devicetree@vger.kernel.org>; Wed, 15 Mar 2023 03:17:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1678875454;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=pBhTi0wfQakwfTrjXohKrvBhPaT5xlPiskZ8ZeR9EQ8=;
        b=O35DzjOz0ldzAvc4GoFh/iSACZQt2/LDX+dixn+OK5+y94KwDVBdScpI85zji5Xq+L
         Hbwev3j5/28py1vITcVwscx4/3b2tktibAy/0JJuhv9kLZRtgStG/r3rJxtWJbO9F0A+
         MxDDWU/vQ6JSKDQMzV2zeby2A1ZE9OH72bxCTgA982GJ38qGcnlZHcFVSElcR6v9qMxp
         3SRL/3KrGO/tkx33epRQkiIcGi+Y647xXL7Tu7FEj9RYidifRGs+ZpJ9SfbIo1AffxGZ
         uG+W/DFtTqhOrCHZUKqBg7lPnsu1POY8EuEqTlYdKlZOMAha4dpCiFJVI/s3ztH8yChY
         86Cg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678875454;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=pBhTi0wfQakwfTrjXohKrvBhPaT5xlPiskZ8ZeR9EQ8=;
        b=EBrtKjjVUoNil8xpj80D/fLWz65sB31+yiRB9cTWjQHf8QY3i8zRzb7QF/zg/G82Qt
         V7H1naVkuVTjXWlGXOf3SzXfET7ny8CEGzHV4I6slh48keTWj4uCMd6Z3koFAeZrVIX8
         cO57Vee9PDrl62PbDSQgDldhecGwq20raM8CW1s/gJI8inwfpCNN2q/gSApWvYR5Zh+4
         gAC+UnDS/83ggCECjXD3zI8SEl+ghjsXrTapd63sKOtmKhOvZniq7MgigfiOa1TbrpFs
         d6GbAHCnPLsNlpRnCRZtZCNmOnbdGR3kPNZ9PbheiHzfHnUiFeR1ZL0kd2dNyMKUXiUN
         TLYg==
X-Gm-Message-State: AO0yUKWqH45pUFerQGvEjZhme4rtkj4Dzfta/EM0KRA32d8HnUAh5CbJ
        qXW61Lzjpwse0oBwiY/JX/c2PQ==
X-Google-Smtp-Source: AK7set/I8kHUjqEEFhseyhfbwHBdT9IFfLGoIePGVpH4pzZqRdxjakFT1vhrYr1gX6zjSnUo6T50Kg==
X-Received: by 2002:a19:f60a:0:b0:4b5:2bbc:e119 with SMTP id x10-20020a19f60a000000b004b52bbce119mr1953901lfe.65.1678875454619;
        Wed, 15 Mar 2023 03:17:34 -0700 (PDT)
Received: from [192.168.1.101] (abyj16.neoplus.adsl.tpnet.pl. [83.9.29.16])
        by smtp.gmail.com with ESMTPSA id f16-20020a19ae10000000b004ccff7c56a8sm764350lfc.27.2023.03.15.03.17.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 Mar 2023 03:17:34 -0700 (PDT)
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
Date:   Wed, 15 Mar 2023 11:17:27 +0100
Subject: [PATCH v2 2/2] soc: qcom: socinfo: Add IDs for QCM2290/QRB2210
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20230314-topic-scuba_socinfo-v2-2-44fa1256aa6d@linaro.org>
References: <20230314-topic-scuba_socinfo-v2-0-44fa1256aa6d@linaro.org>
In-Reply-To: <20230314-topic-scuba_socinfo-v2-0-44fa1256aa6d@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Marijn Suijten <marijn.suijten@somainline.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@linaro.org>
X-Mailer: b4 0.12.1
X-Developer-Signature: v=1; a=ed25519-sha256; t=1678875450; l=935;
 i=konrad.dybcio@linaro.org; s=20230215; h=from:subject:message-id;
 bh=olt8C4SWfvtXVuRBDJQWWKcaJ3mN7EBCOIVNBe1RlMc=;
 b=Q7q6cRyFnIN8YG9m1NUSS25LBGMasJ5n6xaHVjRgXIRfLXLXtK7n1cc2atH/BNHz+wEU5TzIvPh+
 oHSjAhGYB1/oMwWJ105MFxIRqedPT8a/eqcWJBWeDG24UkoepB8Z
X-Developer-Key: i=konrad.dybcio@linaro.org; a=ed25519;
 pk=iclgkYvtl2w05SSXO5EjjSYlhFKsJ+5OSZBjOkQuEms=
X-Spam-Status: No, score=-0.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        RCVD_IN_SORBS_HTTP,RCVD_IN_SORBS_SOCKS,SPF_HELO_NONE,SPF_PASS,
        URIBL_BLOCKED autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add the missing IDs for scuba and its QRB variant.

Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
---
 drivers/soc/qcom/socinfo.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/soc/qcom/socinfo.c b/drivers/soc/qcom/socinfo.c
index e9012ca1a87b..912e81b2527e 100644
--- a/drivers/soc/qcom/socinfo.c
+++ b/drivers/soc/qcom/socinfo.c
@@ -426,6 +426,7 @@ static const struct soc_id soc_id[] = {
 	{ qcom_board_id(QCM2150) },
 	{ qcom_board_id(SDA429W) },
 	{ qcom_board_id(SM8350) },
+	{ qcom_board_id(QCM2290) },
 	{ qcom_board_id(SM6115) },
 	{ qcom_board_id(SC8280XP) },
 	{ qcom_board_id(IPQ6005) },
@@ -442,6 +443,7 @@ static const struct soc_id soc_id[] = {
 	{ qcom_board_id(SC7180P) },
 	{ qcom_board_id(SM6375) },
 	{ qcom_board_id(SM8550) },
+	{ qcom_board_id(QRB2210) },
 	{ qcom_board_id(QRU1000) },
 	{ qcom_board_id(QDU1000) },
 	{ qcom_board_id(QDU1010) },

-- 
2.39.2

