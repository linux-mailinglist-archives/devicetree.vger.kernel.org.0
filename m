Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 97DEE70F7B9
	for <lists+devicetree@lfdr.de>; Wed, 24 May 2023 15:35:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234708AbjEXNfc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 24 May 2023 09:35:32 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60732 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234894AbjEXNf0 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 24 May 2023 09:35:26 -0400
Received: from mail-wr1-x431.google.com (mail-wr1-x431.google.com [IPv6:2a00:1450:4864:20::431])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id ACC1D119
        for <devicetree@vger.kernel.org>; Wed, 24 May 2023 06:35:16 -0700 (PDT)
Received: by mail-wr1-x431.google.com with SMTP id ffacd0b85a97d-309438004a6so570655f8f.2
        for <devicetree@vger.kernel.org>; Wed, 24 May 2023 06:35:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20221208.gappssmtp.com; s=20221208; t=1684935315; x=1687527315;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=9uljV3lePHX2dT1PWNMh/ljjLSAl+kOPIh8cm/LkNac=;
        b=SO63kmKtSJT+rMuOzFfavtHtUqylLnOJdFFicK5cp/eceA89/zf3PQyUFaH5Rs63cz
         Pzm3JQnfxT3+MD7uHfDR/yLU+U7Gus5FSM9tHP9+ZSaIBDkq7XNwTso4yaPGZ2wllepE
         8f2xSrMVugmNS8uSy9Xxzu1Y+Soi4C+n56BPnZmw2VBq1j0GfYnWQtoNo+vDlNMMcodH
         JAG66GqoBj/9ugfDnaBciDx9Sy8+uZF4SM79v+Wyf5ADftBvUlHrLVB+2zv4q2hOVLSs
         xeSHkWEaN0XiPEOEbWMW344h9yvsp89mo7ke0mBbrLS8FhyqVQTXksnBIplcSe6w+D7u
         UwxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684935315; x=1687527315;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=9uljV3lePHX2dT1PWNMh/ljjLSAl+kOPIh8cm/LkNac=;
        b=Pov6BO5QGgi5tmxp3avGvTv6TZ1V9hH3PDLDwtdw0gLzLu7Ot6Vut5LPkXIG0LBRr5
         b1Ac53jDiil8cdMERqsNNe0G0EH057JT9C8CLvfA8/dbL0LeLqZbKvt6vvap4Ah9hmtC
         fks9WNQyOf8zYa2eJpaPM08RmKUhh+MxsKx5isJlMMWJYLSpIetdM0+XBic7ZBEUc04S
         mJlOZovMXoVU75EzO6shleqrCTKHqoizksY0kqwXHeYXvvCx8U18cpylTgUjhmf6qanb
         wZPjBzbW20U+seautpkI/CFGYrd6dw3vv/vZrKZBrd7jOs4V7cr7ARnGMvrDysVXLHO7
         0hoQ==
X-Gm-Message-State: AC+VfDzNegkNB9JYBOf8moUocg/5pYu5Uk3vPihNW3c6X8Sm34F5CtK0
        ICqH/m6Y3pTTA4HO1k03GykGgg==
X-Google-Smtp-Source: ACHHUZ5RZ7Bo5fpNypNWTBFfgonGWh7gKVvBN1SdijZkeoUQ8x/A+0ydKs+34LVC2FAgeWHBgFnIfw==
X-Received: by 2002:a5d:45c4:0:b0:306:39a8:6fa2 with SMTP id b4-20020a5d45c4000000b0030639a86fa2mr13135682wrs.61.1684935315016;
        Wed, 24 May 2023 06:35:15 -0700 (PDT)
Received: from [192.168.1.172] (158.22.5.93.rev.sfr.net. [93.5.22.158])
        by smtp.gmail.com with ESMTPSA id a2-20020a056000100200b0030903d44dbcsm14555695wrx.33.2023.05.24.06.35.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 24 May 2023 06:35:14 -0700 (PDT)
Message-ID: <1ee72aae-46ec-dfad-f68e-f9189c84d148@baylibre.com>
Date:   Wed, 24 May 2023 15:35:13 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH v2 3/7] ASoC: mediatek: mt8188-mt6359: register hdmi/dp
 jack pins
Content-Language: en-US
To:     Trevor Wu <trevor.wu@mediatek.com>, broonie@kernel.org,
        lgirdwood@gmail.com, tiwai@suse.com, perex@perex.cz,
        robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        conor+dt@kernel.org, matthias.bgg@gmail.com,
        angelogioacchino.delregno@collabora.com
Cc:     alsa-devel@alsa-project.org, linux-mediatek@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org
References: <20230523021933.3422-1-trevor.wu@mediatek.com>
 <20230523021933.3422-4-trevor.wu@mediatek.com>
From:   Alexandre Mergnat <amergnat@baylibre.com>
In-Reply-To: <20230523021933.3422-4-trevor.wu@mediatek.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 23/05/2023 04:19, Trevor Wu wrote:
> Some userspace applications need jack control events, so register hdmi
> and dp jack pins to activate jack control events.
> 
> Signed-off-by: Trevor Wu<trevor.wu@mediatek.com>

Reviewed-by: Alexandre Mergnat <amergnat@baylibre.com>

-- 
Regards,
Alexandre

