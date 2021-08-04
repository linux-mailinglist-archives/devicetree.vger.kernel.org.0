Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 26CC93E09C1
	for <lists+devicetree@lfdr.de>; Wed,  4 Aug 2021 23:02:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239975AbhHDVCi (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 4 Aug 2021 17:02:38 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60518 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239838AbhHDVCe (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 4 Aug 2021 17:02:34 -0400
Received: from mail-il1-x132.google.com (mail-il1-x132.google.com [IPv6:2607:f8b0:4864:20::132])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A13AAC0613D5
        for <devicetree@vger.kernel.org>; Wed,  4 Aug 2021 14:02:21 -0700 (PDT)
Received: by mail-il1-x132.google.com with SMTP id h18so2929064ilc.5
        for <devicetree@vger.kernel.org>; Wed, 04 Aug 2021 14:02:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=NjqtwhIzT69tLKAymSZ18OrAY8s/2mcd8Zh8B0GqWaw=;
        b=ZhFrylSiWwzX9cnU058+e5dsOIR6iLTTokF7dtxFN1BV6e98QEkjFz0Oo5Sdj2XBug
         CaWko/QaCAWL850lY9cdQR7hhBPUnMGoTMQgDouFPAhNZ9mEjIaso8ASs7ce5ruOPpRc
         +c6huaIMOANZuU0VeQcSeXXQCxpvJfMetrMjczRJcTCSaZOMNl1/JaVOQv3ozgez+Q8/
         iulQeSwCvPdbRqeO78LegWoE1tnssxWfQOGSNR6MwuK1GhezDHH8+UC8/xlO0+F9FEdE
         Lx95fQt7ZDB+6is+DVAdfyNN9IQa/IFZJP8m4p4K17FYVG75vPPGcoxyCVLvlxnTNZ5m
         U2Rw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=NjqtwhIzT69tLKAymSZ18OrAY8s/2mcd8Zh8B0GqWaw=;
        b=phNlOsSipraMapIe0ylq/dPBcHLUbUziHZvqQPayfkqQInVvtSJLV1c1mptuQz19Er
         W0SP3QxEgTpKj83ZOWHmsHwRoa9r/oaQoDGYYLANp124cEtZamxW+EPCwhM/ZGtbisn1
         teDAz54knCzQGBl24iBLlBMEYqUFaOK/5QMGgGoffc+WbfCbKPyab+bN7TGnbJBZZ2oc
         josYFnRkvo7EyjDgC2DXle44MzopMs8xCdPtCrk87iFtHpZl3FCSUfYs/gsVCFpY0PIV
         YxEw6lfII9AiuLJV/AoAweD2RUjF1QQ1CIeAgz4KSbICB9GuwMihFLFtYOXbMoPne3kQ
         EMyg==
X-Gm-Message-State: AOAM531twWgjVm+FIAOQLF1BY4gZLWPsXJ1h2watT3YQW9iFkKe8cwnd
        +QkDXhOjRgLuRELhfS1ciixAz01P8Q/eJQ==
X-Google-Smtp-Source: ABdhPJyxrJ2p1cpMjRNVcbXiTUpcDLT12R1hq0MOO0ygZjDeB82TO2dsXp74XzgBB3/9GPOOYwT/Pw==
X-Received: by 2002:a92:c8ce:: with SMTP id c14mr924242ilq.1.1628110941103;
        Wed, 04 Aug 2021 14:02:21 -0700 (PDT)
Received: from presto.localdomain (c-73-185-129-58.hsd1.mn.comcast.net. [73.185.129.58])
        by smtp.gmail.com with ESMTPSA id d18sm1687396ile.32.2021.08.04.14.02.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Aug 2021 14:02:20 -0700 (PDT)
From:   Alex Elder <elder@linaro.org>
To:     bjorn.andersson@linaro.org, agross@kernel.org
Cc:     robh+dt@kernel.org, elder@kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: [PATCH 3/4] arm64: dts: qcom: sc7180: define ipa_fw_mem node
Date:   Wed,  4 Aug 2021 16:02:13 -0500
Message-Id: <20210804210214.1891755-4-elder@linaro.org>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20210804210214.1891755-1-elder@linaro.org>
References: <20210804210214.1891755-1-elder@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Define the reserved memory space used for IPA firmware for the
Qualcomm SC7180 SoC.

Signed-off-by: Alex Elder <elder@linaro.org>
---
 arch/arm64/boot/dts/qcom/sc7180.dtsi | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sc7180.dtsi b/arch/arm64/boot/dts/qcom/sc7180.dtsi
index 9b65896d62dc1..5b10eb4be2b1d 100644
--- a/arch/arm64/boot/dts/qcom/sc7180.dtsi
+++ b/arch/arm64/boot/dts/qcom/sc7180.dtsi
@@ -110,6 +110,11 @@ tz_mem: memory@80b00000 {
 			no-map;
 		};
 
+		ipa_fw_mem: memory@8b700000 {
+			reg = <0 0x8b700000 0 0x10000>;
+			no-map;
+		};
+
 		rmtfs_mem: memory@94600000 {
 			compatible = "qcom,rmtfs-mem";
 			reg = <0x0 0x94600000 0x0 0x200000>;
-- 
2.27.0

