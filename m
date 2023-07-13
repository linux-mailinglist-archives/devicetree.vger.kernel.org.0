Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 50491752554
	for <lists+devicetree@lfdr.de>; Thu, 13 Jul 2023 16:40:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230102AbjGMOkH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 13 Jul 2023 10:40:07 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50926 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230371AbjGMOkG (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 13 Jul 2023 10:40:06 -0400
Received: from mail-pf1-x430.google.com (mail-pf1-x430.google.com [IPv6:2607:f8b0:4864:20::430])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A5DBB2702
        for <devicetree@vger.kernel.org>; Thu, 13 Jul 2023 07:40:05 -0700 (PDT)
Received: by mail-pf1-x430.google.com with SMTP id d2e1a72fcca58-66869feb7d1so516742b3a.3
        for <devicetree@vger.kernel.org>; Thu, 13 Jul 2023 07:40:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20221208.gappssmtp.com; s=20221208; t=1689259205; x=1691851205;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7FgQIEmSzQ4dFeEFG76qRf/jhDRaMc5SrZrSKL4bD1Y=;
        b=KTEmLT4F8Cah0ovXAWR3WZ+iIf5n88zvYx6AeJQpdfDQGPXSTGGMvHYv2c/+6nrJRP
         9l4h+HqU6yslx59r8zY8+3FL+8GVx3gmqft44V74DU9RCabgvFfGdOs6zI54tVHUFlS+
         UVhSALUdvxRZLShushRqNlDwCQVTJODQfYNhkHERV2vo9sVjLzg8oAQxCc4c8JR1tGCP
         5Ukb7NriUld+fbt71YSjdOVazfB7CkvdTfaYUPIWbZl3VrTEm5gyBnwYwiZOZac4k9jq
         n6j55WQYrlsUHz2xsIw/dHsoOQzrPuOIYg5LlQmwJ/cidUo2NhVZtksSDpq1Ul9lj9fN
         eU1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689259205; x=1691851205;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=7FgQIEmSzQ4dFeEFG76qRf/jhDRaMc5SrZrSKL4bD1Y=;
        b=bkRLC/QC1YOBhwQNrKZ3BTv9pQWfAHMkXf8zHCCU01ojVMQoobwtY174JDa2w5J9W7
         3f4ca1gDPFgErzHaTvaYEbg6BrVTouoLNglCQwpMg8L2jCYJ1bJODF9IdKAxXvnlAHaN
         ee/BhqEB9BJDeh/ZW+27zB2dG7tabG0SlZt7KYJKm2o0dZ/hVBs65u7pkASB5s1P7nse
         y6zIO6RYqwCxvDmDFgJUoPWKsOM9vQQ8ygHsKP4sYJ4E63EJ0dzCi8wdDcmlTL0sqoV7
         NtcRGL9igv2P6ZCnxLqkBbwO8zno4NwB+AJqiYeI1dxX70XidNuEGAKompVulDkFbBKK
         UIiw==
X-Gm-Message-State: ABy/qLZpxwMmtq0CdbTMzUIN1ukkwtIIzK5Mvr9/irK5PlY9Ebi0wee2
        B8RSEpf8VbKvpMQzyDtslLljXp6oBep9xITA7Oy2LA==
X-Google-Smtp-Source: APBJJlEPTj0LTZ9j4HJ7wKnTjcCoEfBrmnuijG+9GGHwH7UEyrUfZvu2cVGcA2ICM7t3pGSIklBJqg==
X-Received: by 2002:aa7:88c3:0:b0:682:562a:39ae with SMTP id k3-20020aa788c3000000b00682562a39aemr1908978pff.32.1689259205162;
        Thu, 13 Jul 2023 07:40:05 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c00a:a208:4984:5087:308e:21ca])
        by smtp.gmail.com with ESMTPSA id d18-20020aa78692000000b0067a50223e44sm5565764pfo.74.2023.07.13.07.40.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 13 Jul 2023 07:40:04 -0700 (PDT)
From:   Jagan Teki <jagan@edgeble.ai>
To:     Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, Jagan Teki <jagan@edgeble.ai>
Subject: [PATCH 7/8] arm64: dts: rockchip: Enable RS232 for edgeble-neu6b
Date:   Thu, 13 Jul 2023 20:09:40 +0530
Message-Id: <20230713143941.1756849-7-jagan@edgeble.ai>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230713143941.1756849-1-jagan@edgeble.ai>
References: <20230713143941.1756849-1-jagan@edgeble.ai>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_NONE,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add RS232 support for Edgeble Neu6B NCM IO board.

Signed-off-by: Jagan Teki <jagan@edgeble.ai>
---
 arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6b-io.dts | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6b-io.dts b/arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6b-io.dts
index 7ce87366c16c..1bcd64680ff0 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6b-io.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6b-io.dts
@@ -77,3 +77,10 @@ &uart2 {
 	pinctrl-0 = <&uart2m0_xfer>;
 	status = "okay";
 };
+
+/* RS232 */
+&uart6 {
+	pinctrl-0 = <&uart6m0_xfer>;
+	pinctrl-names = "default";
+	status = "okay";
+};
-- 
2.25.1

