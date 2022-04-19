Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E0E11506B2B
	for <lists+devicetree@lfdr.de>; Tue, 19 Apr 2022 13:42:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S242738AbiDSLod (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 19 Apr 2022 07:44:33 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43718 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1351896AbiDSLmX (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 19 Apr 2022 07:42:23 -0400
Received: from mail-wr1-x431.google.com (mail-wr1-x431.google.com [IPv6:2a00:1450:4864:20::431])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B269B387B3
        for <devicetree@vger.kernel.org>; Tue, 19 Apr 2022 04:37:40 -0700 (PDT)
Received: by mail-wr1-x431.google.com with SMTP id t1so22048740wra.4
        for <devicetree@vger.kernel.org>; Tue, 19 Apr 2022 04:37:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=ngAHAx8KCTZqbA/wVhf/k9wvjiY7TwrBlQ520mj9F/4=;
        b=RWYzHRgQvZfHJo2jU1/3xQvDpndr9fLc4vmm+s1BwCsaTM5fkpaOaFXDbaldi6SvJV
         OQWvGg085wQjB0YR8W9rXIn++WOJDihmIhludfuVC25fVHl4WZLrQMmRE10yStrUegQY
         /enNo/GFtSEPSfKrqANfzwD0khRqSpjFmtS8fI77A5NvGC0u9cybPuf90RsD+vxxUKLI
         dT3nLJ18prverfHSkK7wItLWuLXzdfX47uNvJ1dpn/qTlVXbNr2+eTz2NhNlrR2dYppq
         NSU7laxJFuiA97AiDk8lC4ffozjk9OxzRlUHIGG+arVHYDbySWGBzrOEfcBLSTWiBaeO
         SKeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=ngAHAx8KCTZqbA/wVhf/k9wvjiY7TwrBlQ520mj9F/4=;
        b=xY6iNHySi1gtZVMntn1VkKE0zD/MV0usv++r8/S3R9uDHYmbGQEbOMwIfFr+S80wEA
         fAnOLcGzP49V2M2SCXrR5msyHEeas2SUuH4zgvnuaEQenqpZesypWdy0G6EBDydZV5E5
         zhnCj5z9cNHrdQi/4jXsyZvsJ7+W62bugpBsHiHMV0qcfJP8KDLEnYKA1E8D/bL8tNfF
         A3/tzyxNpGUa6lZRHcPfYIE+S0QRbp3pGxLhcEy9O8c0aQcipopX9M9ugHLVGgES/z49
         Ljx1N44qO9v2VM0IkInRaGXcBP2/8pn6dsD9/HHnLxkFqIGEspzr9ux2gcIk5nEWbB4V
         wP4g==
X-Gm-Message-State: AOAM532A7uhwbuuXpAXyQ/JGU+lojyAtA+Vs5INF5NHB5Jwv7Tbl5M7f
        3lE32WaQQjJlGILpXLqeF+kobg==
X-Google-Smtp-Source: ABdhPJzYlHv5jsgVw0JJzX41AWoasKG2ZwaufFSf+pYOjoDA/UaEVrv0D3EgneefbiktzNCqamSPyg==
X-Received: by 2002:adf:e48c:0:b0:20a:7e29:e16d with SMTP id i12-20020adfe48c000000b0020a7e29e16dmr11628539wrm.595.1650368258616;
        Tue, 19 Apr 2022 04:37:38 -0700 (PDT)
Received: from sagittarius-a.chello.ie (188-141-3-169.dynamic.upc.ie. [188.141.3.169])
        by smtp.gmail.com with ESMTPSA id bk1-20020a0560001d8100b002061d6bdfd0sm14202120wrb.63.2022.04.19.04.37.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 19 Apr 2022 04:37:38 -0700 (PDT)
From:   Bryan O'Donoghue <bryan.odonoghue@linaro.org>
To:     srinivas.kandagatla@linaro.org, robh+dt@kernel.org,
        krzk+dt@kernel.org
Cc:     alsa-devel@alsa-project.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, bryan.odonoghue@linaro.org
Subject: [PATCH v2 2/2] arm64: dts: qcom: Fix apq8016 compat string to match yaml
Date:   Tue, 19 Apr 2022 12:37:34 +0100
Message-Id: <20220419113734.3138095-3-bryan.odonoghue@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220419113734.3138095-1-bryan.odonoghue@linaro.org>
References: <20220419113734.3138095-1-bryan.odonoghue@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The documented yaml compat string for the apq8016 is
"qcom,apq8016-lpass-cpu" not "qcom,lpass-cpu-apq8016". Looking at the other
lpass compat strings the general form is "qcom,socnum-lpass-cpu".

We need to fix both the driver and dts to match.

Fixes: 3761a3618f55 ("arm64: dts: qcom: add lpass node")
Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
---
 arch/arm64/boot/dts/qcom/msm8916.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/msm8916.dtsi b/arch/arm64/boot/dts/qcom/msm8916.dtsi
index e34963505e07..452cdfbf8ef9 100644
--- a/arch/arm64/boot/dts/qcom/msm8916.dtsi
+++ b/arch/arm64/boot/dts/qcom/msm8916.dtsi
@@ -1392,7 +1392,7 @@ sound: sound@7702000 {
 
 		lpass: audio-controller@7708000 {
 			status = "disabled";
-			compatible = "qcom,lpass-cpu-apq8016";
+			compatible = "qcom,apq8016-lpass-cpu";
 
 			/*
 			 * Note: Unlike the name would suggest, the SEC_I2S_CLK
-- 
2.35.1

