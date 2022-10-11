Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 91EAF5FB255
	for <lists+devicetree@lfdr.de>; Tue, 11 Oct 2022 14:22:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229639AbiJKMWM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 11 Oct 2022 08:22:12 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52504 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229782AbiJKMWK (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 11 Oct 2022 08:22:10 -0400
Received: from mail-qk1-x736.google.com (mail-qk1-x736.google.com [IPv6:2607:f8b0:4864:20::736])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E8B918E442
        for <devicetree@vger.kernel.org>; Tue, 11 Oct 2022 05:22:09 -0700 (PDT)
Received: by mail-qk1-x736.google.com with SMTP id x13so5782485qkg.11
        for <devicetree@vger.kernel.org>; Tue, 11 Oct 2022 05:22:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=xdgKVcoruOsRI1gFQDV7XWiemaEJpElOt29w8YNp/Nc=;
        b=y7Ve5W6HIEwm38hukIED5K6i5gpPSmtxTMyBbepdqdk8UqLxqRcPy/0rh/YIqI0vO5
         hxGfWrODjkTjoXnPyKULFUUxe2J73iDRYhDP6NdP2sW92U59eRsinDsqZ1GqD2RLchK4
         bhWolJ0qyAQ2PRery/1MmoYtInO7+pir24FWFWhI3TcB7CsioRd3wp4CmT4gN9JE+R43
         dk46jcrXMw32B9pNqSdzjk6udVoxjsy1vH7KQ/TeO8bybA23glWzWeHMyqo+cwKPcTrP
         /XVquPJI7jj7pDpqGasihag+LvPRBdVErOFZyR6hHg3qAQ+dGRSmlVoR45JosE9KfkAc
         I/ow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=xdgKVcoruOsRI1gFQDV7XWiemaEJpElOt29w8YNp/Nc=;
        b=0FyfSHqbYpxzSJbHOEu7a7DRHclJtVhs3m5FoHWJ5cHWRkDF2Qaon+dGv4oyO8Ao+k
         rRvI0NCMf/f8sWiuaNrrOCU2X41kBuRBS6WhjTOsHyegB5ssMViWrU/WjlpN3xGJVJRA
         Zge073WCpDp+BrnDlcD1V2IriuSw7BImUZTIvMh9vUJ3IdRID752qSoTQY07nengEXs5
         RYy4zVDODH6q7ja+5q+sb8ulgtpmahQrdllQB4JGND9zOFFRLJQAvQYYGNs5lBwV1R/E
         g0QSfOFBie2wFY1+pjssxbPR6uy3UHITkMCI4hU9IV2jFhagz4aTPMfEbX+1xRBbNLrU
         ZSrg==
X-Gm-Message-State: ACrzQf1I2VaxG6tOiVG5ULqhL4SenerEPqrumFYq08boIh8ZObaZSpDS
        LnEQs61nIrW0pfH8xwa2UOtXEA==
X-Google-Smtp-Source: AMsMyM41xqpDQ5in9l8801A7p7/zmkHU8JUE3v76Ofg1mojAArmpRMuqq/6uStoW8ppkc1uqM0prug==
X-Received: by 2002:a05:620a:1b89:b0:6ce:8b2b:7f0e with SMTP id dv9-20020a05620a1b8900b006ce8b2b7f0emr16345274qkb.15.1665490929135;
        Tue, 11 Oct 2022 05:22:09 -0700 (PDT)
Received: from [192.168.1.57] (cpe-72-225-192-120.nyc.res.rr.com. [72.225.192.120])
        by smtp.gmail.com with ESMTPSA id ff13-20020a05622a4d8d00b0035d420c4ba7sm10597119qtb.54.2022.10.11.05.22.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 11 Oct 2022 05:22:08 -0700 (PDT)
Message-ID: <15a251de-d78f-b3d3-936a-32ace29671be@linaro.org>
Date:   Tue, 11 Oct 2022 08:22:07 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.2
Subject: Re: [PATCH v2 2/7] dt-bindings: soc: mediatek: Add support for MT8195
 VPPSYS
Content-Language: en-US
To:     Moudy Ho <moudy.ho@mediatek.com>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>,
        Chun-Kuang Hu <chunkuang.hu@kernel.org>
Cc:     linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org,
        Project_Global_Chrome_Upstream_Group@mediatek.com,
        "Roy-CW.Yeh" <roy-cw.yeh@mediatek.com>
References: <20221011070356.682-1-moudy.ho@mediatek.com>
 <20221011070356.682-3-moudy.ho@mediatek.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221011070356.682-3-moudy.ho@mediatek.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-5.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 11/10/2022 03:03, Moudy Ho wrote:
> From: "Roy-CW.Yeh" <roy-cw.yeh@mediatek.com>
> 
> Add compatible for MT8195 VPPSYS on MUTEX.
> 
> Signed-off-by: Roy-CW.Yeh <roy-cw.yeh@mediatek.com>
> Signed-off-by: Moudy Ho <moudy.ho@mediatek.com>


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

