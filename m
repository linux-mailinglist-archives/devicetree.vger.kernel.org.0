Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 14C0C7787C3
	for <lists+devicetree@lfdr.de>; Fri, 11 Aug 2023 09:00:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230224AbjHKHAN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 11 Aug 2023 03:00:13 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41442 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229514AbjHKHAN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 11 Aug 2023 03:00:13 -0400
Received: from mail-lf1-x133.google.com (mail-lf1-x133.google.com [IPv6:2a00:1450:4864:20::133])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B0CB01FCF
        for <devicetree@vger.kernel.org>; Fri, 11 Aug 2023 00:00:12 -0700 (PDT)
Received: by mail-lf1-x133.google.com with SMTP id 2adb3069b0e04-4fe55d70973so1950576e87.0
        for <devicetree@vger.kernel.org>; Fri, 11 Aug 2023 00:00:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1691737210; x=1692342010;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=ZO+0t0pyCEILeWF9yOM0xEMb/3t8jNC2CHSy3xR9ZNo=;
        b=k213CQ0AdKd3A0ljiBUC9tNyrWo9vEYG/IWew7Gnux21rG8xC+JddPm5FESpiDar3d
         B/nUU7K4ldKuDYgGAnbK128kwozH7aBil+0ccmI7Kjc1YLSQcUJjte0PQ8LdLkEZujSK
         pTAScrsTnC7SelelxKPs6KoM7UHsXU+x20lW/d0cPme+QwDyT6uyj33Wby4Y7WFo83NS
         1S5t3Ezs9ahLy5Fxo1uo+r/jtFRD45l9ktweGmDohzdtZTncnMMDDFmZE8fqI9m99yPw
         Hnr+V9sbez0WhuWFeS9XLOu3swF0Q+JhN/qTvbnQY1YnMomvYjzskbRaMspSBHgWvjod
         rf9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1691737210; x=1692342010;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ZO+0t0pyCEILeWF9yOM0xEMb/3t8jNC2CHSy3xR9ZNo=;
        b=WZaIsP21mtpieJTwZCmgXgF83popn8gWFs/nZkjBWXSJMOU2+YDcgCKpDDIBv4jjm7
         HlId05wCzXkjWPacpBgyO65NJJU4yoOHBoSObnpixMtnreW7vzzNnJaK42neeiuZav4v
         oi6Va3gA7UezRzxR4YzSq0MHPa3arafs+JV4uUagkN8hlozYW5p8nZC+EYvvNxOznk8t
         rh5cDVKCeOssZNKBEJ/TSDs2floQTfDxpHDqHN9TGPfF4YnfeAew2hd75OJOC/zEuc1q
         HampKXmoiTrpTgFtk39EI9m/T3r+Yblw2gNqA7P4bt+9hcFpIuQ2u5YCVVxcU8vsCy73
         q85A==
X-Gm-Message-State: AOJu0Yx1K1x9vg9MI0p2HR6es7QnyVTCkhS/PAoHBE6B6o1H/OctiHFg
        qvUnm6uydve18EoZP3SUKDsdnqaTSfC4zBbEULU=
X-Google-Smtp-Source: AGHT+IHL7DVVZChwcnoi9LN1Ihztgw830qsj9gy9QaJ8sihKBISU2+VNNcGWnfTCtaBezwfbYbVH3Q==
X-Received: by 2002:a05:6512:3111:b0:4fb:8938:48ab with SMTP id n17-20020a056512311100b004fb893848abmr379814lfb.16.1691737210600;
        Fri, 11 Aug 2023 00:00:10 -0700 (PDT)
Received: from [127.0.1.1] ([85.235.12.238])
        by smtp.gmail.com with ESMTPSA id c27-20020ac244bb000000b004fb85ffc82csm606425lfm.10.2023.08.11.00.00.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 11 Aug 2023 00:00:09 -0700 (PDT)
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Fri, 11 Aug 2023 09:00:06 +0200
Subject: [PATCH] ARM: dts: integrator: fix PCI bus dtc warnings
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20230811-versatile-dts-v6-6-v1-1-d8cb9d1947ed@linaro.org>
X-B4-Tracking: v=1; b=H4sIAHXc1WQC/x3MQQqAIBBA0avErBvQoqyuEi0sxxqICkckiO6et
 HyL/x8QCkwCQ/FAoMTC55GhywKWzR4rIbtsqFRVq05rTBTERt4JXRRMLbborFlmr2zfOAM5vAJ
 5vv/pOL3vBy7XghBkAAAA
To:     arm@kernel.org, soc@kernel.org
Cc:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        Lin Yujun <linyujun809@huawei.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Linus Walleij <linus.walleij@linaro.org>
X-Mailer: b4 0.12.3
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Lin Yujun <linyujun809@huawei.com>

An warning is reported when allmodconfig is used to compile the kernel of the ARM architecture:

arch/arm/boot/dts/arm/integratorap.dts:161.22-206.4: Warning (pci_bridge): /pciv3@62000000: node name is not "pci" or "pcie"

Change the node name to pci to clear the build warning.

Signed-off-by: Lin Yujun <linyujun809@huawei.com>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
 arch/arm/boot/dts/arm/integratorap.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/arm/integratorap.dts b/arch/arm/boot/dts/arm/integratorap.dts
index 5b52d75bc6be..d9927d3181dc 100644
--- a/arch/arm/boot/dts/arm/integratorap.dts
+++ b/arch/arm/boot/dts/arm/integratorap.dts
@@ -158,7 +158,7 @@ pic: pic@14000000 {
 		valid-mask = <0x003fffff>;
 	};
 
-	pci: pciv3@62000000 {
+	pci: pci@62000000 {
 		compatible = "arm,integrator-ap-pci", "v3,v360epc-pci";
 		device_type = "pci";
 		#interrupt-cells = <1>;

---
base-commit: 06c2afb862f9da8dc5efa4b6076a0e48c3fbaaa5
change-id: 20230811-versatile-dts-v6-6-da7cbf0a95d7

Best regards,
-- 
Linus Walleij <linus.walleij@linaro.org>

