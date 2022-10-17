Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 50D5E6018AA
	for <lists+devicetree@lfdr.de>; Mon, 17 Oct 2022 22:08:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229874AbiJQUIu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 17 Oct 2022 16:08:50 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33298 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230499AbiJQUIg (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 17 Oct 2022 16:08:36 -0400
Received: from mail-qk1-x72f.google.com (mail-qk1-x72f.google.com [IPv6:2607:f8b0:4864:20::72f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BC4E77AC19
        for <devicetree@vger.kernel.org>; Mon, 17 Oct 2022 13:08:31 -0700 (PDT)
Received: by mail-qk1-x72f.google.com with SMTP id a18so7426046qko.0
        for <devicetree@vger.kernel.org>; Mon, 17 Oct 2022 13:08:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ed3ftHcc5SyWscaKK7nyW0NFE2YPDw+tnrfqkzmRju4=;
        b=fBNCHy+yw62qrCp+dpfeos0vpYTqrWbP+ctBj6Ur+L27ru+O96LXTV2BUDQIj1VvPr
         jK/UOl8libNKdDRqTGvZkkFo3ABq2m2WvwrPeypkPEYCo/NiPhkyiK55IdpsS1GJtvzC
         68Qg7SPo3q42OsI2tJ0so4b/AgB1Ade9q0hC3xqNVnsURRfG7UShtINt5aXZD9dzY1rb
         y4oWkRHaZHEdRRJAKCOqLSbvjsqAVAmgON6ah6PJjHf8Gar6EW74gXgtKIiYoRt9Bp4Q
         KRYQYuZfgfeh8xX0X57BzIc4X+mYmKF2YXAjVHi7thKru5RZ481Dt4dRgiGr/qL31cj+
         a7vQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ed3ftHcc5SyWscaKK7nyW0NFE2YPDw+tnrfqkzmRju4=;
        b=5Wwf58+52dAtmSgLlLe3MeztXKl/bQEXDVJdwjd1vMBQx7Rl140I2r+frOxd074zMB
         mBQrvcpItT12jfIo7bYvQunjDicwpnUYIrKcE3recAurzlg1LZ6T0wc6Ihl9iM/L2DKu
         BZggnXCqaVTRlFCAet6O0tff5FhtM0zs/4pBfbYoSgcZTFlt3WnWl+BELWchqPdPdciI
         dTup2HprmVsIiO64Sgt8fvdfF3DW9UTFBqHx7qyQ7fGVPhK7brXdR1Ug1sOm0PfYdX2t
         iF5628Ppwk/8vtI9odBnhoxEytBR8nT6uuANiYLZgcPopWnV90LCr2nhVWF1PZsCh7kC
         rlfA==
X-Gm-Message-State: ACrzQf0c8SGXOKtgF+ZSvbyypi9By8A7m7MCJ60qLiiqD5ODR/XS/rYK
        XB6BJ7gH5E7efAn7uJoVxJnBRg==
X-Google-Smtp-Source: AMsMyM79m7vyd1YCWCRDGT1dM+7YkkfBPX6XC/3E1mIPWP961HSwqIIFjNqM9S2mvYAx7p0matcM7Q==
X-Received: by 2002:a37:82c1:0:b0:6cf:8445:6710 with SMTP id e184-20020a3782c1000000b006cf84456710mr8969951qkd.717.1666037310256;
        Mon, 17 Oct 2022 13:08:30 -0700 (PDT)
Received: from localhost.localdomain (pool-72-83-177-149.washdc.east.verizon.net. [72.83.177.149])
        by smtp.gmail.com with ESMTPSA id m13-20020a05620a24cd00b006ce76811a07sm536793qkn.75.2022.10.17.13.08.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 17 Oct 2022 13:08:29 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Andy Gross <agross@kernel.org>, Rob Herring <robh+dt@kernel.org>,
        linux-gpio@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Linus Walleij <linus.walleij@linaro.org>,
        linux-kernel@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc:     Rob Herring <robh@kernel.org>
Subject: Re: (subset) [PATCH v2 11/12] dt-bindings: pinctrl: qcom,sc7280-lpass-lpi: add bias-bus-hold
Date:   Mon, 17 Oct 2022 16:07:46 -0400
Message-Id: <166603728600.4991.17555337568337318943.b4-ty@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220927153429.55365-12-krzysztof.kozlowski@linaro.org>
References: <20220927153429.55365-1-krzysztof.kozlowski@linaro.org> <20220927153429.55365-12-krzysztof.kozlowski@linaro.org>
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

On Tue, 27 Sep 2022 17:34:28 +0200, Krzysztof Kozlowski wrote:
> The existing SC7280 LPASS pin controller nodes use bias-bus-hold, so
> allow it.  Squash also blank lines for readability.
> 
> 

Applied, thanks!

[11/12] dt-bindings: pinctrl: qcom,sc7280-lpass-lpi: add bias-bus-hold
        https://git.kernel.org/krzk/linux-dt/c/13e4319b57fdecf7144239d9e631960d873b7675

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
