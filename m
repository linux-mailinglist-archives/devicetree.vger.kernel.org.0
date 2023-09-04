Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D39887914CC
	for <lists+devicetree@lfdr.de>; Mon,  4 Sep 2023 11:33:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234520AbjIDJd4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 4 Sep 2023 05:33:56 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53890 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231435AbjIDJdz (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 4 Sep 2023 05:33:55 -0400
Received: from mail-ed1-x532.google.com (mail-ed1-x532.google.com [IPv6:2a00:1450:4864:20::532])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7B9C0B3
        for <devicetree@vger.kernel.org>; Mon,  4 Sep 2023 02:33:52 -0700 (PDT)
Received: by mail-ed1-x532.google.com with SMTP id 4fb4d7f45d1cf-52a1ce529fdso1590214a12.1
        for <devicetree@vger.kernel.org>; Mon, 04 Sep 2023 02:33:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1693820031; x=1694424831; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Z/YOCswnyiP1Gl+qekEvPaVCMV3p7AL8gyHGWRDmlPo=;
        b=Uaihz9eGxGaYUYiLuViUw75ZLxtxRvD5bonDcQ60zzL6t4T/iAFuT2ozXRR61FcsqZ
         FUdPmHtCUQWh1zATe12BSiQFfk3I+GQiivgy+M9VpAoM6/X91lsdVf7gxSl3tqjvlFru
         YYwC7NIACeH3s+UJ88rZ72KBqhkZDfRHtfDSPfZMpinpCQU+PsQtbXBeITZakGK44S/l
         OThNmPBHrhlTy3ae0Osb+SP9KRUyPN5ioZxW6mi0Lw61Xbzqj6sO1zkRq+4Cq1ZcRnvo
         6QCrFPKuTUUISxxf37/MqVti1/KvJHk1F3b1xr7srTY0RTM/X5Fje2f0pnLYUGfJlQEI
         htog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1693820031; x=1694424831;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Z/YOCswnyiP1Gl+qekEvPaVCMV3p7AL8gyHGWRDmlPo=;
        b=OA9fK8EPh5hl50VW19ObFgXiACCaZhKw9QJYe1ouIfbO45pQ1ow3DVhDYyMXFXZf1s
         bHnGZ+gjm1huHvzwrPIQ80YAFshxTDBwUZ9FvfsKvCigxnwwAaeL9s14ROn6aBXGWRFJ
         IoMYaGfCOYd2J/N+OOP66aTHtDJP8zuxXf8fsdoSHBL/R/nxGuBmEVGt2KEH3h63A6k+
         EWOEjS3gt5eOkA9aOcZTVAcTVZlGHxuuYlXbHKL3Q4P7AJIPby+af+GA5yRvvvDbBxdr
         5cZ7RIiqeQZrrojCMlfvz1vm0yHxZUXvFuwStT5+tikRN+vKx8ml0LEQa4d0VeULMsSi
         aoXA==
X-Gm-Message-State: AOJu0Yw13JsmlcDqXo07TviGXctV88I0/Zoxa70Ack0G1S90ymTPIUnl
        wjL8BvHPPDrX9WLad+3uOBFP/g==
X-Google-Smtp-Source: AGHT+IEKhXKJRJUab8WqOQf9PxED1rgp/gPqp0+8r41c2tCEgP0t7/VHw4P5dlfOfipN1wGRh9Fwtw==
X-Received: by 2002:aa7:c690:0:b0:523:3fff:5ce2 with SMTP id n16-20020aa7c690000000b005233fff5ce2mr6718205edq.41.1693820031035;
        Mon, 04 Sep 2023 02:33:51 -0700 (PDT)
Received: from [192.168.0.22] (77-252-46-238.static.ip.netia.com.pl. [77.252.46.238])
        by smtp.gmail.com with ESMTPSA id p11-20020a056402074b00b005231e1780aasm5522696edy.91.2023.09.04.02.33.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 04 Sep 2023 02:33:50 -0700 (PDT)
Message-ID: <e2e35d4d-7853-fccc-28c2-b8ecf309d6ec@linaro.org>
Date:   Mon, 4 Sep 2023 11:33:49 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.0
Subject: Re: [PATCH 1/2] dt-bindings: arm64: dts: mediatek: Add mt8395-evk
 board
Content-Language: en-US
To:     Macpaul Lin <macpaul.lin@mediatek.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>,
        Frank Wunderlich <frank-w@public-files.de>,
        =?UTF-8?Q?Bernhard_Rosenkr=c3=a4nzer?= <bero@baylibre.com>,
        Sean Wang <sean.wang@mediatek.com>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org
Cc:     Bear Wang <bear.wang@mediatek.com>,
        Pablo Sun <pablo.sun@mediatek.com>,
        Macpaul Lin <macpaul@gmail.com>,
        Chunfeng Yun <chunfeng.yun@mediatek.com>
References: <20230904092043.5157-1-macpaul.lin@mediatek.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230904092043.5157-1-macpaul.lin@mediatek.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 04/09/2023 11:20, Macpaul Lin wrote:
> Add bindings for the MediaTek mt8395-evk board.
> The mt8359-evk board is also named as "Genio 1200-EVK".
> MT8195 and MT8395 are the same family series SoC could share

How can be the same and have different numbers? You sill need dedicated
compatible.




Best regards,
Krzysztof

