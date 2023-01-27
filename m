Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6FA4567EBE1
	for <lists+devicetree@lfdr.de>; Fri, 27 Jan 2023 18:02:53 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234687AbjA0RCw (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 27 Jan 2023 12:02:52 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56668 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234660AbjA0RCu (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 27 Jan 2023 12:02:50 -0500
Received: from mail-wm1-x330.google.com (mail-wm1-x330.google.com [IPv6:2a00:1450:4864:20::330])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7D89F7FA2C
        for <devicetree@vger.kernel.org>; Fri, 27 Jan 2023 09:02:32 -0800 (PST)
Received: by mail-wm1-x330.google.com with SMTP id j36-20020a05600c1c2400b003dc39cb9c33so1582239wms.1
        for <devicetree@vger.kernel.org>; Fri, 27 Jan 2023 09:02:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=WbU1jG3eBIib3Y4T/FJmhjrIYuLNHNTwPimhNEaBXnw=;
        b=ZYqzKu5blklwUObA1H3gAkwCboO6R1adMPHjlKADOpoynUElxQHWl2yhz5fmMJ6/OC
         2nzf1af85r9C5QwP4LdAALucQ0GJBKLp9Fc7M0AxBfPmo4zHYq1dLUyHbWOh2U+NM1uk
         pDccnDz9SDYqiePHluMiOQypB7bl+tRkOzl31LQiaCkIJWj3RHd4BP0dS4he+VRiqu0W
         b6vyXb9jET2cF6MJXg4WQkSifFOwnXSbZ9p/ogX/DXyGRLg5epYZ/2i4hjnIK/d+ES7a
         9u9eLkpvlzjN9eiRcqUcmx74E1ZgC5+yt4Dz+/J3EFtI5q/P0UiM4sAHAQaa8mDJU5vL
         TsGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=WbU1jG3eBIib3Y4T/FJmhjrIYuLNHNTwPimhNEaBXnw=;
        b=vE0ng2CYMxwuJPmImpkEsOZgZlgrjgFpNW4yh7H98c9oTKSm/s+oyBtUojlwS6CMo7
         lciEen78pqIY/KVRbOwtQ5wHm0i8q8ls4Pve6wELhS30KJxSbeouHHRdWoRSC0yHSssX
         gx2CjmJqCGm4QqUJHwWcf8HUD6puwRkBc6FpFSNbMJ3j4whVTjerM4wmyQkORvUfXOVU
         P0YiCmbJiF+WjuYVC/sNVQJXpdU1Ci3sah2FMZ068wIbKpRQjxQ3/8OMQEZR11coWNp/
         TMr/DwJpgTxFU4fcZ/awOMsYY5LjWCpB6Dty+RWGx8wrYatKSn9/znhVbPgDSkU0XOFu
         SEgA==
X-Gm-Message-State: AO0yUKWegVfNaIhRzzPbbJXeCC0bijlZOGi8uXxlmumvLL8jH/2WOxVK
        ARqUPMTWJtTKFImWtMREkDMeXVq0H0MlVcLboFA=
X-Google-Smtp-Source: AK7set8nKe1EwJJz5qSh/iMOOjsbaKe0SVJ6gB0BYq3Td23vOrRiaDhe0P7jCeUxIxn6ZPoBJ0Fjww==
X-Received: by 2002:a05:600c:2189:b0:3dc:4334:22e3 with SMTP id e9-20020a05600c218900b003dc433422e3mr790979wme.17.1674838951034;
        Fri, 27 Jan 2023 09:02:31 -0800 (PST)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id v10-20020a05600c12ca00b003d9df9e59c4sm7925935wmd.37.2023.01.27.09.02.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Jan 2023 09:02:30 -0800 (PST)
From:   Neil Armstrong <neil.armstrong@linaro.org>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Kevin Hilman <khilman@baylibre.com>,
        Jerome Brunet <jbrunet@baylibre.com>,
        Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org,
        Christian Hewitt <christianshewitt@gmail.com>
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230127150536.3719090-1-christianshewitt@gmail.com>
References: <20230127150536.3719090-1-christianshewitt@gmail.com>
Subject: Re: [PATCH v2 1/2] dt-bindings: arm: amlogic: add support for
 Radxa Zero2
Message-Id: <167483894978.2238401.2111173691502093407.b4-ty@linaro.org>
Date:   Fri, 27 Jan 2023 18:02:29 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.0
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Fri, 27 Jan 2023 15:05:35 +0000, Christian Hewitt wrote:
> The Radxa Zero2 is a small form-factor SBC using the Amlogic
> A311D chip.
> 
> 

Thanks, Applied to https://git.kernel.org/pub/scm/linux/kernel/git/amlogic/linux.git (v6.3/arm64-dt)

[1/2] dt-bindings: arm: amlogic: add support for Radxa Zero2
      https://git.kernel.org/amlogic/c/229cfc6b16ccedfcae1ee10dc1aed04e7a85ed32
[2/2] arm64: dts: meson: add support for Radxa Zero2
      https://git.kernel.org/amlogic/c/d747e7f76a5fa6e3deb4c419df768f9ee49c2161

These changes has been applied on the intermediate git tree [1].

The v6.3/arm64-dt branch will then be sent via a formal Pull Request to the Linux SoC maintainers
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

