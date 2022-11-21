Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8A51263295B
	for <lists+devicetree@lfdr.de>; Mon, 21 Nov 2022 17:27:04 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229797AbiKUQ1D (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 21 Nov 2022 11:27:03 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51928 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229541AbiKUQ1C (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 21 Nov 2022 11:27:02 -0500
Received: from mail-lj1-x229.google.com (mail-lj1-x229.google.com [IPv6:2a00:1450:4864:20::229])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BCC9CC8462
        for <devicetree@vger.kernel.org>; Mon, 21 Nov 2022 08:27:01 -0800 (PST)
Received: by mail-lj1-x229.google.com with SMTP id l8so15047453ljh.13
        for <devicetree@vger.kernel.org>; Mon, 21 Nov 2022 08:27:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=IK/hcYRO4+2xDkBUGwlm3+33CLzxibEmLxv8uMBuvXw=;
        b=C9oaLuCFpVuHZBmZToJMOFdTN+ZrANvFGp68HH7T0DdgitcmCIytNppzjmG0GpKsxS
         DRqCE2JfwXaeDfTrrjZLBsMRXYrBBSRZiJIhIV0GSK1OSb/mBFLvsWl94T7Es7bB98/h
         /MQYtLXCQd2IePMHurDKvwEwYBMeGQYFS1/5I2crL7MOFbB9QixzeRGKuYwTgGEiphIm
         cO2BFNEGPk671Ed0n6OMfl06IWi364ky9p45QO1WcCSTY9j7LDAJTsmSHOOfdAHovsV3
         jF0CtvnoYWPs2LyajVb6/dl0DDWL5IwzHrHjqMthTlWq8MeRZxrzpsScXBRNWAh5G/Wl
         RREQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=IK/hcYRO4+2xDkBUGwlm3+33CLzxibEmLxv8uMBuvXw=;
        b=pNXju7Wg7xmA5KLxIYsXdbFmSomEqZl3PdcisYEVtKPBPkywIHGwJEgkmD2bIaHnEx
         o9NxErG6lWXNGnLkeZQ5nnLV7RfW9TgK5vwCYhNrSObqHnKvMpUsDSXxABiZxYWcKWUt
         ox6BuEz8ZxWHXjsNlcW3dGChCa5NTFRHSZ1x+GHA5CR4GpKmA376+eF30Okw8d4Z+BnE
         JIgAy29B5WrFqwCBYu4KRJsp/xR0fFXnpq/BpM9cpImhguYSa/JWxSgOhJW7EQ5bmc2Q
         HS4IAqknpyD7Va6bTpmjpqWAF17ZB3omc0t22t9nWBM3CNW1Gt51MEDKuGFKm8v9cVgf
         KIZw==
X-Gm-Message-State: ANoB5pmpQy3ZeMPAOu+XCZ7VVChGiA92kCOMIfnHy5FwqiizUwZGYaM5
        QyTJI0ZH/6P4fysSL/8tTmGHzg==
X-Google-Smtp-Source: AA0mqf6jg9QPuniTDKbw/FHukSe9K+oG1xhN84uEcSbo3NdKv66w4NIw7IKP5T1TWsxE8D2WJoJf6A==
X-Received: by 2002:a05:651c:110a:b0:26d:e85b:92af with SMTP id e10-20020a05651c110a00b0026de85b92afmr5623921ljo.464.1669048020079;
        Mon, 21 Nov 2022 08:27:00 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id f10-20020a056512360a00b004aa0870b5e5sm2077709lfs.147.2022.11.21.08.26.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 21 Nov 2022 08:26:59 -0800 (PST)
Message-ID: <777399ec-ac03-18f6-c37c-7fda6d927ae3@linaro.org>
Date:   Mon, 21 Nov 2022 17:26:58 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Subject: Re: [PATCH 1/2] media: dt-bindings: media: rockchip-rga: add
 rockchip,rk3568-rga
Content-Language: en-US
To:     Michael Tretter <m.tretter@pengutronix.de>,
        devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
        jacob-chen@iotwrt.com, ezequiel@vanguardiasur.com.ar,
        robh+dt@kernel.org
Cc:     krzysztof.kozlowski+dt@linaro.org, heiko@sntech.de,
        michael.riesch@wolfvision.net,
        linux-arm-kernel@lists.infradead.org, kernel@pengutronix.de
References: <20221121151755.2072816-1-m.tretter@pengutronix.de>
 <20221121151755.2072816-2-m.tretter@pengutronix.de>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221121151755.2072816-2-m.tretter@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 21/11/2022 16:17, Michael Tretter wrote:
> Add a new compatible for the rk3568 Rockchip SoC, which also features an
> RGA, which is called RGA2 in the TRM Part2. It is the same core as used
> on the rk3288, which documents the same RGA2.
> 
> Specify a new compatible for the rk3568 to be able to handle unknown
> SoC-specific differences in the driver.
> 

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

