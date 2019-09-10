Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 988A1AF047
	for <lists+devicetree@lfdr.de>; Tue, 10 Sep 2019 19:15:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2437038AbfIJROv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 10 Sep 2019 13:14:51 -0400
Received: from mail-qk1-f196.google.com ([209.85.222.196]:41797 "EHLO
        mail-qk1-f196.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2437035AbfIJROp (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 10 Sep 2019 13:14:45 -0400
Received: by mail-qk1-f196.google.com with SMTP id o11so17810416qkg.8
        for <devicetree@vger.kernel.org>; Tue, 10 Sep 2019 10:14:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=AU+QsjQ4gYWceRGENzlR0Louo13bejD+8gOVOvF6PUY=;
        b=m/FgOeOkaOKNggzNTPEtFXREeobHykEFFFvTpQDO0RpQvNSHhp2AtqgVHN+UjyG80W
         WWG3b1uQfUUzTJ0Qo0bdgjfsRy05PbvlFclgN1DETTKoJ7t0Wb5bOc7w1Fpe/jxitCOY
         p49Ll9S6JRw2bxMrZ9pnvQuhK8+28N+ndBI64dUvqY0TO34orTLL+Rh9f+jACW4cQ2pN
         SZrMhm6B3WoK9PQjDXnZ9/yDV3xkCZb83uJsXllPYdERjtYsYUDvl3Oh1VG8p8TtRgbv
         Jire4fF4GaSvB0FgRhk+IkaXFKDd82DB8Q9WOysgl/zMV8MGI+jeCrGm5beLdXCgtnl/
         t4rw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=AU+QsjQ4gYWceRGENzlR0Louo13bejD+8gOVOvF6PUY=;
        b=hmuD79d+KnAZQI+uOhoXf316WRBP8r4+jrqDMjDATSo5GvxcywY1Pi3tB6ObAhcCcM
         k4t9SH6nA44ijxAu7pda4HFJx5ys5UN+i51FmaZy+nOEXhUcSSPLaOqK/ohgbltB3CCH
         YL4xy4ETd7JpLKuyHuNnADhZg1b+OCq6Ahk55M7w2x+fLsfxM+VRUQeBgb2sqKvFsLs/
         GJSbYcFnT/bRD9m1MMEXNEXczBS5taqCQOwG98FyDbo8M40VI1QRAqJ8yX1DyZdra90v
         BxD3aGcKv7PhkJn6MhxqSZ2Wc6zyC+4U7UjwRFla/mmhrgZ/Halq8X0ylqsXCH6WitlQ
         dsFg==
X-Gm-Message-State: APjAAAX92TzOq3FN7HLEdtyuFdhzHAFVIL9zb7XGrZ3SITAJA/naxE+N
        qVO6WWJ9tTo3A1QzguL7aUmlSw==
X-Google-Smtp-Source: APXvYqw+xpOzKxIVVLJuA0LAVrvCMbzacPqVJ0yzoUiedeQ7QczZNA+XJZNiz9ALbYhsjyobVyeQXw==
X-Received: by 2002:a37:660c:: with SMTP id a12mr30467195qkc.70.1568135684689;
        Tue, 10 Sep 2019 10:14:44 -0700 (PDT)
Received: from Thara-Work-Ubuntu.fios-router.home (pool-71-255-246-27.washdc.fios.verizon.net. [71.255.246.27])
        by smtp.googlemail.com with ESMTPSA id g45sm3400713qtc.9.2019.09.10.10.14.43
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 10 Sep 2019 10:14:44 -0700 (PDT)
From:   Thara Gopinath <thara.gopinath@linaro.org>
To:     edubezval@gmail.com, rui.zhang@intel.com, ulf.hansson@linaro.org,
        daniel.lezcano@linaro.org, bjorn.andersson@linaro.org,
        robh+dt@kernel.org, agross@kernel.org
Cc:     amit.kucheria@verdurent.com, mark.rutland@arm.com,
        rjw@rjwysocki.net, linux-pm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: [PATCH 5/5] arm64: dts: qcom: Add node for RPMH power domain warming device on sdm845.
Date:   Tue, 10 Sep 2019 13:14:36 -0400
Message-Id: <1568135676-9328-6-git-send-email-thara.gopinath@linaro.org>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1568135676-9328-1-git-send-email-thara.gopinath@linaro.org>
References: <1568135676-9328-1-git-send-email-thara.gopinath@linaro.org>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

RPMh hosts power domains that can be used to warm up the SoC.
Add nodes for these domains on sdm845 (mx power
domain).

Signed-off-by: Thara Gopinath <thara.gopinath@linaro.org>
---
v1->v2:
	- Change the dt-entries to reflect the newly introduced
	generic power domain warming device.

 arch/arm64/boot/dts/qcom/sdm845.dtsi | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sdm845.dtsi b/arch/arm64/boot/dts/qcom/sdm845.dtsi
index f406a43..0a83263 100644
--- a/arch/arm64/boot/dts/qcom/sdm845.dtsi
+++ b/arch/arm64/boot/dts/qcom/sdm845.dtsi
@@ -3284,6 +3284,13 @@
 		};
 	};
 
+	thermal_wdev: rpmhpd_mx_wdev {
+		compatible = "thermal-power-domain-wdev";
+		#cooling-cells = <2>;
+		power-domains =  <&rpmhpd SDM845_MX>;
+		power-domain-names = "mx";
+	};
+
 	thermal-zones {
 		cpu0-thermal {
 			polling-delay-passive = <250>;
-- 
2.1.4

