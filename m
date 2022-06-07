Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4EC0953F656
	for <lists+devicetree@lfdr.de>; Tue,  7 Jun 2022 08:39:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237137AbiFGGjX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 7 Jun 2022 02:39:23 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41120 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237113AbiFGGjU (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 7 Jun 2022 02:39:20 -0400
Received: from mail-ej1-x631.google.com (mail-ej1-x631.google.com [IPv6:2a00:1450:4864:20::631])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CA37BB043D
        for <devicetree@vger.kernel.org>; Mon,  6 Jun 2022 23:39:18 -0700 (PDT)
Received: by mail-ej1-x631.google.com with SMTP id v1so22451951ejg.13
        for <devicetree@vger.kernel.org>; Mon, 06 Jun 2022 23:39:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=30/swRoGI7lxOeK/JCZOMenofIQ2Qnwy381c+smb4TA=;
        b=hRvd0fRQ06nsWwDyDjPYxTGsvqvXXrNQMbjT1Em4UrrOfqMzAG5qNorVycW89lVPlM
         /4d395QujBeRwU1UilsC99/3sC3wup/EJDNh4LKuI0DvkhJoZ9tAvIa6Uve607PoFRme
         2i09ToSIIxI+Tdx4TAk40sq2HIPtM52oEOsZwHI3qQtcUe0eBRno4BS+DdEYJGOExBx7
         LqplQKH0pLizRr1ziLYe5MBWbS4swqfviGOjwvMfj5PCWdxXRHy9XXu09/LjaUcphHwV
         9LaZSxuXkKdBAW5a3zSBLlkw/IJjmQEsdUMQxuH6RqPvrDbcc46SxLtUnE6GIRLLH0gq
         6eoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=30/swRoGI7lxOeK/JCZOMenofIQ2Qnwy381c+smb4TA=;
        b=UyKgy9T03LYoNIh192JZmrZOX6Tu7r4XC1lFj+FsEUCThJisWUpS+3oEDgnXEjacWG
         xCrH7ULVpkNhuRs0Ll2MaF3LvFV4SXbDNW3+TgV1EY73b4NL+hQ/0gtnIJs158e62fM6
         aOz4nixuUI3BBLpWxTSpg+wK556VMnVsOSlhAd0KsR0AJZ1kAgB0iGMwcptHHGh2LZ/M
         Ov52UvS0Ti1ErO7/RJIJcGxh+ivVZISVg2DaE+bu7ULRGEkuXeoplrP5rTSiuCHt+SzZ
         qvq6hp8NFR5Pogh5sFXcZx00QCUvSFzap12e97EiL2YX3vRZGQwn8FD8unJ4eIOdV8+T
         RYyg==
X-Gm-Message-State: AOAM531+zDDQPBoYQ0c6a2k87eE/XBJSZ60ikNClknqlvnB2liWSAsPy
        0L09OzmUwY3ifEdH11Ot3SoZ3w==
X-Google-Smtp-Source: ABdhPJxPb4B1+kYdlB7X2PcS4f0mWtob9442OqwnUgNprAost6mEYGoTJP2LBYDLNSUfIEVPMRgI3Q==
X-Received: by 2002:a17:906:b816:b0:708:2e56:97d7 with SMTP id dv22-20020a170906b81600b007082e5697d7mr24712545ejb.502.1654583957338;
        Mon, 06 Jun 2022 23:39:17 -0700 (PDT)
Received: from localhost.localdomain (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id jo13-20020a170906f6cd00b006febc86b8besm7016888ejb.117.2022.06.06.23.39.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Jun 2022 23:39:16 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Sylwester Nawrocki <s.nawrocki@samsung.com>,
        linux-arm-kernel@lists.infradead.org,
        Rob Herring <robh+dt@kernel.org>,
        Tomasz Figa <tomasz.figa@gmail.com>,
        linux-gpio@vger.kernel.org, linux-kernel@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Linus Walleij <linus.walleij@linaro.org>,
        linux-samsung-soc@vger.kernel.org, devicetree@vger.kernel.org,
        Alim Akhtar <alim.akhtar@samsung.com>
Cc:     Chanho Park <chanho61.park@samsung.com>
Subject: Re: (subset) [PATCH v3 2/8] ARM: dts: s3c64xx: use local header for pinctrl register values
Date:   Tue,  7 Jun 2022 08:39:10 +0200
Message-Id: <165458395109.7886.7299681625638246723.b4-ty@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220605160508.134075-3-krzysztof.kozlowski@linaro.org>
References: <20220605160508.134075-1-krzysztof.kozlowski@linaro.org> <20220605160508.134075-3-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sun, 5 Jun 2022 18:05:02 +0200, Krzysztof Kozlowski wrote:
> The DTS uses hardware register values directly in pin controller pin
> configuration.  These are not some IDs or other abstraction layer but
> raw numbers used in the registers.
> 
> These numbers were previously put in the bindings header to avoid code
> duplication and to provide some context meaning (name), but they do not
> fit the purpose of bindings.  It is also quite confusing to use
> constants prefixed with Exynos for other SoC, because there is actually
> nothing here in common, except the actual value.
> 
> [...]

Applied, thanks!

[2/8] ARM: dts: s3c64xx: use local header for pinctrl register values
      https://git.kernel.org/krzk/linux/c/468fff18c3776ced9bb466ae4fb2e30fdf671bef

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
