Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7A43B4F1AC0
	for <lists+devicetree@lfdr.de>; Mon,  4 Apr 2022 23:17:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1379211AbiDDVS5 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 4 Apr 2022 17:18:57 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36612 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1379392AbiDDREY (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 4 Apr 2022 13:04:24 -0400
Received: from mail-ed1-x535.google.com (mail-ed1-x535.google.com [IPv6:2a00:1450:4864:20::535])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 09FC040A22
        for <devicetree@vger.kernel.org>; Mon,  4 Apr 2022 10:02:28 -0700 (PDT)
Received: by mail-ed1-x535.google.com with SMTP id g20so11882425edw.6
        for <devicetree@vger.kernel.org>; Mon, 04 Apr 2022 10:02:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=/p+WLNXUI5URczlcIPz1GEY0wJAQj0mnV+4JMB7lqlo=;
        b=BmdxHiK7k94C6Aa24uQsBO1PPJFFU5ov8NdL0rGqw0M5yeUxzrwb6IaZ+rE9b385Bf
         JQosvScc4VRXQe5Lr/uLZkYmOZQlKXPTmVZhFiWsiOZ2nbhmEAg9O3+3S8Di0Yk4acOR
         IZzNQz3PxZ3LpBaNoDDAw8u/1+uTVBVLKWhZkKdXT9RVCxU51RGFZ5nUgahZ1ECPrNA5
         SmkccAmDuEIF+5ibk+/zYy3sGMg/wyFlEqz2EQBKz0mv6/qBFpQl8SVs8sObsCmwbXtN
         VorJKnSgo9b/cFfjLNyIh3X3AV6qM729p5t141sHICz68ssz9RPIFX/cT8w211EvrlGe
         BB4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=/p+WLNXUI5URczlcIPz1GEY0wJAQj0mnV+4JMB7lqlo=;
        b=4tQ4T3e836IdKiWf+PyO/CbMuJ7/OJcuTuKV4bN9CdexBna8gNzKaaTKE4qc8ddlaV
         +FNqfsdG0Wo1kEwVzEZ7ftmVZp6+Zz9Fzu/pUB+TkqO/ti+wiahEH0FiR9Pg9mIY75r3
         jgwHff/RQkWF1SOfN9oXUPiwsPCWtoIkmaOxg5kSMY7DpsgeLZTPneXaX5mthFzsGVGC
         hfrlY3j37Jf3U7DZGQEO0waQq9hO/8SErap5sqUc+ZjlEW5MR/pEBsRS6b3VsfDOqOf9
         ojls/Xed5rb88D7qzuFARNxb5Wy06Drp2V8/NuqU0O9g1jvT8tOKTIfzWQNsT4869CKS
         WVyg==
X-Gm-Message-State: AOAM530s34WB3JDgM8YP20t2ViVm62FESMnhAQfW1ch6gjIr5fAtwQKj
        DHK477V5DmFIFigd0hwH+C2ZEToy1SMWzb8T
X-Google-Smtp-Source: ABdhPJxD2eBoIbkXILLZ9KRSfUZ3rClQVNQQ/eUgdwSQJWKc8yH4C442dv0oSfAnGSVVUqE22Ht25w==
X-Received: by 2002:aa7:d553:0:b0:416:4dfc:126d with SMTP id u19-20020aa7d553000000b004164dfc126dmr1140735edr.213.1649091746662;
        Mon, 04 Apr 2022 10:02:26 -0700 (PDT)
Received: from localhost.localdomain (xdsl-188-155-201-27.adslplus.ch. [188.155.201.27])
        by smtp.gmail.com with ESMTPSA id hs12-20020a1709073e8c00b006dfdfdac005sm4588927ejc.174.2022.04.04.10.02.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 04 Apr 2022 10:02:26 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     linux-samsung-soc@vger.kernel.org,
        Alim Akhtar <alim.akhtar@samsung.com>,
        Sam Protsenko <semen.protsenko@linaro.org>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        linux-arm-kernel@lists.infradead.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: Re: [PATCH] arm64: dts: exynos: move aliases to board in Exynos850
Date:   Mon,  4 Apr 2022 19:02:23 +0200
Message-Id: <164909174137.1688710.12339580855506130725.b4-ty@linaro.org>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220221075219.10827-1-krzysztof.kozlowski@canonical.com>
References: <20220221075219.10827-1-krzysztof.kozlowski@canonical.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
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

On Mon, 21 Feb 2022 08:52:19 +0100, Krzysztof Kozlowski wrote:
> The aliases for typical blocks which are disabled by default in DTSI
> (like I2C, UART and MMC) should be defined in the board DTS.  The board
> should add aliases only for enabled blocks according to its specific
> order.
> 
> On Exynos850, move aliases of enabled blocks to E850-96 board and remove
> unused ones.
> 
> [...]

Applied, thanks!

[1/1] arm64: dts: exynos: move aliases to board in Exynos850
      commit: f4324583cd4d4979ff2e885a44b8335eb4c4bfa3

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
