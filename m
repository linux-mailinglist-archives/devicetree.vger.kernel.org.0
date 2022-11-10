Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 98B2F623FED
	for <lists+devicetree@lfdr.de>; Thu, 10 Nov 2022 11:34:03 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229678AbiKJKeB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 10 Nov 2022 05:34:01 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58804 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229840AbiKJKd5 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 10 Nov 2022 05:33:57 -0500
Received: from mail-lj1-x22c.google.com (mail-lj1-x22c.google.com [IPv6:2a00:1450:4864:20::22c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0A0E7682AF
        for <devicetree@vger.kernel.org>; Thu, 10 Nov 2022 02:33:57 -0800 (PST)
Received: by mail-lj1-x22c.google.com with SMTP id l8so832290ljh.13
        for <devicetree@vger.kernel.org>; Thu, 10 Nov 2022 02:33:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=yGzWY9dQslOTaDVeaaodx13Gr+GUtkH/icX/AdfHUtw=;
        b=Ve/NPFkAE0bxmtVdm1r31VXlYS078dzAs39JLxBbiQwvV7jPMbBs29chxcR7ZpNyjK
         75WuHLCdZLdJix/nVfPSCMg6bG2HJRvi345t8et8S3BCyfI/CgMDo9zeQMxQVuuHNIRw
         9PC3/U3Eou0v9sWzSVMur865WIZJrW9nLQwxiQ53Df1AcHNTD+ATUU6EoqaO0AjVTtHC
         8JyJKv/z9Vqf/etXMbybdoC5qZMO3Tfkh4R7OyyrYM30bFafVzGtlkZ0d03/4ShcdKWn
         SKEFKlpKqFkXI/369AxMnESD8EIOgsl704X1n0+vvtLwsKuw+mTt1znbDMfVR6zJ2NU1
         fWbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=yGzWY9dQslOTaDVeaaodx13Gr+GUtkH/icX/AdfHUtw=;
        b=EqY7heZeWsTnqfNZwKirKNOq0sgfAQZ2oHGh5rI+Oe0JjWvCvHrLx+jqzKumtDRYlo
         1saFQHhqyIoWeAwZov57UTp+i26ngnN4i/8GPF3uED4sPQIqEeT0k9c8dgOhuhslDNoc
         Y27K+A+yO0By0Jhs6XQYpXqAaDbXAMlJyQ4aLncxp7xT/yTdc7Bb51feWS7TFvAW9M/f
         6efJC+d3t55wa1UBqrt1X+VsCrzSh+Lnjq7qtOFsRJjUUoLGZUHfI9eB9u9BeAAeZlCD
         gV7InZtxdWp0qKzRBCO3P95vLTIKx96kNlOVexW3hv+aILQ5jw9vcOIndh01mgYFgokx
         Uarg==
X-Gm-Message-State: ACrzQf0incc/q+65f+J0xTwrUpv8pUOo4+q8mW61Hbx1v9X36ptJH/MX
        GGEvql8iefdpvFDwvoAJ3cqLLA==
X-Google-Smtp-Source: AMsMyM5VEx26zEE+KwEPWvpa35rlqAY/RhhTn/bdX9GOfGlWiG3oXxlF5FNTqocy0OWAQgRGVNViBw==
X-Received: by 2002:a2e:9a8a:0:b0:26f:bf09:2f57 with SMTP id p10-20020a2e9a8a000000b0026fbf092f57mr8119128lji.180.1668076435429;
        Thu, 10 Nov 2022 02:33:55 -0800 (PST)
Received: from localhost.localdomain ([195.165.23.90])
        by smtp.gmail.com with ESMTPSA id p22-20020ac246d6000000b00498f32ae907sm2687837lfo.95.2022.11.10.02.33.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Nov 2022 02:33:55 -0800 (PST)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Jingoo Han <jingoohan1@gmail.com>,
        Gustavo Pimentel <gustavo.pimentel@synopsys.com>,
        Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
        =?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>,
        Bjorn Helgaas <bhelgaas@google.com>,
        Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>
Cc:     Philipp Zabel <p.zabel@pengutronix.de>,
        Johan Hovold <johan@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-pci@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org
Subject: [PATCH v2 8/8] arm64: dts: qcom: sm8350-hdk: enable PCIe devices
Date:   Thu, 10 Nov 2022 13:33:45 +0300
Message-Id: <20221110103345.729018-9-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20221110103345.729018-1-dmitry.baryshkov@linaro.org>
References: <20221110103345.729018-1-dmitry.baryshkov@linaro.org>
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

Enable PCIe0 and PCIe1 hosts found on SM8350 HDK board.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8350-hdk.dts | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm8350-hdk.dts b/arch/arm64/boot/dts/qcom/sm8350-hdk.dts
index 0fcf5bd88fc7..58a9dc7705a5 100644
--- a/arch/arm64/boot/dts/qcom/sm8350-hdk.dts
+++ b/arch/arm64/boot/dts/qcom/sm8350-hdk.dts
@@ -222,6 +222,22 @@ &mpss {
 	firmware-name = "qcom/sm8350/modem.mbn";
 };
 
+&pcie0 {
+	status = "okay";
+};
+
+&pcie0_phy {
+	status = "okay";
+};
+
+&pcie1 {
+	status = "okay";
+};
+
+&pcie1_phy {
+	status = "okay";
+};
+
 &qupv3_id_0 {
 	status = "okay";
 };
-- 
2.35.1

