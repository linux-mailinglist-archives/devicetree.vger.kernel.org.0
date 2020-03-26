Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 169AF193D14
	for <lists+devicetree@lfdr.de>; Thu, 26 Mar 2020 11:39:55 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727773AbgCZKjv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 26 Mar 2020 06:39:51 -0400
Received: from mail-lj1-f195.google.com ([209.85.208.195]:44872 "EHLO
        mail-lj1-f195.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727560AbgCZKjm (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 26 Mar 2020 06:39:42 -0400
Received: by mail-lj1-f195.google.com with SMTP id p14so5803292lji.11
        for <devicetree@vger.kernel.org>; Thu, 26 Mar 2020 03:39:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=ltvILhWw+Z8JxlENYP0mAF8OSEMClYvL/9bIL1S5Kpk=;
        b=gNM9owfXJa+dSlXbbxty1r7WYn0Vre4U4J5MDJuANbo/DqAdHjITFd0aXd250+kgZa
         BBoWO6/eWsDTVUFSP/CbYcRysEhMRxz+SAH34DXnYRURMBuwtmqslM1+6iePBLm+NnpI
         VMk/rKREhpC+5kGl6T6i0CFgULvqeuk3T8xWx6XudqaneIM7NqJ3QFRVtsom69i88Lrf
         c+x/xZgFY6N2mSJbbFKPevX3hfN9H6HOHOS/yKCBYszcI2M9HrfHyBlZo8vNeKDzWlIP
         WurHB5jS3OKWqbRob4xVgl0PI2SCVzFfF5V+fZGxrn7geaztCIDWxd+6rHQk+THCqPv/
         6hIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=ltvILhWw+Z8JxlENYP0mAF8OSEMClYvL/9bIL1S5Kpk=;
        b=OvB0KxQPOslvRr5emfLZiu/LOaq9S5vdChCBWKyWXd5l1qJUy5xm89KLbfOTXYeDL1
         +AzFZNAfE+bE6BglqmFRv24I5ZJQKn6U7xgxrJSITkDSEUpHK93YSDTThF+Aiz26Awyk
         OD6YFmUpMhmZwJl67ErlWeGVt7aChw8LF0qbjFJItc7AsWHbly0e9Zih9TJWhlyPmjCg
         YtOMMJ2q2vOM4mSFyDsGfzb6lmAbo3hfegVKHGUSGeY43n/auH+ri3kjxfxGI45Ap1L+
         se+joIpuhxQbLaehCHagw+jmqs/evZWK+m8C9/dEsqkn2CTpe5BfeuFyiQyKKtmf3+Ys
         fOvw==
X-Gm-Message-State: ANhLgQ3gpXTFPpV3IsEO9sLq2vH4HRZUEIqOY2wdto2Pi4C6coPYV/Lz
        6AlYA0eKZW47gHJeD+7FSp8cyA==
X-Google-Smtp-Source: ADFU+vsLtdkgRectxhYOVDyCqiOqGpq4Xqt+Wl7DV1FV/CF1VdSJqutewgZkRdbbmLZjLm73f0qT9A==
X-Received: by 2002:a2e:99c9:: with SMTP id l9mr5092848ljj.79.1585219179500;
        Thu, 26 Mar 2020 03:39:39 -0700 (PDT)
Received: from localhost.localdomain (h-158-174-22-210.NA.cust.bahnhof.se. [158.174.22.210])
        by smtp.gmail.com with ESMTPSA id h3sm1304008lfk.30.2020.03.26.03.39.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Mar 2020 03:39:38 -0700 (PDT)
From:   Ulf Hansson <ulf.hansson@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Ulf Hansson <ulf.hansson@linaro.org>,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org
Subject: [PATCH 2/2] arm64: dts: msm8916: Conform to the nodename pattern PSCI subnodes
Date:   Thu, 26 Mar 2020 11:39:32 +0100
Message-Id: <20200326103932.5809-3-ulf.hansson@linaro.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200326103932.5809-1-ulf.hansson@linaro.org>
References: <20200326103932.5809-1-ulf.hansson@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Subnodes for PSCI should start with "power-domain-", so let's adopt to
this.

Signed-off-by: Ulf Hansson <ulf.hansson@linaro.org>
---
 arch/arm64/boot/dts/qcom/msm8916.dtsi | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/msm8916.dtsi b/arch/arm64/boot/dts/qcom/msm8916.dtsi
index e7ff8701eed3..2fdc6aa61b83 100644
--- a/arch/arm64/boot/dts/qcom/msm8916.dtsi
+++ b/arch/arm64/boot/dts/qcom/msm8916.dtsi
@@ -191,31 +191,31 @@
 		compatible = "arm,psci-1.0";
 		method = "smc";
 
-		CPU_PD0: cpu-pd0 {
+		CPU_PD0: power-domain-cpu0 {
 			#power-domain-cells = <0>;
 			power-domains = <&CLUSTER_PD>;
 			domain-idle-states = <&CPU_SLEEP_0>;
 		};
 
-		CPU_PD1: cpu-pd1 {
+		CPU_PD1: power-domain-cpu1 {
 			#power-domain-cells = <0>;
 			power-domains = <&CLUSTER_PD>;
 			domain-idle-states = <&CPU_SLEEP_0>;
 		};
 
-		CPU_PD2: cpu-pd2 {
+		CPU_PD2: power-domain-cpu2 {
 			#power-domain-cells = <0>;
 			power-domains = <&CLUSTER_PD>;
 			domain-idle-states = <&CPU_SLEEP_0>;
 		};
 
-		CPU_PD3: cpu-pd3 {
+		CPU_PD3: power-domain-cpu3 {
 			#power-domain-cells = <0>;
 			power-domains = <&CLUSTER_PD>;
 			domain-idle-states = <&CPU_SLEEP_0>;
 		};
 
-		CLUSTER_PD: cluster-pd {
+		CLUSTER_PD: power-domain-cluster {
 			#power-domain-cells = <0>;
 			domain-idle-states = <&CLUSTER_RET>, <&CLUSTER_PWRDN>;
 		};
-- 
2.20.1

