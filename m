Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 84F826EB4D7
	for <lists+devicetree@lfdr.de>; Sat, 22 Apr 2023 00:32:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233984AbjDUWcp (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 21 Apr 2023 18:32:45 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33260 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233897AbjDUWc0 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 21 Apr 2023 18:32:26 -0400
Received: from mail-ed1-x535.google.com (mail-ed1-x535.google.com [IPv6:2a00:1450:4864:20::535])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 579282702
        for <devicetree@vger.kernel.org>; Fri, 21 Apr 2023 15:31:59 -0700 (PDT)
Received: by mail-ed1-x535.google.com with SMTP id 4fb4d7f45d1cf-5058181d58dso3804259a12.1
        for <devicetree@vger.kernel.org>; Fri, 21 Apr 2023 15:31:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1682116317; x=1684708317;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=pitbg/AnYT+7wXCt2mEuce2KB1B0+ui+WWGwpaQkC98=;
        b=obQptdKkaIozOZTGXFT1iVgi7FGrMW2Lj8aeh2p+N8wIZVxxTSYwSQFbVo0wieyBz5
         dupy9VN1DyQ0aXwyZuqV5tQ+2BcMN0mwDRcy/Vaowqe+qnCSZo6sqQs+xsa1DuwIpwDx
         KkR9b4GhsHpkW32xOTQJjzFUPUmEtO5VPD723rkdbY8KSBYRjgIzrdOzW5S+VqQq/UG5
         UjaSvL6HuXEudfIItlWBTQmFpkvVXXNWaRBt4Z0erOxFDDH+GLFnAT5ZFMasSBkx5iyl
         e42sd0Ax3liSxphHuDrnf4mqnLPQvyMWn5JIIVmb1WAkaMOAGF5JH4TKtSzvs3JiKrlr
         xKdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682116317; x=1684708317;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=pitbg/AnYT+7wXCt2mEuce2KB1B0+ui+WWGwpaQkC98=;
        b=hnT8oV4bZCNt9UYjnu5elvnGyzqcqjhv3XaORL8sngU7O6M2uKyV8jHw8KbFXFN9fC
         O7Qi4BUd1LGm6WybSWc+Q6STWkZKxOLWOf4eu8l5iS3H9fIFb8qYkgB0d19ee5pDARUC
         AvgFfsUPBZ4jLTZyfW39melx4GfpgKUHfgP2nsU85MgsIl3wqKPCB5IoO9fk/p0tNVoa
         fUdxFq56Kgzj7bLgyP1XKegLrWcouHtOyEAhbEMNE57I4Q2Tl7SBxxO5AR96iKI9mtqV
         tH7p836lpIW3766sRrXgFJjPYyg1fYzt+7gNY6HnHHbwXCBpeP0UQcTWCZsRR/1S5UnW
         pOJw==
X-Gm-Message-State: AAQBX9fWn3RkGIDMf4kJYqWIoPqE1u24ykONAlC15LHpj+1qmV7FxsoF
        xH5yoAJnQSnNojQ2kbkI9dV2qw==
X-Google-Smtp-Source: AKy350a4cH/QIL/qloNHWJRinYsd8kmdQ+P6b2qfd9I7RLwogiFF9xZftwYXCGRC7bb0w960Uf+mMg==
X-Received: by 2002:a50:fa89:0:b0:4fa:b302:84d4 with SMTP id w9-20020a50fa89000000b004fab30284d4mr6180279edr.13.1682116317328;
        Fri, 21 Apr 2023 15:31:57 -0700 (PDT)
Received: from krzk-bin.. ([2a02:810d:15c0:828:687d:8c5:41cb:9883])
        by smtp.gmail.com with ESMTPSA id p15-20020aa7cc8f000000b004aef147add6sm2223867edt.47.2023.04.21.15.31.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 Apr 2023 15:31:56 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Lars Povlsen <lars.povlsen@microchip.com>,
        Steen Hegelund <Steen.Hegelund@microchip.com>,
        Daniel Machon <daniel.machon@microchip.com>,
        UNGLinuxDriver@microchip.com, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH] arm64: dts: microchip: add missing cache properties
Date:   Sat, 22 Apr 2023 00:31:55 +0200
Message-Id: <20230421223155.115339-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
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

As all level 2 and level 3 caches are unified, add required
cache-unified and cache-level properties to fix warnings like:

  sparx5_pcb125.dtb: l2-cache0: 'cache-level' is a required property

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

---

Please take the patch via sub-arch SoC tree.
---
 arch/arm64/boot/dts/microchip/sparx5.dtsi | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/boot/dts/microchip/sparx5.dtsi b/arch/arm64/boot/dts/microchip/sparx5.dtsi
index 0367a00a269b..6f7651b06478 100644
--- a/arch/arm64/boot/dts/microchip/sparx5.dtsi
+++ b/arch/arm64/boot/dts/microchip/sparx5.dtsi
@@ -52,6 +52,8 @@ cpu1: cpu@1 {
 		};
 		L2_0: l2-cache0 {
 			compatible = "cache";
+			cache-level = <2>;
+			cache-unified;
 		};
 	};
 
-- 
2.34.1

