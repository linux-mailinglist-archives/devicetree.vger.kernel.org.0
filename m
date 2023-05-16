Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 17BB470473A
	for <lists+devicetree@lfdr.de>; Tue, 16 May 2023 09:59:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231486AbjEPH7d (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 16 May 2023 03:59:33 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57270 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231530AbjEPH7a (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 16 May 2023 03:59:30 -0400
Received: from mail-pl1-x632.google.com (mail-pl1-x632.google.com [IPv6:2607:f8b0:4864:20::632])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E6C6149DC
        for <devicetree@vger.kernel.org>; Tue, 16 May 2023 00:59:27 -0700 (PDT)
Received: by mail-pl1-x632.google.com with SMTP id d9443c01a7336-1aad5245571so94986725ad.1
        for <devicetree@vger.kernel.org>; Tue, 16 May 2023 00:59:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1684223967; x=1686815967;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=e/Vr1VrfFDgER7ZvfIYiWcEUpN45WoK7FIASNi3fnLM=;
        b=CgvzS+P3X3MERJa9EOXCYLt0dg3TvlF7Gj4ZmvhC24UGgeeeeWdcTrsX2/isQOcW8T
         mtbFe8hi+zJAGpcBTaJjWDC/x9nA/6EpTQUhc3F3fj+KMiAbXcjAtghcMHJCFAqropk8
         rSGpXlTNmWEhnFM78pVAJXGEng/nCWfJHrxCW1XTkiD6V0/LbCjzNbR75dcITQZu7pkp
         m++Z9vkkXlQOOJXu6vmLBkhok4B7bLgD944G8iVZ2RzQCmhvIQ/ZL4eJyYKD4XpQso4N
         QtGm6f3hUq8+YvfU8D8Jb3JhRCAxRJhdRBDq+0bBNbt7HOD1UAxa/2lktd2n0tAiardt
         /VHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684223967; x=1686815967;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=e/Vr1VrfFDgER7ZvfIYiWcEUpN45WoK7FIASNi3fnLM=;
        b=a1DaHQWGzwb3hKvIWsDdpghCJRTaMksLTjj4mSTw8cHf42CCnt8Zht0sKhIvO5uxyT
         bL3/RzZ/E77WZT1/WXk5UX/tqQZPf7RJANqxCnpoVsFMh3QP2019YXfFj3HlWwq4ir5P
         1R3IjcfMMras3zSY/A0BbfLgGHGE4lVJ3SkMaeA4HJ0SJNJaBASlwixfzqo1lhlbD4Jf
         jaNOQHjJ5qHydxqvdfDqyIq8EUoCnnDJha2NwFSmOCmdswUjDEOqT0qQslOHNQDDapEF
         Ah89J4XBKq5DiQvAqo6G2nl1KdnqZZpGAEgZmBQS2fwM6c91Ig+leyM6MAD+eO2vFr45
         CGPg==
X-Gm-Message-State: AC+VfDyclcwcus9hoNyYhE6HhOhL65C4jukkXG9Zl2r1H477mr+YaTB7
        zqkh5Hvc7zb6ZRiqH8AJ0BBYNw==
X-Google-Smtp-Source: ACHHUZ5N8kiBkMolOzjgeBzPVizuVb2dadk8Fz6kf2vERXui0GySY3/b1R+jdQIIc3UuWqncFtdxdA==
X-Received: by 2002:a17:902:a584:b0:1aa:f173:2892 with SMTP id az4-20020a170902a58400b001aaf1732892mr798873plb.57.1684223967317;
        Tue, 16 May 2023 00:59:27 -0700 (PDT)
Received: from localhost.localdomain ([2401:4900:1c60:6bed:62ca:2e52:e0c5:d0cb])
        by smtp.gmail.com with ESMTPSA id cl16-20020a17090af69000b002532d74fb59sm469725pjb.22.2023.05.16.00.59.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 16 May 2023 00:59:27 -0700 (PDT)
From:   Bhupesh Sharma <bhupesh.sharma@linaro.org>
To:     linux-arm-msm@vger.kernel.org
Cc:     agross@kernel.org, andersson@kernel.org, konrad.dybcio@linaro.org,
        linux-kernel@vger.kernel.org, bhupesh.linux@gmail.com,
        bhupesh.sharma@linaro.org, robh+dt@kernel.org,
        krzysztof.kozlowski@linaro.org, devicetree@vger.kernel.org
Subject: [PATCH v4 3/3] arm64: dts: qcom: qrb4210-rb2: Enable aDSP and cDSP remoteproc nodes
Date:   Tue, 16 May 2023 13:29:08 +0530
Message-Id: <20230516075908.2323372-4-bhupesh.sharma@linaro.org>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20230516075908.2323372-1-bhupesh.sharma@linaro.org>
References: <20230516075908.2323372-1-bhupesh.sharma@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Enable the aDSP and cDSP remoteproc nodes on Qualcomm QRB4210 RB2 board.

Signed-off-by: Bhupesh Sharma <bhupesh.sharma@linaro.org>
---
 arch/arm64/boot/dts/qcom/qrb4210-rb2.dts | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/qrb4210-rb2.dts b/arch/arm64/boot/dts/qcom/qrb4210-rb2.dts
index abea44fd369d..5cbca0e4ec90 100644
--- a/arch/arm64/boot/dts/qcom/qrb4210-rb2.dts
+++ b/arch/arm64/boot/dts/qcom/qrb4210-rb2.dts
@@ -34,6 +34,18 @@ &qupv3_id_0 {
 	status = "okay";
 };
 
+&remoteproc_adsp {
+	firmware-name = "qcom/qrb4210/adsp.mbn";
+
+	status = "okay";
+};
+
+&remoteproc_cdsp {
+	firmware-name = "qcom/qrb4210/cdsp.mbn";
+
+	status = "okay";
+};
+
 &rpm_requests {
 	regulators {
 		compatible = "qcom,rpm-pm6125-regulators";
-- 
2.38.1

