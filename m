Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D0DB868D2B7
	for <lists+devicetree@lfdr.de>; Tue,  7 Feb 2023 10:25:33 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231463AbjBGJZc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 7 Feb 2023 04:25:32 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38324 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230399AbjBGJZb (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 7 Feb 2023 04:25:31 -0500
Received: from mail-wm1-x32a.google.com (mail-wm1-x32a.google.com [IPv6:2a00:1450:4864:20::32a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A91A8268A
        for <devicetree@vger.kernel.org>; Tue,  7 Feb 2023 01:25:30 -0800 (PST)
Received: by mail-wm1-x32a.google.com with SMTP id c4-20020a1c3504000000b003d9e2f72093so12684790wma.1
        for <devicetree@vger.kernel.org>; Tue, 07 Feb 2023 01:25:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=UYusMbl4fPMxM/IKPt2am1tzqQgaerR0Ur0r/xK18/I=;
        b=MiSrqfDP4AXpDQZWjexnq2es14hv39SBstg8R7kpgPbvP4njoxbKyFTOtQP9RHhX6v
         +WOKgBrbjgbHI/lFE52Bc83rWXMbt1bgUoQ/907obkavPBCALyKroyHMBUMj3vWL1TAZ
         UzRx4hdvwpQc84/5eBZ9xiKzYKzcm8FBd6zBA8qA2oVH4Hg/2ta+Wgtx+3ek9YHJuV0M
         0uMPGZunVaLiceS7ex2edNgC5VL7LGmDiP6tYImIu7yJf/E37dWBx2oIPaFSHcYhb397
         bW2IYOFksBYfMIqy8Hjy4T0gm4O2r31E9BeDZyau6zo4sxsJjq/1c/KcnfZwMgAE5lsG
         IRaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=UYusMbl4fPMxM/IKPt2am1tzqQgaerR0Ur0r/xK18/I=;
        b=MtVqLIy+UwfnXUu002R8RSYJyBOWRPusLhya2lv8gU7U325/P2mUMqA7rDcKQWxFm7
         TpGLIYTo3bI7Oay2uwza/MWPlvCdv0/YplqIbcYrYDbh1HEXTYAPW+apwqTqL6mY+BJP
         luBzTZvbGU1KqOcZCeJpH81A+ivkEyxyjqvWHpaPoxr3ND5h6UHigrZFW/0xtDkdVxsj
         wRTQ5FdjzQjoMgAlBM/EOSdY8KZ36ubOxP+pHli83WwVbNf9I5sUEmLDPtN+2zU5m28a
         dJ3KYIjoowZ5ncDMzNYgiEs4DRk2tjmnAT4XenRdGO/aTAD/AW5Dh+v9ZT+pKKdeGe5e
         W3cQ==
X-Gm-Message-State: AO0yUKVaNk8Wocons5D7d0Hl9s9jYmiXOle2DQUunVpyEEWS7oPH9zy+
        R51VbD/3fhTOhdk2gPbdLElkBg==
X-Google-Smtp-Source: AK7set/5Z/b8RWodGcLgLWd6kSGxnia8d6FmyleaY9eBDSe4mJ5CmR7vigaOaje5M7SWwdkRMMBWYA==
X-Received: by 2002:a05:600c:5112:b0:3da:2a59:8a4f with SMTP id o18-20020a05600c511200b003da2a598a4fmr2336503wms.38.1675761929304;
        Tue, 07 Feb 2023 01:25:29 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id s15-20020a05600c45cf00b003e00c453447sm2979693wmo.48.2023.02.07.01.25.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 07 Feb 2023 01:25:28 -0800 (PST)
Message-ID: <867ec517-ef29-e8ac-8e0c-6f7ca440cf3d@linaro.org>
Date:   Tue, 7 Feb 2023 10:25:27 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Subject: Re: [PATCH v11 3/7] dt-bindings: arm: nuvoton: Add NPCM GFXI
Content-Language: en-US
To:     Marvin Lin <milkfafa@gmail.com>, mchehab@kernel.org,
        hverkuil-cisco@xs4all.nl, avifishman70@gmail.com,
        tmaimon77@gmail.com, tali.perry1@gmail.com, venture@google.com,
        yuenn@google.com, benjaminfair@google.com, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, andrzej.p@collabora.com
Cc:     devicetree@vger.kernel.org, linux-media@vger.kernel.org,
        linux-kernel@vger.kernel.org, openbmc@lists.ozlabs.org,
        kwliu@nuvoton.com, kflin@nuvoton.com
References: <20230207091902.2512905-1-milkfafa@gmail.com>
 <20230207091902.2512905-4-milkfafa@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230207091902.2512905-4-milkfafa@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 07/02/2023 10:18, Marvin Lin wrote:
> Add dt-bindings document for Graphics Core Information (GFXI) node. It
> is used by NPCM video driver to retrieve Graphics core information.
> 
> Signed-off-by: Marvin Lin <milkfafa@gmail.com>
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---
>  .../bindings/arm/npcm/nuvoton,gfxi.yaml       | 39 +++++++++++++++++++

This is still wrong location. arm is only for top-level pieces. You
wanted to put it in soc.

Best regards,
Krzysztof

