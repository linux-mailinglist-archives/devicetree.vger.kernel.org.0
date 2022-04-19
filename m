Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 312DF506876
	for <lists+devicetree@lfdr.de>; Tue, 19 Apr 2022 12:12:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1350556AbiDSKPQ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 19 Apr 2022 06:15:16 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40352 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1350529AbiDSKPN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 19 Apr 2022 06:15:13 -0400
Received: from mail-ed1-x535.google.com (mail-ed1-x535.google.com [IPv6:2a00:1450:4864:20::535])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6E24725C5F
        for <devicetree@vger.kernel.org>; Tue, 19 Apr 2022 03:12:31 -0700 (PDT)
Received: by mail-ed1-x535.google.com with SMTP id z99so20596408ede.5
        for <devicetree@vger.kernel.org>; Tue, 19 Apr 2022 03:12:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=6YIh3HDPztean2NUp4hEk/5KOUaDqmdwW5sVxL2kVTo=;
        b=rBaRAPk3AqWA19QNZAYo+MvnfyKVAXmMzDjvfxy3awdYBFUjJDIWchT/uoTa2lA/MB
         t3li31ngEqo03wKDbvw8LAOv1yBoOBt6+QholcPsrxhmjRiJy/BNE6Pz81qIWA2uowW9
         yyDTHs9EyS+BhjseTzNCJgcEdeWnf3Oqqh/f/4UJQz1uGRvSIB57/76S5PQ00R7BmicR
         YJ+wXaEppdTpEJhnUBj6rjf5ex2MOlpNzvWV2tgfhxJ02lP58q+4+BgHjqnR+zyb6PA+
         TJo1dnPANE4XQltS95X9dsjNYDJZQCP2ejYEQeCTCv0C8WBzc4J6pS5gkLHjooVGE72q
         B4OQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=6YIh3HDPztean2NUp4hEk/5KOUaDqmdwW5sVxL2kVTo=;
        b=gqZLklQ93M+daQrUZ36yp9qJhESjTqhAnxt220K6M1AZxlHazVoj+Za+qwLvAD9TIJ
         pFPEQ2xfEntkbJ8f7FT84ZVQKQ0D4lasvK/dXGAZNgbwVlMJ6iyXEF2zwjCruOPs5pPf
         NqK5FU4YnYkrE9QTma+Lk/fisrXGXUOraKz3XrFKVQAXXybpHLCgIPUCeAk0wX5SeHzl
         ZgwxxXi1O6Uqt633JdMrzDruqqI1fZsAD9r6jDmfBQ8yW48gH1KlFmCqf2hYb2QIo8L9
         VjmlAgf6uSZ1I8uXnYUkGhhNocBO15xsGJ3iK6v9ya+IeZYZwmxRS/8gAFntz408wwyb
         emMQ==
X-Gm-Message-State: AOAM533EUnU3hkVebw7rqvZ4hsRG8nX8wDXKXzihUXR8Mdi6N6XiUW+7
        Ip8sZ8G76pEKe/osNllqGSI5sw==
X-Google-Smtp-Source: ABdhPJzzS0g9hBuwjfOsu4N4YsswKBvUI+7x79YPwkoHM+EZQ0AKr3/TO+o5s/RZeAxjY2G/d8x7DA==
X-Received: by 2002:a05:6402:350d:b0:419:547f:134a with SMTP id b13-20020a056402350d00b00419547f134amr16773920edd.405.1650363149990;
        Tue, 19 Apr 2022 03:12:29 -0700 (PDT)
Received: from localhost.localdomain (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id v21-20020a1709064e9500b006e8973a14d0sm5581177eju.174.2022.04.19.03.12.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 19 Apr 2022 03:12:29 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Andy Gross <agross@kernel.org>, chrome-platform@lists.linux.dev,
        linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org,
        Benson Leung <bleung@chromium.org>,
        Heiko Stuebner <heiko@sntech.de>,
        Guenter Roeck <groeck@chromium.org>,
        Douglas Anderson <dianders@chromium.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Lee Jones <lee.jones@linaro.org>, devicetree@vger.kernel.org,
        linux-mediatek@lists.infradead.org, linux-pwm@vger.kernel.org,
        Thierry Reding <thierry.reding@gmail.com>,
        linux-arm-msm@vger.kernel.org,
        =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= 
        <u.kleine-koenig@pengutronix.de>,
        Bjorn Andersson <bjorn.andersson@linaro.org>
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: Re: (subset) [PATCH 2/4] arm64: dts: mt8183: align Google CROS EC PWM node name with dtschema
Date:   Tue, 19 Apr 2022 12:12:25 +0200
Message-Id: <165036314213.180327.2519068046721343173.b4-ty@linaro.org>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220214081916.162014-3-krzysztof.kozlowski@canonical.com>
References: <20220214081916.162014-1-krzysztof.kozlowski@canonical.com> <20220214081916.162014-3-krzysztof.kozlowski@canonical.com>
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

On Mon, 14 Feb 2022 09:19:14 +0100, Krzysztof Kozlowski wrote:
> dtschema expects PWM node name to be a generic "pwm".  This also matches
> Devicetree specification requirements about generic node names.
> 
> 

Applied, thanks!

[2/4] arm64: dts: mt8183: align Google CROS EC PWM node name with dtschema
      commit: 559d2104bff0c9a6379db652136d30836859252e

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
