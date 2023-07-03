Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 45DC47458A0
	for <lists+devicetree@lfdr.de>; Mon,  3 Jul 2023 11:45:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229917AbjGCJpG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 3 Jul 2023 05:45:06 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45686 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230256AbjGCJpF (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 3 Jul 2023 05:45:05 -0400
Received: from mail-wm1-x329.google.com (mail-wm1-x329.google.com [IPv6:2a00:1450:4864:20::329])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0C06F18D
        for <devicetree@vger.kernel.org>; Mon,  3 Jul 2023 02:45:04 -0700 (PDT)
Received: by mail-wm1-x329.google.com with SMTP id 5b1f17b1804b1-3fbc6ab5ff5so37240875e9.1
        for <devicetree@vger.kernel.org>; Mon, 03 Jul 2023 02:45:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1688377502; x=1690969502;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=no5CNBoDiHbRpIdNDqGhGyPr6ei7bZTn4+f7d7VDLXc=;
        b=xkgubruoESKN/GtLWkW/pO8GAXTpNxtqdt3mkSG0Dm+hen+SCiJFXipuXZqfurrZpP
         YZiJo8Vef7ujaFBzVZhoyB/Hq5WI8+oFCV1DM5tPIps6dUHiOMdUrDXOYNYkBenWIbXI
         5TMMBjcZbTGCSBZjUvM75AMt+NeR3p/2aOQ4FEPiNX9a+mM+jv3PQECB3hQErv/FdvbY
         BG+TLP1myXUvwIybjz4AYhc4Agt7+2cUw5XskwP8e7s2MIUQhSa2ouU+d/d6R25H3rJX
         5z4OuZ4PLGOrb09Nw4nUQ0GgnbirV/oKer8bu0t80MGvPtfxMo9trPd6YPAwjC2uArlg
         JsTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1688377502; x=1690969502;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=no5CNBoDiHbRpIdNDqGhGyPr6ei7bZTn4+f7d7VDLXc=;
        b=AAzTkKYZizw59kU1p4PL3Pus403PAguVysPipDzXWarfPgeaNp5rMFVrjo8ONi/m1W
         W4mw7V7lyDLC9nHwSmdRjVJXD6C2k92YM+qt2ZcDny7/JoXJBZIuZi+jd5WCnMRnyq4u
         n/D25bHN2alVtbGNRMT8JMJZq1j/PNyPQdVToPlb2J4DbHS1NAqgulvT/ZbOicm+gXon
         hrKGNLdcm+GipEKyArZ9yHmFKVUshM52y56SAIP9OrpOhWjHpfQ5n488h4a4+y6bIloW
         4r6Wyg+w/Zgr/WpJFg7kJ7KadKG4eLgpNU4mTgelC4j7s2wRH7tx9c5twkejG1FdQnMq
         64XQ==
X-Gm-Message-State: AC+VfDw+rqRPwlqZ8GW8zpkMp1v2tD/DSLf4xTPElaedODKEW/sTbtgd
        OtHx5IxOs70h6ingcUq5FYPvL2KWcwTV0iqj6zeN6Q==
X-Google-Smtp-Source: ACHHUZ4dcr3T2QoMLtrwInlyHyprQa/n0BPg7j2w2hcYPJlKf2GFgPLbqJanRTpxLpT/KBJmIgof2A==
X-Received: by 2002:a05:600c:252:b0:3fb:c462:1833 with SMTP id 18-20020a05600c025200b003fbc4621833mr8369946wmj.30.1688377502347;
        Mon, 03 Jul 2023 02:45:02 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id i7-20020a05600c290700b003fbb346279dsm13805286wmd.38.2023.07.03.02.45.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 03 Jul 2023 02:45:01 -0700 (PDT)
From:   Neil Armstrong <neil.armstrong@linaro.org>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Kevin Hilman <khilman@baylibre.com>,
        Jerome Brunet <jbrunet@baylibre.com>,
        Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230702185327.44625-1-krzysztof.kozlowski@linaro.org>
References: <20230702185327.44625-1-krzysztof.kozlowski@linaro.org>
Subject: Re: [PATCH] arm64: dts: amlogic: minor whitespace cleanup around
 '='
Message-Id: <168837750146.1068586.11226295971012110711.b4-ty@linaro.org>
Date:   Mon, 03 Jul 2023 11:45:01 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Sun, 02 Jul 2023 20:53:27 +0200, Krzysztof Kozlowski wrote:
> Use space after '=' sign to match DTS coding style.
> 
> 

Thanks, Applied to https://git.kernel.org/pub/scm/linux/kernel/git/amlogic/linux.git (v6.6/arm64-dt)

[1/1] arm64: dts: amlogic: minor whitespace cleanup around '='
      https://git.kernel.org/amlogic/c/75831c457ea135e01259af8bfa3fcf40c244256c

These changes has been applied on the intermediate git tree [1].

The v6.6/arm64-dt branch will then be sent via a formal Pull Request to the Linux SoC maintainers
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

