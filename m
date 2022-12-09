Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 934F16486C3
	for <lists+devicetree@lfdr.de>; Fri,  9 Dec 2022 17:49:03 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229555AbiLIQtB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 9 Dec 2022 11:49:01 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42826 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229720AbiLIQs7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 9 Dec 2022 11:48:59 -0500
Received: from mail-lj1-x22b.google.com (mail-lj1-x22b.google.com [IPv6:2a00:1450:4864:20::22b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C39FD93A7E
        for <devicetree@vger.kernel.org>; Fri,  9 Dec 2022 08:48:58 -0800 (PST)
Received: by mail-lj1-x22b.google.com with SMTP id g14so1525953ljh.10
        for <devicetree@vger.kernel.org>; Fri, 09 Dec 2022 08:48:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=HersfMJkZd5e6DBLXP/NMgfEzYAxOgK3H+M5S2K1LU0=;
        b=TStuVzJLgFgkajlXehNTU2wHvphRD/qyu5l4T6X7jDmzHmJEI4tFJo4WGwBWC2pAzh
         uq9SrORR5BWe1TYLHmbMpbv7np1KE3XOF1qJeCYteyGMATQwWdS0NPEWZmVjw9XijGNL
         +jKJqvWkxAXXzTH0GnMdDUopOr6f4zD5vsOEzCauAFtHQkcR0SoG9VVZf8MNrac1J4/e
         wo2PSv2gvvVjym1FYuAqh9JxZt9cdoIekrnEquHK3QYPzjKGeUxMI2E18D7jbBQoSGhF
         qo2wGEU0B2joyheoOUcrEVwIjsTllvGv6Cvsmb5VopUWWwY0TKUT+dx6f6kRB4yBdll/
         jV0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=HersfMJkZd5e6DBLXP/NMgfEzYAxOgK3H+M5S2K1LU0=;
        b=Zjv+RgU/EJ4pOHExYhjNHiWlQ55kW0MTpwB2qpqFW6SnOPAgHtAMsrb6d6FyiVTMvT
         7rjS0DIwirdOmqSuZ0qS5109IuMwbS2fx9h6dHvhgtYPhVrGM7KN04otn8BtZlBZYd9k
         xcrpFbHw83f3RAeVmr7Px4Mrw9iGoSac3Ksz3juloWp8EI3X/tSHGc2Ya0Lvnsh2FZN2
         JwEkmeIavoksAiLbmyzwYRmFPVIsa07Fnc0TBtFSJeQn1Ncwe+Qa5aWGwFvZ3Te/tkwn
         qK93lCl9spMWTiEkPjtrqBJseq6sNfRuZOROg74xpIiGhBRURWPczoxWABsk3C+uS12J
         Ua1w==
X-Gm-Message-State: ANoB5pnTTw7icT0wimiZEXes1Agmrf0s+ZTD/H2mWOgoBu91CxTQWMCf
        tNSGrOgM36FibnRyyTa5JFRvrQ==
X-Google-Smtp-Source: AA0mqf6kzVSHOpKMEPw+bxW6ZPPAXtINRQBP89ZkkNPgLM8CRQuBIYUGR5ePdb9tey7NkUYEz7PZUg==
X-Received: by 2002:a2e:a305:0:b0:27a:31cc:c88 with SMTP id l5-20020a2ea305000000b0027a31cc0c88mr1350951lje.51.1670604537138;
        Fri, 09 Dec 2022 08:48:57 -0800 (PST)
Received: from eriador.lan (dzccz6yyyyyyyyyyybcwt-3.rev.dnainternet.fi. [2001:14ba:a085:4d00::8a5])
        by smtp.gmail.com with ESMTPSA id y2-20020a05651c106200b002770fb5722fsm275242ljm.123.2022.12.09.08.48.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 09 Dec 2022 08:48:56 -0800 (PST)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Stephen Boyd <sboyd@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Taniya Das <quic_tdas@quicinc.com>
Cc:     linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, Alex Elder <elder@linaro.org>
Subject: [PATCH v3 01/19] dt-bindings: clocks: qcom: rpmcc: add LN_BB_CLK_PIN clocks
Date:   Fri,  9 Dec 2022 18:48:37 +0200
Message-Id: <20221209164855.128798-2-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20221209164855.128798-1-dmitry.baryshkov@linaro.org>
References: <20221209164855.128798-1-dmitry.baryshkov@linaro.org>
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

Add pin-controlled Low-Noise BB clock definition.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 include/dt-bindings/clock/qcom,rpmcc.h | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/include/dt-bindings/clock/qcom,rpmcc.h b/include/dt-bindings/clock/qcom,rpmcc.h
index c0ad624e930e..46309c9953b2 100644
--- a/include/dt-bindings/clock/qcom,rpmcc.h
+++ b/include/dt-bindings/clock/qcom,rpmcc.h
@@ -168,5 +168,7 @@
 #define RPM_SMD_MSS_CFG_AHB_CLK		122
 #define RPM_SMD_MSS_CFG_AHB_A_CLK		123
 #define RPM_SMD_BIMC_FREQ_LOG			124
+#define RPM_SMD_LN_BB_CLK_PIN			125
+#define RPM_SMD_LN_BB_A_CLK_PIN			126
 
 #endif
-- 
2.35.1

