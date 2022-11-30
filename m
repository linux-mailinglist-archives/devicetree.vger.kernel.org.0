Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5B3CD63D9AA
	for <lists+devicetree@lfdr.de>; Wed, 30 Nov 2022 16:43:15 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229972AbiK3PnM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 30 Nov 2022 10:43:12 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37754 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229798AbiK3PnL (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 30 Nov 2022 10:43:11 -0500
Received: from mail-lj1-x22d.google.com (mail-lj1-x22d.google.com [IPv6:2a00:1450:4864:20::22d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0E0B629CA1
        for <devicetree@vger.kernel.org>; Wed, 30 Nov 2022 07:43:09 -0800 (PST)
Received: by mail-lj1-x22d.google.com with SMTP id q7so21309771ljp.9
        for <devicetree@vger.kernel.org>; Wed, 30 Nov 2022 07:43:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=WaRD8QklpytPxehHMCkpfcrlUbphUikLEf5UhMWfO6A=;
        b=zpTYsF7dWZ0po86YDkXdqBLrf5+F59SIKMVyAkkwSByiqAN5PiOJ0FS81M3MrvjvjI
         7mNErpFXMjg0Pj1UGcuEbkIzETRHrY6cUHz83aLY0UIZN5TwPFPHAVUZaOQb6uizLD5S
         70dcPSwFRQaF1b/3Y3DKSn/DlglPUWL0bH4awh+1+OQHQSwAjVfWfKzB03BEb49+indi
         xfe1Gn8DJkUCNMdshJudHDfELpIfyUeudhQdFxegCbo/C3gZCj+N2JxjSTKuGTB8EQBc
         30ieeZjkUJHB9Bvelp2pX+JD4DtpX06jISjnEniViRLbSIv/hsNK0W0dyv3xfljOu6Po
         +sJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=WaRD8QklpytPxehHMCkpfcrlUbphUikLEf5UhMWfO6A=;
        b=taShuMXkZ+bcJ1X0DGtGFWwrK1FmGgRqnKRYpkuGQ2rKJyU7OzUseXe2DkHC420Gi2
         G28M2/zRPpzXsdhwFToQs0SNzbuLdF0VfaWfP/epqWfw1ojngOMCAVu6EjoOSXSrkxfO
         1J/qhRPrKsmOhOgbuN0SKSyrXVQpcZs2tqekPvQVP1/0MSDVAJfIVZAKMSvRAMnOL2I+
         EDoxAFrwYc5YvLxgDpFAih8cYNL15r5Stihqk3vpC+Mh48hoRw3rrgU/UCx/b+wi+mMy
         VdC07LRfAxqVnItvUOCnV7lD4jGUhEBHC3XVc4///xxeTGuEEnS/c3TiWEP5sM69B+Sy
         EthA==
X-Gm-Message-State: ANoB5pnocEtUqGxyllIF7adnNcTcUFAJHHHNU5vPoPp4bVb8DkRBWpAH
        XcBTsP+Mfi+AWbNiFX7jpjcKvg==
X-Google-Smtp-Source: AA0mqf5DYz0oVOKpSHaPEwnZ/v3d763Ft94uD8pE/g2IVBNqbj/CGM+kjxGAk4V8M6Li1hRY8xtJ8g==
X-Received: by 2002:a05:651c:160a:b0:277:6e27:6000 with SMTP id f10-20020a05651c160a00b002776e276000mr18434707ljq.104.1669822987379;
        Wed, 30 Nov 2022 07:43:07 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id m15-20020a0565120a8f00b004b4930d53b5sm297370lfu.134.2022.11.30.07.43.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 30 Nov 2022 07:43:06 -0800 (PST)
Message-ID: <cb87955b-0cbe-0b32-6cb2-5e6979b7ed4c@linaro.org>
Date:   Wed, 30 Nov 2022 16:43:06 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
Subject: Re: [PATCH] dt-bindings: usb: tegra-xusb: Remove path references
Content-Language: en-US
To:     Thierry Reding <thierry.reding@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     devicetree@vger.kernel.org, linux-usb@vger.kernel.org,
        linux-tegra@vger.kernel.org,
        Conor Dooley <conor.dooley@microchip.com>
References: <20221130154111.1655603-1-thierry.reding@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221130154111.1655603-1-thierry.reding@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 30/11/2022 16:41, Thierry Reding wrote:
> From: Thierry Reding <treding@nvidia.com>
> 
> Unresolved path references are now flagged as errors when checking the
> device tree binding examples, so convert them into label references.
> 
> Reported-by: Conor Dooley <conor.dooley@microchip.com>
> Suggested-by: Rob Herring <robh+dt@kernel.org>
> Signed-off-by: Thierry Reding <treding@nvidia.com>
> ---


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

