Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9AA2B576FD2
	for <lists+devicetree@lfdr.de>; Sat, 16 Jul 2022 17:20:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232261AbiGPPTp (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 16 Jul 2022 11:19:45 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38608 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232287AbiGPPTk (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 16 Jul 2022 11:19:40 -0400
Received: from mail-oa1-x36.google.com (mail-oa1-x36.google.com [IPv6:2001:4860:4864:20::36])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 63BC61F2E0
        for <devicetree@vger.kernel.org>; Sat, 16 Jul 2022 08:19:24 -0700 (PDT)
Received: by mail-oa1-x36.google.com with SMTP id 586e51a60fabf-10cf9f5b500so11715897fac.2
        for <devicetree@vger.kernel.org>; Sat, 16 Jul 2022 08:19:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=UQMyqlnOl2ShQfxqO/F3cpteR/9EvTP4YzP6gZhE16Y=;
        b=UpGj6MMOpOqt27f839h3qVkzEniiwd1if/gzWBauVzKGY/e+vLRBDeEgp7daw7DTU+
         gT9TEAefkth7hBHefuQFpEG45OF7Studd6+ehMIDwEOQ1eoziEuWd9aB4bbfXIIxCpnr
         2jJ0jxnZwBF5uKS/Mq2efpLppEfiuHQ1ynlbIj0qLoCF3KNKQVX974vI6YLbKHRnswmC
         Bi23FIxMIO1Odcp3BJNsGgWgxG1DBRd0aaI/vEJ8YuWejmCjyFxKmZojVkKthQp+RuLB
         FQVWQPz7LJKNcs2dtc8ct4H08tn68k4v3FPqN4Mi34Ujz3CF66zhh8iYAgewrsWrSLyn
         5ZSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=UQMyqlnOl2ShQfxqO/F3cpteR/9EvTP4YzP6gZhE16Y=;
        b=D1jhqWbuoRzfN74tlqBrE2pVFJag0Hm6wpmjm0///7GTurgzM8OjcDY5TqrRU0qXVo
         4S6YUlk3W+n+zumDaSrInqs6x+ZvDpfkLgzW/RZEUAQOeD0LUlO5rFUIqXhbL6/5k48B
         71/iBDcZlxFjxMitdT91MVxKPN0HXAtfxox67QfWNv4lqW6Bd7TnOtDfvqmA26s2BXk9
         Ii8YXoLNTADQiC5psKALWcMkb3QiTh6unwlWZfa2epuUUt1FFBG2WivGjHB0uv9G/epY
         TMdGh+VxQhZIZaUz7axDAy2KQ4YhfGTz9l4vnfKki0W07iESWtI0cOsOrfAcZseOWyef
         0KcQ==
X-Gm-Message-State: AJIora/29/3XiR5PWFWx90nDohQgc4oICXNqACyh+s4Bhta4RpxUaycD
        I8OFvoOkJtEi9082p830Mhb3kA==
X-Google-Smtp-Source: AGRyM1uwLUc3Mp5ZYc1Fm9wocfJF1ddieqythIKz57AodEVi2SSycAN/W31rBeV0rkAisuHJTtv96Q==
X-Received: by 2002:a05:6870:b3a0:b0:10b:760b:c4c9 with SMTP id w32-20020a056870b3a000b0010b760bc4c9mr13729166oap.84.1657984763899;
        Sat, 16 Jul 2022 08:19:23 -0700 (PDT)
Received: from builder.lan (104-57-184-186.lightspeed.austtx.sbcglobal.net. [104.57.184.186])
        by smtp.gmail.com with ESMTPSA id m21-20020a4ad515000000b00425beedad70sm3035254oos.32.2022.07.16.08.19.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 16 Jul 2022 08:19:23 -0700 (PDT)
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     Robert Marko <robimarko@gmail.com>, linux-arm-msm@vger.kernel.org,
        robh+dt@kernel.org, dmitry.baryshkov@linaro.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        jassisinghbrar@gmail.com, krzysztof.kozlowski+dt@linaro.org,
        konrad.dybcio@somainline.org, agross@kernel.org
Subject: Re: (subset) [PATCH v6 4/4] arm64: dts: ipq8074: add APCS node
Date:   Sat, 16 Jul 2022 10:19:06 -0500
Message-Id: <165798474063.1679948.3824406237045424067.b4-ty@linaro.org>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220707173733.404947-4-robimarko@gmail.com>
References: <20220707173733.404947-1-robimarko@gmail.com> <20220707173733.404947-4-robimarko@gmail.com>
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

On Thu, 7 Jul 2022 19:37:33 +0200, Robert Marko wrote:
> APCS now has support for providing the APSS clocks as the child device
> for IPQ8074.
> 
> So, add the required DT node for it as it will later be used as the CPU
> clocksource.
> 
> 
> [...]

Applied, thanks!

[4/4] arm64: dts: ipq8074: add APCS node
      commit: 50ed9fffec3aed88bc1ffed277d291f81153bd5d

Best regards,
-- 
Bjorn Andersson <bjorn.andersson@linaro.org>
