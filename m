Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 45577532BE6
	for <lists+devicetree@lfdr.de>; Tue, 24 May 2022 16:02:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238071AbiEXOCW (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 24 May 2022 10:02:22 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39188 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238080AbiEXOCR (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 24 May 2022 10:02:17 -0400
Received: from mail-wr1-x42e.google.com (mail-wr1-x42e.google.com [IPv6:2a00:1450:4864:20::42e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 15869403DA
        for <devicetree@vger.kernel.org>; Tue, 24 May 2022 07:02:15 -0700 (PDT)
Received: by mail-wr1-x42e.google.com with SMTP id z15so2025523wrg.11
        for <devicetree@vger.kernel.org>; Tue, 24 May 2022 07:02:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=sgUjeNlYCE2nYrQ7xP8GeK8Sj5Es/x6D2DUJducPl+M=;
        b=ULzV1Hc8Tsz7s8NR1qeuBqJZjnNMjGDsSk1eh67MSsDYWMG8uAWOUMzkGnIi9gLEqW
         aGx3UOuXgJXBr6Vq70q9DqLuFprSw+U/2Wbl5OuTdAxylt6/r9cz2HL+eh9Xq8RX52C+
         p3GCYt4Fd1D2rti++gjT8J+qNF9awwCgu0Pm4D4ccrgYiXTF8OXAe+hyYKG5nyYB/v5g
         i2pGMs30/9plGElLHTRf9/rWOVbWfb2avMYoF8l/PsOa6doETPXO7bZBpV/O+6xgWBYs
         K01xufFo6SGSET0vnshmGF1XrlTdZiwtt+JKtT6zgX9lkpGISin62Jc4GpIy2PUUZz9D
         4neA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=sgUjeNlYCE2nYrQ7xP8GeK8Sj5Es/x6D2DUJducPl+M=;
        b=0PfBf6TSpVxIF0gRA1N+xzaNmI8TgH1Dr0oGVZ4Ngp9GzAfY47+bhA3VoVFlLVVLjA
         L8hWC6kNOqII3ZSb8EF25tcWC1M1ogHh2qxHdl7QBZcRDyB+0Huri8vle73wXLp2hMKd
         b1dNvx+yzQx4lBuXpySdg3KjcRTEkCp3kcWcXA+mVnHlnFQYUbDHOoj3SDR1sGRs5rYi
         +lpiVht5U0fdtx3dtcSQCtlgrlgGYgCuSMUN8W1r6uaj1F39OBoD1R3qr/hN4epXTE8h
         ZtVOk0b7KviDe8j4KBudUXQVIpDN52/mIL7C0qBbqyW6iMrAJl6Lz+/z3EnRQMExZWXZ
         4MVQ==
X-Gm-Message-State: AOAM530/28dsEtmLOqiVcRQq4m9F72MQMAz2KMAJlagEbHadYS4+l1yh
        SDNTdYlak5pF31kxGIGl6pbrvg==
X-Google-Smtp-Source: ABdhPJyAzPo3Qyl20Ytz0mMvnvs68j4Zrn+qxWtypGt2QO0yt6mFQJz/zTX/wgyb7luUvzEQuf4FoQ==
X-Received: by 2002:a5d:4529:0:b0:20d:1108:8d76 with SMTP id j9-20020a5d4529000000b0020d11088d76mr23186161wra.60.1653400933501;
        Tue, 24 May 2022 07:02:13 -0700 (PDT)
Received: from sagittarius-a.chello.ie (188-141-3-169.dynamic.upc.ie. [188.141.3.169])
        by smtp.gmail.com with ESMTPSA id f9-20020adfc989000000b0020c5253d8e0sm12829030wrh.44.2022.05.24.07.02.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 May 2022 07:02:12 -0700 (PDT)
From:   Bryan O'Donoghue <bryan.odonoghue@linaro.org>
To:     robert.foss@linaro.org, todor.too@gmail.com, agross@kernel.org,
        bjorn.andersson@linaro.org
Cc:     vladimir.zapolskiy@linaro.org, mchehab@kernel.org,
        robh+dt@kernel.org, krzk+dt@kernel.org,
        linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, mmitkov@quicinc.com, jgrahsl@snap.com,
        hfink@snap.com, Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Subject: [PATCH v2 2/4] arm64: dts: qcom: sm8250: Disable camcc by default
Date:   Tue, 24 May 2022 15:02:05 +0100
Message-Id: <20220524140207.2758605-3-bryan.odonoghue@linaro.org>
X-Mailer: git-send-email 2.36.1
In-Reply-To: <20220524140207.2758605-1-bryan.odonoghue@linaro.org>
References: <20220524140207.2758605-1-bryan.odonoghue@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>

At the moment there are no changes in SM8250 board files, which require
camera clock controller to run, whenever it is needed for a particular
board, the status of camcc device node will be changed in a board file.

Signed-off-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8250.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/qcom/sm8250.dtsi b/arch/arm64/boot/dts/qcom/sm8250.dtsi
index cf0c97bd5ad3..2bc11cad3a44 100644
--- a/arch/arm64/boot/dts/qcom/sm8250.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8250.dtsi
@@ -3407,6 +3407,7 @@ camcc: clock-controller@ad00000 {
 			clock-names = "iface", "bi_tcxo", "bi_tcxo_ao", "sleep_clk";
 			power-domains = <&rpmhpd SM8250_MMCX>;
 			required-opps = <&rpmhpd_opp_low_svs>;
+			status = "disabled";
 			#clock-cells = <1>;
 			#reset-cells = <1>;
 			#power-domain-cells = <1>;
-- 
2.36.1

