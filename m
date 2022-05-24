Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 81F545326EF
	for <lists+devicetree@lfdr.de>; Tue, 24 May 2022 11:56:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231845AbiEXJ40 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 24 May 2022 05:56:26 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55824 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235965AbiEXJ4N (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 24 May 2022 05:56:13 -0400
Received: from mail-lj1-x22c.google.com (mail-lj1-x22c.google.com [IPv6:2a00:1450:4864:20::22c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 11CB621E3D
        for <devicetree@vger.kernel.org>; Tue, 24 May 2022 02:56:12 -0700 (PDT)
Received: by mail-lj1-x22c.google.com with SMTP id a23so20225419ljd.9
        for <devicetree@vger.kernel.org>; Tue, 24 May 2022 02:56:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=TNrztLGI7YmluKNlO8mQvCDSwLHT2q37DR0pu3wOwMc=;
        b=bqvCUGJAQAzLwY3sfu1hbgOSI+pcfdQAwtt01ZRg7d6FXrdv14i3c6V7VthX2NnZVo
         onXYiwgJZj1ydS1utpVk1BTcqiUNMjiYwvA8Cx2NiqpgQelMQPvIWQnSfR32Q2hexpRY
         Hf0pgJ+TdTcfVH9uyqE4FQCz6Q1AVtEiFyIH7dnG3sjGVnw/UA1vU4od1jqPrKSQx9H5
         24cMcqUL63dp3SLHwRkMAjo4mkg8zm1+B9lC+/x4WkeuecgZReWPwYV8wDEgdoK3YrN6
         wo4ACh6sSfdaBjU+dZWa+ReWcC24f3W5rVIq5PBwAwA5a0xFEGs6DDycoEMP8kjOmxie
         ZlWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=TNrztLGI7YmluKNlO8mQvCDSwLHT2q37DR0pu3wOwMc=;
        b=4b6dJTj8OexSt1F7qUGnyBf/rUtwJuBkq2MPUsNw/Z2g0l6wAeaHc8E/A37BaSIqEa
         3lcZwIQb1hCF44Zb/NMwCvt3lwK0M8AoyKqlFIttsH5vpkJjLv01UqP8mPxuDLgYEIwq
         XjGlsIiSMuIt7b9t+8K3+pYfGzxmiuiozACFVTZ1US0TG8TlzurY2VhYMddltzInMNlK
         lHMnbZEqD/kdrNQlDJ4gWfveBBxXleoBlBEZI42Ro7HLuNcAm6+yBEajxEsqNEUGnex0
         BMBED7i9iPQmvHigfwLM5gkzX/s/yytVuRXB+fkzxm3ScezPD/HztBhTTwVh/WNBZaK0
         Wg0A==
X-Gm-Message-State: AOAM5327F5+QoSDJ2fiQXbcPl9Th0SbPC3h8Op6q9osFn1z/EMr8wpMY
        qmBvvH7ZsVauXMOQSfU8CL0vcQ==
X-Google-Smtp-Source: ABdhPJxlLaugH14+WpTAZ8MmbT2RoFjMZQ35niE7QMkyFmwOWotHwAsSlzZKvQdJTQZo0h/iFrNSrA==
X-Received: by 2002:a05:651c:ba4:b0:253:dfde:d7e with SMTP id bg36-20020a05651c0ba400b00253dfde0d7emr10774791ljb.436.1653386170432;
        Tue, 24 May 2022 02:56:10 -0700 (PDT)
Received: from [172.20.68.48] ([91.221.145.6])
        by smtp.gmail.com with ESMTPSA id y24-20020ac24218000000b0047255d21184sm2449009lfh.179.2022.05.24.02.56.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 24 May 2022 02:56:09 -0700 (PDT)
Message-ID: <e7014cdd-5865-90b6-54f6-b0594839603a@linaro.org>
Date:   Tue, 24 May 2022 11:56:07 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Subject: Re: [PATCH v3 1/4] dt-bindings: regulator: Add bindings for MT6331
 regulator
Content-Language: en-US
To:     AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>, lgirdwood@gmail.com
Cc:     broonie@kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, matthias.bgg@gmail.com,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org
References: <20220523154709.118663-1-angelogioacchino.delregno@collabora.com>
 <20220523154709.118663-2-angelogioacchino.delregno@collabora.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220523154709.118663-2-angelogioacchino.delregno@collabora.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-5.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 23/05/2022 17:47, AngeloGioacchino Del Regno wrote:
> Add the bindings for the regulators found in the MT6331 PMIC.
> 
> Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
> ---


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof
