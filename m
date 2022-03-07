Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BA1F14CF6C2
	for <lists+devicetree@lfdr.de>; Mon,  7 Mar 2022 10:43:12 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237271AbiCGJnX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 7 Mar 2022 04:43:23 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51422 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240381AbiCGJk6 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 7 Mar 2022 04:40:58 -0500
Received: from mail-wr1-x42a.google.com (mail-wr1-x42a.google.com [IPv6:2a00:1450:4864:20::42a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6FB103B6
        for <devicetree@vger.kernel.org>; Mon,  7 Mar 2022 01:37:35 -0800 (PST)
Received: by mail-wr1-x42a.google.com with SMTP id x15so22174940wru.13
        for <devicetree@vger.kernel.org>; Mon, 07 Mar 2022 01:37:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to;
        bh=Dedx0S9GHW+zCkwbwjAj7WEO1ltayYGHp0V6c4kJEK0=;
        b=dOMdB7J6brgJ2xzB+wrppTiKJ6RjnpcClkRhOIwSfpgp+0jrJe2ORFPVEtMFRHrs9f
         l7thIuzhh+jnrFKTDyLqsNLOdlRxEP8WMe22XbXC33fFvUdp4jwvpXmaEiiHvXaUIiFr
         80NN8JS7ySADo621LVmJwOnq5GYHUkoRFL1hfn/0JliTL7fzwZAI1h9FP1JThlFJTpcR
         szVt580bgl/aqI1RqcSQOFGjsvArGvodGKQrzZ/2rGGrIQN6GaOURjZ/eqn3l1hvyms7
         CzR2V81RHFlGyBhVZ7S7r/Ejd99U+h5CfZFdtmB4WG/VbXN25a5NOyemfnlhmyA9LZM5
         NWHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=Dedx0S9GHW+zCkwbwjAj7WEO1ltayYGHp0V6c4kJEK0=;
        b=yhcww5i1+rIQL4iVDzKg+MTqQAWPAmT7iVRDSz7mG83OksVCLkO0vBhLMkk8pb5g53
         acoFOSUWc8UaEgaZ9LpA0TjKu4mczhZITGR328dk2Jf0fUDFtcZCRildx5C4eb5jhgQK
         31Xjl/k4x4JaPqcMxSNo32WDuD/BSLOAv0PsKfFU9T1HtPH15YMVC5872K3ZkzgAVEQ9
         a6YJFYdD4ohrZMUFhoVQT/45pOOxTbwFRayoPmonfUjFQW1oIReR+nbOmsRtdELf8wuD
         DcyLNQSp+P3RkC/rXU20MwY7/IUtTbN0yQiQgAyfCXw9DjNyHSNtEOE3/hSXSWs/2OCV
         hOng==
X-Gm-Message-State: AOAM531g27ERlzo+JHyFXObMQiEGamhrPl1MtQZd69nD5CHwSQwb23Nc
        tliC8Kbed3mg4HB8nllAKejKaA==
X-Google-Smtp-Source: ABdhPJy1wHUzClgICXkLnTzjIevPBASUICHgXeFLBM/lOyLrfWzfrHSUqPuD86sAw3lLzcZ8afaSTw==
X-Received: by 2002:a5d:6046:0:b0:1f0:4973:142f with SMTP id j6-20020a5d6046000000b001f04973142fmr7563737wrt.538.1646645853633;
        Mon, 07 Mar 2022 01:37:33 -0800 (PST)
Received: from google.com (cpc155339-bagu17-2-0-cust87.1-3.cable.virginm.net. [86.27.177.88])
        by smtp.gmail.com with ESMTPSA id bg18-20020a05600c3c9200b0037c2ef07493sm14826354wmb.3.2022.03.07.01.37.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 07 Mar 2022 01:37:33 -0800 (PST)
Date:   Mon, 7 Mar 2022 09:37:31 +0000
From:   Lee Jones <lee.jones@linaro.org>
To:     Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Chanwoo Choi <cw00.choi@samsung.com>,
        Sebastian Reichel <sre@kernel.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org,
        Rob Herring <robh@kernel.org>
Subject: Re: [PATCH v3 3/3] dt-bindings: mfd: maxim,max14577: convert to
 dtschema
Message-ID: <YiXSWzuy9xAXpUMv@google.com>
References: <20220215074759.29402-1-krzysztof.kozlowski@canonical.com>
 <20220215074759.29402-4-krzysztof.kozlowski@canonical.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220215074759.29402-4-krzysztof.kozlowski@canonical.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, 15 Feb 2022, Krzysztof Kozlowski wrote:

> Convert the MFD part of Maxim MAX14577/MAX77836 MUIC to DT schema
> format.  The example DTS was copied from existing DTS
> (exynos3250-rinato.dts), so keep the license as GPL-2.0-only.
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
> Reviewed-by: Rob Herring <robh@kernel.org>
> ---
>  .../devicetree/bindings/mfd/max14577.txt      | 147 -------------
>  .../bindings/mfd/maxim,max14577.yaml          | 195 ++++++++++++++++++
>  MAINTAINERS                                   |   2 +-
>  3 files changed, 196 insertions(+), 148 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/mfd/max14577.txt
>  create mode 100644 Documentation/devicetree/bindings/mfd/maxim,max14577.yaml

Applied, thanks.

-- 
Lee Jones [李琼斯]
Principal Technical Lead - Developer Services
Linaro.org │ Open source software for Arm SoCs
Follow Linaro: Facebook | Twitter | Blog
