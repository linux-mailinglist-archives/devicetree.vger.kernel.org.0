Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2931E57B212
	for <lists+devicetree@lfdr.de>; Wed, 20 Jul 2022 09:48:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240212AbiGTHsq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 20 Jul 2022 03:48:46 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35568 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239987AbiGTHso (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 20 Jul 2022 03:48:44 -0400
Received: from mail-wr1-x432.google.com (mail-wr1-x432.google.com [IPv6:2a00:1450:4864:20::432])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A022D68DFA
        for <devicetree@vger.kernel.org>; Wed, 20 Jul 2022 00:48:41 -0700 (PDT)
Received: by mail-wr1-x432.google.com with SMTP id n12so12061948wrc.8
        for <devicetree@vger.kernel.org>; Wed, 20 Jul 2022 00:48:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to;
        bh=9ElSeSk614sHvQ21Olszx7/fOD72S3pdEjMKoWVvV70=;
        b=vhSEKJmVmMARaRWH0xaA2l+kCtoc5Zx/reprZlY45YpxW3DQg9C4qONfodIx8+o4FZ
         158sB+03Rej/8Yf3e7gYSweZ3QyCmBdBh0VytqYAKE+oZyQSUaBygJar2jiBAzoEkfDm
         Xy7z/6IV1uZa5/UMmF0q2rzbG46hJGLHu0glLNe/8bl6J3YbSzA9dXRv9XD4fKfjMchv
         ndvMvmrncYAgprfLQrycI45wKDPfJwlwoaICFQ+hwF1gknT6bSptzTNKEdB+SKsj12Tg
         LRCrO1tXEf1JQAWFoFemlZHgH/7yuZxocrMVCc5L3QF30Q1OI+1IHZ05vmaUDeusjeDV
         n+1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=9ElSeSk614sHvQ21Olszx7/fOD72S3pdEjMKoWVvV70=;
        b=uOK2Ppr6Wq/eykswdTXw6hwoRmr0WLb7OaxbnS7wfW8B1M0uWKbx3j40UQGFxeKW09
         tbH5fPsTG/55cFkSp83/EkwrI5uAKYLP9pEFh6MYFBt8r3qOpMxr30xjweaEv0kexAGH
         Dw8EWgl7iEae+zAJNCs7uBd8h/NM3aK97Bsw1N/SQIX4YeQlfIcBlG+7KZW+7E9KsNxY
         516SAIosItVMAEEukBh5F5wb4ENY2XO6SDnIeb2xVty+3TCxBhXexlS4WbVVmZkOZerA
         82sg2SstRWg2YO/G/a94fPz34/OmwztETez5vmw5lrUvPJm+U3AQsy93fvGlp1ehd+sm
         tVPw==
X-Gm-Message-State: AJIora/wRdLbP96tRSW0fdX9I772I0Ww+9IOo4aVBeTQZcWVd1oWrTum
        Qup7FXIayG475/mPH9ohGpE7Nw==
X-Google-Smtp-Source: AGRyM1vuPStHxI48eylnYSZO/6tJTXBaSbjnGnKmJlNTa/CBji3je23kXPmhNPY4cFUIPz3Fu06IOQ==
X-Received: by 2002:a5d:4e49:0:b0:21d:6e8a:fa3 with SMTP id r9-20020a5d4e49000000b0021d6e8a0fa3mr28469922wrt.528.1658303320157;
        Wed, 20 Jul 2022 00:48:40 -0700 (PDT)
Received: from google.com (cpc155339-bagu17-2-0-cust87.1-3.cable.virginm.net. [86.27.177.88])
        by smtp.gmail.com with ESMTPSA id a20-20020a05600c225400b003a32167b8d4sm1444891wmm.13.2022.07.20.00.48.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 20 Jul 2022 00:48:39 -0700 (PDT)
Date:   Wed, 20 Jul 2022 08:48:37 +0100
From:   Lee Jones <lee.jones@linaro.org>
To:     Rob Herring <robh@kernel.org>
Cc:     Fabrice Gasnier <fabrice.gasnier@foss.st.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        Alexandre Torgue <alexandre.torgue@foss.st.com>,
        devicetree@vger.kernel.org,
        linux-stm32@st-md-mailman.stormreply.com,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: mfd: st,stm32-timers: Correct 'resets'
 property name
Message-ID: <YtezVaZGhEZ1ZEKL@google.com>
References: <20220719215125.1877138-1-robh@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220719215125.1877138-1-robh@kernel.org>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, 19 Jul 2022, Rob Herring wrote:

> The correct property name for the reset binding is 'resets', not 'reset'.
> Fix the name.
> 
> Signed-off-by: Rob Herring <robh@kernel.org>
> ---
>  Documentation/devicetree/bindings/mfd/st,stm32-timers.yaml | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Applied, thanks.

-- 
Lee Jones [李琼斯]
Principal Technical Lead - Developer Services
Linaro.org │ Open source software for Arm SoCs
Follow Linaro: Facebook | Twitter | Blog
