Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E83216F7E4A
	for <lists+devicetree@lfdr.de>; Fri,  5 May 2023 09:58:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231485AbjEEH6I (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 5 May 2023 03:58:08 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41756 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231447AbjEEH5z (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 5 May 2023 03:57:55 -0400
Received: from mail-pf1-x42d.google.com (mail-pf1-x42d.google.com [IPv6:2607:f8b0:4864:20::42d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A837E18166
        for <devicetree@vger.kernel.org>; Fri,  5 May 2023 00:57:54 -0700 (PDT)
Received: by mail-pf1-x42d.google.com with SMTP id d2e1a72fcca58-6439d505274so369684b3a.0
        for <devicetree@vger.kernel.org>; Fri, 05 May 2023 00:57:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1683273474; x=1685865474;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=GD6YbDZJJDCG3Q5EdUcKmwfee5oU9TXm3B1yJ9ZVarQ=;
        b=N1TugOu6fhexCXgNCR5Maq3QrUAZ66h96UWDhvmdBaRm7Ua3+mAADc7WA+HKuk2fSq
         IlZdjnIq6SiBa8G33g+2c/DHK47vfAvA8YQQR0eF4eAXaA9lpKf7K6hAIW6swx6EwMvN
         rFvASjyBhqRRb90KTXKESqI0rBcsJ0cvtiGpis7DAQsXxyIgN+2WIJ+i57EnNwbkdCu/
         jPSHyvBxAqdqL3ENIPHEdB/2/EDmzhx5Q0MB+x76S7zh7VogpPs4ziVbPpVbTuZB21jv
         bNVgX/wPL5k86SSIkRn9A0e32BQg1mxc1KFIj+5u5A2RW6pWZDlnqOjOgbxq+oIdwfhZ
         TYfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683273474; x=1685865474;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=GD6YbDZJJDCG3Q5EdUcKmwfee5oU9TXm3B1yJ9ZVarQ=;
        b=VTY5xC/t6yQrP3Avb4oNeMZ1MlQF25BuWaZ5wZmHgdKtKYy4+6uZu4jPE00LXVgldA
         5LDqXjx7WO3hB9Y+oZyZLNAwgElYvcyHHaDhzcFBeLrmO9TmYmYzHYRqnsjVc6xQOUAM
         qabH9cxn3qrZM2amIMqKjYPQCSdzNlzfmQuJIkCPf/Qo/CkCNC24S2z+evLADHFNE8GG
         8XHOYSxP93MGixHE09gG4ehy2pUQpK7xAkOIgSpi2HxMYjJ+IIgHQvd7c4kxCM+ZlS22
         9KjKPRTgEkhcYm/HXvWsCKXBjtT7V60RQJ29MlOUdQ+e12TIiEJg8rSFJyEunj+ypcGl
         IMdQ==
X-Gm-Message-State: AC+VfDwcMuAjZIq8U2wLa1X7Q/+czFiFKKn/0KRsb1fPNOhTSLCHhClE
        fXjUkF2z37lY1D/T2C7FguIhmQ==
X-Google-Smtp-Source: ACHHUZ58rGOnzG8XteNveNsjh99imnsda89PwBgCattqqQeSOK7NDttTHPHxNTkEnvAFf11gZ2caTg==
X-Received: by 2002:a05:6a00:2401:b0:63d:3339:e967 with SMTP id z1-20020a056a00240100b0063d3339e967mr1299592pfh.19.1683273474272;
        Fri, 05 May 2023 00:57:54 -0700 (PDT)
Received: from localhost.localdomain ([223.233.65.180])
        by smtp.gmail.com with ESMTPSA id p17-20020aa78611000000b006242f4a8945sm988873pfn.182.2023.05.05.00.57.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 05 May 2023 00:57:53 -0700 (PDT)
From:   Bhupesh Sharma <bhupesh.sharma@linaro.org>
To:     linux-arm-msm@vger.kernel.org
Cc:     agross@kernel.org, andersson@kernel.org, konrad.dybcio@linaro.org,
        linux-kernel@vger.kernel.org, bhupesh.linux@gmail.com,
        bhupesh.sharma@linaro.org, robh+dt@kernel.org,
        krzysztof.kozlowski@linaro.org, devicetree@vger.kernel.org
Subject: [PATCH v3 3/3] arm64: dts: qcom: qrb4210-rb2: Enable aDSP and cDSP remoteproc nodes
Date:   Fri,  5 May 2023 13:23:54 +0530
Message-Id: <20230505075354.1634547-4-bhupesh.sharma@linaro.org>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20230505075354.1634547-1-bhupesh.sharma@linaro.org>
References: <20230505075354.1634547-1-bhupesh.sharma@linaro.org>
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
 arch/arm64/boot/dts/qcom/qrb4210-rb2.dts | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/qrb4210-rb2.dts b/arch/arm64/boot/dts/qcom/qrb4210-rb2.dts
index abea44fd369d..3e8ace0ceebc 100644
--- a/arch/arm64/boot/dts/qcom/qrb4210-rb2.dts
+++ b/arch/arm64/boot/dts/qcom/qrb4210-rb2.dts
@@ -34,6 +34,18 @@ &qupv3_id_0 {
 	status = "okay";
 };
 
+&remoteproc_adsp {
+	firmware-name = "qcom/qrb4210-rb2/adsp.mbn";
+
+	status = "okay";
+};
+
+&remoteproc_cdsp {
+	firmware-name = "qcom/qrb4210-rb2/cdsp.mbn";
+
+	status = "okay";
+};
+
 &rpm_requests {
 	regulators {
 		compatible = "qcom,rpm-pm6125-regulators";
-- 
2.38.1

