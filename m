Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 419F5750179
	for <lists+devicetree@lfdr.de>; Wed, 12 Jul 2023 10:28:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232608AbjGLI2f (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 12 Jul 2023 04:28:35 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56428 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232918AbjGLI2K (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 12 Jul 2023 04:28:10 -0400
Received: from mail-ed1-x52e.google.com (mail-ed1-x52e.google.com [IPv6:2a00:1450:4864:20::52e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8B037213D
        for <devicetree@vger.kernel.org>; Wed, 12 Jul 2023 01:23:35 -0700 (PDT)
Received: by mail-ed1-x52e.google.com with SMTP id 4fb4d7f45d1cf-51bece5d935so8986111a12.1
        for <devicetree@vger.kernel.org>; Wed, 12 Jul 2023 01:23:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1689150214; x=1691742214;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=+l7Eh/4LbWJYT13FkXK40Kaxv90ph3PwBtFUGakssuM=;
        b=gY1mIb5/n1pqlE1aMjQxtSn2wYBAYIFreAP6dmX1CNHRwQVQxrWeUWD9Vj9fZNow/v
         KvfPzfFlLgHxHgyGnvD5iuK+n/Zi7Ccy5EvSbKG75ZG5FBiWlEvMVCHMkgq+l30e/uP8
         7/qnoQhoyy1dd5VbbncyTVe9sHVZuD5IlBt5Oj5S3NbgWUAGXSEa+m8y5buZMD4bojeU
         Fg5rHRH562DT/q8YzBWLcgNCADZZXoihcGrDD0aWL2nNnFRVJRwNprI8Jj8diN9+ZhfE
         PW1uGlRaSsvSICCkuPYroTpXKG7FtG2yeDEj1d3epSn90Woch6gUpNYB5XBcv6w5aWhC
         H9kA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689150214; x=1691742214;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=+l7Eh/4LbWJYT13FkXK40Kaxv90ph3PwBtFUGakssuM=;
        b=aQZS/35fw0qzeByulqnvQBegQvNLJgFZiuVPvQy9YS3WhYnsU+mXWXKfkigkySixVA
         hNUljqECaA+N/ioGOu9gJLSPp5klVtrwUXe5EgtNo/GPKEsxyg9pGR/qgw3CsKjXFQwo
         /zXHu2r0tofstssd16i4BkUXdz6BB0rNSgGuCu4SNC4HDpReyPxs3QySqYsnsxGD1wN0
         qPKnqesz/oOc+xBVXF21T/iSgB9SZHuqZHHBf/vh3OMyVzPdBoEuTvCXHoyg92u7smft
         8aiCIb6epWr+Xzzq5kTJq0adPrsJEyR6wGZ6gMnbdJVxd62rx5heQIFpihIjxtAwobjP
         t3jA==
X-Gm-Message-State: ABy/qLbrkMoaPgKfDRIbOM/ZxaWM7/cIHEc2yfwQxss/EIJxqrJNahnl
        XFSUvJCAyKubvyOAqOvjWNLuRg==
X-Google-Smtp-Source: APBJJlE0v3CXAkyC+5VJ+owfFI5aeQXSTjTk+636i1V+fangwfHic7+Ga5nX19+DcFN5Gs2F6jPv5Q==
X-Received: by 2002:aa7:c75a:0:b0:519:6a6a:7659 with SMTP id c26-20020aa7c75a000000b005196a6a7659mr18612920eds.18.1689150214048;
        Wed, 12 Jul 2023 01:23:34 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.223.104])
        by smtp.gmail.com with ESMTPSA id i9-20020aa7dd09000000b0051e249f3dc6sm2403812edv.72.2023.07.12.01.23.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 12 Jul 2023 01:23:33 -0700 (PDT)
Message-ID: <b58b6c23-1771-6e93-eb1e-a5038cf55c30@linaro.org>
Date:   Wed, 12 Jul 2023 10:23:30 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Subject: Re: [PATCH 1/3] dt-bindings: display: panel: add startek
 kd070fhfid015 support
To:     Alexandre Mergnat <amergnat@baylibre.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Sam Ravnborg <sam@ravnborg.org>,
        David Airlie <airlied@gmail.com>,
        Daniel Vetter <daniel@ffwll.ch>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>
Cc:     Guillaume La Roque <glaroque@baylibre.com>,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
References: <20230711-startek_display-v1-0-163917bed385@baylibre.com>
 <20230711-startek_display-v1-1-163917bed385@baylibre.com>
 <14bed951-22ae-4aa8-5fcb-b2cd92ebdbef@linaro.org>
 <a335efdc-2ecb-c25a-7507-5ef2e19c5ca1@baylibre.com>
Content-Language: en-US
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <a335efdc-2ecb-c25a-7507-5ef2e19c5ca1@baylibre.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 12/07/2023 10:01, Alexandre Mergnat wrote:
> Hi Krzysztof,
> 
> Thanks for your review
> 
> On 12/07/2023 07:32, Krzysztof Kozlowski wrote:
>> On 11/07/2023 17:36, Alexandre Mergnat wrote:
>>> The Startek KD070FHFID015 is a 7-inch TFT LCD display with a resolution
> 
> snip
> 
>>> +
>>> +  dcdc-gpios: true
>>
>>  From where does this come? Which schema defines it?
> 
> It's a miss. I will fix it and reset-gpios too by adding a maxItems and 
> a description.

reset-gpios come from panel-common, so they are fine.

Best regards,
Krzysztof

