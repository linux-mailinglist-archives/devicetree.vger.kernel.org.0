Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E9B9A666386
	for <lists+devicetree@lfdr.de>; Wed, 11 Jan 2023 20:20:24 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234315AbjAKTUU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 11 Jan 2023 14:20:20 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34144 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230417AbjAKTUN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 11 Jan 2023 14:20:13 -0500
Received: from mail-lj1-x22d.google.com (mail-lj1-x22d.google.com [IPv6:2a00:1450:4864:20::22d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 889BBCDF
        for <devicetree@vger.kernel.org>; Wed, 11 Jan 2023 11:20:12 -0800 (PST)
Received: by mail-lj1-x22d.google.com with SMTP id s22so17053980ljp.5
        for <devicetree@vger.kernel.org>; Wed, 11 Jan 2023 11:20:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=UcTrQNFFbWCL7GgAo7RNP0TzY01GvFcQgkQKLT8ew64=;
        b=bUWsUOgM+3gkrkirbO/qNZC62lWFtdVL4LkLhPFIxC9/yMmj584+7CADol/V9AxloD
         Ta+P9UTZGkldArBHe8LJga7oyKjTNhkqyHWev1hjcWgQwDaFes9dVItKVReOy2i9j9bx
         GA/2Ao8S6LHJ4vGSGOeQS9qE7iZlqHzNoeaM2ZRyLkx9oTakzS1HlG3J57+0uWrByIa8
         IPZCbC+i84msKsYkWlARznbu6bStbzWAaHymXHXVCn9SCXRAN4wa1ylcEX6G7cq3qF+6
         T8DfK1+4RBdyFnrwrgsn5m2lA6y2SARFw110wE83QGhki6MSDtt53LuQ/AtCSHirrlX0
         hDWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=UcTrQNFFbWCL7GgAo7RNP0TzY01GvFcQgkQKLT8ew64=;
        b=14n0AaN0U+D1mCmYzY9U8KIJyc9xdOnsn0yEz3+FKDT4vGD0ae/9CuefncZxKlf5Qh
         WmjySn3HRiNfP+x3T1Q7SX0jSOwfxdXLfvFdPutp4/42Hjpw3XkgQHiRWn8LPnj2bO0r
         sCX4RpnuE/fhOlWYDAqH9Nq7kpM8PJrAf3/l8hUzT/uHpnPFdMXKdmNaHM7mJloaMWWJ
         HCHApDm6rQxridRXLrttiHtr8r9Zd9FIoIFs4bd0VLH6NuptrIYaS2WOjZKLo9nfrZMk
         0vWYm5n+fh2/cz9WxPRYta030mLsOofuBuA4jnTpyOGj7tIErXW6xi66/MXoRkylFfnO
         fuYA==
X-Gm-Message-State: AFqh2krPeXcB2XhigsNpyxma/yIqkVA+5zmou8dDqk2G+W2aamTd74bZ
        rjJQiJRngLbOktaIoTu2+VEgcg==
X-Google-Smtp-Source: AMrXdXvgTsZRC1nttDyFGKiNVJRn9CeLMjX5AIx6m0iC+pBN/TNNK6riowDi1cP+c7koqjmv7VRS2A==
X-Received: by 2002:a05:651c:2399:b0:27f:f184:6ef9 with SMTP id bk25-20020a05651c239900b0027ff1846ef9mr10877432ljb.10.1673464810896;
        Wed, 11 Jan 2023 11:20:10 -0800 (PST)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id bj36-20020a2eaaa4000000b0027ff2fabcb5sm1807787ljb.104.2023.01.11.11.20.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Jan 2023 11:20:10 -0800 (PST)
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
        devicetree@vger.kernel.org
Subject: [PATCH 05/13] clk: qcom: cpu-8996: skip ACD init if the setup is valid
Date:   Wed, 11 Jan 2023 22:19:56 +0300
Message-Id: <20230111192004.2509750-6-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230111192004.2509750-1-dmitry.baryshkov@linaro.org>
References: <20230111192004.2509750-1-dmitry.baryshkov@linaro.org>
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

Check whether L2 registers contain correct values and skip programming
if they are valid. This follows the code present downstream.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/clk/qcom/clk-cpu-8996.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/clk/qcom/clk-cpu-8996.c b/drivers/clk/qcom/clk-cpu-8996.c
index 0e0c00d44c6f..7e5246ca7e7f 100644
--- a/drivers/clk/qcom/clk-cpu-8996.c
+++ b/drivers/clk/qcom/clk-cpu-8996.c
@@ -472,10 +472,15 @@ static void __iomem *base;
 static void qcom_cpu_clk_msm8996_acd_init(void __iomem *base)
 {
 	u64 hwid;
+	u32 val;
 	unsigned long flags;
 
 	spin_lock_irqsave(&qcom_clk_acd_lock, flags);
 
+	val = kryo_l2_get_indirect_reg(L2ACDTD_REG);
+	if (val == 0x00006a11)
+		goto out;
+
 	hwid = read_cpuid_mpidr() & CPU_AFINITY_MASK;
 
 	kryo_l2_set_indirect_reg(L2ACDTD_REG, 0x00006a11);
@@ -492,6 +497,7 @@ static void qcom_cpu_clk_msm8996_acd_init(void __iomem *base)
 		writel(0xf, base + PERFCL_REG_OFFSET + SSSCTL_OFFSET);
 	}
 
+out:
 	spin_unlock_irqrestore(&qcom_clk_acd_lock, flags);
 }
 
-- 
2.30.2

