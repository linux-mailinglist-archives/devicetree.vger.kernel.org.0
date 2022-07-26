Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 91048581B5F
	for <lists+devicetree@lfdr.de>; Tue, 26 Jul 2022 22:54:03 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232118AbiGZUyA (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 26 Jul 2022 16:54:00 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47202 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239977AbiGZUx7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 26 Jul 2022 16:53:59 -0400
Received: from mail-lj1-x234.google.com (mail-lj1-x234.google.com [IPv6:2a00:1450:4864:20::234])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 80B8439B93
        for <devicetree@vger.kernel.org>; Tue, 26 Jul 2022 13:53:58 -0700 (PDT)
Received: by mail-lj1-x234.google.com with SMTP id p22so7968987lji.10
        for <devicetree@vger.kernel.org>; Tue, 26 Jul 2022 13:53:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=qMqyxs7LVr+iprcaUfmqU1eXpt06YzpK1kah43wpccg=;
        b=loTvXlkgD6guc10MlZV4kcvLr0QA9okYDRlMYMvAS1lusONqKYA0yHwwPhq9rZ75pz
         A9z5vBqcvPJeNkWInaXfaK3QWGQ14a+aIgOYQhskaj4MJfcKCuLi96q/E9bqh/Dk9N/k
         9IC7+Y2uuxaWsTH7I6f0vt1KM31uj5iE9FG7M/26uKRTzpH+Qidzfjns11JT/o1+RpVc
         Zc+eVF8F+xNF+mnkAeSGFc3NEVs8B7No+6yIkJCmdHl+2bjFNVrLc6oHdIo/dcizaT8w
         0seKuGaoRtuOkkBNNw2M2PNp8N4bRpuOoCy+pmTSwXmT4k4yL4LUnUxqp/LGHhEf61N2
         0rzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=qMqyxs7LVr+iprcaUfmqU1eXpt06YzpK1kah43wpccg=;
        b=663aKmEXW/xHgdXSORfJsQRIU9oULjEKAH2cQzs73NktQAA9NadJVAak7FLKvcS0BC
         8WUeAyDxe2kwqMnmXjHseJC5Gz0E1E3WrY8RKB1/D5Tq6jIBAKrchKzd9uHLJ0Nauu0x
         MYoQLyTaJDcLNfc56MU3/c9r3MG9VWBQOfl54d6o/Aj6PXn+oZ5QSI89vvGGWcPL+9zg
         Na7PoiX/DB5u3X5b659IQuISXsiSky5OQG3ypk5oUQerEJ4oQBipz12cUdctwf4D0g66
         wCMk0p8CFs9mthm6xQftAB2uobadrYJkPiDHEeDx0kAnAx3YwyDPfPnzFKUe35tDmQKE
         xiBQ==
X-Gm-Message-State: AJIora95Q5vbANWdmGD7WxiNufawlgzvhmKYW8UY5PI+/Os2TVFdRocV
        YoRX7XrBxiTt83G2lOPNhysGlg==
X-Google-Smtp-Source: AGRyM1ueYiCckqJt0utm8/JC1eHoK2OS7FWjosnYpCUpWuSi4XLNtRqpfRkO1eLCQAGgZrRvTcuDjw==
X-Received: by 2002:a05:651c:154a:b0:25e:886:23e5 with SMTP id y10-20020a05651c154a00b0025e088623e5mr3648902ljp.465.1658868836809;
        Tue, 26 Jul 2022 13:53:56 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id e16-20020a05651236d000b0048a72437127sm369036lfs.42.2022.07.26.13.53.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 26 Jul 2022 13:53:56 -0700 (PDT)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
Subject: [PATCH 2/2] ARM: dts: qcom: msm8974: add rpm-stats device node
Date:   Tue, 26 Jul 2022 23:53:55 +0300
Message-Id: <20220726205355.598874-2-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220726205355.598874-1-dmitry.baryshkov@linaro.org>
References: <20220726205355.598874-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add device node for the rpm-stats pseudo device.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm/boot/dts/qcom-msm8974.dtsi | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/arm/boot/dts/qcom-msm8974.dtsi b/arch/arm/boot/dts/qcom-msm8974.dtsi
index 8baca2a77717..2cf9739fb86f 100644
--- a/arch/arm/boot/dts/qcom-msm8974.dtsi
+++ b/arch/arm/boot/dts/qcom-msm8974.dtsi
@@ -762,6 +762,11 @@ wifi {
 			};
 		};
 
+		sram@fc190000 {
+			compatible = "qcom,msm8974-rpm-stats";
+			reg = <0xfc190000 0x10000>;
+		};
+
 		etf@fc307000 {
 			compatible = "arm,coresight-tmc", "arm,primecell";
 			reg = <0xfc307000 0x1000>;
-- 
2.35.1

