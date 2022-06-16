Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 945C554EB7B
	for <lists+devicetree@lfdr.de>; Thu, 16 Jun 2022 22:48:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1378691AbiFPUsD (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 16 Jun 2022 16:48:03 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60524 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1378700AbiFPUrz (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 16 Jun 2022 16:47:55 -0400
Received: from mail-pj1-x1029.google.com (mail-pj1-x1029.google.com [IPv6:2607:f8b0:4864:20::1029])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4706A167EA
        for <devicetree@vger.kernel.org>; Thu, 16 Jun 2022 13:47:54 -0700 (PDT)
Received: by mail-pj1-x1029.google.com with SMTP id g10-20020a17090a708a00b001ea8aadd42bso2519512pjk.0
        for <devicetree@vger.kernel.org>; Thu, 16 Jun 2022 13:47:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=5v2GHFZcfC7tWGp0/Up8UArokJ3Id1eqwbB/UFI3a+A=;
        b=IOYT59dHwTZZhf0BQH52cFoBw+SOqpWmEOWSg0X9Xcp2U8KaHYAGpnVq2wuvPyNuAj
         QnL+trAcPJUFxMduhexzpqzS3MJwf9bUi2T3Ck0GlC7nKkKe3lmbpqn5brxcCcL9i25K
         D7fQpG/8GOGEH1c6VOn9oMKY6tv7impuLR/7tW/RQiE4t0YyF4fdFApa3EAeYNfVdVVp
         hAbDjBEZd0+i1pJjnLKhelk7EZi4EzuVqk5sVHp1LX41SLiWosNIEKSFwmKag8iyAG8g
         Efhd/sB67PRE8EfuCA+qMz4PxMWzj7ngTpmFkKqQ/S5eNojA0EW3MsZMV8TRT/TyGK8v
         vqcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=5v2GHFZcfC7tWGp0/Up8UArokJ3Id1eqwbB/UFI3a+A=;
        b=waOkcX32cLFEDz51+qlS1HskOxx9TATX0LKlICCUVyQK7G1afPF/OIB22Q6eprH9tW
         1YubApoQ26Nxfua2NPUz40tYy0oktjGGCfV1NJ1DKJUSVvEE8lJ4kldIw5ISfebvjXMf
         T3MxfxCywp6LLJwYlelCCirOJAbF6WmJ3Of/DyS9Nor6IioWplENqo8TJ88qe61w3ctj
         VddfYh4VxxrgqoxRpb2dal/hw5U4xyuEa4AD2jvFnp0J/SzvKaU1OYZpIVhTk3BWP11B
         hWTWPboSXgkyEvYkv4qNodSPuYjNsGaUXPrwHdljApcIoCWlEwmKmu1eaQqznwv74FCZ
         D7dw==
X-Gm-Message-State: AJIora/qw5Ce+yFFYlmbc3eQI8Ivy+/N8QH/nml5K0NCW3sKWjcZvJjp
        bRi1BJMwU1YEpbv/Pcv3RJMvNw==
X-Google-Smtp-Source: AGRyM1ushZiM09a3mKNdXCqRFwNPLDff3+dermk/HgL7TWqS9tRuI7++DJxamLjcFaEiQ9SoiqP8zQ==
X-Received: by 2002:a17:902:d716:b0:169:78a:11d4 with SMTP id w22-20020a170902d71600b00169078a11d4mr4197409ply.90.1655412473973;
        Thu, 16 Jun 2022 13:47:53 -0700 (PDT)
Received: from krzk-bin.. ([192.77.111.2])
        by smtp.gmail.com with ESMTPSA id 203-20020a6218d4000000b0051ba0ee30cbsm2165453pfy.128.2022.06.16.13.47.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 16 Jun 2022 13:47:53 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Olof Johansson <olof@lixom.net>, Orson Zhai <orsonzhai@gmail.com>,
        soc@kernel.org, Chunyan Zhang <zhang.lyra@gmail.com>,
        arm@kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Arnd Bergmann <arnd@arndb.de>,
        Rob Herring <robh+dt@kernel.org>, linux-kernel@vger.kernel.org,
        Baolin Wang <baolin.wang7@gmail.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        devicetree@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: sprd: adjust whitespace around '='
Date:   Thu, 16 Jun 2022 13:47:14 -0700
Message-Id: <165541242280.9040.15171374886189266159.b4-ty@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220526204152.831948-1-krzysztof.kozlowski@linaro.org>
References: <20220526204152.831948-1-krzysztof.kozlowski@linaro.org>
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

On Thu, 26 May 2022 22:41:52 +0200, Krzysztof Kozlowski wrote:
> Fix whitespace coding style: use single space instead of tabs or
> multiple spaces around '=' sign in property assignment.  No functional
> changes (same DTB).
> 
> 

Applied, thanks!

[1/1] arm64: dts: sprd: adjust whitespace around '='
      https://git.kernel.org/krzk/linux/c/f028328f60bd33cbdc4b65dac2efa98ed6ca26b7

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
