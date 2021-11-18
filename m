Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4A233455BD2
	for <lists+devicetree@lfdr.de>; Thu, 18 Nov 2021 13:49:21 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S244069AbhKRMwN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 18 Nov 2021 07:52:13 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48398 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S244371AbhKRMvo (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 18 Nov 2021 07:51:44 -0500
Received: from mail-wr1-x42d.google.com (mail-wr1-x42d.google.com [IPv6:2a00:1450:4864:20::42d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 20A60C061210
        for <devicetree@vger.kernel.org>; Thu, 18 Nov 2021 04:48:28 -0800 (PST)
Received: by mail-wr1-x42d.google.com with SMTP id u1so11277415wru.13
        for <devicetree@vger.kernel.org>; Thu, 18 Nov 2021 04:48:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=aVyUtXcdz7QxHPyS2w5eETDfqlriTQ4tFPGsRNeCcvk=;
        b=jsGazaMauv2TecWWXLkP6S8jRjHZznKOjVjOeVhS/pU/XPUt8hkqz7OLE8r4CZ1Qas
         V/Jtg6IoYtIN50bm4AmEim5ZgKnuvi/FOX2TLByiht1AonUE1RpI26Xe2uMWsHXxiy5V
         H3ovhF1ZNBIOSeaievDIj9Xz5PFIg79LTClu54/9uiw42Uhmg+U4RZQic0CfPbgaP0O2
         bsal2fwyyWD4v2as0Pc01xGo+yH2yeGZ7GNDfCSb3QpsX9ttLOQ/m4G/tSZPkrBqzqw1
         Ob9JlSBiYabb/7drCJNoTJfcLH3QAT4/66mZQStuAYZbjgbxp4WNtftKucjXGaSJ18V+
         hkNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=aVyUtXcdz7QxHPyS2w5eETDfqlriTQ4tFPGsRNeCcvk=;
        b=E1cIVHrunJH7wL/dh55vi6X7ey1FE+42fv/rqIeMXXX1q8NANo9ELQV3ghqR4vEA8h
         1ZEzhDQXfVZFhV/7BXYBJ3ISYpa4QWXCaslyEqOyPINfk59vuPMcr6WDXQ9wc0sqGB1v
         nUiLyyCWSIyOrw43qGKXe+bC7luO3P/A/7niGkk7G2SOndeJHYKFcQ6Bhdq8OsLHAvH1
         PHQO02EXNn0yHsgLTwkXN55GOZ41V9PTBKIF/4xt8XSOlmtmUCw6Hdp46U/9OSLaduP1
         lsShyu7Ce4/hAO/gjMDtZLBtYFnOoIgAJ3bizZmaQPz1dgHFZKF8rcq/Wr6AAIgL7TNU
         8T3A==
X-Gm-Message-State: AOAM533UFm2ACdQdYygjr7RzmhaXuQnj2i6eGgfDyaARR5dtbMFmK5KT
        Ak6X/4WBnX4d7sXnVKJQeFQxjA==
X-Google-Smtp-Source: ABdhPJy2f9DtCMg4OcWFm26oWicRoIZWvNHJN5PRI5t5tNCVFSVpy0va7aFjALpPoOB96q+7/vwBVw==
X-Received: by 2002:a05:6000:2a2:: with SMTP id l2mr30092829wry.110.1637239706601;
        Thu, 18 Nov 2021 04:48:26 -0800 (PST)
Received: from xps7590.. (freifunk-gw.bsa1-cpe1.syseleven.net. [176.74.57.43])
        by smtp.gmail.com with ESMTPSA id h2sm2955635wrz.23.2021.11.18.04.48.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 18 Nov 2021 04:48:26 -0800 (PST)
From:   Robert Foss <robert.foss@linaro.org>
To:     agross@kernel.org, bjorn.andersson@linaro.org,
        robert.foss@linaro.org, todor.too@gmail.com, mchehab@kernel.org,
        robh+dt@kernel.org, angelogioacchino.delregno@somainline.org,
        linux-arm-msm@vger.kernel.org, linux-media@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Andrey Konovalov <andrey.konovalov@linaro.org>,
        Stephan Gerhold <stephan@gerhold.net>
Subject: [PATCH v3 3/4] arm64: dts: qcom: apq8016-sbc: Remove clock-lanes property from &camss node
Date:   Thu, 18 Nov 2021 13:48:18 +0100
Message-Id: <20211118124819.1902427-4-robert.foss@linaro.org>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20211118124819.1902427-1-robert.foss@linaro.org>
References: <20211118124819.1902427-1-robert.foss@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The clock-lanes property is no longer used as it is not programmable by
the CSIPHY hardware block of Qcom ISPs and should be removed.

Signed-off-by: Robert Foss <robert.foss@linaro.org>
---
 arch/arm64/boot/dts/qcom/apq8016-sbc.dts | 2 --
 1 file changed, 2 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/apq8016-sbc.dts b/arch/arm64/boot/dts/qcom/apq8016-sbc.dts
index a5320d6d30e7..b7a578aafcbb 100644
--- a/arch/arm64/boot/dts/qcom/apq8016-sbc.dts
+++ b/arch/arm64/boot/dts/qcom/apq8016-sbc.dts
@@ -253,7 +253,6 @@ ports {
 		port@0 {
 			reg = <0>;
 			csiphy0_ep: endpoint {
-				clock-lanes = <1>;
 				data-lanes = <0 2>;
 				remote-endpoint = <&ov5640_ep>;
 				status = "okay";
@@ -289,7 +288,6 @@ camera_rear@3b {
 
 		port {
 			ov5640_ep: endpoint {
-				clock-lanes = <1>;
 				data-lanes = <0 2>;
 				remote-endpoint = <&csiphy0_ep>;
 			};
-- 
2.32.0

