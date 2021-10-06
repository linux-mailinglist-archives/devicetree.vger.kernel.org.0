Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 60083424354
	for <lists+devicetree@lfdr.de>; Wed,  6 Oct 2021 18:49:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231536AbhJFQvJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 6 Oct 2021 12:51:09 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42170 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234535AbhJFQtP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 6 Oct 2021 12:49:15 -0400
Received: from mail-wr1-x430.google.com (mail-wr1-x430.google.com [IPv6:2a00:1450:4864:20::430])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5D390C061746
        for <devicetree@vger.kernel.org>; Wed,  6 Oct 2021 09:47:22 -0700 (PDT)
Received: by mail-wr1-x430.google.com with SMTP id k7so10617121wrd.13
        for <devicetree@vger.kernel.org>; Wed, 06 Oct 2021 09:47:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=LKWPbxLo6mAAF4ujncUu3mf+YPEjPv0VvIo6LHi52tk=;
        b=b0cFkEOTbeIZOXNHB19twXRj6Uy6BxxE8D8nV4mXZNqf/Wd+KUJe3aoc6uBBXMBgEa
         Iso74BsMoYynmpwCliKFodKy8w2/eoknnGdgQf0WIUa3MUB25+vIgEjDbaxW41O0dOKE
         JHY/IzmXd5s2Q4IidHRF3UsNJoVA5aB504GYJMXhigYh62UpGXsHqZOLjv7evvig09DU
         6A08RJbNS5z/XkyKF3SGBH+rhq8Ctv2EL7n00AJvKYENMiffvDNc5eWpAabZX7tUVcpa
         PiyeM+nFdkyTayGwLqVrzz6vDe1bghb5r7PcWWNpztjdKL4hNF5xhH3hPbpncmdvsdEk
         ojcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=LKWPbxLo6mAAF4ujncUu3mf+YPEjPv0VvIo6LHi52tk=;
        b=lxMpT8iyulccVfkit9Ku4tF/ULw66xc3l6QMVElU6KEnu+qcxvek+5JO7rUPbMqyDA
         jYoE991HaIExHHhRouokgGJnyJJNuf7k/4WUq+zTTinNJUyOCFTeN9VzAK3ha8uL70m4
         zLAD3SOLGhQ4Sg/giPva3N5uu1Ks0rS4skvAdNlOzNPgphe9I3+GgJuCi6Q9jwHPDKMQ
         C90JKW7l7hzOURqb6pdqKfVUCAy67a+aRVxJ2nzlfT53fril6B60g2JRlUYVyxeKh9xv
         8IKbquusy8vCK/BYjVozTqfxhqC63osN3yHwtbLBik441P8quZb+1YmQb2Gck+QfhRdD
         hc3g==
X-Gm-Message-State: AOAM5312v5FDcWoBCznF9ecPzyw3qFuPyX4GvU0gKja+bPBSjoWWVvGk
        J9dmbuCaXEG7nzpKClytV7D1fw==
X-Google-Smtp-Source: ABdhPJwGToLVuGBE9PY+PQTmWcG8RKCHuCuEcbfobRrJm2SCV9pqxUqu5yvmSPbYT3UGSfhBSNMJow==
X-Received: by 2002:adf:f946:: with SMTP id q6mr29798036wrr.437.1633538840952;
        Wed, 06 Oct 2021 09:47:20 -0700 (PDT)
Received: from srini-hackbox.lan (cpc86377-aztw32-2-0-cust226.18-1.cable.virginm.net. [92.233.226.227])
        by smtp.gmail.com with ESMTPSA id l21sm6785165wmg.18.2021.10.06.09.47.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 06 Oct 2021 09:47:20 -0700 (PDT)
From:   Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
To:     bjorn.andersson@linaro.org
Cc:     agross@kernel.org, robh+dt@kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Subject: [PATCH 3/4] arm64: dts: qcom: sm8250-mtp: Add wsa8810 audio codec node
Date:   Wed,  6 Oct 2021 17:47:11 +0100
Message-Id: <20211006164712.16078-4-srinivas.kandagatla@linaro.org>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20211006164712.16078-1-srinivas.kandagatla@linaro.org>
References: <20211006164712.16078-1-srinivas.kandagatla@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

SM8250-MTP has WSA8810 via wsa macro for Speaker playback use case.
Add node for this device to be able to use it for sound card device.

Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8250-mtp.dts | 20 ++++++++++++++++++++
 1 file changed, 20 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm8250-mtp.dts b/arch/arm64/boot/dts/qcom/sm8250-mtp.dts
index 9f6cc2fff39b..9b27053ca3af 100644
--- a/arch/arm64/boot/dts/qcom/sm8250-mtp.dts
+++ b/arch/arm64/boot/dts/qcom/sm8250-mtp.dts
@@ -648,6 +648,26 @@
 	};
 };
 
+&swr0 {
+	left_spkr: wsa8810-right@0,3{
+		compatible = "sdw10217211000";
+		reg = <0 3>;
+		powerdown-gpios = <&tlmm 26 GPIO_ACTIVE_HIGH>;
+		#thermal-sensor-cells = <0>;
+		sound-name-prefix = "SpkrLeft";
+		#sound-dai-cells = <0>;
+	};
+
+	right_spkr: wsa8810-left@0,4{
+		compatible = "sdw10217211000";
+		reg = <0 4>;
+		powerdown-gpios = <&tlmm 127 GPIO_ACTIVE_HIGH>;
+		#thermal-sensor-cells = <0>;
+		sound-name-prefix = "SpkrRight";
+		#sound-dai-cells = <0>;
+	};
+};
+
 &swr1 {
 	wcd_rx: wcd9380-rx@0,4 {
 		compatible = "sdw20217010d00";
-- 
2.21.0

