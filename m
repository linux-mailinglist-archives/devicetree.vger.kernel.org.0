Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 19A2D704738
	for <lists+devicetree@lfdr.de>; Tue, 16 May 2023 09:59:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230374AbjEPH7a (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 16 May 2023 03:59:30 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57220 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231487AbjEPH7Z (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 16 May 2023 03:59:25 -0400
Received: from mail-pl1-x632.google.com (mail-pl1-x632.google.com [IPv6:2607:f8b0:4864:20::632])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2B4A919B9
        for <devicetree@vger.kernel.org>; Tue, 16 May 2023 00:59:24 -0700 (PDT)
Received: by mail-pl1-x632.google.com with SMTP id d9443c01a7336-1aad5245571so94986295ad.1
        for <devicetree@vger.kernel.org>; Tue, 16 May 2023 00:59:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1684223963; x=1686815963;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hXPr379v0RNMTUDgiVybbs6ZAaMgmHyXdPwhAs3ON+s=;
        b=FC3MzT/N63oFLK9v0sbMmgRElhIIhdGpHEsiZu/+BX5wrg/mVomizyPuCcp+IRqtlQ
         JSkd7n5f2atroRxM1oB32goK5ZX5RXR6ZQhYngIMxVO1tb/0TKKABqJCw6h4VSVT25/6
         FQcw+w+5v4Vh1ykPtrdTAAs0ioXOzpAr6ea7aDO14AaYD5p07LA/J2/j06bGquwBqYJ9
         qTRn71sLp7XspStazQcG7kBXlj0jWDrHE8Ddx40ZYcIhVpKe0FW1bajrIHAyaHvyye8E
         Gmw8DuvAeXRI5nsKefzme7sf3BZPO5RQLDXennwG307DX2iwYwzz+hkYQjBFUJ3dEOgq
         IwRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684223963; x=1686815963;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=hXPr379v0RNMTUDgiVybbs6ZAaMgmHyXdPwhAs3ON+s=;
        b=GXz4iSDcZQKbYTkiahVeBj0Ww6qvcXtbVrarZJnlEe8jKVXgNanD1WWO6ksabHGpJL
         PSSCbNFVyegMRySqEf/cUJGV5176OZO1Xq+AyABsTsCp+tjvevzwZ4N8HEICvG+lonv0
         pcsJLIuerufMA3X9PYMcYaxpQieuS2OEFVa2EtMen211DHsx3cGwqGSDzWwdcvw6WqGP
         bVr8WvPKsrIzqwrVcWQ3ZlKgOS9x5ybqwueH2YigWhGFS5zPlEIyyl6vGg9aCcQpn9RD
         VVlJcZd/4BeAdG6XldcL4lEkUlOPty8F79i2ndW4R014QuojiDfodyTlDxkUybvOQexN
         L7qA==
X-Gm-Message-State: AC+VfDwo0sxJnoyuAnCXXDOdf/6NYTLEwlQnIEo5afCYj35ah7p+TmzS
        XkKWydpncNAVTKvCAcJdsgtf3w==
X-Google-Smtp-Source: ACHHUZ7Q9amWU69WNbEbXTPs6dIfT7XTkwndEKp9QG1m374KkzKnYbInan1jKpAoGkozF+xfTDNaDw==
X-Received: by 2002:a17:902:8c87:b0:1a9:8d57:6d6c with SMTP id t7-20020a1709028c8700b001a98d576d6cmr31180438plo.24.1684223963597;
        Tue, 16 May 2023 00:59:23 -0700 (PDT)
Received: from localhost.localdomain ([2401:4900:1c60:6bed:62ca:2e52:e0c5:d0cb])
        by smtp.gmail.com with ESMTPSA id cl16-20020a17090af69000b002532d74fb59sm469725pjb.22.2023.05.16.00.59.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 16 May 2023 00:59:23 -0700 (PDT)
From:   Bhupesh Sharma <bhupesh.sharma@linaro.org>
To:     linux-arm-msm@vger.kernel.org
Cc:     agross@kernel.org, andersson@kernel.org, konrad.dybcio@linaro.org,
        linux-kernel@vger.kernel.org, bhupesh.linux@gmail.com,
        bhupesh.sharma@linaro.org, robh+dt@kernel.org,
        krzysztof.kozlowski@linaro.org, devicetree@vger.kernel.org,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Subject: [PATCH v4 2/3] arm64: dts: qcom: qrb4210-rb2: Fix CD gpio for SDHC2
Date:   Tue, 16 May 2023 13:29:07 +0530
Message-Id: <20230516075908.2323372-3-bhupesh.sharma@linaro.org>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20230516075908.2323372-1-bhupesh.sharma@linaro.org>
References: <20230516075908.2323372-1-bhupesh.sharma@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Card-Detect (CD) gpio for SDHC2 is an active GPIO line. Fix the same.
This allows the uSD card to be properly detected on the board.

Fixes: 8d58a8c0d930 ("arm64: dts: qcom: Add base qrb4210-rb2 board dts")
Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Bhupesh Sharma <bhupesh.sharma@linaro.org>
---
 arch/arm64/boot/dts/qcom/qrb4210-rb2.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/qrb4210-rb2.dts b/arch/arm64/boot/dts/qcom/qrb4210-rb2.dts
index 504543ad1a1b..abea44fd369d 100644
--- a/arch/arm64/boot/dts/qcom/qrb4210-rb2.dts
+++ b/arch/arm64/boot/dts/qcom/qrb4210-rb2.dts
@@ -203,7 +203,7 @@ &sdhc_1 {
 };
 
 &sdhc_2 {
-	cd-gpios = <&tlmm 88 GPIO_ACTIVE_HIGH>; /* card detect gpio */
+	cd-gpios = <&tlmm 88 GPIO_ACTIVE_LOW>; /* card detect gpio */
 
 	pinctrl-0 = <&sdc2_state_on &sdc2_card_det_n>;
 	pinctrl-1 = <&sdc2_state_off &sdc2_card_det_n>;
-- 
2.38.1

