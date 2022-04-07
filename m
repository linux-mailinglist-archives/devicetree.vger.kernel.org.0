Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D544C4F82AD
	for <lists+devicetree@lfdr.de>; Thu,  7 Apr 2022 17:20:23 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233117AbiDGPVv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 7 Apr 2022 11:21:51 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45412 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229995AbiDGPVu (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 7 Apr 2022 11:21:50 -0400
Received: from mail-ed1-f44.google.com (mail-ed1-f44.google.com [209.85.208.44])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 973ED1FAA16
        for <devicetree@vger.kernel.org>; Thu,  7 Apr 2022 08:19:28 -0700 (PDT)
Received: by mail-ed1-f44.google.com with SMTP id d7so6773041edn.11
        for <devicetree@vger.kernel.org>; Thu, 07 Apr 2022 08:19:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to:content-transfer-encoding;
        bh=pYsYOgntjjlvEHgT5JCPXmKVWoZYP+JG9X5DaFbpiDk=;
        b=dF5xHwBR29D9nYOAbS7SpTSRKvNoXqg3FwidUbuXMXwA2aP3JY+/kWS7KlOmMm/Gy0
         T5VuMhOpx4cqcL6RluzwTF8Ad5xcueuXfg0SbJgulSwA09CJO2G+TBnrDr/z9JoX6LnE
         FY5CnDYX5B7u/2pMv7EwBAjXlXN3Xdss23Gw44KTiu+XhEAG8JSmu8/turfGAg66sCWB
         0e3TEjxKScWpzImYMGM7GQiDQeD1GKfxW4ahkCjJZLwYA2NEzOoVo1BKX2lhLrHdtPlr
         wOqQoG/bd+b6ytynKOgP6jWrL35Mi9o4H8Su8MqEkHmkeq2hXMbrKWoHxGonNzj8E8E5
         1T5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to
         :content-transfer-encoding;
        bh=pYsYOgntjjlvEHgT5JCPXmKVWoZYP+JG9X5DaFbpiDk=;
        b=bluWki+A/UG1ngOCFIQaff731GI2HvWEl+yEQuoLrd+f+n3Jb5NyNNE3xYZDI6iJLA
         NZt3/MjU/7D+TdqYzU5JUWxs6rgCqkeD+Ik/s/2cR0f8gpMgoJmJxl3UKYNvIhos48mK
         1Tz0ANT1Pdo4lMKcEX0M/86B0jcNF6hsy3uQ/RtoeUfNbnHgafh3rLKXWIU35FNcRKs8
         HGo2Rq1cw4p93sPR33y7Hs8DSw1te+WDdHuaH5xkCsDsHv2cp31OKHwPi8dArlIO01fS
         ulyqlvEFoAZPFDh9WsTzMb7PXgLybPeKFE1yUAlIu0xogpe5bxPGD/VwMChEjc0z0QZ2
         Mg5w==
X-Gm-Message-State: AOAM533zpUCKgPkGIfA7Hrwpzq8MfX8ktN93gfzBT/Wk6WmqjjQNJIoS
        3bEud/OTEQvRlv15NByhJIZwJw==
X-Google-Smtp-Source: ABdhPJwLbpgSA+Jg7fYudXJFmcMqkdL4fgQYcsmaQKmizJG3dS0PYSHabAoeLbOFMycDRwFLxR8M2w==
X-Received: by 2002:a05:6402:42d4:b0:416:5cac:a9a0 with SMTP id i20-20020a05640242d400b004165caca9a0mr15045423edc.86.1649344707223;
        Thu, 07 Apr 2022 08:18:27 -0700 (PDT)
Received: from [192.168.0.187] (xdsl-188-155-201-27.adslplus.ch. [188.155.201.27])
        by smtp.gmail.com with ESMTPSA id m1-20020a170906848100b006e8053c7cdcsm3217716ejx.39.2022.04.07.08.18.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 07 Apr 2022 08:18:26 -0700 (PDT)
Message-ID: <27f5eed0-e59f-9441-4e2f-3a2c5d8dddad@linaro.org>
Date:   Thu, 7 Apr 2022 17:18:25 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [PATCH v2] dt-bindings: soc: ti: wkup_m3_ipc: convert bindings to
 json-schema
Content-Language: en-US
To:     Drew Fustini <dfustini@baylibre.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Dave Gerlach <d-gerlach@ti.com>, Suman Anna <s-anna@ti.com>,
        Tony Lindgren <tony@atomide.com>, Nishanth Menon <nm@ti.com>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20220407141750.2289293-1-dfustini@baylibre.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220407141750.2289293-1-dfustini@baylibre.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-5.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 07/04/2022 16:17, Drew Fustini wrote:
> Convert the wkup_m3_ipc bindings documentation to json-schema.
> 
> Link: https://lore.kernel.org/linux-arm-kernel/20220221125522.l3tntb6i7yjxp6vb@flattered/
> Suggested-by: Nishanth Menon <nm@ti.com>
> Signed-off-by: Drew Fustini <dfustini@baylibre.com>
> ---
>  .../bindings/soc/ti/wkup_m3_ipc.txt           | 57 -------------
>  .../bindings/soc/ti/wkup_m3_ipc.yaml          | 81 +++++++++++++++++++

Changes look good, thanks for fixing, although I forgot about one thing
- all other files are using 'hyphens' in file name, so please keep it
consistent with them.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof
