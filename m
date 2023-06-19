Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 601F37357A3
	for <lists+devicetree@lfdr.de>; Mon, 19 Jun 2023 15:05:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230426AbjFSNEn (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 19 Jun 2023 09:04:43 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44086 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229632AbjFSNEj (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 19 Jun 2023 09:04:39 -0400
Received: from mail-lf1-x136.google.com (mail-lf1-x136.google.com [IPv6:2a00:1450:4864:20::136])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 01496AA
        for <devicetree@vger.kernel.org>; Mon, 19 Jun 2023 06:04:36 -0700 (PDT)
Received: by mail-lf1-x136.google.com with SMTP id 2adb3069b0e04-4f867700f36so2232297e87.0
        for <devicetree@vger.kernel.org>; Mon, 19 Jun 2023 06:04:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1687179874; x=1689771874;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Ak6pJEE70i86/FySUfYrSS2au3HzGmo13oLp85+Of0E=;
        b=w2KyWH+GCCRJKUkiVspBElqLjMxjw08ivrRU3GKf9VxhhZcdrtOg6Ui5cKPMBnmWbx
         Whr0y1tfNL+p2jy3BJyRoCrcK+MBBomalzUhM8iwRkyINRC1BXrGv+domU1HWGH5vtSz
         GisMGLp3EvpITPvmsQNYtwn2faUiIhsBOKUJx0XBMHhXFNDx3nnQLbyyF4RfxEWFQ2oc
         k9VXwew1XxCzz/+xZy+JRfkrrR94EQlyRTc8bSWhtUe3IZaFBaisLq4B/ZQA8iNFXL+8
         VT9YpvmfxXnncgjVDpRtUNnz39x6m7omacDScqjO39LcRjxUn5QcB/EBrO3J6KXFOQe+
         QA+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687179874; x=1689771874;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Ak6pJEE70i86/FySUfYrSS2au3HzGmo13oLp85+Of0E=;
        b=PliejgS9VY44fd+WBpE2JFFtvxk5MF4uu6xxj4X0YucyxpLd3xUa/REMkSya5QQ2IY
         D5wSMuoWDNmQ04ONYoDIsBBq7udv9YmBplhsQ2w2pVUmG8Sj9I443rTKcmhuajJ/H9Au
         5an2RBQ9oHCaM8kppsHQ7ZmdK9qCAfL9ueZubOrlzDG9fCUGZrzNyCHrbvMqpmkxAm1e
         PIIbWlLI2thuVFEhzoViDjU7HWuEKX2S0tzeM6llTu4kvEcQxojLWeBdpH91h3e8/c5l
         yeCaFJ0Zk6qKXnQuUJGfsqeaV3w/jf5UHWWRhkvqFfEzzYMvNMCdablt0yLITgTXULVq
         grWw==
X-Gm-Message-State: AC+VfDxTU6/aFO9YR7BtDT2sJIv/1wi5EiuirYFRbcohr8K49sBbq98n
        HcTS88vTeFbs5atXNmrG286QLw==
X-Google-Smtp-Source: ACHHUZ6aEZZActg//L1dLw+KV5I0lmLFpotkjIzznzSVEVGEGVzw+5wH54zA+SpUs3ghFNuslbyMww==
X-Received: by 2002:a05:6512:47c:b0:4eb:3fb2:c56d with SMTP id x28-20020a056512047c00b004eb3fb2c56dmr5068671lfd.12.1687179874166;
        Mon, 19 Jun 2023 06:04:34 -0700 (PDT)
Received: from [192.168.1.101] (abyl242.neoplus.adsl.tpnet.pl. [83.9.31.242])
        by smtp.gmail.com with ESMTPSA id q28-20020ac25a1c000000b004f643664882sm4256489lfn.147.2023.06.19.06.04.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 19 Jun 2023 06:04:33 -0700 (PDT)
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
Date:   Mon, 19 Jun 2023 15:04:27 +0200
Subject: [PATCH v7 02/22] soc: qcom: smd-rpm: Add QCOM_SMD_RPM_STATE_NUM
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20230526-topic-smd_icc-v7-2-09c78c175546@linaro.org>
References: <20230526-topic-smd_icc-v7-0-09c78c175546@linaro.org>
In-Reply-To: <20230526-topic-smd_icc-v7-0-09c78c175546@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>,
        Georgi Djakov <djakov@kernel.org>,
        Leo Yan <leo.yan@linaro.org>,
        Evan Green <evgreen@chromium.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc:     Marijn Suijten <marijn.suijten@somainline.org>,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-clk@vger.kernel.org, linux-pm@vger.kernel.org,
        devicetree@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@linaro.org>
X-Mailer: b4 0.12.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1687179869; l=664;
 i=konrad.dybcio@linaro.org; s=20230215; h=from:subject:message-id;
 bh=XHE1WQYZzaLo+c3xD4ALM/GRb1VwY7GuxNqpdL0mBnk=;
 b=btTEFhkxZ9hPrAB1HpOL9cD+zppCxzeWP2iOlroCrAa4fl3B3uFwALjH9g9s68cfx44dKjL+N
 I6vmtoGRG5fAwFmK6D9THXdqXvkLKNrjXx7HimOcjVL9cxv+ykbua9Q
X-Developer-Key: i=konrad.dybcio@linaro.org; a=ed25519;
 pk=iclgkYvtl2w05SSXO5EjjSYlhFKsJ+5OSZBjOkQuEms=
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add a preprocessor define to indicate the number of RPM contexts/states.

Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
---
 include/linux/soc/qcom/smd-rpm.h | 1 +
 1 file changed, 1 insertion(+)

diff --git a/include/linux/soc/qcom/smd-rpm.h b/include/linux/soc/qcom/smd-rpm.h
index 2990f425fdef..e468f94fa323 100644
--- a/include/linux/soc/qcom/smd-rpm.h
+++ b/include/linux/soc/qcom/smd-rpm.h
@@ -6,6 +6,7 @@ struct qcom_smd_rpm;
 
 #define QCOM_SMD_RPM_ACTIVE_STATE        0
 #define QCOM_SMD_RPM_SLEEP_STATE         1
+#define QCOM_SMD_RPM_STATE_NUM		2
 
 /*
  * Constants used for addressing resources in the RPM.

-- 
2.41.0

