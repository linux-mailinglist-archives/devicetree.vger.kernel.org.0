Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id A7F038C9D5
	for <lists+devicetree@lfdr.de>; Wed, 14 Aug 2019 05:09:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726992AbfHNDJr (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 13 Aug 2019 23:09:47 -0400
Received: from mail-pg1-f194.google.com ([209.85.215.194]:37918 "EHLO
        mail-pg1-f194.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726896AbfHNDJr (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 13 Aug 2019 23:09:47 -0400
Received: by mail-pg1-f194.google.com with SMTP id e11so1750938pga.5
        for <devicetree@vger.kernel.org>; Tue, 13 Aug 2019 20:09:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id;
        bh=HT5agnFB9Ua1f+HiJVMbjVMLi62oFKHY9sExG5RcmRA=;
        b=iolgrg+yXRNATYsbEOlu9D72Y6cuxWB1oF5q6TXekIkX8mRpEK69FdqiNFv7XLjA+t
         FcGQ/WsyRg41D/BOnJQYjxSQgmko05AoDrQP8l7PRwVl3zym4hrqsRdFf/C5NJdKmsX7
         GZ2P20Urso3DH3FtiPIJArW43M2VOidJwP1fvmpZusTymGcOa/i60G3smXH+F1/miznf
         3QsZV4UthI9GdIyw26ruyfIBbZ0N/faj+B/5VeUhED07B+AhHEdLce+Nzuahj7O4xDG8
         Ff1sKUAeEmJL2mQ+1/OMUBZSm4fHnJw2ydQ1XD5QzHBVi1DI4NPaFbhBCeCAO6AQvivo
         v6HA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=HT5agnFB9Ua1f+HiJVMbjVMLi62oFKHY9sExG5RcmRA=;
        b=WPoRkNS0lMX6AoDRpN8a9p8CxVqPzbyJbi3YqEWZT68alQCGiekxaP6hLoVgALKHrx
         EhNf1vw/17ExwQjDjT5grW2gX7cZn5i9ycXHR7LkmAObEaPin4AIPyYFZ6/1QiEeB2TU
         PJh5Gf89cSOsJ5zT4OblANBgoOJ9tlARzfwIwL2TrRov91lgZr7QjHO7Vd/w9kBYgeLC
         0DWIUNzb5p/i4i+90sXIfgN9OlVy4T73/O7G1D5nbcVqfDB9zHgDW9DgdgWpFdt4Tb4a
         hK25oPGHV5DjoPxZhQjFP4pEowXIlTDK2bctTWoL6Dc5mpqmCwVHJDeZazeJAyREcYx2
         od6g==
X-Gm-Message-State: APjAAAXwVudtGIrQGwRLMMteTw94op0YjrIGkKtNY9n/Va9QmXoYqtJb
        prFFhyfWXogvO12Azbzgfskr4A==
X-Google-Smtp-Source: APXvYqyF1tE3QKOyyK7LvQGdigD6LOt/gywd4f3eQFSrL0cCzGCl9LSpCTeL5FSziRSrw3Bo/+rhjw==
X-Received: by 2002:a63:e948:: with SMTP id q8mr35922012pgj.93.1565752186336;
        Tue, 13 Aug 2019 20:09:46 -0700 (PDT)
Received: from localhost.localdomain (104-188-17-28.lightspeed.sndgca.sbcglobal.net. [104.188.17.28])
        by smtp.gmail.com with ESMTPSA id u1sm106170929pgi.28.2019.08.13.20.09.44
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 13 Aug 2019 20:09:45 -0700 (PDT)
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Niklas Cassel <niklas.cassel@linaro.org>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: [PATCH] arm64: dts: qcom: qcs404-evb: Mark WCSS clocks protected
Date:   Tue, 13 Aug 2019 20:09:42 -0700
Message-Id: <20190814030942.2638-1-bjorn.andersson@linaro.org>
X-Mailer: git-send-email 2.18.0
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

'7d0c76bdf227 ("clk: qcom: Add WCSS gcc clock control for QCS404")'
introduces two new clocks to gcc. These are not used before
clk_disable_unused() and as such the clock framework tries to disable
them.

But on the EVB these registers are only accessible through TrustZone, so
these clocks must be marked as "protected" to prevent the clock code
from touching them.

Numerical values are used as the constants are not yet available in a
common tree.

Reported-by: Mark Brown <broonie@kernel.org>
Reported-by: Niklas Cassel <niklas.cassel@linaro.org>
Signed-off-by: Bjorn Andersson <bjorn.andersson@linaro.org>
---
 arch/arm64/boot/dts/qcom/qcs404-evb.dtsi | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/qcs404-evb.dtsi b/arch/arm64/boot/dts/qcom/qcs404-evb.dtsi
index 2289b01ee9f0..501a7330dbc8 100644
--- a/arch/arm64/boot/dts/qcom/qcs404-evb.dtsi
+++ b/arch/arm64/boot/dts/qcom/qcs404-evb.dtsi
@@ -61,7 +61,9 @@
 	protected-clocks = <GCC_BIMC_CDSP_CLK>,
 			   <GCC_CDSP_CFG_AHB_CLK>,
 			   <GCC_CDSP_BIMC_CLK_SRC>,
-			   <GCC_CDSP_TBU_CLK>;
+			   <GCC_CDSP_TBU_CLK>,
+			   <141>, /* GCC_WCSS_Q6_AHB_CLK */
+			   <142>; /* GCC_WCSS_Q6_AXIM_CLK */
 };
 
 &pms405_spmi_regulators {
-- 
2.18.0

