Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 5B493554E3
	for <lists+devicetree@lfdr.de>; Tue, 25 Jun 2019 18:47:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1732179AbfFYQr4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 25 Jun 2019 12:47:56 -0400
Received: from mail-wr1-f65.google.com ([209.85.221.65]:45379 "EHLO
        mail-wr1-f65.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1732033AbfFYQrz (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 25 Jun 2019 12:47:55 -0400
Received: by mail-wr1-f65.google.com with SMTP id f9so18639621wre.12
        for <devicetree@vger.kernel.org>; Tue, 25 Jun 2019 09:47:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=oKGLSmgisRO2Nmb0wB40LqsaDficvDLdoxm6cO408zE=;
        b=jY2/AWowAS6G+jRVmNv+y8BiYzhIt/RwfEmwSQlOnP1M7xgKx2duEfwCXzEbp79MUm
         HORhBMcl+LdI616MEYj/rjmZO6lywFy6CNbUIc4cs6zy9OwoFI24Jx//abCXlxz98rCU
         i5q1biTMevsMS3u1LnlQXfL5f7XGHeHTI2QAVU4B1HdB1zmVplLZtKe8327ZhiW71peI
         z7Nf7lVk1fdGvJA3Fx1Nu2BYIv/faT9mwmCA+Oo8BLyQ4ByCn8GCfSSGUa21td5D33Rc
         6K5yR8rL3LQZsN7nHJFeEqOHDKamNXhUesE1mXZYR44nHlsZrdCo9C9N/htchBYsH34w
         QGMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=oKGLSmgisRO2Nmb0wB40LqsaDficvDLdoxm6cO408zE=;
        b=kBhGnpGaGSE/W6lPhEi1KskfQAsk/py97fZQxVOe5sPHKEV+s4dlG7ANWgx0ztXbTC
         g3Whe7GzAf+anEocc1Yw7V9gBZpnjbfwmGpTVU08uB40wo/rY67J40WYCXx4Q7pOpsKL
         a06Qe91pkdhg3DgWhizrn5/vU0S/sSkMm/goLhRzSXFkiOJE94hJAMYoWERNDYTQr5Sl
         qjXAdLOKjBlaGgGnGKqchApQ/A1WQanO6qFWyZwCkKxElODdmyBNTaFTqxKV/6nLIaLK
         ksfrieN1sn+3G4zmUAuj2vOmgJzFpbaIf1BXfIDBJoepGdibsejfYtMF4e0eiYnaHDF/
         kUsw==
X-Gm-Message-State: APjAAAWZXYxsvXxXW0EIF1ljDoO05UEY6P/oHlLgkgW6mHAllLsHKqXI
        zz85HNQc22GEE59FSQKketHdiw==
X-Google-Smtp-Source: APXvYqw+ITnXXrhjAcfOWEotCFY+bkWsQz+aEVksguE1mMHz7rXtZpCo/wyL1bmjHCUy7fRC8W94Mw==
X-Received: by 2002:adf:f186:: with SMTP id h6mr24857872wro.274.1561481272938;
        Tue, 25 Jun 2019 09:47:52 -0700 (PDT)
Received: from localhost.localdomain (30.red-83-34-200.dynamicip.rima-tde.net. [83.34.200.30])
        by smtp.gmail.com with ESMTPSA id d18sm42594476wrb.90.2019.06.25.09.47.51
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 25 Jun 2019 09:47:52 -0700 (PDT)
From:   Jorge Ramirez-Ortiz <jorge.ramirez-ortiz@linaro.org>
To:     jorge.ramirez-ortiz@linaro.org, sboyd@kernel.org,
        bjorn.andersson@linaro.org, david.brown@linaro.org,
        jassisinghbrar@gmail.com, mark.rutland@arm.com,
        mturquette@baylibre.com, robh+dt@kernel.org, will.deacon@arm.com,
        arnd@arndb.de, horms+renesas@verge.net.au, heiko@sntech.de,
        sibis@codeaurora.org, enric.balletbo@collabora.com,
        jagan@amarulasolutions.com, olof@lixom.net
Cc:     vkoul@kernel.org, niklas.cassel@linaro.org,
        georgi.djakov@linaro.org, amit.kucheria@linaro.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-clk@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, khasim.mohammed@linaro.org
Subject: [PATCH v3 09/14] arm64: dts: qcom: msm8916: Add the clocks for the APCS mux/divider
Date:   Tue, 25 Jun 2019 18:47:28 +0200
Message-Id: <20190625164733.11091-10-jorge.ramirez-ortiz@linaro.org>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190625164733.11091-1-jorge.ramirez-ortiz@linaro.org>
References: <20190625164733.11091-1-jorge.ramirez-ortiz@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Specify the clocks that feed the APCS mux/divider instead of using
default hardcoded values in the source code.

The driver still supports the previous bindings; however with this
update it we allow the msm8916 to access the parent clock names
required by the driver operation using the device tree node.

Signed-off-by: Jorge Ramirez-Ortiz <jorge.ramirez-ortiz@linaro.org>
---
 arch/arm64/boot/dts/qcom/msm8916.dtsi | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/msm8916.dtsi b/arch/arm64/boot/dts/qcom/msm8916.dtsi
index 5ea9fb8f2f87..96dc7a12aa94 100644
--- a/arch/arm64/boot/dts/qcom/msm8916.dtsi
+++ b/arch/arm64/boot/dts/qcom/msm8916.dtsi
@@ -429,7 +429,8 @@
 			compatible = "qcom,msm8916-apcs-kpss-global", "syscon";
 			reg = <0xb011000 0x1000>;
 			#mbox-cells = <1>;
-			clocks = <&a53pll>;
+			clocks = <&gcc GPLL0_VOTE>, <&a53pll>;
+			clock-names = "aux", "pll";
 			#clock-cells = <0>;
 		};
 
-- 
2.21.0

