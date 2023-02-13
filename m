Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6EB0269436D
	for <lists+devicetree@lfdr.de>; Mon, 13 Feb 2023 11:49:14 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229750AbjBMKtK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 13 Feb 2023 05:49:10 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57730 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229969AbjBMKs2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 13 Feb 2023 05:48:28 -0500
Received: from mail-wr1-x431.google.com (mail-wr1-x431.google.com [IPv6:2a00:1450:4864:20::431])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A8F4CC672
        for <devicetree@vger.kernel.org>; Mon, 13 Feb 2023 02:47:58 -0800 (PST)
Received: by mail-wr1-x431.google.com with SMTP id r2so11666326wrv.7
        for <devicetree@vger.kernel.org>; Mon, 13 Feb 2023 02:47:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=FYFT2TVuB42CmiHgcg1fxHUHXf+/oNc9lI4q2kRz/Uk=;
        b=Sjx6PZk3GuuAJkJl8ftsmbSCoTvJNKQvvnWXKhiPOakZlhDlG6NWOU/0hR9cLFLQkj
         Qz7Auuqs8rm423maIzwNAgHbunz8v7iqmm+5kdd6OHXSPs0A0qjwe0UFh5v+/O6HQIaA
         tn47DHuPqPMGH/oiIlM8Tn4QCt0LFukuJJquIqtGEHNRhwZKTJHIoPwQ7ZGbMH3E84Tl
         2wz1/U1/H2xoWLbAkIJIo6rc7rWvVaKSJxuHK7TKRg7XzLiQCUVUgqSp34a/To/vx78L
         wWwlg/lb8shsFZIV+5+dUNgjyrFG6pwn+UUef+GUYS3UwhDbC23dY3wQJfnwXpvfuzlt
         jKUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=FYFT2TVuB42CmiHgcg1fxHUHXf+/oNc9lI4q2kRz/Uk=;
        b=fkNozZxUEUY0YJuKJakLphErziOG+2IRiTBWPNz2Gs8JWIhLQMrnwNSss/59J03YgO
         uDE10HABLiTiRjHiZgVWxYg5sYe86vidccyNsvG9x9zsZ9pJm6ilk7dALPG6XUw9e4oO
         CGu1OQ1wzIOp35LtvNxfFqFWiZVoLdSiiwXbNn44vHJPSHPj3pfZ2Yo//gum46jJlG2Z
         +WBakOd3oHrrEeL9SYKTVysSZ1/gF1fbhsFUH4WE6VdDo0LpTCXW2cS6H8U/N9xfO9ha
         J6NT/8jLsjtEGVR62fYBQEZbZIH8saKIVbv+8sz82P3dAMOeOU68ofMQAwIj2iRvgnDi
         ajJg==
X-Gm-Message-State: AO0yUKVm4gSSCfzaYerbIn+PLZxAYJ1ZlcVpjxBu0pj4VUJePKV0l/Ab
        ZQVCyko4rSMM7LLwk4ogiG+Qjw==
X-Google-Smtp-Source: AK7set8jFTRhvynkQNs14Mp2/jxWnPgR5a5nLfMpXO2jNcrTuPDDCXJ6LsSyj7BGLbNNGfB6IEoZzg==
X-Received: by 2002:a5d:4e4b:0:b0:2c3:e6b8:8cec with SMTP id r11-20020a5d4e4b000000b002c3e6b88cecmr19669677wrt.49.1676285274913;
        Mon, 13 Feb 2023 02:47:54 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id s8-20020adfecc8000000b002c5509ab3d1sm5235733wro.83.2023.02.13.02.47.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 13 Feb 2023 02:47:54 -0800 (PST)
Message-ID: <94626ae9-3732-199f-dd78-cdc90711302c@linaro.org>
Date:   Mon, 13 Feb 2023 11:47:52 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Subject: Re: [PATCH v2 2/2] dt-bindings: arm: sti: add sti boards and remove
 stih415/stih416
Content-Language: en-US
To:     Alain Volmat <avolmat@me.com>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Patrice Chotard <patrice.chotard@foss.st.com>
Cc:     devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20230212205107.8073-1-avolmat@me.com>
 <20230212205107.8073-3-avolmat@me.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230212205107.8073-3-avolmat@me.com>
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

On 12/02/2023 21:51, Alain Volmat wrote:
> Add bindings for STi platform boards and remove stih415/stih416 items.
> This commit also moves the sti.yaml binding file into soc/sti folder
> 
> Signed-off-by: Alain Volmat <avolmat@me.com>
> ---
> v2: update licensing
>     move file into soc/sti folder
> 
>  .../devicetree/bindings/arm/sti.yaml          | 26 ---------------
>  .../devicetree/bindings/soc/sti/sti.yaml      | 33 +++++++++++++++++++

Wait, I did not ask to move this. This is a top-level binding, so it's
place is in arm.

>  2 files changed, 33 insertions(+), 26 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/arm/sti.yaml
>  create mode 100644 Documentation/devicetree/bindings/soc/sti/sti.yaml
> 


Best regards,
Krzysztof

