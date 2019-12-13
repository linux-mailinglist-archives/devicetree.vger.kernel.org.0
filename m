Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id B883B11DD88
	for <lists+devicetree@lfdr.de>; Fri, 13 Dec 2019 06:17:57 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1732012AbfLMFRY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 13 Dec 2019 00:17:24 -0500
Received: from mail-pj1-f67.google.com ([209.85.216.67]:32810 "EHLO
        mail-pj1-f67.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725385AbfLMFRY (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 13 Dec 2019 00:17:24 -0500
Received: by mail-pj1-f67.google.com with SMTP id r67so703574pjb.0
        for <devicetree@vger.kernel.org>; Thu, 12 Dec 2019 21:17:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=Dqy/QJc+oAc3Pxm6PYdZfNowES2QjcoSqMXPASTC9bA=;
        b=fQ7IVTGGzOAEHEHDike9EbOXDYgyyH8SgqW8MpEv4RvmXds7m5DItzvv90k1mA4AWU
         r0B99PPCANcjubVxR2JlNYr5ZVZp4vStws8TElJuPAvjd+WnaPjr0dkaaY7cn00j+gqJ
         wAZQhF8azeNbXTv67uYl1GWU8uaGgve3/lqC9FzGZz9Xz2/3mkJ2BG++W4qBGsAHtdNE
         hb4QoCCe0pvpf4/wIvEsrEhQRDLtmbonK1QpB1Kr4ekgAmlwqFR8+NUaqj0MtM/dHkx4
         L1k5QYPsj5zarkYoHe4J7UvE+YXDfAeLfbzO7ceU+HlSoOslqyqxTqG7TJrxjSKyaAdB
         lSCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=Dqy/QJc+oAc3Pxm6PYdZfNowES2QjcoSqMXPASTC9bA=;
        b=jxYZx0UbHIjQiuNF1cNhuwcvygG+wpRlgWY6BQZIBLCjQWjWWTSrPVNoMXLULBG6n0
         17DdAkjsJOSZr4bSovWKw1PssRxGmBBDOKhMxgI1TzgpUf4Er5B/UsVbrM66e5no+N/9
         shdzrE7meWFm9Nt7O9TspQkfNkzBfMmO8akCR7GVfYPFevrsBoHkSURL1xhyXtemSYfx
         /hmqM7ekz1JYj7nJIGcAGFURurbwUiYaqGMQV4CsW9riSCcuWPYby9VUK7ms8VtC0dj5
         0UIpKGDV7GsORSn9V6vjL8NO6nbsbOvG/5wc10m7newpDS2pRVT6NZOrlxFPhJ1BAg8D
         Po/Q==
X-Gm-Message-State: APjAAAWMs/rS0i2g5SIBu7TGtodgOH641Ibr8JJbBgZBYTL93oznEttG
        svnExIpgNAZ78TsnjvwOAZ0fLg==
X-Google-Smtp-Source: APXvYqw0GCGyKVbRAws7+exdzFyQp9oKPWroXC4euAviWcWLLtamSORnI4MfqTWy17WmSxdzhWGTFg==
X-Received: by 2002:a17:90b:30c4:: with SMTP id hi4mr14596181pjb.62.1576214243274;
        Thu, 12 Dec 2019 21:17:23 -0800 (PST)
Received: from localhost.localdomain (104-188-17-28.lightspeed.sndgca.sbcglobal.net. [104.188.17.28])
        by smtp.gmail.com with ESMTPSA id g9sm9862109pfm.150.2019.12.12.21.17.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Dec 2019 21:17:22 -0800 (PST)
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: [PATCH] ARM: dts: msm8974: castor: Define pm8841 regulators
Date:   Thu, 12 Dec 2019 21:17:19 -0800
Message-Id: <20191213051719.3688771-1-bjorn.andersson@linaro.org>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Define the pm8841 regulators under SMD/RPM, to allow the modem
remoteproc to set the voltage during boot of the remote processor.

Entries are just copied from the Honami dts.

Signed-off-by: Bjorn Andersson <bjorn.andersson@linaro.org>
---
 .../dts/qcom-msm8974-sony-xperia-castor.dts   | 22 +++++++++++++++++++
 1 file changed, 22 insertions(+)

diff --git a/arch/arm/boot/dts/qcom-msm8974-sony-xperia-castor.dts b/arch/arm/boot/dts/qcom-msm8974-sony-xperia-castor.dts
index 701b396719c7..4655e7941232 100644
--- a/arch/arm/boot/dts/qcom-msm8974-sony-xperia-castor.dts
+++ b/arch/arm/boot/dts/qcom-msm8974-sony-xperia-castor.dts
@@ -56,6 +56,28 @@
 	smd {
 		rpm {
 			rpm_requests {
+				pm8841-regulators {
+					s1 {
+						regulator-min-microvolt = <675000>;
+						regulator-max-microvolt = <1050000>;
+					};
+
+					s2 {
+						regulator-min-microvolt = <500000>;
+						regulator-max-microvolt = <1050000>;
+					};
+
+					s3 {
+						regulator-min-microvolt = <500000>;
+						regulator-max-microvolt = <1050000>;
+					};
+
+					s4 {
+						regulator-min-microvolt = <500000>;
+						regulator-max-microvolt = <1050000>;
+					};
+				};
+
 				pm8941-regulators {
 					vdd_l1_l3-supply = <&pm8941_s1>;
 					vdd_l2_lvs1_2_3-supply = <&pm8941_s3>;
-- 
2.23.0

