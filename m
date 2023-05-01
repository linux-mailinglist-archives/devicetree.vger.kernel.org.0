Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C95BA6F3053
	for <lists+devicetree@lfdr.de>; Mon,  1 May 2023 12:59:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232328AbjEAK65 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 1 May 2023 06:58:57 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:32820 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232327AbjEAK6y (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 1 May 2023 06:58:54 -0400
Received: from mail-pg1-x52c.google.com (mail-pg1-x52c.google.com [IPv6:2607:f8b0:4864:20::52c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 414E810D1
        for <devicetree@vger.kernel.org>; Mon,  1 May 2023 03:58:53 -0700 (PDT)
Received: by mail-pg1-x52c.google.com with SMTP id 41be03b00d2f7-528dd896165so979977a12.2
        for <devicetree@vger.kernel.org>; Mon, 01 May 2023 03:58:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1682938732; x=1685530732;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=jOc5TkBBFvhPYDtl6ktWA3NEqkqqyBYzt0eDjS+Sk2A=;
        b=OLxTFE+/bHywEhGnTp0KfaxlPToVPdkVvcxEKvTctVIEVcJ/+CEwwcB/FOgPdaPoyC
         mrlb17WqnqVIxwUt/W0bDwZWotaHH9xwvmZTYagJDqjx/z7ZCSqgWkkHLGxCUJERqayC
         s3qPgGrxNrXEAXR2BIc0GAWjPSmf7CZzwxT8NRQFTqVcPzQ/tRZMwJQSjuHuQm8SUY47
         1LP8IqqwUD/SmF5q25gmvkf1GEhmCsEU80t5ohvkphdyq6mwe9XsJzf4Zhu80YaG2oIW
         gK91bD4kzDY5pvaz9zBXb2CFaOwagEsKjfDhXr/jkAUoAONh9RlRXK5ZH9lAqmmAGlN6
         eu2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682938732; x=1685530732;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=jOc5TkBBFvhPYDtl6ktWA3NEqkqqyBYzt0eDjS+Sk2A=;
        b=gYsBqFS4EWb6pRyLNnic6kXVk/JCXwXM+bHiq9GnVGfmYJcXm6WJ51MEIyWaB4g+7W
         HVhD3OziL1TVwWPHs8TsTzs8IDLSU+fGIQL1ya7hUoTAEQAGnCS5P5hihQDJ6f9YRKOn
         VBxWABUsN0ZYkgsDBOK46uVF3VN320iHSnjyKgca13B+Y5kdW8VZ5uzNXGsPihsKux7E
         S404irp3zn4rMrL4C+E1ERl0834DC1p/10v9j3AntwYo5najUCzLzH+sdz3S1+Rn2UXS
         Mp1W523QgJYd/owwOmLBtB66aPBsFOkSGuK1wv70+W4REsAtpFP8wlrcxyDOL2cTVrKt
         G+1A==
X-Gm-Message-State: AC+VfDxvtG0aeGBnCBgqMaxd4l9EcLKLlk8uegll1UCZf3eN0FGnGnaN
        yYabkci63Bfm9/NiRufP6v/auA==
X-Google-Smtp-Source: ACHHUZ5kWIDXe2cVbE/Bd06XNCjBzznw8QhrgiL632m4i3Uexc/PgFAvw+SP6c1fY13CnkxyOv+0ZQ==
X-Received: by 2002:a17:902:d4c7:b0:1aa:e6ff:d978 with SMTP id o7-20020a170902d4c700b001aae6ffd978mr6779153plg.48.1682938732570;
        Mon, 01 May 2023 03:58:52 -0700 (PDT)
Received: from localhost.localdomain ([2401:4900:1f3b:58fa:39f6:37e1:bb9a:a094])
        by smtp.gmail.com with ESMTPSA id c24-20020a170902849800b001a50ae08284sm17569516plo.301.2023.05.01.03.58.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 01 May 2023 03:58:52 -0700 (PDT)
From:   Bhupesh Sharma <bhupesh.sharma@linaro.org>
To:     linux-arm-msm@vger.kernel.org
Cc:     agross@kernel.org, andersson@kernel.org, konrad.dybcio@linaro.org,
        linux-kernel@vger.kernel.org, bhupesh.linux@gmail.com,
        bhupesh.sharma@linaro.org, robh+dt@kernel.org,
        krzysztof.kozlowski@linaro.org, devicetree@vger.kernel.org
Subject: [PATCH v2 3/3] arm64: dts: qcom: qrb4210-rb2: Enable aDSP and cDSP remoteproc nodes
Date:   Mon,  1 May 2023 16:28:32 +0530
Message-Id: <20230501105832.1185477-4-bhupesh.sharma@linaro.org>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20230501105832.1185477-1-bhupesh.sharma@linaro.org>
References: <20230501105832.1185477-1-bhupesh.sharma@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Enable the aDSP and cDSP remoteproc nodes on Qualcomm QRB4210 RB2 board.

Signed-off-by: Bhupesh Sharma <bhupesh.sharma@linaro.org>
---
 arch/arm64/boot/dts/qcom/qrb4210-rb2.dts | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/qrb4210-rb2.dts b/arch/arm64/boot/dts/qcom/qrb4210-rb2.dts
index bff6ba1d689f..3ab46499d3fa 100644
--- a/arch/arm64/boot/dts/qcom/qrb4210-rb2.dts
+++ b/arch/arm64/boot/dts/qcom/qrb4210-rb2.dts
@@ -34,6 +34,16 @@ &qupv3_id_0 {
 	status = "okay";
 };
 
+&remoteproc_adsp {
+	status = "okay";
+	firmware-name = "qcom/sm6115/adsp.mdt";
+};
+
+&remoteproc_cdsp {
+	status = "okay";
+	firmware-name = "qcom/sm6115/cdsp.mdt";
+};
+
 &rpm_requests {
 	regulators {
 		compatible = "qcom,rpm-pm6125-regulators";
-- 
2.38.1

