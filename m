Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5F2572C4CF4
	for <lists+devicetree@lfdr.de>; Thu, 26 Nov 2020 02:56:35 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1732219AbgKZBzE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 25 Nov 2020 20:55:04 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34070 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1732199AbgKZBzE (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 25 Nov 2020 20:55:04 -0500
Received: from mail-io1-xd44.google.com (mail-io1-xd44.google.com [IPv6:2607:f8b0:4864:20::d44])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EF4C6C0613D4
        for <devicetree@vger.kernel.org>; Wed, 25 Nov 2020 17:55:03 -0800 (PST)
Received: by mail-io1-xd44.google.com with SMTP id d17so298917ion.4
        for <devicetree@vger.kernel.org>; Wed, 25 Nov 2020 17:55:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=JZPNRoMYLuNJx5R1MzdfuSOABELG2lesyMBvmWbGMxg=;
        b=Y83xQoxY42o2AGkyqw94yGwRvU6beQuwKDAcwuN3u4isJP4Z7zYsx7skmLeypkJOWX
         EZOMMtaPcZAvibDIKIZhDWTEqRlf/pVYptAQ+GjPZbBjlF6mXJKCdXtE0px7pLbScmAp
         taGqxTIHGTNmm/P/8Hj72fRoO1vF3ptvBoKrXbYQpUZnqAbITSALDHbNKlVNNT0yfZgC
         1C0pkPlJWBI5g1h2FYTslK9cSFvTWav54/L87IEocaxGYoSxUuT0hUs1fzXg4IaQ0rQH
         ha9AWWvJUWbwrlJoP03aSZUKYpVpMVcmz2iwWlhp1j3f8GQjDxpyIVSeX9yYa+SrQNlV
         O0cA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=JZPNRoMYLuNJx5R1MzdfuSOABELG2lesyMBvmWbGMxg=;
        b=sy/m0LaiwUXZ2ovf4H6sHGyx3ah4hX8o0ANo7Of/ZicPemGwD8D6yzRpDm/7dGlU/g
         CNHErPCzq9Lp9DWggVxZ3DmsG7LLhw8JRHrssrxkrXCmjjh1ZY9n38lD1DTDjOuW1tAa
         jGRSMgZt7kvivo/SO3+i6gcpFNaA0qDleJjA+aY6yaPT6SIFevD5u5k7XSwQnZZ7kUzG
         GURvAyujzvrvDc4nSIy+FDKtGxfdcPjSwU3AKE+yaH3KmV1+CS6dm5HcREqtL+/4i2sh
         wgOrXu6iqmmIVbDt2YiU/bqDnDMM3rTG9jVyBJ6ttckGoENSCjOMdqfxhS8Mff99xvW8
         HoZQ==
X-Gm-Message-State: AOAM532gd9Yx022O/MLcUzfXm9pScRR6g8zcj7lfLUUHZB4+dcMoHROg
        xAnQj3vIMKlxcwf7Ki+0xo5gNQ==
X-Google-Smtp-Source: ABdhPJwroJ+IBdUoOfNghJSRcYSl3w+fPGFUXL0KylB1fx8E+KtTa9F5FZDZPY30Rg0cHlbHEOoDeg==
X-Received: by 2002:a6b:8e4e:: with SMTP id q75mr509341iod.183.1606355703385;
        Wed, 25 Nov 2020 17:55:03 -0800 (PST)
Received: from beast.localdomain (c-73-185-129-58.hsd1.mn.comcast.net. [73.185.129.58])
        by smtp.gmail.com with ESMTPSA id r17sm1714907ioj.5.2020.11.25.17.55.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Nov 2020 17:55:02 -0800 (PST)
From:   Alex Elder <elder@linaro.org>
To:     bjorn.andersson@linaro.org, agross@kernel.org, robh+dt@kernel.org
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: [PATCH 3/3] arm64: dts: qcom: sdm845: use GIC_SPI for IPA interrupts
Date:   Wed, 25 Nov 2020 19:54:57 -0600
Message-Id: <20201126015457.6557-4-elder@linaro.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20201126015457.6557-1-elder@linaro.org>
References: <20201126015457.6557-1-elder@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Use GIC_SPI rather than 0 in the specifiers for the two ARM GIC
interrupts used by IPA.

Signed-off-by: Alex Elder <elder@linaro.org>
---
 arch/arm64/boot/dts/qcom/sdm845.dtsi | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sdm845.dtsi b/arch/arm64/boot/dts/qcom/sdm845.dtsi
index 957ee80704e74..256a698745ac2 100644
--- a/arch/arm64/boot/dts/qcom/sdm845.dtsi
+++ b/arch/arm64/boot/dts/qcom/sdm845.dtsi
@@ -2152,8 +2152,8 @@
 				    "ipa-shared",
 				    "gsi";
 
-			interrupts-extended = <&intc 0 311 IRQ_TYPE_EDGE_RISING>,
-					      <&intc 0 432 IRQ_TYPE_LEVEL_HIGH>,
+			interrupts-extended = <&intc GIC_SPI 311 IRQ_TYPE_EDGE_RISING>,
+					      <&intc GIC_SPI 432 IRQ_TYPE_LEVEL_HIGH>,
 					      <&ipa_smp2p_in 0 IRQ_TYPE_EDGE_RISING>,
 					      <&ipa_smp2p_in 1 IRQ_TYPE_EDGE_RISING>;
 			interrupt-names = "ipa",
-- 
2.20.1

