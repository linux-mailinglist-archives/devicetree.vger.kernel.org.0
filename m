Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8ADFA60CBC9
	for <lists+devicetree@lfdr.de>; Tue, 25 Oct 2022 14:27:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231745AbiJYM1U (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 25 Oct 2022 08:27:20 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41062 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231659AbiJYM1O (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 25 Oct 2022 08:27:14 -0400
Received: from mail-qt1-x82a.google.com (mail-qt1-x82a.google.com [IPv6:2607:f8b0:4864:20::82a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 958EE11CB6C
        for <devicetree@vger.kernel.org>; Tue, 25 Oct 2022 05:27:13 -0700 (PDT)
Received: by mail-qt1-x82a.google.com with SMTP id x3so366984qtj.12
        for <devicetree@vger.kernel.org>; Tue, 25 Oct 2022 05:27:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=L5QTt0IUvs/O5s0wdnL64lhb29nJZhbQLf7PtjZhkdM=;
        b=hi17ogfjTyDmQQemC2NEiM/0Y5oEFMUzrDSpPyE3oUHpsd7z0wddB0aFBADAeaVHT/
         g2ryoZY7bG3MqXtTNM2SnxxlKg4kaCB4vvPvT8wrggmoiW7sHsfMxWsjZ4r8zoDqqqNM
         UbjvkrQZW9bkKhIGazMwuNqZHBiPu7sZRxnBxpphJu+wLdAvLJIccrTKtdgJgOG/Zp48
         fSggj6RA4ALSRXZZkTSFgSbdRlsH4TKvZBmA1WYm0DJd179eNjzqo06CY8w+rY6B6hfu
         Lz5bh6lS+az+tWK9wfk4jpxBRz4rpNGudd9wmpyg97Wxlag7tDeGy8DqOJvQAXmM4GTD
         NYVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=L5QTt0IUvs/O5s0wdnL64lhb29nJZhbQLf7PtjZhkdM=;
        b=34b6iehx0iEfinEp0JeDzKBanbcSgwQZzNRSH1teEukzKtaSosQjCLhpwy08VG03Rw
         3qsq2gncB8N29oEmny6uQiYHszLciXsp1+EThsZ8SlcWjgN7kGGMtGODKHOleBcDSLS6
         FhLwS/d0Y3pgeAs+6hR+5tsBtlCWgzpeNq8xMB4T1uJLGNi7f5a3oKsc9DxfZ3K/mPXJ
         JeotTZkYH4SbtTw3eXNjhh+u4zcwEOeAm+eZd2+ulaeEPd+7J6E31WebU4qYwZxsDAIG
         vkMJFzkcKoy9zMX/IGhv00/iPZX1a24nfsax5fJIbJiaCLslUySpFXsPLt1+l+f9tZTH
         H4xA==
X-Gm-Message-State: ACrzQf0j6Dril3XGlGP5+5qaROClKpRbbrZqbkxzkB7aoAVGO2RdDKsF
        N5PQpkiaUyvNk++1kL9uFA+/o00nVsvyaA==
X-Google-Smtp-Source: AMsMyM6T/VN6zHWKHEw+/slQIe1ZYAI7TRy/Le7tokVuUTKpCZw1pVA9eMrX5RBUON04vFir1lPw6A==
X-Received: by 2002:ac8:5809:0:b0:39d:db1:895 with SMTP id g9-20020ac85809000000b0039d0db10895mr22223169qtg.440.1666700832806;
        Tue, 25 Oct 2022 05:27:12 -0700 (PDT)
Received: from [192.168.1.11] ([64.57.193.93])
        by smtp.gmail.com with ESMTPSA id s16-20020a05620a255000b006cbe3be300esm1996577qko.12.2022.10.25.05.27.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 25 Oct 2022 05:27:11 -0700 (PDT)
Message-ID: <d72b4a52-0dce-203d-4a42-bdba2e564674@linaro.org>
Date:   Tue, 25 Oct 2022 08:27:10 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.0
Subject: Re: [PATCH v2 4/4] ASoC: dt-bindings: rt5682: Add AVDD, MICVDD and
 VBAT supplies
Content-Language: en-US
To:     =?UTF-8?B?TsOtY29sYXMgRi4gUi4gQS4gUHJhZG8=?= 
        <nfraprado@collabora.com>, Mark Brown <broonie@kernel.org>
Cc:     AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>, kernel@collabora.com,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Rob Herring <robh+dt@kernel.org>, alsa-devel@alsa-project.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20221024220015.1759428-1-nfraprado@collabora.com>
 <20221024220015.1759428-5-nfraprado@collabora.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221024220015.1759428-5-nfraprado@collabora.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 24/10/2022 18:00, Nícolas F. R. A. Prado wrote:
> The rt5682 codec can have three supplies: AVDD, MICVDD and VBAT. They
> are already used by sc7180-trogdor.dtsi, so document them in the
> binding.
> 
> Signed-off-by: Nícolas F. R. A. Prado <nfraprado@collabora.com>
> 


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

