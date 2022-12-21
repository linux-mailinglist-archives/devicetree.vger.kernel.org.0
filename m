Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D9BFC652ECD
	for <lists+devicetree@lfdr.de>; Wed, 21 Dec 2022 10:46:39 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234517AbiLUJqh (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 21 Dec 2022 04:46:37 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53472 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234654AbiLUJqX (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 21 Dec 2022 04:46:23 -0500
Received: from mail-lj1-x236.google.com (mail-lj1-x236.google.com [IPv6:2a00:1450:4864:20::236])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 54B43222A5
        for <devicetree@vger.kernel.org>; Wed, 21 Dec 2022 01:46:13 -0800 (PST)
Received: by mail-lj1-x236.google.com with SMTP id f20so15048338lja.4
        for <devicetree@vger.kernel.org>; Wed, 21 Dec 2022 01:46:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=RMN18TMuRJ15tNy7Rh8fHbbD5iNzzFMU1HwQ+6IR2jM=;
        b=OEF0uMUfj3e2EPEdiZgyHX3vKcqazjkPE6pCVext6HfTGZnZOT8FBMcvpIO1Vp9HYJ
         gihqyCNyL6czBPzjSYjfXicWUDeJbbFK+NCCeXQ25M7sTvGz6wv2ZQJocrDWLWo1YG5y
         u8lS2AbfV+2+TeSygX3DPQ8bqQotpPx2ef5VWN8sbpt5pPAQRrsrtf6UFcIzcLSpjCa7
         ZehkKKcOZc/cpDfxQeLwcV3l0HYXSAn5RKN+wmlGgzNBfZZcoVun4kMINTLBBxdIEcnM
         cQukSltSXHf9x+6y8XzSWXeOOULqUhrg+iNNTBvNJejTZJBDacm8x4wJpjbXIKhUxNXh
         AgTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=RMN18TMuRJ15tNy7Rh8fHbbD5iNzzFMU1HwQ+6IR2jM=;
        b=lmmglWaoaxtRHXWfTBMbP3sgIor1H2baUOs3weDpSLSA7ZyyHd9cyaYNG+5Y4udueh
         0cYF0VKoy/2y3cAcShfg5fECXgnVb6KVR/cEZ55Gzhmd9mL0YDx0AFU1+oC+HANfDOgn
         Dl3rv+TKMTJecyJnEpBgB+ZxVZs+p5F+VfmAN2vljmH9LcmGuGZ9yJ4E43aeSdqWNPqp
         hPg0ZWyXdkO4rma9KO7B+fmtGbvI2z+P32QVbbx6t1BHrqJ6oXD1lCZ2aBccZGsSV59O
         gQ6rmakZtQovARIOIorafUGjsfx6i8+hVM0IyLttCaWjtJU70IZ7/SN4Lv8fMiyLKfFY
         TPIw==
X-Gm-Message-State: AFqh2kp0S5ivoP8Rx1CT3jA8VPN3T/wtLkXOvSoCk8YCdpR25uWX64QL
        g03P3UzrV6OXv886xe4Wf+7l4Q==
X-Google-Smtp-Source: AMrXdXsJhRRL1Is1++esuSIMzRXvs597RfjTTEXCUgLTZRRkoQlwb6sHZ2TeuiIHbxzAzhDGiXldYg==
X-Received: by 2002:a2e:b6d4:0:b0:26e:8d03:c3db with SMTP id m20-20020a2eb6d4000000b0026e8d03c3dbmr418039ljo.0.1671615971759;
        Wed, 21 Dec 2022 01:46:11 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id v18-20020a2ea612000000b0027a197d8247sm1296361ljp.16.2022.12.21.01.46.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 21 Dec 2022 01:46:11 -0800 (PST)
Message-ID: <cb84a044-0508-2b5b-13aa-a081d0e90afd@linaro.org>
Date:   Wed, 21 Dec 2022 10:46:09 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: [PATCH 2/2] dt-bindings: leds: backlight: add binding for Kinetic
 KTZ8866 backlight
Content-Language: en-US
To:     jianhua lu <lujianhua000@gmail.com>
Cc:     Lee Jones <lee@kernel.org>,
        Daniel Thompson <daniel.thompson@linaro.org>,
        Jingoo Han <jingoohan1@gmail.com>, Pavel Machek <pavel@ucw.cz>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
        linux-leds@vger.kernel.org, devicetree@vger.kernel.org
References: <20221221070216.17850-1-lujianhua000@gmail.com>
 <d37e0f2d-eaa5-4eaa-72bb-ead349235d6d@linaro.org>
 <CAEo_cxGK_m_VM1k0EWerfS2b2DF5ucvftQj68h3kBZz2=L=YGQ@mail.gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <CAEo_cxGK_m_VM1k0EWerfS2b2DF5ucvftQj68h3kBZz2=L=YGQ@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 21/12/2022 10:40, jianhua lu wrote:
> Thanks for review, I will resend this path.

Are you going to test it, before sending?

Best regards,
Krzysztof

