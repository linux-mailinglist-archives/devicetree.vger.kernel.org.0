Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1F25A758F20
	for <lists+devicetree@lfdr.de>; Wed, 19 Jul 2023 09:36:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230057AbjGSHg3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 19 Jul 2023 03:36:29 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34382 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229587AbjGSHgU (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 19 Jul 2023 03:36:20 -0400
Received: from mail-ed1-x536.google.com (mail-ed1-x536.google.com [IPv6:2a00:1450:4864:20::536])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 19BA41735
        for <devicetree@vger.kernel.org>; Wed, 19 Jul 2023 00:36:19 -0700 (PDT)
Received: by mail-ed1-x536.google.com with SMTP id 4fb4d7f45d1cf-51ff0e3d8c1so8885986a12.0
        for <devicetree@vger.kernel.org>; Wed, 19 Jul 2023 00:36:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1689752177; x=1692344177;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6DbQclnO5/rfDYXUIQCGeTR+bKwq13YyL6Z/DX92Aak=;
        b=MVrDWEr/Mgufbd8XfQwnR4vsEwPQnbIBgKWtAq9uNdxYhZy0dh2IlLyJaB4WVjTyyL
         TR7Shia/RpeyW/4bjYC7A8fEYW7b3UC+iQr7z6fLcuPv3klq4CU4OydfXmVfDbQ/Pdo/
         mdogA5NeOtPChG2mN+bukpmxxKUaENgoECEkVsxpX/CwPdrjpe/R3WXpzWeo45y4+3RM
         KZQ+gUqmA5Ao/hpwrHLfRn8R5XLagdQ5yMrjP2T6l9VNbSucZksZjhigdog/Kce1y5g8
         f71/W/jhQiqeajq6QG1e7JzQprnmOgjnZIhtlOiGBUYhO6sQEB/hXBjTPVrNZcIUBmwY
         wXgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689752177; x=1692344177;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=6DbQclnO5/rfDYXUIQCGeTR+bKwq13YyL6Z/DX92Aak=;
        b=WZY7CAx/vfMOQ11EJE7TUyW1lVhjZdlFMJQp91+yG3cAcK4QO3+pZ35I5/cGH0ZRyF
         z5YTa4QYZbcvEC1wkoTUJp3ciuwSZUYBaDHsTDpynIX4XMgtC7kwV9fXU66USqmzTING
         hYJt5DUCJoL56rW2aGBdwPWYGUoifSpG1wz/HeKJOYvMmTSBTPldjIqrUCCH+5ZL+1B5
         snU/G0waIgb7HESoyOThuMm8s6CZn0syeqvUxHn7BX2WTYXTiRCjJjEyPpj+Ku19DP12
         Yb6CYVWg24Alk4cdZGt/gn565A/fcWpLRC69NK+Esj1fNQ6/t4N4SEhixG7pYI4bSeP8
         KX/w==
X-Gm-Message-State: ABy/qLZcoY3j5rzJbzyds/YBuVT9UDudGiwGXmgNWpzhn7K9TTe1NF1k
        ms8BUDAC6nm4E0DOQ7Jchyod+Q==
X-Google-Smtp-Source: APBJJlE3IYLxLeZ+oZiMrjzQhsCuQurBTVwa3yKhhUh2cYJPhH59g7l9R6lYn6KTSVEjMzuKrOrulg==
X-Received: by 2002:a05:6402:1817:b0:51c:dd99:a211 with SMTP id g23-20020a056402181700b0051cdd99a211mr1716655edy.27.1689752177612;
        Wed, 19 Jul 2023 00:36:17 -0700 (PDT)
Received: from krzk-bin.. ([178.197.223.104])
        by smtp.gmail.com with ESMTPSA id v5-20020aa7cd45000000b0051e069ebee3sm2310594edw.14.2023.07.19.00.36.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 19 Jul 2023 00:36:17 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Thierry Reding <thierry.reding@gmail.com>,
        =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= 
        <u.kleine-koenig@pengutronix.de>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Alim Akhtar <alim.akhtar@samsung.com>,
        Jaewon Kim <jaewon02.kim@samsung.com>
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        linux-pwm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-samsung-soc@vger.kernel.org
Subject: Re: [PATCH v6 0/2] support PWM for exynosautov9
Date:   Wed, 19 Jul 2023 09:36:10 +0200
Message-Id: <168975215983.14599.604884288213493709.b4-ty@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230718062200.79306-1-jaewon02.kim@samsung.com>
References: <CGME20230718062723epcas2p4fa1d2b07220c873a4d7de2d1899f1699@epcas2p4.samsung.com> <20230718062200.79306-1-jaewon02.kim@samsung.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


On Tue, 18 Jul 2023 15:21:58 +0900, Jaewon Kim wrote:
> Add pwm nodes to support PWM fan on exynosautov9-sadk board.
> 

Applied, thanks!

[1/2] dt-bindings: pwm: samsung: add exynosautov9 compatible
      https://git.kernel.org/krzk/linux/c/8188b984dea9df7bfa128fc6f8ec0b01edff2d43
[2/2] arm64: dts: exynos: add pwm node for exynosautov9-sadk
      https://git.kernel.org/krzk/linux/c/74641f4a79af8dd3138a7e9a0ec352fdca5d7aba

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
