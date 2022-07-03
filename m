Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C6500564433
	for <lists+devicetree@lfdr.de>; Sun,  3 Jul 2022 06:19:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232443AbiGCD6T (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 2 Jul 2022 23:58:19 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56822 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232077AbiGCD5h (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 2 Jul 2022 23:57:37 -0400
Received: from mail-oa1-x2e.google.com (mail-oa1-x2e.google.com [IPv6:2001:4860:4864:20::2e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2CD3FB7FB
        for <devicetree@vger.kernel.org>; Sat,  2 Jul 2022 20:57:22 -0700 (PDT)
Received: by mail-oa1-x2e.google.com with SMTP id 586e51a60fabf-fe023ab520so8802672fac.10
        for <devicetree@vger.kernel.org>; Sat, 02 Jul 2022 20:57:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=4gJephEWpQo2YAYUe5ZemM5pyNL41Styy55VtkH8kZQ=;
        b=uKPUcNC2VjWhkAbFI/l7B5zRX2aW/+RtRrEezv3FRnK8jN2/x+Kkmh3HakX4UUJ6hq
         1H8x3dPuLxM229iYHaG7lsD3yBjgiZ5wnD9QDtn5zOD9pFXzGI5Gek3AGcIPNelDy3N5
         GT3V3Z7mrYgHhIgNvwaHnexCrEkZNZ2sV56SfxgZ2h5yiHoTP8oGk1V8qVxQMbirNfDQ
         U2ysTJNRIYwnBB9ZgJIY0bqE8SYrhLY/yhujZXtPu0CIAspBk1S9+Hhrr5PmICrEro2m
         hF/UxsEfLerczVoNbj7lsIKL31yAyt8nzt9O4EpGmo/YA56wOjjv5xH2XKaWUM+mOVc4
         hJjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=4gJephEWpQo2YAYUe5ZemM5pyNL41Styy55VtkH8kZQ=;
        b=sviXQ4ywPyXilUwpTvA4sV/lyfKUXvndWUCWVPFBaul3O4dFQc6gtX0L13aVZ2/XHo
         xUsDFoYrAUUgww7rTdq4BTkDm2UqL5gW8nuBBbJBldYkO3nQ8190fyWZcYyFyqaV1wKy
         tX5jhLSg7BdjATVtQYCOKfQDoca88REPSckTtQwVd+vJJ8N1/76RAPEeU+eum0hisJYl
         C70tc/e1vng5z/XzKIYEFZDYeHhDEfDu4Yuy1ZvgLwW6e9xc29SCz4FaV6p/gH7DURQ4
         gKdTvhKal/yyCqEDeNbg3EkAbsQHN5Mt31I5Q7uA1jwzg00qwYoBtVVKGPSJYpG/wmrQ
         xSxw==
X-Gm-Message-State: AJIora/YG/1auAn+tn9/xxnPG26Lkg2kUeKpH6wy4Vlg7t9/WblpgHJP
        BXRj/6KN6XbzTP+fFnDw6zCCTg==
X-Google-Smtp-Source: AGRyM1vw+rNI39bqyDfMI9VZmZqU3zf78r2zUwCJdmgIsk75UphAWfvQK/hrtIP4vglf1yXTy+vISw==
X-Received: by 2002:a05:6870:c698:b0:101:fbdc:d044 with SMTP id cv24-20020a056870c69800b00101fbdcd044mr13724429oab.269.1656820641093;
        Sat, 02 Jul 2022 20:57:21 -0700 (PDT)
Received: from builder.lan (104-57-184-186.lightspeed.austtx.sbcglobal.net. [104.57.184.186])
        by smtp.gmail.com with ESMTPSA id 25-20020aca0f19000000b0032e5d0b5d5fsm12965910oip.58.2022.07.02.20.57.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 02 Jul 2022 20:57:20 -0700 (PDT)
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     Konrad Dybcio <konrad.dybcio@somainline.org>,
        Brian Masney <masneyb@onstation.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Andy Gross <agross@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: Re: (subset) [PATCH 01/14] dt-bindings: sram: qcom,ocmem: cleanup example coding style
Date:   Sat,  2 Jul 2022 22:56:17 -0500
Message-Id: <165682055971.445910.7675838409702902328.b4-ty@linaro.org>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220607171848.535128-1-krzysztof.kozlowski@linaro.org>
References: <20220607171848.535128-1-krzysztof.kozlowski@linaro.org>
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

On Tue, 7 Jun 2022 19:18:35 +0200, Krzysztof Kozlowski wrote:
> Fix the indentation in the OCMEM example and use generic node name -
> sram - to reflect the type of the device.
> 
> 

Applied, thanks!

[08/14] arm64: dts: qcom: use generic sram as name for imem and ocmem nodes
        commit: bed0855657afebbcdd9d8a29546c550848452cf1
[09/14] arm64: dts: qcom: qcs404: add dedicated IMEM and syscon compatibles
        commit: b2b86a2d89c26de048e44d3be439d9b2b1cb7ce5
[10/14] arm64: dts: qcom: sc7180: add dedicated IMEM and syscon compatibles
        commit: c220f33e03a0cc4136ef205513b2266faf025e2e
[11/14] arm64: dts: qcom: sc7280: add simple-mfd to IMEM
        commit: 2ffe4f99cbdd0639fc9a1254d39abd7b9dbe075e
[12/14] arm64: dts: qcom: sdm630: add dedicated IMEM and syscon compatibles
        commit: 616ab047bec7c47d881751bc537d3d6f6ae0c6d0
[13/14] arm64: dts: qcom: sdm845: add dedicated IMEM and syscon compatibles
        commit: 7cc60f6c09f49f0d8f8fa3083e7ff4fddec39ec0
[14/14] arm64: dts: qcom: msm8994: add required ranges to OCMEM
        commit: 07f3c7a11dadbead580b6d6e7d86bcc87119fe74

Best regards,
-- 
Bjorn Andersson <bjorn.andersson@linaro.org>
