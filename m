Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 60CD34F8FB7
	for <lists+devicetree@lfdr.de>; Fri,  8 Apr 2022 09:41:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229575AbiDHHno (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 8 Apr 2022 03:43:44 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37836 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229520AbiDHHnn (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 8 Apr 2022 03:43:43 -0400
Received: from mail-wm1-x32c.google.com (mail-wm1-x32c.google.com [IPv6:2a00:1450:4864:20::32c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A1DD01AF524
        for <devicetree@vger.kernel.org>; Fri,  8 Apr 2022 00:41:40 -0700 (PDT)
Received: by mail-wm1-x32c.google.com with SMTP id v20-20020a05600c15d400b0038e9a88aee7so1830207wmf.3
        for <devicetree@vger.kernel.org>; Fri, 08 Apr 2022 00:41:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=qoPzgwCZVz+2LKUZVk8VaJ97LNpuXNUCKEzLwfvX/Zs=;
        b=vlKCcWfQTZaMrcyeYxoOCOY6TXXsu+qwQrEq7qk51SBgnnEVkDbtgKaVDqNSFdiD8l
         Ftkm7NLTV4iZ/cp7EfmDlDHgPX6rKUDNz7xBd+0hO9j1uhc3lylzLWz89V9lw1xmmXDx
         HxSGY19iCzpy9hq65yDrWd7ycKD6XpFDWuR1lWSjy5VneKRF58+UHQnFpcyzSKfX+hFf
         i0jdA2hb1rhpmOlLh3i4ZI3HzkI8CSFYyRGtBhHb9MJCslKgyXFclXwsKZV5QPBFQbmL
         qJMmiuBe/3Rw089sYDNgpiFr2L9BcXyOSPDRpivX9LKtFO/hZUOot7AL4p8iZzpzemAA
         Jc3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=qoPzgwCZVz+2LKUZVk8VaJ97LNpuXNUCKEzLwfvX/Zs=;
        b=BUCjd9nyVDB4jSA0+CpeuLwEtzvc2uFILDsujmaa1GfygxVdF8Y0nygFQG/K+PS2qK
         OqqVgYawEIae9/B6AfHF0rd1DrM2mDM5pBTX2xpK81zS6Hd+WnSs84CcOAMWov6lUN2b
         ++JJtAUzhlusxImdWU0hDYykTmCXPBowUZv3j9bNC4GBmBWSGO/SxI86GhqLjCehfz6m
         NnSqyW41XEKkjgziL/WdxZX5jsFyeyNkKS/0B+N8LC8LaEMtf3JpJxv/GF5WRjN7IyCA
         6AygzA1D6pGVV8+8GrGITsbDXfxH+ePAl9ozRqK6vVDFpf1VeB1Qecqvjo1mVAgcEa+q
         vjBA==
X-Gm-Message-State: AOAM531Yy/O4Q3Ncv2nCFE5JeuHBA06NJ9R8gjTEi5Ppx5rqhJ9wePq9
        7saTJkRDwE0MJVcW1dMIV8M991C+y33FeloY
X-Google-Smtp-Source: ABdhPJzRCiav6MWIkNLMa3QPaqs79EK0a2VND7pVXpHUhajmSBRORWzCxAN6YlQhwrfcO/nqZqgn8w==
X-Received: by 2002:a7b:cb46:0:b0:37b:dd79:e1c4 with SMTP id v6-20020a7bcb46000000b0037bdd79e1c4mr15472282wmj.39.1649403699091;
        Fri, 08 Apr 2022 00:41:39 -0700 (PDT)
Received: from localhost.localdomain ([2001:861:44c0:66c0:eacd:ce6:e294:acd1])
        by smtp.gmail.com with ESMTPSA id w8-20020a1cf608000000b0038c8fdc93d6sm8890630wmc.28.2022.04.08.00.41.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 08 Apr 2022 00:41:38 -0700 (PDT)
From:   Neil Armstrong <narmstrong@baylibre.com>
To:     linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Jerome Brunet <jbrunet@baylibre.com>,
        Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
        devicetree@vger.kernel.org, Kevin Hilman <khilman@baylibre.com>,
        Rob Herring <robh+dt@kernel.org>
Cc:     Neil Armstrong <narmstrong@baylibre.com>
Subject: Re: [PATCH 1/2] ARM: dts: meson: align SPI NOR node name with dtschema
Date:   Fri,  8 Apr 2022 09:41:36 +0200
Message-Id: <164940368411.3649905.11710562197285417365.b4-ty@baylibre.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220407142159.293836-1-krzysztof.kozlowski@linaro.org>
References: <20220407142159.293836-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Thu, 7 Apr 2022 16:21:58 +0200, Krzysztof Kozlowski wrote:
> The node names should be generic and SPI NOR dtschema expects "flash".
> 
> 

Thanks, Applied to https://git.kernel.org/pub/scm/linux/kernel/git/amlogic/linux.git (v5.19/dt)

[1/2] ARM: dts: meson: align SPI NOR node name with dtschema
      https://git.kernel.org/amlogic/c/e8662d0832431a069f0138da72c638cb6a377bdd
[2/2] arm64: dts: meson: align SPI NOR node name with dtschema
      (no commit info)

-- 
Neil
