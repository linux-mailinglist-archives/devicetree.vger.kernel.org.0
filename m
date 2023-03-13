Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BCE9E6B7FFA
	for <lists+devicetree@lfdr.de>; Mon, 13 Mar 2023 19:10:11 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230223AbjCMSKJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 13 Mar 2023 14:10:09 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49216 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230481AbjCMSKC (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 13 Mar 2023 14:10:02 -0400
Received: from mail-lf1-x135.google.com (mail-lf1-x135.google.com [IPv6:2a00:1450:4864:20::135])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 327B5769CD
        for <devicetree@vger.kernel.org>; Mon, 13 Mar 2023 11:09:44 -0700 (PDT)
Received: by mail-lf1-x135.google.com with SMTP id d36so16821304lfv.8
        for <devicetree@vger.kernel.org>; Mon, 13 Mar 2023 11:09:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1678730982;
        h=to:subject:message-id:date:user-agent:from:references:in-reply-to
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=AC1AaHI/M3K6sSup8LnZmTH6kmxrZ+Dj4Rlm4AMPhpQ=;
        b=COTEfSvudapDX7lS8HupLQXZEZLP2QFVLPLnooMKIJYpUI8l6Riqv3JH1vfGDRcx+p
         /4qcMRnz6I1AGrsL4x7vHaQ/6raLD55AYFpE9vJXNv8y0Fxj1HaCdiIs7ReHXiOg1Yzw
         76H5T46WIk3SUsj8jT3hXTtucESIqTcIlXEgY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678730982;
        h=to:subject:message-id:date:user-agent:from:references:in-reply-to
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=AC1AaHI/M3K6sSup8LnZmTH6kmxrZ+Dj4Rlm4AMPhpQ=;
        b=dw4yTYhTx5tJEYDuuoPLZGl2O+FDiOxRHWsiBdpKqt7AYlAW1EqjuanSMmJV+gSyzz
         Lk5/gplgNWdte4LG8L8PAfQS7G7BWyKMGKO/yT4on7YlfKKQFy6AVy9SaQQ+wPV023gw
         jIIMQORKDhvZ8YU/NhAnMKCMh/b/B26E7zaiSV4bhJjY4L8hF4TFGaT7xNdnmmhGSmBY
         toe78OHwauNygcZVvBT4gKmQGcFtuc/NFBUrpEsu4d7Tb91jiQY8uQM1IuilYuSw6MXN
         Fnvayi1ijFzkIAbH6XMtaLlMk6/Yi7Uu7z4STPo8+z8eFP59LSpLoEBc30FrSrKDSlsW
         tSnQ==
X-Gm-Message-State: AO0yUKXyKY8aRfi5id0cF3X9QRxhbmIKBBYtiERcVkz8SQuvfg0S0AqH
        lOw0F14C+r4Ci2PGGws8nMuRO13q5DkhvnXdpdusIg==
X-Google-Smtp-Source: AK7set+tW6ZQlyVt2YCXoAN0jN9I43kwUHgLrWKfXdHTQeIr91lw69FgDzrH/nObkKwGiKfQvYqIrrW6ZNRdogR7vEY=
X-Received: by 2002:a19:f606:0:b0:4e7:ed3c:68ee with SMTP id
 x6-20020a19f606000000b004e7ed3c68eemr10188143lfe.4.1678730982538; Mon, 13 Mar
 2023 11:09:42 -0700 (PDT)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Mon, 13 Mar 2023 11:09:42 -0700
MIME-Version: 1.0
In-Reply-To: <20230312183622.460488-3-krzysztof.kozlowski@linaro.org>
References: <20230312183622.460488-1-krzysztof.kozlowski@linaro.org> <20230312183622.460488-3-krzysztof.kozlowski@linaro.org>
From:   Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.10
Date:   Mon, 13 Mar 2023 11:09:42 -0700
Message-ID: <CAE-0n50eJaw=ENqR71_5-L1kArey79snkoz_GQq4ufG1ZWu_Pg@mail.gmail.com>
Subject: Re: [PATCH 3/8] arm64: dts: qcom: sc7180-trogdor-lazor: correct
 trackpad supply
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Douglas Anderson <dianders@chromium.org>,
        Gustave Monce <gustave.monce@outlook.com>,
        "Joseph S. Barrera III" <joebar@chromium.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Matthias Kaehlcke <mka@chromium.org>,
        Rajendra Nayak <rnayak@codeaurora.org>,
        Rob Herring <robh+dt@kernel.org>,
        Vinod Koul <vkoul@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting Krzysztof Kozlowski (2023-03-12 11:36:17)
> The hid-over-i2c takes VDD, not VCC supply.  Fix copy-pasta from other
> boards which use elan,ekth3000 with valid VCC:
>
>   sc7180-trogdor-lazor-limozeen-nots-r4.dtb: trackpad@2c: 'vcc-supply' does not match any of the regexes: 'pinctrl-[0-9]+'
>
> Fixes: 2c26adb8dbab ("arm64: dts: qcom: Add sc7180-lazor-limozeen skus")
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---

Reviewed-by: Stephen Boyd <swboyd@chromium.org>
