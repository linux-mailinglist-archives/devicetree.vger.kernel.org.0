Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0AA2C5B9ECF
	for <lists+devicetree@lfdr.de>; Thu, 15 Sep 2022 17:31:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230095AbiIOPbA (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 15 Sep 2022 11:31:00 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36638 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229758AbiIOPa4 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 15 Sep 2022 11:30:56 -0400
Received: from mail-wr1-x435.google.com (mail-wr1-x435.google.com [IPv6:2a00:1450:4864:20::435])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 231AA4CA16
        for <devicetree@vger.kernel.org>; Thu, 15 Sep 2022 08:30:55 -0700 (PDT)
Received: by mail-wr1-x435.google.com with SMTP id cc5so21608689wrb.6
        for <devicetree@vger.kernel.org>; Thu, 15 Sep 2022 08:30:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=peWX2leln2ZSvGXaMu2OH9aKkEDXDvB9GSTH9krlino=;
        b=uaKZlfhNWAwsybApB1eOAM7LNBWicBlt3I++btMi2TJURkhNvIay6Jusv7tU7E1qUK
         YKtrqSh48n0LlexHOX0Oyjzb8Fe463TwR4Snje0AV5ZCxyiGYySPP3Og7qaUSCfHPKqx
         FgeUb9ckbGLjeYNUyn81dVTwps/ZC71LeHVCOw5MjYFr/Jk/ZstWzXPv00BuUC+kcRPF
         Y7/R5AmF+6BkDWci7VS4UHSnu3FaEUFifk83mZWcsM/xzzsPtQSvdI9C64IONvbEfECE
         WVHUjLCgeogixFOhCFchYarZWt35VpNQyrADs9uKGv4xpbc6iFjdwqE+mW2E45nzNgan
         akzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=peWX2leln2ZSvGXaMu2OH9aKkEDXDvB9GSTH9krlino=;
        b=3dpb3vw0j+XEysI0z+Ayxzg1Wtb0HUZoBnHRmyqQazV+o70+ZVgIumLzg6ojU70YpH
         e5bzAHfmsutdYqn6SpUBIx108xj+5iIvH2wSFoNVXJaBroJjIfQFasIerDrYSORMUerM
         7Q38ZMYQQv24o78eDZTBp3BEVXGi6v3OTQ3o4+n0vvH1YVdFwNMBvbwuJhHJBWBWUA8x
         HLrovLqwN5BQRY5XdTEEgpmkDsckUOEcJwKZlGca85wlENTrpwdwcdcmWbfADTDARoZW
         AbZPY5S2LZObUXW9+UGy8NO16OU/j+GsCE5FMHW7FILaA9D+GVjKfc6eyXP/4dtAwOB9
         5IGg==
X-Gm-Message-State: ACrzQf1L6T6CXy21dFhzivUett6xWaL4+WDyitm/T6uPQQA8RcUm9p6u
        GBJeA0DlEJ57dtcbYMeBbNJwvQ==
X-Google-Smtp-Source: AMsMyM4JdjbuB3k8yaPzdP6kkU/k6S5PWAUIpyf2xFZ17JyUWm9Y+cRZWv3T9S8Zi8zpNvkSu4R4LQ==
X-Received: by 2002:a5d:48c2:0:b0:228:6226:381a with SMTP id p2-20020a5d48c2000000b002286226381amr152194wrs.366.1663255853678;
        Thu, 15 Sep 2022 08:30:53 -0700 (PDT)
Received: from [10.119.22.201] ([89.101.193.72])
        by smtp.gmail.com with ESMTPSA id a5-20020adffb85000000b0022a2f4fa042sm2809237wrr.103.2022.09.15.08.30.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 15 Sep 2022 08:30:52 -0700 (PDT)
Message-ID: <04187280-3c35-c9ac-fc70-b5066108ac0c@linaro.org>
Date:   Thu, 15 Sep 2022 16:30:51 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Subject: Re: [PATCH] dt-bindings: mailbox: Convert mtk-gce to DT schema
Content-Language: en-US
To:     AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>, robh+dt@kernel.org
Cc:     jassisinghbrar@gmail.com, krzysztof.kozlowski+dt@linaro.org,
        matthias.bgg@gmail.com, houlong.wei@mediatek.com,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org
References: <20220915101716.70225-1-angelogioacchino.delregno@collabora.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220915101716.70225-1-angelogioacchino.delregno@collabora.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 15/09/2022 11:17, AngeloGioacchino Del Regno wrote:
> Convert the mtk-gce mailbox binding to DT schema format.
> 
> Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
> ---
>  .../mailbox/mediatek,gce-mailbox.yaml         | 104 ++++++++++++++++++
>  .../devicetree/bindings/mailbox/mtk-gce.txt   |  82 --------------
>  2 files changed, 104 insertions(+), 82 deletions(-)

How is this related to:
https://lore.kernel.org/all/66591c84-ee8d-7152-f0c5-5e4a07f632fb@linaro.org/
?

Changelog? Previous review tag?


Best regards,
Krzysztof
