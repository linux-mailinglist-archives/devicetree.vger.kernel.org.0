Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AE8894FB69E
	for <lists+devicetree@lfdr.de>; Mon, 11 Apr 2022 10:59:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1344025AbiDKJCI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 11 Apr 2022 05:02:08 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43948 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1344014AbiDKJCG (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 11 Apr 2022 05:02:06 -0400
Received: from mail-ed1-x52f.google.com (mail-ed1-x52f.google.com [IPv6:2a00:1450:4864:20::52f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9FEFD3EB8F
        for <devicetree@vger.kernel.org>; Mon, 11 Apr 2022 01:59:50 -0700 (PDT)
Received: by mail-ed1-x52f.google.com with SMTP id c64so5318494edf.11
        for <devicetree@vger.kernel.org>; Mon, 11 Apr 2022 01:59:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=avk57uBtr+IXFGoDGCejGYQLJ/Mrk+YHjjSKlOtbCtI=;
        b=bLzg0xpc4DZyHNbBAHztGfeDKzWe5zvpuYnmTDOZp6BJ7yWpcKCozgwALfZKRfrbyo
         ZP6tcG1Z4tLdsCySpPUc4trLonXETILH9guYK6mxyMU8Mtn4j6rb/SDW0L9c8Y5FegIY
         r08ry3UHYqJkXv7lH54G59AemofyvrIxMfPV6aWOlLoergqSPwudR47V15qasLQRaQPl
         hoRMNO357rPFzOAWc8FwN9Ih/h+u0SePhtGNbBTTkZhi8k+PRn7KK5MxbuFZKAj8TkVC
         ksVPw+MOdYm9gpLzuqdU8ZTViIqu3H0pnJ9QcG6fgP87rc8S6OFOnpxyrpUAeweTv3pZ
         tikQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=avk57uBtr+IXFGoDGCejGYQLJ/Mrk+YHjjSKlOtbCtI=;
        b=adu6n+afxySgdSOWB4gZTGY11d9olXgy6S8mAxWuZFsULG/gFOPrL8blm+ewjicDlg
         ogVik1a6bEeOh7aK2DBz9U0D4Kbgwn6h1xMRstfar+Z3H61cq12GZcTUbzKsBvgV77Xd
         birSnwrwV4YfkBB46WffsNHir072opdkQ3LXGOv+doMatlxTdeg6+MK4eSTc2NQfYMIZ
         wWFlvWY7KL/bjZFDeELSDcekBOMdNnHvkKta3AifJ2k8sqq4q5uzUEisOTYBmlQS7pO6
         lpjf/j3nyLuDZH5XDMdUXhtI0HasQDc+GYVRRUKKQ+CTN0HFBqd+4K9kw6m++dg/u8j1
         5hqg==
X-Gm-Message-State: AOAM532HqSm27vIBrunLFfG3Tq2tbETBawsXrociQACaWuVFuJtVxfQi
        rwvSmjreOBSSlESbRmD2aq2mtQ==
X-Google-Smtp-Source: ABdhPJwGujOXdkBsRPkDP3qSxhCcF+A+gj89YIuUabpEI/GB0BphT+Eif2UthLDzCmS/vLBETdUe+A==
X-Received: by 2002:a05:6402:4391:b0:419:2f2d:a1da with SMTP id o17-20020a056402439100b004192f2da1damr32112124edc.298.1649667588860;
        Mon, 11 Apr 2022 01:59:48 -0700 (PDT)
Received: from localhost.localdomain (xdsl-188-155-201-27.adslplus.ch. [188.155.201.27])
        by smtp.gmail.com with ESMTPSA id x17-20020a170906297100b006e49a9535f3sm11705416ejd.114.2022.04.11.01.59.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 11 Apr 2022 01:59:48 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Georgi Djakov <djakov@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Vamsi krishna Lanka <quic_vamslank@quicinc.com>,
        linux-arm-msm@vger.kernel.org, linux-pm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 2/4] ARM: dts: qcom: sdx55: remove wrong unit address from RPMH RSC clocks
Date:   Mon, 11 Apr 2022 10:59:33 +0200
Message-Id: <20220411085935.130072-2-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220411085935.130072-1-krzysztof.kozlowski@linaro.org>
References: <20220411085935.130072-1-krzysztof.kozlowski@linaro.org>
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

The clock controller of RPMH RSC does not have 'reg' property, so should
not have unit address.

Fixes: bae2f5979c6e ("ARM: dts: qcom: Add SDX65 platform and MTP board support")
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm/boot/dts/qcom-sdx65.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/qcom-sdx65.dtsi b/arch/arm/boot/dts/qcom-sdx65.dtsi
index 796641d30e06..0c3f93603adc 100644
--- a/arch/arm/boot/dts/qcom-sdx65.dtsi
+++ b/arch/arm/boot/dts/qcom-sdx65.dtsi
@@ -202,7 +202,7 @@ apps_rsc: rsc@17830000 {
 				<WAKE_TCS    2>,
 				<CONTROL_TCS 1>;
 
-			rpmhcc: clock-controller@1 {
+			rpmhcc: clock-controller {
 				compatible = "qcom,sdx65-rpmh-clk";
 				#clock-cells = <1>;
 				clock-names = "xo";
-- 
2.32.0

