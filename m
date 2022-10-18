Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0EF23602F47
	for <lists+devicetree@lfdr.de>; Tue, 18 Oct 2022 17:14:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229904AbiJRPOJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 18 Oct 2022 11:14:09 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33742 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229456AbiJRPOH (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 18 Oct 2022 11:14:07 -0400
Received: from mail-qt1-x831.google.com (mail-qt1-x831.google.com [IPv6:2607:f8b0:4864:20::831])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9982BBC457
        for <devicetree@vger.kernel.org>; Tue, 18 Oct 2022 08:14:06 -0700 (PDT)
Received: by mail-qt1-x831.google.com with SMTP id g16so4998591qtu.2
        for <devicetree@vger.kernel.org>; Tue, 18 Oct 2022 08:14:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/0tz87iyY45bqj5DqEtZQtWaWRcCo2kTq3CFw9NaZCY=;
        b=X7C4HmaUGLTjcxzeQpZqhiCaLjTb8o08F4gdTV+gWvR/kkIYGcKXQzP+tK9VGsdf9o
         46t486c5w4H6cGbDKi8p43tfqymCjrcBmDE8cVq0KHAWIwR5KRF8ebZD5PMjy4XZrzeJ
         R3UKbf6G6klw/V+d/ODkStQmdSvxVRwc9uXX/QSjoUVBrOwnmb0vTwmuXpYLKjUDyLgY
         7ehO/yXFlKsd3vAXrszy+0QUiaSvBMTjgqQ5wPbNhiTkD5TeKP1Ya4xoEhS2snvT4N87
         yQ3VfZEuvoPh/rEUOcx7+PUlhARIOTpYsm40J1KXIRMfiCwW6Mq8xvABb+E7/8uq/f4C
         hlzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/0tz87iyY45bqj5DqEtZQtWaWRcCo2kTq3CFw9NaZCY=;
        b=U7QBlG/5t4VCvNwzP2q4qcLLlMLbIFmLbqYQJwh4bP8BsUfnjLoRWpBrhOewR0oJ2Y
         iHGZR7Z9IAEInwXg4zUJRjMWVr0YfXh66tCt8LGNqCxc40l+qt7a8d1DyTuKdNHvkWrP
         8Q3tdQTI8avwlKKxAbAXvfkd4GkN1UrN0p9OzsTWYlm0Y7pigJAMfbu5SIA4OA/c0ofA
         LCGiKmbb1OIYV8UVIZ26yuZe9OvkB7F4PjELL3qeIKjyo0anzrC2f8He+UbdVsXtHcwR
         pJWkeoy7e/z9kSTIJQ1Z3trfTb3HnK7+U3IIAd7BPqeq+fr6XREkk/mRIwZoFknnHknM
         Vd+g==
X-Gm-Message-State: ACrzQf32nGO7qNG0aFvwL9xqgT/Pee6wm3B3mi0qbUKlRtIGtwIwA13B
        LCHonun4n2DktgVun9eHNPBo0w==
X-Google-Smtp-Source: AMsMyM4y6a9QV+VgqDAiandEJyJ29gp1A2BP8NYdjbnRg8qlCwyxInYLZhr4FbhQumxQLynUfr2sqQ==
X-Received: by 2002:a05:622a:1d4:b0:39c:ef9b:e77f with SMTP id t20-20020a05622a01d400b0039cef9be77fmr2433127qtw.529.1666106045583;
        Tue, 18 Oct 2022 08:14:05 -0700 (PDT)
Received: from krzk-bin.MSRM (pool-72-83-177-149.washdc.east.verizon.net. [72.83.177.149])
        by smtp.gmail.com with ESMTPSA id d18-20020a05620a241200b006bc192d277csm2639612qkn.10.2022.10.18.08.14.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 18 Oct 2022 08:14:04 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Marek Vasut <marex@denx.de>, linux-arm-kernel@lists.infradead.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        Alexandre Torgue <alexandre.torgue@foss.st.com>,
        linux-stm32@st-md-mailman.stormreply.com,
        Rob Herring <robh+dt@kernel.org>,
        Linus Walleij <linus.walleij@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Christophe Kerello <christophe.kerello@foss.st.com>,
        devicetree@vger.kernel.org
Subject: Re: [PATCH v3] dt-bindings: memory-controller: st,stm32: Split off MC properties
Date:   Tue, 18 Oct 2022 11:14:02 -0400
Message-Id: <166610603945.32199.12796181871708873749.b4-ty@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220928181944.194808-1-marex@denx.de>
References: <20220928181944.194808-1-marex@denx.de>
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

On Wed, 28 Sep 2022 20:19:44 +0200, Marek Vasut wrote:
> Split st,stm32-fmc2-ebi.yaml specific properties into st,stm32-fmc2-ebi-props.yaml ,
> split memory-controller bus peripheral properties into mc-peripheral-props.yaml ,
> reference the st,stm32-fmc2-ebi-props.yaml in mc-peripheral-props.yaml and
> reference the mc-peripheral-props.yaml in micrel,ks8851.yaml .
> 
> This way, the FMC2 controller properties in Micrel KSZ8851MLL ethernet
> controller node can be properly validated.
> 
> [...]

Applied, thanks!

[1/1] dt-bindings: memory-controller: st,stm32: Split off MC properties
      https://git.kernel.org/krzk/linux-mem-ctrl/c/895af530081df499c6308488eabf166a2f1deab8

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
