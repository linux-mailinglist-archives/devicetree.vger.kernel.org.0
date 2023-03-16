Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C871D6BC81F
	for <lists+devicetree@lfdr.de>; Thu, 16 Mar 2023 09:03:33 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230367AbjCPIDc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 16 Mar 2023 04:03:32 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40804 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230377AbjCPIDX (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 16 Mar 2023 04:03:23 -0400
Received: from mail-ed1-x535.google.com (mail-ed1-x535.google.com [IPv6:2a00:1450:4864:20::535])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 626CFB0BB2
        for <devicetree@vger.kernel.org>; Thu, 16 Mar 2023 01:03:04 -0700 (PDT)
Received: by mail-ed1-x535.google.com with SMTP id fd5so4115673edb.7
        for <devicetree@vger.kernel.org>; Thu, 16 Mar 2023 01:03:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1678953783;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=qh4n27p9wQD5s8gsgZxDBOeK+3qylkPEY7hCKMAkPoo=;
        b=xRSomDthOelEfJY9Fcgu9Y/q7gwHc9BT/kb5DyrokzDy6B72DGVtf4Lpumdbwf/heh
         Oc1fIrykRLKcj5HD+vFSVJivF3b24vMryp1nYgZCls/94Zp8zGNCAWYOXIWMXHNDAeX3
         Rb6wxYmtAvg6ZQfM5DLuRdr2PjsJni5igQZSEd4Nsyn59zgzFgvaBd61xKTlHkmekNsi
         CGUN9SGSY496waZ1M0E/iNiPRVgFyuEIM8UdrHB9Fl9uY+ga0/FzfkHNOiXZdlclGreo
         6tAwddSFh1ldFehaJTolUJNsXSbPBjhMC09ptSk1pZon9Jq+lNIoI2KcERljyipEMXvD
         HPOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678953783;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=qh4n27p9wQD5s8gsgZxDBOeK+3qylkPEY7hCKMAkPoo=;
        b=bBcUEr1RNZISb7kOQT2e13+yoPDKygRALyMLHBhCzm9WURldFk1oKlQowpkjv4KDRa
         EqWrFiIhnCQ7m0rUUvlkEHucBh+Aebr/b7vBHS4Hujptc9Bq+O7BpSawf1lXUUOc1JwF
         iWFm451zwuRTuQGR0Rv/b/VGI2mqDN2o+WVwo4SYmjhOY4/WtZX/SZiTOn/J0cEMbaE/
         t+cHuNZS131H3D9DNXexZ6eMoaljdWR5Jfcqc21ykHWP4mC7vjAd/4EgYgjDO6CbGAY6
         AkUy/JWQhtpkt7cpQbyahUlc7CrPOQp5f/G78a8NN/bDOscehXzuz434ngI+4Ri166oY
         wNWQ==
X-Gm-Message-State: AO0yUKUB0mx9O260Xq4wie8fMa9fSWSoYSxoslk4oT/RMKmZPLB8YmQv
        utL3GTqa8Afj8Ru2qWvELzf5RA==
X-Google-Smtp-Source: AK7set9S6JMYQtXY5eHDqMuToLl9fQfueRUySppFezu2X7NpsAwCDEV/ErqLnyA/sAL4FI4YJCfA8Q==
X-Received: by 2002:a05:6402:651:b0:4ef:9bf0:7177 with SMTP id u17-20020a056402065100b004ef9bf07177mr5632190edx.9.1678953782748;
        Thu, 16 Mar 2023 01:03:02 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:9827:5f65:8269:a95f? ([2a02:810d:15c0:828:9827:5f65:8269:a95f])
        by smtp.gmail.com with ESMTPSA id w13-20020a50c44d000000b004fc2a75c6b3sm3494797edf.23.2023.03.16.01.03.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 16 Mar 2023 01:03:02 -0700 (PDT)
Message-ID: <ed3358f2-cdd8-4cbf-48ed-3f8f462badee@linaro.org>
Date:   Thu, 16 Mar 2023 09:03:01 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH v2] ASoC: dt-bindings: adi,adau17x1: Convert to DT schema
Content-Language: en-US
To:     Vijaya Anand <sunrockers8@gmail.com>, lgirdwood@gmail.com,
        broonie@kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, alsa-devel@alsa-project.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Cc:     Daniel Baluta <daniel.baluta@nxp.com>
References: <20230315231055.3067-1-sunrockers8@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230315231055.3067-1-sunrockers8@gmail.com>
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

On 16/03/2023 00:10, Vijaya Anand wrote:
> Convert the binding document for adi,adau17x1 from txt to yaml
> so one could validate dt-entries correctly and any future additions
> can go into yaml format. Add address and size cells to example to
> prevent errors regarding reg format.
> 
> Signed-off-by: Vijaya Anand <sunrockers8@gmail.com>
> Cc: Daniel Baluta <daniel.baluta@nxp.com>
> ---
> Changes since v1:
> - added 'Codec' in title to clarify type of devices
> - put compatible devices in lexographic order
> - changed description of clocks
> - changed 'unevaluatedProperties' to 'additionalProperties'
> - changed node names to be generic

You sent a v2, so this should be v3. Keep it consistent, otherwise it
confuses reviewers...

> 
> ---
>  .../bindings/sound/adi,adau17x1.txt           | 32 ------------
>  .../bindings/sound/adi,adau17x1.yaml          | 52 +++++++++++++++++++
>  2 files changed, 52 insertions(+), 32 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/sound/adi,adau17x1.txt
>  create mode 100644 Documentation/devicetree/bindings/sound/adi,adau17x1.yaml


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

