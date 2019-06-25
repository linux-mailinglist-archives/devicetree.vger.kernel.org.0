Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 2C3BA554F3
	for <lists+devicetree@lfdr.de>; Tue, 25 Jun 2019 18:48:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730892AbfFYQsO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 25 Jun 2019 12:48:14 -0400
Received: from mail-wm1-f68.google.com ([209.85.128.68]:37781 "EHLO
        mail-wm1-f68.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1732222AbfFYQr7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 25 Jun 2019 12:47:59 -0400
Received: by mail-wm1-f68.google.com with SMTP id f17so3685534wme.2
        for <devicetree@vger.kernel.org>; Tue, 25 Jun 2019 09:47:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=YWv+ENYtDt9ayygv5AeNhTcINipts+nB0V2FRLcgbPQ=;
        b=Dxdi6ZD33iGpwH42tE/qn+Iq4qpd9Q6uWsQShpkmqZS8uMNtMk4VAEgSDHLFGUcEzc
         ESZloIWaRMy4AJgVcjFwGdZr5oL6Am2doHYp6EgXjBsFk/LbQnE2C4BKTkD4Zm+L7ONr
         csb95VD80/aDbOBTm8p3fUFh6w81NVLCvmVOZNhhxQsy2NOWkzTk3rGeaCHXA632fA8c
         RHakhy/AjDBjOZog1iWpRlFe9YY6J2eJOuW31Rkow0QeTClcSAtUATkhipMh/KqVUzg+
         fw/hS8ts7UhwtDQ8OEeWIV5B1kXaTutTxgEBFcpE/chiQeD+kuwPB/cH90Ywhxr3sRlw
         BwRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=YWv+ENYtDt9ayygv5AeNhTcINipts+nB0V2FRLcgbPQ=;
        b=MxxltZVsiYQ25JBem1zdQkHpiWBvUS4w3wPS7tAtYUdXKvzgJGEzKrs33fzaySMPpi
         rmf/6RPnTKzH94ZU+D4QnmZ7jzrW6pEnzhZG5BuPi984SmpiKO3JmfxrfVhrqGvh5G0O
         zi0M2qgXsaDZwP8v6nbcAR+V0rTnh4L+rTiXckmsFCzwTST/mEuWVjsmuN/gy4Phjqei
         3ps/brCIOjTeJAcDfIQQrTsPUnDGmt1Zqzz1S6IIciydAQbJS7S9BR4kR7p5tjxiGYrV
         w+AJb1rPL9JqD2t7XIWf9NBrXxB0ASBTgn4F3svGA3myrl/Z0icaPqhkZWbomG674STI
         9Bsw==
X-Gm-Message-State: APjAAAVSpgKmsewQGpoDRocLC3kVuIsT4nrQl/MZqJYWbL11mcdVhdzh
        PkylvZZLbG+odBe9d3V1eSI2Fw==
X-Google-Smtp-Source: APXvYqyctq0fJwYMqXovLwVH+Rv/g41oIdZlbNT5SBNXiqMQk4fgjk1F1lSz3e94rDFGPxFy/vVOuQ==
X-Received: by 2002:a1c:f102:: with SMTP id p2mr19064644wmh.60.1561481278013;
        Tue, 25 Jun 2019 09:47:58 -0700 (PDT)
Received: from localhost.localdomain (30.red-83-34-200.dynamicip.rima-tde.net. [83.34.200.30])
        by smtp.gmail.com with ESMTPSA id d18sm42594476wrb.90.2019.06.25.09.47.56
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 25 Jun 2019 09:47:57 -0700 (PDT)
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
Subject: [PATCH v3 12/14] arm64: dts: qcom: qcs404: Add the clocks for APCS mux/divider
Date:   Tue, 25 Jun 2019 18:47:31 +0200
Message-Id: <20190625164733.11091-13-jorge.ramirez-ortiz@linaro.org>
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

Co-developed-by: Niklas Cassel <niklas.cassel@linaro.org>
Signed-off-by: Niklas Cassel <niklas.cassel@linaro.org>
Signed-off-by: Jorge Ramirez-Ortiz <jorge.ramirez-ortiz@linaro.org>
---
 arch/arm64/boot/dts/qcom/qcs404.dtsi | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/qcs404.dtsi b/arch/arm64/boot/dts/qcom/qcs404.dtsi
index 94471aa31979..9569686dbc41 100644
--- a/arch/arm64/boot/dts/qcom/qcs404.dtsi
+++ b/arch/arm64/boot/dts/qcom/qcs404.dtsi
@@ -850,6 +850,9 @@
 			compatible = "qcom,qcs404-apcs-apps-global", "syscon";
 			reg = <0x0b011000 0x1000>;
 			#mbox-cells = <1>;
+			clocks = <&gcc GCC_GPLL0_AO_OUT_MAIN>, <&apcs_hfpll>;
+			clock-names = "aux", "pll";
+			#clock-cells = <0>;
 		};
 
 		apcs_hfpll: clock-controller@b016000 {
-- 
2.21.0

