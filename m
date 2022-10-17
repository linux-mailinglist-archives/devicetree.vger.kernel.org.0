Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 42D526018B7
	for <lists+devicetree@lfdr.de>; Mon, 17 Oct 2022 22:09:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231177AbiJQUJM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 17 Oct 2022 16:09:12 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34106 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230458AbiJQUJB (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 17 Oct 2022 16:09:01 -0400
Received: from mail-qk1-x729.google.com (mail-qk1-x729.google.com [IPv6:2607:f8b0:4864:20::729])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CB85C7AC12
        for <devicetree@vger.kernel.org>; Mon, 17 Oct 2022 13:08:38 -0700 (PDT)
Received: by mail-qk1-x729.google.com with SMTP id s17so6211801qkj.12
        for <devicetree@vger.kernel.org>; Mon, 17 Oct 2022 13:08:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=b34m75C009iIZzJu3wQMuuBZWmzJ1WhgRJhOBshaRuQ=;
        b=SbB14J2PwrjxdWC5ec+SxQSKApLFYnvWwABLOcd5+4LfM3rNYtZ8zEwtlY6tcohmjx
         AoSUcJnABebHaKt4cIa8jeGm/nPz4V6hF9PN70Px9DpsH71+n2wglwNll2r97qPpoJHS
         p9vHgdyTA7XElaGCB7x3JzIpJ0f/05V1PT7eK1+VFINmZ2XPyfs8Tz5z4ffbrk+2Hn69
         SIgbH9bA2jMVV8O1LUeyNBKCHjQ72oqOqoOtu1BaU6VKBNWLJC+a2843+B/k7Nuu7j5I
         vuRrMEaEWxg7DQk7Wt4PdAUsaXII8s5Zt+2221v8qtJbP8afgsTJe3pfOwWCMb2ueIYK
         mPdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=b34m75C009iIZzJu3wQMuuBZWmzJ1WhgRJhOBshaRuQ=;
        b=hO/b2s9wQJqH7c3rQelvajs5OfQgUZkoSpjyNhHxSLHcc+PwirvEH6V9Xy3F2EbJhg
         IWEtPup03F1MmtVR6LNA4GnXo5CPf5gGFiesc52yGoMayw3ghSg61qj1lN6l7e91GXEk
         BMeD6wmx0F3+HAoIk/UsWUp2O8ltLDRTW/jC0wQI2OfBqr+nTgd1dauS7OshtBM8HDpe
         WGdjD1BG4e3KjFbGesllzT8FXSvcL5TWtLg3u8gxn39bCGs1dC6xWDX3LV/WqvUeE4ob
         UfMt1RHdQycjV1uvwYfrOLzP678ItTeZUFcKJ3YwOo/4kDXNZcruJK7sKV30KuV4zeBh
         pulQ==
X-Gm-Message-State: ACrzQf0cma4LQP9begWoZI0gBJqqDi2TgFdC31iHRKVThJeylwSerylA
        gmjDQFmttzblu4dSGZyMH4Hnlw==
X-Google-Smtp-Source: AMsMyM4AaZ0dl46d26zlNlfFW7sC/TYI9VC93ez/8+cq9OjlZ76KsVpR6QuzJGB1kdARvmp2nL8VpA==
X-Received: by 2002:ae9:eb45:0:b0:6ee:94aa:7520 with SMTP id b66-20020ae9eb45000000b006ee94aa7520mr9097432qkg.516.1666037316999;
        Mon, 17 Oct 2022 13:08:36 -0700 (PDT)
Received: from localhost.localdomain (pool-72-83-177-149.washdc.east.verizon.net. [72.83.177.149])
        by smtp.gmail.com with ESMTPSA id m13-20020a05620a24cd00b006ce76811a07sm536793qkn.75.2022.10.17.13.08.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 17 Oct 2022 13:08:36 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Rob Herring <robh+dt@kernel.org>, Shawn Guo <shawn.guo@linaro.org>,
        Andy Gross <agross@kernel.org>, linux-gpio@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Sivaprakash Murugesan <sivaprak@codeaurora.org>,
        Linus Walleij <linus.walleij@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        krishna Lanka <quic_vamslank@quicinc.com>,
        linux-kernel@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        linux-arm-msm@vger.kernel.org, Vinod Koul <vkoul@kernel.org>,
        devicetree@vger.kernel.org, Stephan Gerhold <stephan@gerhold.net>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc:     Rob Herring <robh@kernel.org>
Subject: Re: (subset) [PATCH v5 09/34] dt-bindings: pinctrl: qcom,ipq6018: correct BLSP6->BLSP0 functions
Date:   Mon, 17 Oct 2022 16:07:50 -0400
Message-Id: <166603728601.4991.10204223048558957862.b4-ty@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20221016170035.35014-10-krzysztof.kozlowski@linaro.org>
References: <20221016170035.35014-1-krzysztof.kozlowski@linaro.org> <20221016170035.35014-10-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sun, 16 Oct 2022 13:00:10 -0400, Krzysztof Kozlowski wrote:
> The pin controller driver has BLSP functions from 0 to 5, not 1 to 6.
> Add missing blsp0_i2c, blsp0_spi (already used in ipq6018-cp01-c1) and
> blsp0_uart.  Drop blsp6_i2c and blsp6_spi.
> 
> This fixes dtbs_check warning:
> 
>   ipq6018-cp01-c1.dtb: pinctrl@1000000: spi-0-state: 'oneOf' conditional failed, one must be fixed:
>     'bias-pull-down', 'drive-strength', 'function', 'pins' do not match any of the regexes: '-pins$', 'pinctrl-[0-9]+'
>     'blsp0_spi' is not one of ['adsp_ext', 'alsp_int', .....
> 
> [...]

Applied, thanks!

[09/34] dt-bindings: pinctrl: qcom,ipq6018: correct BLSP6->BLSP0 functions
        https://git.kernel.org/krzk/linux-dt/c/5d6f7ee5f7efc21724250f9c42f74aa8785e682b

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
