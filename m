Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E4B667306A2
	for <lists+devicetree@lfdr.de>; Wed, 14 Jun 2023 20:05:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235141AbjFNSEo (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 14 Jun 2023 14:04:44 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37418 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232905AbjFNSEl (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 14 Jun 2023 14:04:41 -0400
Received: from mail-lf1-x12a.google.com (mail-lf1-x12a.google.com [IPv6:2a00:1450:4864:20::12a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 52E26123
        for <devicetree@vger.kernel.org>; Wed, 14 Jun 2023 11:04:40 -0700 (PDT)
Received: by mail-lf1-x12a.google.com with SMTP id 2adb3069b0e04-4f762b3227dso1736895e87.1
        for <devicetree@vger.kernel.org>; Wed, 14 Jun 2023 11:04:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1686765878; x=1689357878;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=SD+82Kp64qdWpl/p0nHwxIb/l/7wz0DuQnwuSSdR/H4=;
        b=xGX6Q31ulUGAnsn2fKldWkIYkSzXIzb46Mu6lLMTPPQlaZknoQ8zhJP2yPwsvph7/z
         uNkCytLdjoNRKQwbfZa1bM4892sMAuIdGA9313BH8SViJ1GyQTvIg6Iypw0vJ9B9yh4S
         p1Da85LFqYnKP5qCQcqKG2p7Rg/ebI4jj7mzTZzn0cIVUszHBwiaDD/bi7WLNS4NOWSJ
         rD2XhLLU+oN/X00ibEZKG/l7z7+Il7PXDwlU4sc+KQiLGRvyeSWoPC/1ePgf7aWP4BJw
         748uzd9FXWSqMoSQm9Sev8KT+zsGWUyytAXcYo8M3Hk+p4rl2Ywfen8du2O7u+woFVvy
         EdLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686765878; x=1689357878;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=SD+82Kp64qdWpl/p0nHwxIb/l/7wz0DuQnwuSSdR/H4=;
        b=cE40bY8NU1XrMgePsSIu+Fj3mgc+Ny+b7R5A689FAoVYWuIuA7V4cFE+8mTmKlC3XK
         8Lz5EQsYYjGUsboWlA/zgBZdGbaUBhofjQH5pL7VqVKSPtZKGS8EhtRra2gmPAG/APHt
         J/BBpFE4NcjM5WVG/boCZW3K02DMXwCoop8PFf7YfjqPYsi7TFLYKEokrTJicDvwLI3l
         cE/eNHI0UmtTiOGso6AWZozLeWQAsTiEI67Myni7IhCoxMX1KApDU0MX0spjNfPG+nnl
         dXZDmDIErDYKCAZoHSvfVomQ/HGg6R/LAK7gYto2f95M5QNA8m4unC+MCsCRdUBsjtNx
         Gllg==
X-Gm-Message-State: AC+VfDx688QOKZxgoU0VwyOqmbB08F3UuFSZSAO1OMWM8N35oDzISeCz
        vNZmh8rdOeiB1tOrZoDXBMJJ5Dn+tJXbVlh2o1A=
X-Google-Smtp-Source: ACHHUZ5WQyhpnGRMbkR5GH2mgWb9utVT/r0hi9LrefhoCxJTPDwaTFX0mmeVwMVNh/mf+9SY/fSarQ==
X-Received: by 2002:a19:9201:0:b0:4f3:89e6:23c0 with SMTP id u1-20020a199201000000b004f389e623c0mr871426lfd.31.1686765878627;
        Wed, 14 Jun 2023 11:04:38 -0700 (PDT)
Received: from [192.168.1.101] (abyj190.neoplus.adsl.tpnet.pl. [83.9.29.190])
        by smtp.gmail.com with ESMTPSA id l18-20020a19c212000000b004eff1f7f206sm2224053lfc.9.2023.06.14.11.04.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Jun 2023 11:04:38 -0700 (PDT)
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
Date:   Wed, 14 Jun 2023 20:04:22 +0200
Subject: [PATCH v6 03/22] soc: qcom: smd-rpm: Use tabs for defines
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20230526-topic-smd_icc-v6-3-263283111e66@linaro.org>
References: <20230526-topic-smd_icc-v6-0-263283111e66@linaro.org>
In-Reply-To: <20230526-topic-smd_icc-v6-0-263283111e66@linaro.org>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1686765872; l=691;
 i=konrad.dybcio@linaro.org; s=20230215; h=from:subject:message-id;
 bh=7uAPa6YDjXHLJZjqpcpTS8PIWFtwDRP9qtCSKC7URyY=;
 b=ZgJXoVFm/guIPESYFf7R2wG6/rp8u1VbGd9EYvhUNj8fEWrZpRvKXnvnQIYEYBW2u5fSrtpM6
 EqBWKWHo/b1CBP0sgS8z/t3jZ0QKbXygUfqDK5j21uPJDXNrHsQzL6k
X-Developer-Key: i=konrad.dybcio@linaro.org; a=ed25519;
 pk=iclgkYvtl2w05SSXO5EjjSYlhFKsJ+5OSZBjOkQuEms=
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Use tabs for defines to make things spaced consistently.

Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
---
 include/linux/soc/qcom/smd-rpm.h | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/include/linux/soc/qcom/smd-rpm.h b/include/linux/soc/qcom/smd-rpm.h
index e468f94fa323..99499e4b080e 100644
--- a/include/linux/soc/qcom/smd-rpm.h
+++ b/include/linux/soc/qcom/smd-rpm.h
@@ -4,8 +4,8 @@
 
 struct qcom_smd_rpm;
 
-#define QCOM_SMD_RPM_ACTIVE_STATE        0
-#define QCOM_SMD_RPM_SLEEP_STATE         1
+#define QCOM_SMD_RPM_ACTIVE_STATE	0
+#define QCOM_SMD_RPM_SLEEP_STATE	1
 #define QCOM_SMD_RPM_STATE_NUM		2
 
 /*

-- 
2.41.0

