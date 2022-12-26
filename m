Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A90326563C2
	for <lists+devicetree@lfdr.de>; Mon, 26 Dec 2022 16:17:28 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229581AbiLZPR0 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 26 Dec 2022 10:17:26 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59102 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232004AbiLZPRZ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 26 Dec 2022 10:17:25 -0500
Received: from mail-lf1-x136.google.com (mail-lf1-x136.google.com [IPv6:2a00:1450:4864:20::136])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BCF356147
        for <devicetree@vger.kernel.org>; Mon, 26 Dec 2022 07:17:23 -0800 (PST)
Received: by mail-lf1-x136.google.com with SMTP id z26so16269034lfu.8
        for <devicetree@vger.kernel.org>; Mon, 26 Dec 2022 07:17:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=rnOUx//tmpAqA7aSKfMuyjVO5UXN0w4fmMTE6fTZ4P8=;
        b=bgzqKZjNRPjNGGhQa6LSI3g8F+rQHz2OFaT7mb5yovPN8LzLDzGyogt/y5jKSsrqvb
         6WZNO0O6DzK+71QNOfJyL1tjfr0Oo2PQGndAAO5I5j55wM01vAXFDIvIlCv812zjf3jx
         qr19R6M5ArWeRLNyneNnr3CrKDo2ZVsOV7U8SqLyrlBvM4OcRmHHQISMGLWfKiTjBQXL
         /wQ6vFLS0cjbdVWrC5e9xqHZV8I9ppr8wm17wL2vUzFHFaToPlp4wDZMmT/W9YNMXcvR
         FXZMufx8ip8a2ef6VwhXABRWykKivOEl1jdilI0KlBFP5MBmAnB/yEfE0eL70jzN7IBP
         Nmtg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=rnOUx//tmpAqA7aSKfMuyjVO5UXN0w4fmMTE6fTZ4P8=;
        b=BuqZB5xUTxYJQyTw+pSApy+ukcj8LXBioCHz8WJuH/vfHpT89Vd9luHX6SYUiTE138
         9t9e1Qbr/hs0INtpnQWuygET2xS74QxK8eXRg0T3I+Fb+ugak1/DS40TUweNmT6lHZq8
         ukpuwshMaRedIfMW9MJI5ixAOm+ScEoZ0wYC5nLLhArBMo3A3vXKTnTZQHQ4iJt7p0bD
         9TQX+V2vOKCqs9JCc875WZidAJmkFwk+7/rCvqLmMKM5dj+LoNrCwjYyDuX+OcPBQAbF
         /ljLzpWg3nBNOxye5cnvsyePaRs0HFFenOnQTniMQA0+21fhVy66HQ13LTIjdVgPajAW
         +H+w==
X-Gm-Message-State: AFqh2koFEjHNTndkVBXcAdtuEq+0uHLFMGDVAi9ztnU/TZIFfASemy+7
        RAlBYMJSSQJ8JNnkc/JQWUiwyw==
X-Google-Smtp-Source: AMrXdXsUB55MxKBK/aBmM9kNtym4ydx2DcBNCxTthSUUGhEjoUTLvc3kZvg12W/WaPCwXMAN/tvJVw==
X-Received: by 2002:a05:6512:c1c:b0:4c3:3a78:eab6 with SMTP id z28-20020a0565120c1c00b004c33a78eab6mr6385595lfu.65.1672067842166;
        Mon, 26 Dec 2022 07:17:22 -0800 (PST)
Received: from krzk-bin.NAT.warszawa.vectranet.pl (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id k2-20020ac24562000000b004b4ea0f4e7fsm1821286lfm.299.2022.12.26.07.17.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 26 Dec 2022 07:17:21 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     robh+dt@kernel.org, pankaj.dubey@samsung.com,
        alim.akhtar@samsung.com, sathya@samsung.com,
        krzysztof.kozlowski+dt@linaro.org, ravi.patel@samsung.com,
        devicetree@vger.kernel.org, Sriranjani P <sriranjani.p@samsung.com>
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        linux-kernel@vger.kernel.org, linux-samsung-soc@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v3 0/4] amr64: dts: exynos: add dedicated SYSREG compatibles to Exynos850 and Exynosautov9
Date:   Mon, 26 Dec 2022 16:17:15 +0100
Message-Id: <167206781676.20416.4467013355986537283.b4-ty@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20221214044342.49766-1-sriranjani.p@samsung.com>
References: <CGME20221214044418epcas5p3c2708eda3abcf5b217eddacf533e0a0f@epcas5p3.samsung.com> <20221214044342.49766-1-sriranjani.p@samsung.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, 14 Dec 2022 10:13:38 +0530, Sriranjani P wrote:
> Exynos850 and Exynosautov9 has several different SYSREGs, so use dedicated
> compatibles for them in dtsi file and add respective compatible in the
> samsung exynos devicetree binding document.
> 
> Changes since v2:
> 1. Addressed the review comment from Rob and removed const from the enum
> compatible list.
> 
> [...]

Applied, thanks!

[1/4] dt-bindings: soc: samsung: exynos-sysreg: add dedicated SYSREG compatibles to Exynos850
      https://git.kernel.org/krzk/linux/c/0a2af7bdeeb498e68771f9bb744aac79999f5980
[2/4] arm64: dts: exynos: add dedicated SYSREG compatibles to Exynos850
      https://git.kernel.org/krzk/linux/c/40a1827ea4c91c9c3cdfb8f18c78ba52da55b043
[3/4] dt-bindings: soc: samsung: exynos-sysreg: add dedicated SYSREG compatibles to Exynosautov9
      https://git.kernel.org/krzk/linux/c/dd5cc8072a3f285cff4f9a3869012557d547fb9d
[4/4] arm64: dts: exynos: add dedicated SYSREG compatibles to Exynosautov9
      https://git.kernel.org/krzk/linux/c/138d72031ec3d60edf6b382cd089a7939f73697c

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
