Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 3D238346B0
	for <lists+devicetree@lfdr.de>; Tue,  4 Jun 2019 14:29:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727542AbfFDM3h (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 4 Jun 2019 08:29:37 -0400
Received: from mail-lj1-f195.google.com ([209.85.208.195]:41992 "EHLO
        mail-lj1-f195.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727495AbfFDM3h (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 4 Jun 2019 08:29:37 -0400
Received: by mail-lj1-f195.google.com with SMTP id t28so8359385lje.9
        for <devicetree@vger.kernel.org>; Tue, 04 Jun 2019 05:29:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=MEMpjywarvEIBpqLOs0vJ3c4H0FioFO5FH41QQdLsTU=;
        b=l31B3A5DK5yaDaUiuO+4HGcagdn0NkvHuppeEAbpodeU9ctKE/fsIFO4+B2QfE/e7+
         G4cnqbrtvFi9AdL7LGafgtKNNbtaQH6MQLkvq7mvfC8wtRHAr4Sv62e9MbAURw95Sb1u
         FqCRGz7XfbCA0quCluQSn7QJlMLjuDlQdrlNEF2mMN1qJU2TFZAwQauDB92Oqd7rwz9u
         0Gyet5i9HEFB/jdW2Raxdn7K/E91xo2e9nhjWC+uuyhTE8vxwD5WAjwSsRPoCAgcICsm
         nJj2IlOT8k03uRjO3xFSFcG5ntXYi3dTqwH+UiVY8aHQJ1BPRGguknNx1ot+0vZC4PHP
         /rhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=MEMpjywarvEIBpqLOs0vJ3c4H0FioFO5FH41QQdLsTU=;
        b=M1iugt8kzleremqYfyTWzJ/4jAzgH825H88V2WkVE8C9jS/p0rGLJNGMaFlLUrLHuj
         1xiI75scIwo2T3a0q9YeWJbwT0v6pJL+1lpUi7cp62yRInnfurDkeYgZI3Xe9KnobDK2
         LjN9rrEAje2KF0jBQalP7GY/XEZ7cMxNZor4HaM8xSrkZIi3G+D9uwig47gi0YdkaiIN
         nTMqKdnnC3DSSxgqho/peAVN7n/UGXtpBxLp3CXQ31JLIGJ8HVHPcf+IvGT9BoNvVhw7
         vdk+fWvH9w5kx79d7UT9qPuDJGlrNfs878utirrIMjMCw+s5zmRIqh/etgVoPMtlGman
         koCA==
X-Gm-Message-State: APjAAAWpzTbEsmhNzcroMz0IT5Rrn+FmVIP2PcVoSpo1J6JHvFQrAO2d
        whdnM9UDGj5V2H6kdyB0WB8UtQ==
X-Google-Smtp-Source: APXvYqwV+FwOVL156Jwgxn4HfmhR4c4RJUEji+CigP/7IgjPiauVSOU7vsxfGGhUtHXXXb6eAGi7BA==
X-Received: by 2002:a2e:890c:: with SMTP id d12mr16520655lji.107.1559651375370;
        Tue, 04 Jun 2019 05:29:35 -0700 (PDT)
Received: from centauri.ideon.se ([85.235.10.227])
        by smtp.gmail.com with ESMTPSA id l15sm3754389lji.5.2019.06.04.05.29.34
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Tue, 04 Jun 2019 05:29:34 -0700 (PDT)
From:   Niklas Cassel <niklas.cassel@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        David Brown <david.brown@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>
Cc:     amit.kucheria@linaro.org, bjorn.andersson@linaro.org,
        Niklas Cassel <niklas.cassel@linaro.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: [PATCH] arm64: dts: msm8996: fix PSCI entry-latency-us
Date:   Tue,  4 Jun 2019 14:29:31 +0200
Message-Id: <20190604122931.22235-1-niklas.cassel@linaro.org>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The current entry-latency-us is too short.
The proper way to convert between the device tree properties
from the vendor tree to the upstream PSCI device tree properties is:

entry-latency-us = qcom,time-overhead - qcom,latency-us

which gives

entry-latency-us = 210 - 80 = 130

Fixes: f6aee7af59b6 ("arm64: dts: qcom: msm8996: Add PSCI cpuidle low power states")
Signed-off-by: Niklas Cassel <niklas.cassel@linaro.org>
---
 arch/arm64/boot/dts/qcom/msm8996.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/msm8996.dtsi b/arch/arm64/boot/dts/qcom/msm8996.dtsi
index b7cf2a17dcb5..e8c03b5c8990 100644
--- a/arch/arm64/boot/dts/qcom/msm8996.dtsi
+++ b/arch/arm64/boot/dts/qcom/msm8996.dtsi
@@ -174,7 +174,7 @@
 				compatible = "arm,idle-state";
 				idle-state-name = "standalone-power-collapse";
 				arm,psci-suspend-param = <0x00000004>;
-				entry-latency-us = <40>;
+				entry-latency-us = <130>;
 				exit-latency-us = <80>;
 				min-residency-us = <300>;
 			};
-- 
2.21.0

