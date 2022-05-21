Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 778DE52FD17
	for <lists+devicetree@lfdr.de>; Sat, 21 May 2022 16:05:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1353872AbiEUOFK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 21 May 2022 10:05:10 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35824 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231633AbiEUOFG (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 21 May 2022 10:05:06 -0400
Received: from mail-lj1-x22a.google.com (mail-lj1-x22a.google.com [IPv6:2a00:1450:4864:20::22a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 98E01562C8
        for <devicetree@vger.kernel.org>; Sat, 21 May 2022 07:05:04 -0700 (PDT)
Received: by mail-lj1-x22a.google.com with SMTP id 27so7435061ljw.0
        for <devicetree@vger.kernel.org>; Sat, 21 May 2022 07:05:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=d1kYyv5ThMhL++IEPezH6L3/JQfTCn2bBC3uluzdASE=;
        b=zZBZG+77Ro4UojerpsPaGBJsTYHFLKxtpL9lewzUMg1c4KkDTo4DessCZvZOHpRba8
         DYu7ITDh7Utd+YoskwDItroRXLSYDcUrhqkIeQ/L8wQ+n1ik1FLZPdKe9Yo5kPujQQvy
         HQXhDmawQgnVR/hhTssCDYriad6YcC7bqXo9Sq9jD4ZJfj5611kwAqmwKB6Vn8xP1FBG
         bbj2O/h+Dw/qHNLqZe7kU65yxuxlpmI6BH+c6QfWR8pqemXpQdk+H563662lR/JD/gCq
         dXNAgWllWX901z12Lr5leue7nNUq9DMmvum7jYf2AbVTbT2TXCdYSgQ2xU+iVXw0vYca
         zncw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=d1kYyv5ThMhL++IEPezH6L3/JQfTCn2bBC3uluzdASE=;
        b=xRWEe7z04KihIoJFijFDaZAtJbVunLyFAa0HiRyPnSX7Pfh0YCIvkhC+s35v+O6/nx
         mVqqQF2sQXXtROKXI4XtrCiRyvAvxaa2pHAyZFfCAp6H/xfHIGyu0AoyDEubAJdUGW5l
         lqK9hCrVrjh6o+fEa0qComHd/9oLyz1ZeTOXNB9AvoRRFi+U1HcHO43jvre5zgDiCXn5
         MuSTWkXrTbwtFMWSbazcZrgxH7B075RBXwrecTdjpscb6/meaB1eF6yeR33ROqWGyrVQ
         /NoAAz8725LMb7oO+Ltm8chO9QfJ4Vw+QzkdIINR9zU/h7cxcvk+r3fuAPbqDAgtQhcU
         Ttmg==
X-Gm-Message-State: AOAM531SLdXi3EjgH2R8DYWs3q1tykY6EeDezju/oz514gmgChRpK6vn
        j4Spo8SQ2Au6RAtkNnya45vX5Q==
X-Google-Smtp-Source: ABdhPJwZEhOHqoesMgIauedpx3ogq6lMvJjNB5YML4uG6u/SJasUNr+u1EP6LiAEWRpx4u0gHGXrOQ==
X-Received: by 2002:a2e:9348:0:b0:249:7117:b7ad with SMTP id m8-20020a2e9348000000b002497117b7admr8023603ljh.85.1653141902955;
        Sat, 21 May 2022 07:05:02 -0700 (PDT)
Received: from [192.168.0.17] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id a4-20020ac25204000000b00477a1b603basm1068915lfl.98.2022.05.21.07.05.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 21 May 2022 07:05:02 -0700 (PDT)
Message-ID: <288690ac-b23b-92f8-64b4-d994f249f21c@linaro.org>
Date:   Sat, 21 May 2022 16:05:01 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.1
Subject: Re: [PATCH v2 2/2] dt-bindings: arm: mtk-clocks: Set #clock-cells as
 required property
Content-Language: en-US
To:     Rob Herring <robh@kernel.org>,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>
Cc:     krzysztof.kozlowski+dt@linaro.org, matthias.bgg@gmail.com,
        sboyd@kernel.org, chun-jie.chen@mediatek.com,
        rex-bc.chen@mediatek.com, wenst@chromium.org,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20220518093631.25491-1-angelogioacchino.delregno@collabora.com>
 <20220518093631.25491-3-angelogioacchino.delregno@collabora.com>
 <20220520221910.GA348732-robh@kernel.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220520221910.GA348732-robh@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 21/05/2022 00:19, Rob Herring wrote:
> On Wed, May 18, 2022 at 11:36:31AM +0200, AngeloGioacchino Del Regno wrote:
>> This is a clock-controller binding, so it needs #clock-cells, or
>> it would be of no use: add that to the list of required properties.
>>
>> Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
>> Reviewed-by: Matthias Brugger <matthias.bgg@gmail.com>
>> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
>> ---
>>  .../devicetree/bindings/arm/mediatek/mediatek,mt8186-clock.yaml  | 1 +
>>  .../bindings/arm/mediatek/mediatek,mt8186-sys-clock.yaml         | 1 +
>>  .../devicetree/bindings/arm/mediatek/mediatek,mt8192-clock.yaml  | 1 +
>>  .../bindings/arm/mediatek/mediatek,mt8192-sys-clock.yaml         | 1 +
>>  .../devicetree/bindings/arm/mediatek/mediatek,mt8195-clock.yaml  | 1 +
>>  .../bindings/arm/mediatek/mediatek,mt8195-sys-clock.yaml         | 1 +
>>  6 files changed, 6 insertions(+)
> 
> Acked-by: Rob Herring <robh@kernel.org>
> 
> Wasn't there some discussion about moving these to bindings/clocks/? 
> Maybe that was another one, it's all a blur...

Yes, there was such idea although I am not sure if this is worth by
itself - messes up with the git history.


Best regards,
Krzysztof
