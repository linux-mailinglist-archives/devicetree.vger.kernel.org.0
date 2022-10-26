Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2396460E40F
	for <lists+devicetree@lfdr.de>; Wed, 26 Oct 2022 17:05:23 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234149AbiJZPFV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 26 Oct 2022 11:05:21 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51368 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234449AbiJZPFS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 26 Oct 2022 11:05:18 -0400
Received: from mail-qk1-x72a.google.com (mail-qk1-x72a.google.com [IPv6:2607:f8b0:4864:20::72a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9BA91A835B
        for <devicetree@vger.kernel.org>; Wed, 26 Oct 2022 08:05:16 -0700 (PDT)
Received: by mail-qk1-x72a.google.com with SMTP id t25so10729451qkm.2
        for <devicetree@vger.kernel.org>; Wed, 26 Oct 2022 08:05:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=X+Yian3XJfjwAtTtvdKaogB3HiRKzCGm7a/+W1PG+Bs=;
        b=Ol7qYit5i8e0FB2o5UVEvowECPm2l3afA/NKhZBEFTqA3cRqK2OswutA/C8AYW2tQc
         IDCbMbPg04VX0hxosA7JgNk5JLi58Yxv6iJ9Fr2viWNfMeqE6JN4d2D07kf5TSPKZjqb
         rLl6b1MOzmRd+YKi+Wq3IkZ/OqzDiCFW7k4m+KbRmQkakweDhIjhGjsc+cnZXQTZf17o
         5X490R3cQofow4QefVKFYCg77XoJuKhFqN2A8vCPsDuK1Hu736zRaae3CL7uN4u3SwYe
         5kQepm1PShNfxh2p52i44FfFhwqw4Wt1+D3pFFoUzHF5z+w1gGygk4MEKBWhsfi36k6n
         TE7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=X+Yian3XJfjwAtTtvdKaogB3HiRKzCGm7a/+W1PG+Bs=;
        b=n4Cb6zdKuoDxXbSwvsKLYfyDmALN2te+ndo7U8VkyX/WV7y84iury9smD5nw13X/+f
         qg8gri/gcYNi71uCnQhlVVY15xTgpQWBVWbOW9MB//oY/ZBSgiw/Y3NVnHirddGQotRT
         5utOmjrDM/Tjvr8KDK+Y3X/cCjBMLqfpFYjbos5VF1hJgS1J6p2hoOxxrFYAfHkY3mXj
         SRUhAWd2KW8dMswtTzweMLqPUx+/k0M4zUo7J3FePdjleuQUbThHkRv/Ntmv1T8yTejk
         eQ8ReLTDvchpqKJgwUrbgAIRoeinnbneUopTU3KBJFlzzVQ5lEHMa0LkQ+G9qAxEbsPG
         X4ow==
X-Gm-Message-State: ACrzQf2cNEOng72l+PgrCHVEpOCF+AojOYxDBmuluX01iuv+AnURhXbv
        mPzuRjmCGxkJ7HgrcnNoll7goO8O26LNMA==
X-Google-Smtp-Source: AMsMyM6foj2gIjI2u8y7Jp2aKeXtSR0X0hJfnW9nxP5T5NjKIqKcVT7s6ReMcs7TNopkLjjkoQj4kQ==
X-Received: by 2002:a05:620a:4398:b0:6ee:be9f:435c with SMTP id a24-20020a05620a439800b006eebe9f435cmr31093108qkp.35.1666796715759;
        Wed, 26 Oct 2022 08:05:15 -0700 (PDT)
Received: from [192.168.1.11] ([64.57.193.93])
        by smtp.gmail.com with ESMTPSA id x22-20020a05620a0ed600b006b61b2cb1d2sm3944483qkm.46.2022.10.26.08.05.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 26 Oct 2022 08:05:14 -0700 (PDT)
Message-ID: <ac24732b-a7bd-59fb-4178-b225bc0b17c0@linaro.org>
Date:   Wed, 26 Oct 2022 11:05:12 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.0
Subject: Re: [PATCH v1 2/2] dt-bindings: ASoC: simple-card: Add
 system-clock-id property
Content-Language: en-US
To:     Aidan MacDonald <aidanmacdonald.0x0@gmail.com>, broonie@kernel.org,
        lgirdwood@gmail.com, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, kuninori.morimoto.gx@renesas.com
Cc:     perex@perex.cz, tiwai@suse.com, alsa-devel@alsa-project.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20221022162742.21671-1-aidanmacdonald.0x0@gmail.com>
 <20221022162742.21671-2-aidanmacdonald.0x0@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221022162742.21671-2-aidanmacdonald.0x0@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 22/10/2022 12:27, Aidan MacDonald wrote:
> This is a new per-DAI property used to specify the clock ID argument
> to snd_soc_dai_set_sysclk().
> 
> Signed-off-by: Aidan MacDonald <aidanmacdonald.0x0@gmail.com>
> ---
>  Documentation/devicetree/bindings/sound/simple-card.yaml | 8 ++++++++
>  1 file changed, 8 insertions(+)

My concerns were addressed, so:

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

