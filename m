Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 7556711D725
	for <lists+devicetree@lfdr.de>; Thu, 12 Dec 2019 20:36:40 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730699AbfLLTgX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 12 Dec 2019 14:36:23 -0500
Received: from mail-pf1-f193.google.com ([209.85.210.193]:43712 "EHLO
        mail-pf1-f193.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1730633AbfLLTgU (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 12 Dec 2019 14:36:20 -0500
Received: by mail-pf1-f193.google.com with SMTP id h14so1359945pfe.10
        for <devicetree@vger.kernel.org>; Thu, 12 Dec 2019 11:36:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=4glJbGm6Osq/6VJDFjLg5K9tRim8gJy645wMC0GJI1I=;
        b=esePpPU6g7L1+0HiIVkm/Z/c58aTn/jX2Al/epfIY0arJFYC6a1Ds2JA8ERX5OtZHz
         wtz2+UTqVISObMRsLxFItm72PehfO1B1sYaZXcvH975VO6GjMiKtqBa46L7dcBT0PHiJ
         EKI/rXblhF1vDq/LaRXwXWVMoNBlb/X9X7DhA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=4glJbGm6Osq/6VJDFjLg5K9tRim8gJy645wMC0GJI1I=;
        b=DYbkHy0buBgIxBSD45zkUmquEGgWlU2ob3HjqAjwI62XXtwbhNz9M1APdOtexbJIoM
         QOJ1CvFB9jH+94Jp59QnwQWPqu83Mq2mgHP8DwOcLONg1aTE2a5er3Bw2UphMBpikXw1
         FAMGxR4hc1s67NVd7YSJcHEzsRo9pxkkTnAO7/3qXV/8zZ/UVIOkSrztEtDevVOyWYQV
         3/M7OSKimhBggS8FQ/4Mo3HFgaZiqaHzOsBWkH/bwLoM+jHxDVhk3VQq6dACCj+L4E7o
         F+Q515Av/QNOC+poRnoHx4VdZeD7yEDhTNqsfknOkp+kyV9S12V/hlHkn2VaUxHFL1Ci
         UEaA==
X-Gm-Message-State: APjAAAXYZdTffSP5IvBMNO0F3WUYBxNW7LKWd+IP64KsEaDHHFXMMKnI
        54Bb8NaUYpXZNOb8TXt53xIGFA==
X-Google-Smtp-Source: APXvYqyLpnUyrdFd58UemVdwSMgck6ZMbHcSUXTsIH2K14KDkb21MtWgIL3YYnW1Shk+u5cMVCmWeA==
X-Received: by 2002:a63:5818:: with SMTP id m24mr12460344pgb.358.1576179379855;
        Thu, 12 Dec 2019 11:36:19 -0800 (PST)
Received: from tictac2.mtv.corp.google.com ([2620:15c:202:1:24fa:e766:52c9:e3b2])
        by smtp.gmail.com with ESMTPSA id m34sm7568302pgb.26.2019.12.12.11.36.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Dec 2019 11:36:19 -0800 (PST)
From:   Douglas Anderson <dianders@chromium.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>
Cc:     Vinod Koul <vkoul@kernel.org>, Kiran Gunda <kgunda@codeaurora.org>,
        Rajendra Nayak <rnayak@codeaurora.org>, swboyd@chromium.org,
        mka@chromium.org, Sandeep Maheswaram <sanm@codeaurora.org>,
        Amit Kucheria <amit.kucheria@linaro.org>,
        Maulik Shah <mkshah@codeaurora.org>,
        Douglas Anderson <dianders@chromium.org>,
        devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH 3/7] arm64: dts: qcom: sc7180: Add "#clock-cells" property to usb_1_ssphy
Date:   Thu, 12 Dec 2019 11:35:39 -0800
Message-Id: <20191212113540.3.Ia530e4065ca81f55ac8f89a400f6a0a084ff6712@changeid>
X-Mailer: git-send-email 2.24.1.735.g03f4e72817-goog
In-Reply-To: <20191212193544.80640-1-dianders@chromium.org>
References: <20191212193544.80640-1-dianders@chromium.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Running "dtbs_check" yells:
  '#clock-cells' is a dependency of 'clock-output-names'

...and sure enough the bindings say we should have "#clock-cells".
Add it.

Fixes: 0b766e7fe5a2 ("arm64: dts: qcom: sc7180: Add USB related nodes")
Signed-off-by: Douglas Anderson <dianders@chromium.org>
---

 arch/arm64/boot/dts/qcom/sc7180.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/qcom/sc7180.dtsi b/arch/arm64/boot/dts/qcom/sc7180.dtsi
index 1b2bb0b9c9e8..d114feade8e7 100644
--- a/arch/arm64/boot/dts/qcom/sc7180.dtsi
+++ b/arch/arm64/boot/dts/qcom/sc7180.dtsi
@@ -1020,6 +1020,7 @@ usb_1_ssphy: lanes@88e9200 {
 				      <0 0x088e9600 0 0x128>,
 				      <0 0x088e9800 0 0x200>,
 				      <0 0x088e9a00 0 0x18>;
+				#clock-cells = <0>;
 				#phy-cells = <0>;
 				clocks = <&gcc GCC_USB3_PRIM_PHY_PIPE_CLK>;
 				clock-names = "pipe0";
-- 
2.24.1.735.g03f4e72817-goog

