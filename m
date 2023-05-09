Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 962A66FC0A5
	for <lists+devicetree@lfdr.de>; Tue,  9 May 2023 09:46:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234371AbjEIHqm (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 9 May 2023 03:46:42 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59478 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234304AbjEIHql (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 9 May 2023 03:46:41 -0400
Received: from mail-wr1-x429.google.com (mail-wr1-x429.google.com [IPv6:2a00:1450:4864:20::429])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 199858698
        for <devicetree@vger.kernel.org>; Tue,  9 May 2023 00:46:40 -0700 (PDT)
Received: by mail-wr1-x429.google.com with SMTP id ffacd0b85a97d-3063b5f32aaso3484880f8f.2
        for <devicetree@vger.kernel.org>; Tue, 09 May 2023 00:46:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1683618398; x=1686210398;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=TO2dRWQUgsejGnEeiYjVEtc/c2PN3FQf9RX/Sai4Z0U=;
        b=f0URIniH7B6XUsWL6muAGhjMQxBfGB4Uea4xGg5JShehqLBBmndI+Kicr6eiV2qT56
         JpOL/knVUaEtLxp8IDvnEMsNrmIv+sGpG0D+2AUGva76gS5skgt3yX7es8jSCr8T0djn
         x7TDpB8V6E0FzG7Fx3QQ2fR3tBCLWezRT5Qg59+Se1Vkg9skGICSop9WBhpowvnP93dF
         rmyqdg32UjzMHoTyFqNs//5TFX81w7cYTK9yykm3AepUpTMB4kHtiX+d6JFgNdChx3g+
         4t0H18JaT29josdXHu0MIPtbyWmUPHLCLI8JAdyYAyw63vW+3xfCepX+v0IKrWfYi+eZ
         aIfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683618398; x=1686210398;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=TO2dRWQUgsejGnEeiYjVEtc/c2PN3FQf9RX/Sai4Z0U=;
        b=AaU/4DxiF8fdutYuACGsiA4YumF31gnp+gP0z9v5yApP4o4vsLY1vg6O/SQcpsUt2Z
         V7vRhSSHugzVf0EN91g0FY8LzXce9jG0qW/NzQtQSl2Uu+ZB5AzBteAkCWfm3/g1WOT5
         FeamVfZML2zAa1E+9D/rMp1YXC0mfzdLAxjYD+9J7orWu3ImzhHSpY2JNqo8gSQFh42e
         0BMD3gXHRQJON3S2lObuuUyUizL9TLCHxtr3y3uDHdtV7JWskgWGlRMWtumOTb7aPkUQ
         1wXJnHaL1F5xw8VHQzIdh0ULzPd+ytvaLp85GZK9xxLBWAHifX3HeYB6fq1fs7Jd6e5F
         nwDQ==
X-Gm-Message-State: AC+VfDyOCDhfF6nSndrKwjj2X8TIuHXPCCBfqo+69ZsBQy66pf3MBn1L
        cTGsTxlLrflpbO+kWrCA0BEI+g==
X-Google-Smtp-Source: ACHHUZ7aKsNY8fHHLZ6UNl48B49PuAWVAgcEjJqUMww88nPdrrdixglqG21tYw77OS4xPT7Nv/5fdQ==
X-Received: by 2002:adf:fac9:0:b0:306:41d3:fca8 with SMTP id a9-20020adffac9000000b0030641d3fca8mr9133279wrs.69.1683618398463;
        Tue, 09 May 2023 00:46:38 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id a15-20020adff7cf000000b002f6176cc6desm13505140wrq.110.2023.05.09.00.46.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 May 2023 00:46:38 -0700 (PDT)
From:   Neil Armstrong <neil.armstrong@linaro.org>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Kevin Hilman <khilman@baylibre.com>,
        Jerome Brunet <jbrunet@baylibre.com>,
        Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230421223211.115612-1-krzysztof.kozlowski@linaro.org>
References: <20230421223211.115612-1-krzysztof.kozlowski@linaro.org>
Subject: Re: [PATCH] arm64: dts: amlogic: add missing cache properties
Message-Id: <168361839771.3267036.7271499670705452140.b4-ty@linaro.org>
Date:   Tue, 09 May 2023 09:46:37 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.2
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Sat, 22 Apr 2023 00:32:10 +0200, Krzysztof Kozlowski wrote:
> As all level 2 and level 3 caches are unified, add required
> cache-unified properties to fix warnings like:
> 
>   meson-a1-ad401.dtb: l2-cache0: 'cache-unified' is a required property
> 
> 

Thanks, Applied to https://git.kernel.org/pub/scm/linux/kernel/git/amlogic/linux.git (v6.5/arm64-dt)

[1/1] arm64: dts: amlogic: add missing cache properties
      https://git.kernel.org/amlogic/c/c2258a94fae556797085b58c0b6839c41826bd3d

These changes has been applied on the intermediate git tree [1].

The v6.5/arm64-dt branch will then be sent via a formal Pull Request to the Linux SoC maintainers
for inclusion in their intermediate git branches in order to be sent to Linus during
the next merge window, or sooner if it's a set of fixes.

In the cases of fixes, those will be merged in the current release candidate
kernel and as soon they appear on the Linux master branch they will be
backported to the previous Stable and Long-Stable kernels [2].

The intermediate git branches are merged daily in the linux-next tree [3],
people are encouraged testing these pre-release kernels and report issues on the
relevant mailing-lists.

If problems are discovered on those changes, please submit a signed-off-by revert
patch followed by a corrective changeset.

[1] https://git.kernel.org/pub/scm/linux/kernel/git/amlogic/linux.git
[2] https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux.git
[3] https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git

-- 
Neil

