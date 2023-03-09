Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C19786B2192
	for <lists+devicetree@lfdr.de>; Thu,  9 Mar 2023 11:38:06 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231295AbjCIKiE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 9 Mar 2023 05:38:04 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34384 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231192AbjCIKiC (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 9 Mar 2023 05:38:02 -0500
Received: from mail-wm1-x335.google.com (mail-wm1-x335.google.com [IPv6:2a00:1450:4864:20::335])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3B28572AB
        for <devicetree@vger.kernel.org>; Thu,  9 Mar 2023 02:37:59 -0800 (PST)
Received: by mail-wm1-x335.google.com with SMTP id r19-20020a05600c459300b003eb3e2a5e7bso927158wmo.0
        for <devicetree@vger.kernel.org>; Thu, 09 Mar 2023 02:37:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20210112.gappssmtp.com; s=20210112; t=1678358278;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=oHOI4UkUK5oO1VdssttDKu7g+Xl2AjZdIgfXK9JY2WI=;
        b=fac2F3zMz49R8TFISsSCxq4ka9zzu9Gxf+yvdY0jPXVsBM2gi5PIpiNeX68GNWjUjL
         8UyqdzbIdufdyioQIMfs6qPBC3UJcxHR6TzV9U6ITdH2/27pDr2tl3nPrL7MtmzLYczc
         3YZkr04Blu4g5kgnP+pyiPdZ2R99WmGrRF157swluPH6G6vdbE/I+kpKEHoSc+kgt2pR
         cJp+tIjL4akHWhnuK9XSRuNlQrnaM+nR0QYby1E7KPxoCRWZkOS0BQo9eK1XFCney/YS
         k24a5CCXTzOgCQkWUShyWSAgwmsl5uNd2X/fhRmxkCcg6LIA0+6Vsn3s9iuz7k2u6rT7
         DgrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678358278;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=oHOI4UkUK5oO1VdssttDKu7g+Xl2AjZdIgfXK9JY2WI=;
        b=LSNZYdpBBuNyL316eU4Zc4qJSe8hjW6s7Ra+LYLSH3hfWjI5thOl4p2XAMs/aoqRgr
         DD+DE5EeYcMFv77Yi1VECB8vLNxHoGopDpFRluh4DR8QhP7Qp7zgMJ3HwGvizEh7t3rR
         x7PSNpeRVDH73xNj0RoV2e5qGXuvpltfEm+R37MPFZAw12CQCWYTnAwmCJWKZlZQSjOm
         SYW3oruN2qPH2uV0jyEwp2vWWjztT5UOZLfX31nwR4LruAH/Dp1y4exEOs/j5gqAqjcr
         QzxYHAIkVaB20IGzNbJvdsFSK/a6c0EKVhBwqCMeRfPmXESo6SCNKtUSCdNLxIo9YKyW
         ZWmQ==
X-Gm-Message-State: AO0yUKXsgfcsOmW+VdZWp3ZebsLmqu8uQ+dfS2x2+VsrmdFvxXLfLYDi
        8eLwPgxjASdmFGP6QkEkYc51/A==
X-Google-Smtp-Source: AK7set/+kUQ2xOTClzSUpUETFRPaxSFqq7792SS0PhAni/lnaO9p9QC3wHNx5Shxwucm+A/Cr3PjgQ==
X-Received: by 2002:a05:600c:45d2:b0:3df:e6bb:768 with SMTP id s18-20020a05600c45d200b003dfe6bb0768mr19090612wmo.24.1678358277776;
        Thu, 09 Mar 2023 02:37:57 -0800 (PST)
Received: from brgl-uxlite.home ([2a01:cb1d:334:ac00:f14c:2275:50fc:c056])
        by smtp.gmail.com with ESMTPSA id f2-20020a5d58e2000000b002c56af32e8csm17638119wrd.35.2023.03.09.02.37.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Mar 2023 02:37:57 -0800 (PST)
From:   Bartosz Golaszewski <brgl@bgdev.pl>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
Subject: [PATCH v5 2/9] arm64: dts: qcom: sa8775p-ride: enable QUPv3 #2
Date:   Thu,  9 Mar 2023 11:37:45 +0100
Message-Id: <20230309103752.173541-3-brgl@bgdev.pl>
X-Mailer: git-send-email 2.37.2
In-Reply-To: <20230309103752.173541-1-brgl@bgdev.pl>
References: <20230309103752.173541-1-brgl@bgdev.pl>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>

Enable the second instance of the QUPv3 engine on the sa8775p-ride board.

Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>
---
 arch/arm64/boot/dts/qcom/sa8775p-ride.dts | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sa8775p-ride.dts b/arch/arm64/boot/dts/qcom/sa8775p-ride.dts
index 3adf7349f4e5..a538bb79c04a 100644
--- a/arch/arm64/boot/dts/qcom/sa8775p-ride.dts
+++ b/arch/arm64/boot/dts/qcom/sa8775p-ride.dts
@@ -24,6 +24,10 @@ &qupv3_id_1 {
 	status = "okay";
 };
 
+&qupv3_id_2 {
+	status = "okay";
+};
+
 &sleep_clk {
 	clock-frequency = <32764>;
 };
-- 
2.37.2

