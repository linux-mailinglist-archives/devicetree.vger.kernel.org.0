Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2018767E09A
	for <lists+devicetree@lfdr.de>; Fri, 27 Jan 2023 10:47:08 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232525AbjA0JrG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 27 Jan 2023 04:47:06 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58706 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233225AbjA0JrE (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 27 Jan 2023 04:47:04 -0500
Received: from mail-wm1-x334.google.com (mail-wm1-x334.google.com [IPv6:2a00:1450:4864:20::334])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D07BF761F9
        for <devicetree@vger.kernel.org>; Fri, 27 Jan 2023 01:47:03 -0800 (PST)
Received: by mail-wm1-x334.google.com with SMTP id iv8-20020a05600c548800b003db04a0a46bso5360780wmb.0
        for <devicetree@vger.kernel.org>; Fri, 27 Jan 2023 01:47:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=3nzfcmp9KkR9IevXOv/1/KCrKMM4fJc0Qwt9o5r1eoQ=;
        b=rlcdFWQ/NCpt3+1ZNFWyee1wd2tZlwyeHAipAx7nm5ondUCo/Wn5R/etm0nW5sKby6
         DGpyG5+uhcSDiMJ1eqMIYhoME75EuGarJu/ODmKf7nrF+Km1DaDJ4cwBWBzejldWnCzu
         pKJ6IQlAEVVQXzj7vZv5jDleOAdSdb2zV+FshQ/Wdw5fgx6D7md7hrU3zbL1NMk8uxnv
         cafdxVxHsQa+CIlOti2TFCOYY4Jy7kFZ4GkkF3Cp+uMHeBKzSSVRWpCoOzszWHC50AEi
         tNcX7nCWlF3ES4qqBNudmQPgLy1XR1UeLiIPMZCGCnReDvMObLICNUcgWaMCrpMMXsMz
         H6tw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=3nzfcmp9KkR9IevXOv/1/KCrKMM4fJc0Qwt9o5r1eoQ=;
        b=0w5v/eiDt3aJGmv01zfLdzJd1Abg7NqiSEFE6GvN+XvikNYAUVgU1ckSdvetC6FRth
         QXxv99NMfB5voIWHhH2o4pP2i9pQgwG211oYD40Bd8Hsc+M6LlXqMH2LYCdbLC78gYA6
         x/B67fpxS7uAtu6owLR3GRyS7YHqbdxIgezashuOxyRELoM30ajXR1y7UIeWdo19rO3C
         3E5u5XuWatDVRFKYKFC2PwxgUvtZKg5MUPYHkCr/QwxxGChmRIBczz9yzSBJS2vZ2E7Q
         ify77ePWnuS2GaYnXXxEXBxTbc1UCT69d7Dvj2y2oxdBfS/eZV636RljEHfsvfb0hoQ7
         GtyA==
X-Gm-Message-State: AFqh2kpI6nZ5JxDyzHK5cMocB/Tk9U9MzBnEz3AHS/Cj7GI/1xiRtowl
        ichHtrHZXTfqm2G+52GLhrkBtQ==
X-Google-Smtp-Source: AMrXdXupxy8dXE9Y4idmsDwE7Vr0Z5smXMT0OHnq0NUGpiEQHIBj2nJfHN+74sQ+cxcQfcO/ro7ceQ==
X-Received: by 2002:a05:600c:3551:b0:3d2:813:138a with SMTP id i17-20020a05600c355100b003d20813138amr46982546wmq.35.1674812822383;
        Fri, 27 Jan 2023 01:47:02 -0800 (PST)
Received: from krzk-bin.. ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id h20-20020a05600c351400b003dc1300eab0sm8042087wmq.33.2023.01.27.01.47.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Jan 2023 01:47:02 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>,
        linux-realtek-soc@lists.infradead.org,
        linux-kernel@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Rob Herring <robh+dt@kernel.org>
Subject: Re: [PATCH] arm64: dts: realtek: align UART node name with bindings
Date:   Fri, 27 Jan 2023 10:46:56 +0100
Message-Id: <167481277324.62929.7688485206150758782.b4-ty@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230123151514.369101-1-krzysztof.kozlowski@linaro.org>
References: <20230123151514.369101-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, 23 Jan 2023 16:15:14 +0100, Krzysztof Kozlowski wrote:
> Bindings expect UART/serial node names to be "serial".
> 
> 

Applied, thanks!

Let me know if anyone preferred to take it via sub-arch/SoC maintainer tree.
I'll drop it then.

[1/1] arm64: dts: realtek: align UART node name with bindings
      https://git.kernel.org/krzk/linux-dt/c/5ad30c5fc0a72c2aaa1d26f9e4061d8646231adb

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
