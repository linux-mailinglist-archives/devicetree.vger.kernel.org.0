Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0DB426ABE71
	for <lists+devicetree@lfdr.de>; Mon,  6 Mar 2023 12:39:36 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230307AbjCFLje (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 6 Mar 2023 06:39:34 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58624 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230312AbjCFLjY (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 6 Mar 2023 06:39:24 -0500
Received: from mail-ed1-x52a.google.com (mail-ed1-x52a.google.com [IPv6:2a00:1450:4864:20::52a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2734627D61
        for <devicetree@vger.kernel.org>; Mon,  6 Mar 2023 03:39:21 -0800 (PST)
Received: by mail-ed1-x52a.google.com with SMTP id ay14so33512239edb.11
        for <devicetree@vger.kernel.org>; Mon, 06 Mar 2023 03:39:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1678102759;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=cm1yYv6PwNcfTuc6RLRT1JagKFtdluR/CBnlVVN7Nuo=;
        b=CvDsRcHiP0S6OeAHKqhq7BwYHXrHHZeMhmGrVnRWSGktF5U3I5Q0mwKIAviG/fQBW2
         atKiF9+NNzsAF7rUhLBqVZ1bEyDYulgy9xtxf+Gtmh6Ywi/4Z2nOqhr88fFU/zcUnP+2
         kaSZ8gpKSWbdfD65Q2NXcueguQgAfHDzWS+Z8te3wn57+qbds6GxDyX04+h9qUc+pkaa
         3EAWd04tUhtoKqQUq35VZK/VrPUvwyyAiOqtgO7yjKRfAda4Qo+5vveoEY7lYBusYi9n
         wntlP925K6xS0qW0kk3TEwkbPYhggdhZqc+PKZ84ynjyd48PCpsGXbP46GWcYwsY2qrM
         bDcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678102759;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=cm1yYv6PwNcfTuc6RLRT1JagKFtdluR/CBnlVVN7Nuo=;
        b=3gehb4eVya8J4V3qIygLgMLlMzdeTcyuA3L6BS+ZFXvJjL07V59kd6eqcuKnkRHARU
         FTdrq/RUAQJFfU5ldVqmqDmYmFinqtBvPXhd4Ha4sOswS7ta0ap7SHrLtrIZsnW4pVdp
         cszu+S522WAVZkN74mjTgZ2jUhdqXkymfh2//DzApF5qkdHZHUNXjF328/MrMySF4F2T
         YU3trXpu8Fu1ypk0U1+pDQ5D3zJLxk2i6djeSpsShuYYenfZNQYgndFtJaXGHucfgnDo
         c7TPjdG/BxX3spwPjj28c27ZF0WmeJc5f7UhtxUeN7RbPKFHjuYB1WXw9k1lgNtFCL5W
         OjTw==
X-Gm-Message-State: AO0yUKXuE/JvtSoJkFQYfm11CKax68dp3u3iMjUWsa29H/+CnaKMD/ai
        FehVzlA3khZl1KnIxEf74g09TA==
X-Google-Smtp-Source: AK7set9/1jGBVnlHcB4wPEcu1EWHvxazivhejdpvar3ANC+iIdka6WPhPbZFfqHwm21dYIdRA/nILA==
X-Received: by 2002:a17:906:ca5a:b0:8b2:abc7:1ef9 with SMTP id jx26-20020a170906ca5a00b008b2abc71ef9mr10750344ejb.68.1678102759662;
        Mon, 06 Mar 2023 03:39:19 -0800 (PST)
Received: from krzk-bin.. ([2a02:810d:15c0:828:d85d:5a4b:9830:fcfe])
        by smtp.gmail.com with ESMTPSA id ch10-20020a170906c2ca00b008cf8c6f5c43sm4411936ejb.83.2023.03.06.03.39.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Mar 2023 03:39:19 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     linux-samsung-soc@vger.kernel.org,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-kernel@vger.kernel.org, linux-media@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Alim Akhtar <alim.akhtar@samsung.com>,
        linux-arm-kernel@lists.infradead.org
Subject: Re: (subset) [PATCH 3/3] ARM: dts: exynos: drop unused samsung,camclk-out property in Midas
Date:   Mon,  6 Mar 2023 12:39:08 +0100
Message-Id: <167810274095.82312.4920507037861037087.b4-ty@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230211134731.85957-3-krzysztof.kozlowski@linaro.org>
References: <20230211134731.85957-1-krzysztof.kozlowski@linaro.org> <20230211134731.85957-3-krzysztof.kozlowski@linaro.org>
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

On Sat, 11 Feb 2023 14:47:31 +0100, Krzysztof Kozlowski wrote:
> The S5K6A3 camera sensor does not use nor allow samsung,camclk-out
> property.
> 
> 

Applied, thanks!

[3/3] ARM: dts: exynos: drop unused samsung,camclk-out property in Midas
      https://git.kernel.org/krzk/linux/c/cb8d0fcc5024981e1aed2516921f8bfb3476ffa7

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
