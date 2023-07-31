Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C93E5769117
	for <lists+devicetree@lfdr.de>; Mon, 31 Jul 2023 11:08:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229796AbjGaJI1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 31 Jul 2023 05:08:27 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40392 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229475AbjGaJI0 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 31 Jul 2023 05:08:26 -0400
Received: from mail-ej1-x635.google.com (mail-ej1-x635.google.com [IPv6:2a00:1450:4864:20::635])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 25727FF
        for <devicetree@vger.kernel.org>; Mon, 31 Jul 2023 02:08:25 -0700 (PDT)
Received: by mail-ej1-x635.google.com with SMTP id a640c23a62f3a-9936b3d0286so680798766b.0
        for <devicetree@vger.kernel.org>; Mon, 31 Jul 2023 02:08:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1690794503; x=1691399303;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=8/9NdmaSyKLbjJW5BdDysXmROAqdZ1S2mkS0FBxtKKA=;
        b=gMfN8qiVH2N6ecI32ZM4CkYJH5hoxVfdHz8RZUeuD54R5wz5q6+xuNd+cGTdHxTyEc
         FYci44NG45wCsKm6Mid2ieH9wnpzE7J3pWMKw7u40rm8xo8/ValyvexMdPQcWn5kFPTV
         wTGKNzZm2aq9oT5EOkJ86AMVLSbS2qXOJnyr4Bdicrlct4duEw0JOUfyX/jw62A8aDJF
         GzM5til2F5Oc9TJ0TDstRJCwukTMTXo3wuUFOoRa3fizYHrg5c2yuG0GSNP5cnS0fpAP
         qh1EHNfnu79NZgn5NQhCUL1HrxPXGkC/7QQoWsHW2VZxKX3YBT6qliMKgWF1k0aCufqv
         5cSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690794503; x=1691399303;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=8/9NdmaSyKLbjJW5BdDysXmROAqdZ1S2mkS0FBxtKKA=;
        b=mArBlkr/Rw9WtQ4K5CLscBvjqNHam05eTrQkJ6XA14s2ntE5wz806BoK87aX//x63r
         udLP8wFqE1UusqNcs2jk3L+vQClFZYMjmbOkM02JEDd5Ee3fcfFNJTxYQhPjTajMHyXn
         ZDnU6mGjG/5LzNCh9ELZcPWzQViOKrt+TQ8QAW0nRgBCq+bzLzV+TXSMWMVOtQ8UBE49
         a+9W9pFea5jZShuVA/mZiIQ1i4PAY4M7K5EmQvCPe+PpUpMl++PhgYMs84z62KnO8egD
         v4I5BqxusB+uXVJbR+fdab7wfTDN6XDyEKN1YJn+gdcWXMZgpSXdNXGVJWYIPOO6R24r
         Z6pg==
X-Gm-Message-State: ABy/qLb0ep+FgjsxiP+W9Pqtw+f/AVwV3/pu8/CJzhzw+HH8mNo34kO7
        7LeIOxvePed3XLrWcnh63jc0tg==
X-Google-Smtp-Source: APBJJlEBlycDp/8J+FKABadTyy2Yl/Sc9/q8lQirARa4V+e6Eyi8UTxknRrct9qsBrZuetqnsEtXMA==
X-Received: by 2002:a17:906:2258:b0:98d:fc51:b3dd with SMTP id 24-20020a170906225800b0098dfc51b3ddmr7257118ejr.41.1690794503657;
        Mon, 31 Jul 2023 02:08:23 -0700 (PDT)
Received: from krzk-bin.. ([178.197.222.183])
        by smtp.gmail.com with ESMTPSA id gy26-20020a170906f25a00b00992b7ff3993sm5800563ejb.126.2023.07.31.02.08.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 31 Jul 2023 02:08:23 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Alim Akhtar <alim.akhtar@samsung.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH] arm64: dts: exynos: exynos5433-tm2: drop redundant status=okay
Date:   Mon, 31 Jul 2023 11:08:21 +0200
Message-Id: <20230731090821.104733-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

status=okay is by default.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm64/boot/dts/exynos/exynos5433-tm2-common.dtsi | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm64/boot/dts/exynos/exynos5433-tm2-common.dtsi b/arch/arm64/boot/dts/exynos/exynos5433-tm2-common.dtsi
index e4ed788413fe..d163891cd399 100644
--- a/arch/arm64/boot/dts/exynos/exynos5433-tm2-common.dtsi
+++ b/arch/arm64/boot/dts/exynos/exynos5433-tm2-common.dtsi
@@ -137,7 +137,6 @@ sound {
 			/* Receiver */
 			"RCV", "HPOUT3L",
 			"RCV", "HPOUT3R";
-		status = "okay";
 	};
 };
 
-- 
2.34.1

