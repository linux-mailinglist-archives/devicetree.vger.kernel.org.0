Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id DD93BD89B8
	for <lists+devicetree@lfdr.de>; Wed, 16 Oct 2019 09:35:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2389616AbfJPHfF (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 16 Oct 2019 03:35:05 -0400
Received: from mail-pf1-f196.google.com ([209.85.210.196]:36790 "EHLO
        mail-pf1-f196.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2389821AbfJPHfE (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 16 Oct 2019 03:35:04 -0400
Received: by mail-pf1-f196.google.com with SMTP id y22so14160665pfr.3
        for <devicetree@vger.kernel.org>; Wed, 16 Oct 2019 00:35:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=aMdrJzILxuSr5g6YT+uoh2+W6L6BuGxRIbKk0lFLJqE=;
        b=eFrfxwuX98m0mVPWQgy0cowYXczi0HbPFwOzG0WXPWDMKhxZNa2L/BnbDyE8HZFs6p
         1d3qJ+Oyockzuq8VqIuYGZPTvcKemsVj3el1JZ9vK/pt0K8Twj4ysuhMHIBDJ8ZYSOk/
         L+eWvz006UruJo4tnbK0GyQKVPmSD/7O+EyqoKrifnBP+uO0sT7fHmCs0C2+fEVqyu/s
         5lloeBdzKA46Vja3aVGdGAnoTe7EEtvl+7AcP2yGDSXUxOF+uGlrZrCRawPY53gD7G0O
         a9K7iXwWZj6osIOEXgS8vMp8NJdpBD6G1hA9BiOoDDyqeaEPDQko0FJLQbkD1QBe46jz
         HHrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=aMdrJzILxuSr5g6YT+uoh2+W6L6BuGxRIbKk0lFLJqE=;
        b=aEaOMRLpcCaOMOzHH9mZiOu4ULAfHOFPIm6tuNCuka4QUlkXBNUZKsVIuF92/aN80M
         F41CrgSZloD0ZRB0CnMCwt7L1RJUyKlUpD89NOua6hJCDW7DTDXw8QomoAHxhgH6etNd
         viGd9JuAswXAhsrjou7AaodbctzhS24j+/hJDlYQonkgwk/jRLSklemGGUyTUdHosbkS
         mypqnhFqAYxXMth3A/9GXbKtQ0DZq/qA1PEsKqyRkJiiJ7gJu1hy+CI8yunDSVMd/vxG
         EiGZTW/WYHPYr5J3Tm4mP5/pfah8QfR3jr3gxaFV1TFUou71iMI+CjNOiLbUIsiVUamf
         2vww==
X-Gm-Message-State: APjAAAVa985C8sxbAhb567Zv2swkNdD57W24jBAHGBoAkomTvw7vOJe3
        VtggZ7Jw8l9OoElAnqnqTeAkCQ==
X-Google-Smtp-Source: APXvYqxVG9NAkBqkoExE8mqtLpk30e1uae5egg5SfnPaBqxGtmxrby6ezxyMeLYuZDb9VA2YQtT39Q==
X-Received: by 2002:a63:5520:: with SMTP id j32mr2064328pgb.162.1571211302908;
        Wed, 16 Oct 2019 00:35:02 -0700 (PDT)
Received: from localhost ([49.248.175.127])
        by smtp.gmail.com with ESMTPSA id t13sm21590605pfh.12.2019.10.16.00.35.01
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 16 Oct 2019 00:35:02 -0700 (PDT)
From:   Amit Kucheria <amit.kucheria@linaro.org>
To:     linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        bjorn.andersson@linaro.org, edubezval@gmail.com, agross@kernel.org,
        masneyb@onstation.org, swboyd@chromium.org,
        Amit Kucheria <amit.kucheria@verdurent.com>,
        Daniel Lezcano <daniel.lezcano@linaro.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Rob Herring <robh+dt@kernel.org>,
        Zhang Rui <rui.zhang@intel.com>
Cc:     devicetree@vger.kernel.org
Subject: [PATCH 11/15] arm64: dts: qcs404: thermal: Add interrupt support
Date:   Wed, 16 Oct 2019 13:04:10 +0530
Message-Id: <63d6b0b8bba0d217c2f7bb4240c587ead933b6be.1571210269.git.amit.kucheria@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1571210269.git.amit.kucheria@linaro.org>
References: <cover.1571210269.git.amit.kucheria@linaro.org>
In-Reply-To: <cover.1571210269.git.amit.kucheria@linaro.org>
References: <cover.1571210269.git.amit.kucheria@linaro.org>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Register upper-lower interrupt for the tsens controller.

Signed-off-by: Amit Kucheria <amit.kucheria@linaro.org>
---
 arch/arm64/boot/dts/qcom/qcs404.dtsi | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/qcs404.dtsi b/arch/arm64/boot/dts/qcom/qcs404.dtsi
index a97eeb4569c0..b6a4e6073936 100644
--- a/arch/arm64/boot/dts/qcom/qcs404.dtsi
+++ b/arch/arm64/boot/dts/qcom/qcs404.dtsi
@@ -290,6 +290,8 @@
 			nvmem-cells = <&tsens_caldata>;
 			nvmem-cell-names = "calib";
 			#qcom,sensors = <10>;
+			interrupts = <GIC_SPI 184 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-names = "uplow";
 			#thermal-sensor-cells = <1>;
 		};
 
-- 
2.17.1

