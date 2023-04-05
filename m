Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CA8106D7BC7
	for <lists+devicetree@lfdr.de>; Wed,  5 Apr 2023 13:44:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237891AbjDELoF (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 5 Apr 2023 07:44:05 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56008 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237971AbjDELoD (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 5 Apr 2023 07:44:03 -0400
Received: from mail-ed1-x529.google.com (mail-ed1-x529.google.com [IPv6:2a00:1450:4864:20::529])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2896E1BDB
        for <devicetree@vger.kernel.org>; Wed,  5 Apr 2023 04:43:37 -0700 (PDT)
Received: by mail-ed1-x529.google.com with SMTP id er13so99311957edb.9
        for <devicetree@vger.kernel.org>; Wed, 05 Apr 2023 04:43:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1680695015;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=alKlSBXqGXNKy9+ktgXszUv3LAFDLqUuHwOdgbOOvJY=;
        b=Tx080u4yBJLSyK1vjxZl1D9Lu4dCzxvsc4Yahuy/vDG4tHre9El56fUcb6HaDNjk6A
         DcTqadOdI9bUxmFu94zMSKHeSRWHSJR8B40xlRh050l+Gov1iJmV2z1+YuWagovqghak
         R4gORTRKxPbV5CPm5Lh54wSerSAIu6okWpK1PpWMSOhC8IUOzifhG9JKawMsLBhM0dl2
         whuHVm1nZW3/x1dyzHevBeWgerWpq6BvuMrYIe/HIK6JTL9fAFFVZ+qZY/mh+jj9H6Oz
         0SsWgHSqg/d2XwW7T1QyxKzP3WRFvhM2IOt1em9tYs/LQdHFGmhbAx9mkUBBKs9nV5jz
         NrHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680695015;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=alKlSBXqGXNKy9+ktgXszUv3LAFDLqUuHwOdgbOOvJY=;
        b=aEhIFcUn2rUWehVxTup2/AU4lJDQONYcJ23rfJI0w8Y9ongYu6uUl5Z7kIdjvMbMt7
         nbXIgxWRFo2X0Fn1pQ9TYr660XOGdTa8pyMzRH9CDAUrdEnmFzAUy37az/HR6kPUHnb3
         JTqNIPO3nNbZJjWRKNWhhhG3l2IRTQHauT6jZ4n+/AYwzkzfwodmYUjYHKOFCT2x5fPW
         pev9KBDp7blm5syUQTys7qGQw436FRNXP/JT8tcimtLc4CvDdJyUG9n5oNrlQX9Z6HDJ
         em6tOo4jyHSyQumko05//wsCuXY4eSsJAwPCatB0lS+S9TIWL8Wy+M3ngKD+gORlJcqD
         iSrA==
X-Gm-Message-State: AAQBX9cwtwmU9xZjdeVIec7yipFP+iikVpfV+mRsMJPr4Wim0yo6VTEv
        e1BDh0zLnCanJryTfoeAIsSGTQ==
X-Google-Smtp-Source: AKy350a4gmLcRBlQvEcL4JoGiz8mFy6lFAXXKhbYBZwvDb8YdrQja2ScjBrJPhZgmrFMqYzt4SshjA==
X-Received: by 2002:a17:906:d8d2:b0:878:66bc:2280 with SMTP id re18-20020a170906d8d200b0087866bc2280mr2693313ejb.12.1680695014915;
        Wed, 05 Apr 2023 04:43:34 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:3f:6b2:54cd:498e? ([2a02:810d:15c0:828:3f:6b2:54cd:498e])
        by smtp.gmail.com with ESMTPSA id qq8-20020a17090720c800b008def483cf79sm7234274ejb.168.2023.04.05.04.43.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 05 Apr 2023 04:43:34 -0700 (PDT)
Message-ID: <00a0d832-9a0b-6160-31eb-30d2e9c32c79@linaro.org>
Date:   Wed, 5 Apr 2023 13:43:33 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [PATCH v2 00/10] Add IOMMU support to MT8365 SoC
Content-Language: en-US
To:     Alexandre Mergnat <amergnat@baylibre.com>,
        Yong Wu <yong.wu@mediatek.com>,
        Rob Herring <robh+dt@kernel.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
References: <20230207-iommu-support-v2-0-60d5fa00e4e5@baylibre.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230207-iommu-support-v2-0-60d5fa00e4e5@baylibre.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-1.6 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 05/04/2023 10:06, Alexandre Mergnat wrote:
> This commits are based on the Fabien Parent <fparent@baylibre.com> work.
> 
> The purpose of this series is to add the following HWs / IPs support for
> the MT8365 SoC:
> - System Power Manager
> - MultiMedia Memory Management Unit "M4U" (IOMMU)
>   - Smart Multimedia Interface "SMI"
>     - Local arbiter "LARB"
> 
> This series depends to two others which add power support for MT8365 SoC
> [1] [2].

So does it mean they cannot be merged? On first glance I do not see the
dependency, so I wonder if we understand the dependencies the same. And
subsystems.


Best regards,
Krzysztof

