Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4958D60FBDC
	for <lists+devicetree@lfdr.de>; Thu, 27 Oct 2022 17:27:03 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235285AbiJ0P1A (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 27 Oct 2022 11:27:00 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57442 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235447AbiJ0P07 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 27 Oct 2022 11:26:59 -0400
Received: from mail-qt1-x831.google.com (mail-qt1-x831.google.com [IPv6:2607:f8b0:4864:20::831])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 42D32172B72
        for <devicetree@vger.kernel.org>; Thu, 27 Oct 2022 08:26:56 -0700 (PDT)
Received: by mail-qt1-x831.google.com with SMTP id z6so1373472qtv.5
        for <devicetree@vger.kernel.org>; Thu, 27 Oct 2022 08:26:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=9LPbSDa+MBywOmjjYSQBrIxZtqwfqdklED3LdicRb30=;
        b=f1pJAPwVik75oeO3R9Cfh95P3uRLmnpTBaXmTyyd/nK6BAF40G2FI6QJQseH0ZpaMG
         o8NjePfWROUjrYN/H1rYKeLUwFQkzzMlrqHw5CHZuXIXpTQiDep23SYO8hpzqckGzVOu
         IJ38tor/aLMUvF9rtEfUHXoZrYNBli/Rk4gOxXN/r5qxiBk9JgB2tovGeHA0pG8ushbI
         eUQvauYPA9quKmhnbZhgksHvliu1Iy28aOmQWAq4ZppJJepsipSsNtdL+vXiPFLXR/wZ
         Ow3djaDWx0/1L85XReUGe10at7Z2g7e1P5rQHsuYAdIcRpUSEBlsB9kdjd6dqWQXgUic
         Yd+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=9LPbSDa+MBywOmjjYSQBrIxZtqwfqdklED3LdicRb30=;
        b=baN3wu9fmhVPliPEzBIHjaKkTMF1y+hqzhE9RPauNgDuvwCRy7/kVCz8hPMFJrrklb
         8Ad3ka6n8k7YPAKsDcvZCGcGj5IK0kkqI3StMGnnLw7IBYqOwrTWFMAn6nOu8bIJUMAv
         dCnlPG4c5yICkfUcN04Kb7DBg/rdkSDhTUkx/Sa+GczzCBNUaHVWc92jqyF969ki7iqx
         pcjtztk2bCeXm9hk02BYNnxRToV6u53QSjX7MncfSyYbI5/kJebWBdjVen5Uf2R2tktR
         1fgDvftoqUXmnqmm0Mk5Q64djCZNl/dtOsPb3ENxXGYZJlqK+N3jHTkdjSHt/HHOzjP8
         gkjA==
X-Gm-Message-State: ACrzQf2c7bE3d7hPrEupLQzq/Ug+VglAiltd7O4CwQncrPm5xJwzucTL
        NsN4x+Y1VrbJoH7xZDw/IdkK9Q==
X-Google-Smtp-Source: AMsMyM4V1nmDJiKVYlT4rp0C1d+f84x0+W0srdAfp3Co9LNggnrL3zdamZcPPzCK4mwZ/oGlcxTqMw==
X-Received: by 2002:a05:622a:1313:b0:39c:ff31:21e0 with SMTP id v19-20020a05622a131300b0039cff3121e0mr9149632qtk.274.1666884415437;
        Thu, 27 Oct 2022 08:26:55 -0700 (PDT)
Received: from [192.168.1.11] ([64.57.193.93])
        by smtp.gmail.com with ESMTPSA id o24-20020a05620a229800b006ee7923c187sm1140355qkh.42.2022.10.27.08.26.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 27 Oct 2022 08:26:54 -0700 (PDT)
Message-ID: <b999144e-5137-6363-9792-8e6cf67e6a82@linaro.org>
Date:   Thu, 27 Oct 2022 11:26:53 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.0
Subject: Re: [PATCH v3 1/2] dt-bindings: arm-smmu: Add compatible bindings for
 QDU1000 and QRU1000
Content-Language: en-US
To:     Melody Olvera <quic_molvera@quicinc.com>,
        Will Deacon <will@kernel.org>, Joerg Roedel <joro@8bytes.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Robin Murphy <robin.murphy@arm.com>,
        linux-arm-kernel@lists.infradead.org, iommu@lists.linux.dev,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20221026190534.4004945-1-quic_molvera@quicinc.com>
 <20221026190534.4004945-2-quic_molvera@quicinc.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221026190534.4004945-2-quic_molvera@quicinc.com>
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

On 26/10/2022 15:05, Melody Olvera wrote:
> Add compatible bindings for Qualcomm QDU1000 and QRU1000 platforms.
> 
> Signed-off-by: Melody Olvera <quic_molvera@quicinc.com>

Drop second, redundant "bindings" from subject.

This applies to all your patches and all your patchsets which are for
the bindings subsystem.

Best regards,
Krzysztof

