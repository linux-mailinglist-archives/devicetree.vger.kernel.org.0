Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 2671E9D461
	for <lists+devicetree@lfdr.de>; Mon, 26 Aug 2019 18:48:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1733187AbfHZQsN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 26 Aug 2019 12:48:13 -0400
Received: from mail-wr1-f66.google.com ([209.85.221.66]:43126 "EHLO
        mail-wr1-f66.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1733158AbfHZQsN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 26 Aug 2019 12:48:13 -0400
Received: by mail-wr1-f66.google.com with SMTP id y8so15974459wrn.10
        for <devicetree@vger.kernel.org>; Mon, 26 Aug 2019 09:48:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=1eN7cVd81RI8zQ0Y9k2UD2x6CFiI8Tg5XhL9VySum/g=;
        b=ucUaEDCjqc88r6EwNRvuZ4pqV2M9i1Y+DSqBWhESZQlZTfVTxLuOnzeLY6dzXb06P3
         oX/i4yQDEBxPozva8cMA4cieQZgoDSX5Kk9BFvoYPNa1NowROPGlGLjXGb0CBGmu5onk
         J57zwVshE1hKDzf2oFwzoYShD0QBm1m2NJF6ac/vpDCR5Rhw0sZlSNCM/JP8IByF+XaO
         XYqzUl070rO+I9aXxk5vSHL2+8yvVfOgTBQHIxd+wU4ens0azVJTZbSy6Dp1I+vtKk+O
         HjgtVLaToqubdGDekVdbA/XF9EOHDeXbjfQXP3pdNqGThFzha16Gv0NZNN57paW4IMwj
         iKmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=1eN7cVd81RI8zQ0Y9k2UD2x6CFiI8Tg5XhL9VySum/g=;
        b=UxdEoi7jtIBEflO0AXcIcMqEN51AkPQcnLYZNlkMmRzg8sOhMfqcGXclCJ+dv5/Eg0
         kPhYqaldHGN0Xpi7JD6FQqBQU4juI36OKbRwUnkox28Tt4nO90HBO1UZHCKvWTMl2msH
         PXZ0nzpk4Apk8/kmfqHFlmdXwI5YRLBE8FabbJX9vfApal+qjOepTslJrDe+xoGBGJbY
         1Y62Ogjxvh6ZNZVYYPk9kStNSJz1lT7W55xKmQXM9D0K9amNd7PWAk8TPiYKiVzk3p9A
         +O0DXuBism04qQ59FFg9+SzDUIxF5a3ZcQmTptp7rM8XroJNGnCNkXpRGdBVq+g9rxVs
         /Umg==
X-Gm-Message-State: APjAAAWT0f1ddzrpes9xtLeqHlWgc0ffouB0ORa30ERAM6NwlQd/nArR
        DKAPWbKI6mklCZCwtQfiGks7Ug==
X-Google-Smtp-Source: APXvYqxZ1dkFGwwK1lqL8ofG9U9AtmmwCLX2B/k0MkIoCZJ6svkNEhbHuO1jti7Off9aao83Ezt6dw==
X-Received: by 2002:a5d:5183:: with SMTP id k3mr24270444wrv.270.1566838091411;
        Mon, 26 Aug 2019 09:48:11 -0700 (PDT)
Received: from localhost.localdomain (124.red-83-36-179.dynamicip.rima-tde.net. [83.36.179.124])
        by smtp.gmail.com with ESMTPSA id o14sm21800076wrg.64.2019.08.26.09.48.10
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 26 Aug 2019 09:48:10 -0700 (PDT)
From:   Jorge Ramirez-Ortiz <jorge.ramirez-ortiz@linaro.org>
To:     jorge.ramirez-ortiz@linaro.org, bjorn.andersson@linaro.org,
        robh+dt@kernel.org, agross@kernel.org, mark.rutland@arm.com
Cc:     niklas.cassel@linaro.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH 2/6] arm64: dts: qcom: msm8916: Add the clocks for the APCS mux/divider
Date:   Mon, 26 Aug 2019 18:48:03 +0200
Message-Id: <20190826164807.7028-2-jorge.ramirez-ortiz@linaro.org>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190826164807.7028-1-jorge.ramirez-ortiz@linaro.org>
References: <20190826164807.7028-1-jorge.ramirez-ortiz@linaro.org>
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
Reviewed-by: Bjorn Andersson <bjorn.andersson@linaro.org>
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
2.22.0

