Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 8FF9D9D462
	for <lists+devicetree@lfdr.de>; Mon, 26 Aug 2019 18:48:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1733201AbfHZQsO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 26 Aug 2019 12:48:14 -0400
Received: from mail-wr1-f67.google.com ([209.85.221.67]:41079 "EHLO
        mail-wr1-f67.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1733183AbfHZQsO (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 26 Aug 2019 12:48:14 -0400
Received: by mail-wr1-f67.google.com with SMTP id j16so15980565wrr.8
        for <devicetree@vger.kernel.org>; Mon, 26 Aug 2019 09:48:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=6aBjlsqiqqTgtzhykCGPDbSLi9lpwGSk1XF7w3yerKo=;
        b=WiPY2VmOXE2RfOnc7RuUSWUISdyh0kDQACH6it3uiL+kBd9CDRojW1+O52q/0G/GcP
         D7svA43QS+VHwNxAcKEEsbwZTbgyPcbqmAd0TK5Zu8K2tQf+svofB6BtYgbtRArhefVy
         ykf1eE6i++k/AqZIYazKoYNOwaEwTLci5TlsC2cBZl05TASDWrv71e/Wb7o3/oQ55mPR
         Gc3j5GF1+FuGGHmJV4CddZpZV7zLvH6ACHCgZkwN9I64kPjqvbXnZ+sANkkq4JwBT0gL
         SS5X1mP2pHHz6BXEf2cPi+PSeznAFwkEFR32mcpmXGDZAgG1y3cj71u+SUu3jZRXFGLc
         UbKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=6aBjlsqiqqTgtzhykCGPDbSLi9lpwGSk1XF7w3yerKo=;
        b=VhDbk2gkTQou5/hWRFm6bei7/4ZONs2C4VVs2wdvB7V3Rjg4+AHunL13UCv1RyQ7JO
         +XZyMPTefgDt5xD9VcJX+7eVCeU3CSyAzNj1yExzQq8LgLIaeEvkYjvuDG3RgIVk1/BF
         DE/6Z0xMtLW8sexT5C9B8izlQ0iMXJOgurwmJhC7Kb5S+vACi8l8UgZapWCs2wv6msfG
         l//xfSJGx9y6/SiWrtgf4Mhp/a68JXdgA2yO+Lr7TAd7TOJODGcDJ/BY6Ero1eGbtERT
         KHpWfHaYDXpK1XS69tTWdXQt9Fh9qJjOxZQKuuCrNQ+gk6Sgr06+nw5uB2Sx+54dm0e1
         5NQg==
X-Gm-Message-State: APjAAAXlb5wdl7mv29YC/AkSQSqRy4Uw5iiHssL4wVHcdh6eCEbcdQzY
        poVt+rkUCPuxO6ndn7fXLdkhJQ==
X-Google-Smtp-Source: APXvYqw3p4P3r0H+9quDr52MsyRO8FZmUmK1/r9o83Uq5Q16H5ZoPaWVLV8HDV6+oKSknAjuK5OvOw==
X-Received: by 2002:adf:cd11:: with SMTP id w17mr20629210wrm.297.1566838092355;
        Mon, 26 Aug 2019 09:48:12 -0700 (PDT)
Received: from localhost.localdomain (124.red-83-36-179.dynamicip.rima-tde.net. [83.36.179.124])
        by smtp.gmail.com with ESMTPSA id o14sm21800076wrg.64.2019.08.26.09.48.11
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 26 Aug 2019 09:48:11 -0700 (PDT)
From:   Jorge Ramirez-Ortiz <jorge.ramirez-ortiz@linaro.org>
To:     jorge.ramirez-ortiz@linaro.org, bjorn.andersson@linaro.org,
        robh+dt@kernel.org, agross@kernel.org, mark.rutland@arm.com
Cc:     niklas.cassel@linaro.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH 3/6] arm64: dts: qcom: qcs404: Add HFPLL node
Date:   Mon, 26 Aug 2019 18:48:04 +0200
Message-Id: <20190826164807.7028-3-jorge.ramirez-ortiz@linaro.org>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190826164807.7028-1-jorge.ramirez-ortiz@linaro.org>
References: <20190826164807.7028-1-jorge.ramirez-ortiz@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The high frequency pll functionality is required to enable CPU
frequency scaling operation.

Co-developed-by: Niklas Cassel <niklas.cassel@linaro.org>
Signed-off-by: Niklas Cassel <niklas.cassel@linaro.org>
Signed-off-by: Jorge Ramirez-Ortiz <jorge.ramirez-ortiz@linaro.org>
Reviewed-by: Bjorn Andersson <bjorn.andersson@linaro.org>
---
 arch/arm64/boot/dts/qcom/qcs404.dtsi | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/qcs404.dtsi b/arch/arm64/boot/dts/qcom/qcs404.dtsi
index a97eeb4569c0..75ea356a3fb0 100644
--- a/arch/arm64/boot/dts/qcom/qcs404.dtsi
+++ b/arch/arm64/boot/dts/qcom/qcs404.dtsi
@@ -869,6 +869,15 @@
 			#mbox-cells = <1>;
 		};
 
+		apcs_hfpll: clock-controller@b016000 {
+			compatible = "qcom,hfpll";
+			reg = <0x0b016000 0x30>;
+			#clock-cells = <0>;
+			clock-output-names = "apcs_hfpll";
+			clocks = <&xo_board>;
+			clock-names = "xo";
+		};
+
 		timer@b120000 {
 			#address-cells = <1>;
 			#size-cells = <1>;
-- 
2.22.0

