Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 96C16145BDA
	for <lists+devicetree@lfdr.de>; Wed, 22 Jan 2020 19:56:38 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729336AbgAVS4h (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 22 Jan 2020 13:56:37 -0500
Received: from mail-wr1-f66.google.com ([209.85.221.66]:35015 "EHLO
        mail-wr1-f66.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729306AbgAVS4g (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 22 Jan 2020 13:56:36 -0500
Received: by mail-wr1-f66.google.com with SMTP id g17so261163wro.2
        for <devicetree@vger.kernel.org>; Wed, 22 Jan 2020 10:56:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=LUSoU/XhVbuFFL332MrsGCHzak9+7MGgmls9JTYC/Cw=;
        b=Z81j9cQc59ByCvqGfgPVf5SYC2nDMYVoOYsp+gZF6bE5tX+7eRQlm5cwL8Vol7FxF9
         r8/baY1Y7xQum/um/I91ep+Z8NR+VNLuSoOLHo71qAymEDVvJLcPATcaEjtSUeMQMshj
         H4ThNKetDK9/ZLn0RSHm/tCiezmmFmGk20Vn5xPw/JFfJL0WMwDNNX895/citXV1JxT6
         yY8grBkoc2PEMfc6frdUNOy42m/oo6/CghAMPCQzDXBuOvYusXAISaR4uy35Avt9dslK
         PQH9ZROroVlWO7ywB1HpfwK7es4eDYOo3NsflzgCkZ4vob21K7bDqe+3c92/ItLmHaGF
         T2dQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=LUSoU/XhVbuFFL332MrsGCHzak9+7MGgmls9JTYC/Cw=;
        b=sGmhqbGv/PzBOoWcDcqIEYpbWRD1TlBVIqvp5tf3W5/BCVV7XjH9KXp/IvMyg5Hs+K
         VIua7VxLulR4O/7ckixF8Ua12tFUW7lQOyUTpc3U8CF9vLenXj3TIxCumPYCZUO29en1
         uN3/i4c7veQBTElbXIUfIbKU0v57q69HC+pQs88ncOz8GyGPvlTKCeTXiu3odjBTGTws
         UUX3x37uGBdjvCFt0P+x1O5iyrQJOgqipRweVI9tpa0Ywjd2qbFKe+yeOJIiQUuEB4PD
         cQouOmmm44p2CYvPIF8S8dhVLzQwRbaPX9ivBQklpXmfs5dsuHwWvG1fHGnb6UrABM3n
         qfdA==
X-Gm-Message-State: APjAAAX5ARK7XrpjNx3W1kPzF9ToUuGBVZ4VyVkQ2AX7TOLUj0ALZQJm
        kfliZ6/l10bpuLXiUYbLrtpycw==
X-Google-Smtp-Source: APXvYqzRjZpoadQq8kfDamN1yJIgXYj6ibo6BkWwx5fH7am5l4OrnMyYThfzLWfguyV6rr/QOYK6Kw==
X-Received: by 2002:a5d:6206:: with SMTP id y6mr12491477wru.130.1579719394659;
        Wed, 22 Jan 2020 10:56:34 -0800 (PST)
Received: from localhost.localdomain ([176.61.57.127])
        by smtp.gmail.com with ESMTPSA id q15sm58590390wrr.11.2020.01.22.10.56.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 22 Jan 2020 10:56:34 -0800 (PST)
From:   Bryan O'Donoghue <bryan.odonoghue@linaro.org>
To:     linux-arm-msm@vger.kernel.org, linux-usb@vger.kernel.org,
        gregkh@linuxfoundation.org, jackp@codeaurora.org, balbi@kernel.org,
        bjorn.andersson@linaro.org
Cc:     linux-kernel@vger.kernel.org,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org
Subject: [PATCH v3 18/19] arm64: dts: qcom: qcs404-evb: Enable secondary USB controller
Date:   Wed, 22 Jan 2020 18:56:09 +0000
Message-Id: <20200122185610.131930-19-bryan.odonoghue@linaro.org>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200122185610.131930-1-bryan.odonoghue@linaro.org>
References: <20200122185610.131930-1-bryan.odonoghue@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This patch enables the second DWC3 controller which has one USB Hi-Speed
PHY attached to it.

Cc: Andy Gross <agross@kernel.org>
Cc: Bjorn Andersson <bjorn.andersson@linaro.org>
Cc: Rob Herring <robh+dt@kernel.org>
Cc: Mark Rutland <mark.rutland@arm.com>
Cc: linux-arm-msm@vger.kernel.org
Cc: devicetree@vger.kernel.org
Cc: linux-kernel@vger.kernel.org
Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
---
 arch/arm64/boot/dts/qcom/qcs404-evb.dtsi | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/qcs404-evb.dtsi b/arch/arm64/boot/dts/qcom/qcs404-evb.dtsi
index 0fff50f755ef..07d6d793a922 100644
--- a/arch/arm64/boot/dts/qcom/qcs404-evb.dtsi
+++ b/arch/arm64/boot/dts/qcom/qcs404-evb.dtsi
@@ -318,6 +318,17 @@ pinconf {
 	};
 };
 
+&usb2 {
+	status = "okay";
+};
+
+&usb2_phy_sec {
+	vdd-supply = <&vreg_l4_1p2>;
+	vdda1p8-supply = <&vreg_l5_1p8>;
+	vdda3p3-supply = <&vreg_l12_3p3>;
+	status = "okay";
+};
+
 &wifi {
 	status = "okay";
 	vdd-0.8-cx-mx-supply = <&vreg_l2_1p275>;
-- 
2.25.0

