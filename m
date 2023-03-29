Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B35966CD3E1
	for <lists+devicetree@lfdr.de>; Wed, 29 Mar 2023 10:01:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230284AbjC2IBW (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 29 Mar 2023 04:01:22 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54336 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230256AbjC2IBR (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 29 Mar 2023 04:01:17 -0400
Received: from mail-lf1-x12f.google.com (mail-lf1-x12f.google.com [IPv6:2a00:1450:4864:20::12f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4C9634695
        for <devicetree@vger.kernel.org>; Wed, 29 Mar 2023 01:00:53 -0700 (PDT)
Received: by mail-lf1-x12f.google.com with SMTP id h25so19029824lfv.6
        for <devicetree@vger.kernel.org>; Wed, 29 Mar 2023 01:00:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1680076851;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=kMWToYb9mpT2BK+2K13xPq825h2wTXZVEgaKIXev3s4=;
        b=b+TwCJIqa4Xa8oPVIcWx6FoopjSHRvE+Rnm7o3tC8irloGkBoWTPq6zX1inTIe6U/A
         fv6A2octt0s0pp6ij0BPSFMpxm5iHnLl+RAjJgbu92leis5zMbI9Z3wwsEwndZY1pTWo
         NZtophUrQ8ygfjAsarapTpPQ2E54k/DiEYtiKUTVsu6nw+Y5rht8hPR95Ss1kbkrmxTu
         w5ahuhLFMjct+nO/M4XIxYQIqseRaEvVx+6UV2vyvAx1nqVY7RdEJ4y/uY6Cf2BQVFsU
         xvd3uMdUo8U57kFv0c7PlgDbukFtgdVDZY/LWaued40+t0AVpkxTZnWwlRz5YD1+y3ux
         UC2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680076851;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=kMWToYb9mpT2BK+2K13xPq825h2wTXZVEgaKIXev3s4=;
        b=Mx9f1VvSO+06W1J6iBPucJRyOOe5TfmjrMfLnlK3G5ySEfoa1oABSHQeBRJuUte72l
         TwQXbas4v/YqS+SMmsdLd1o1R5ddtmr50a6/cwCzMjDY9Who8jFGW44cuUWdDh7ohpoI
         M8fzIZJosFEFqJ5Uxv777kxsmCfJsCRcoGTHFbB7opeTV4Lh9O2wlP/8QYHa/o/9833J
         CjNjqla1FcWg4IQN1nVJKK7uQu70V0X65W0BP2nlKInlKl/kPeAwrff7fUJNTeW6SnIw
         0VAiPOvwht5uRtsYmdQ6FNXSW7f8Sizl2jYnpPL6AreUE43l69uBfTD7FP8skHu7rXBj
         I+7A==
X-Gm-Message-State: AAQBX9dqdvw0eYttadENKUHWrEi0ZSj06pcNFSTnsebp2UXgKJCCSQ6j
        VSsnoZT15mtySWxSKpD3lN9sDA==
X-Google-Smtp-Source: AKy350b9qQ5TjN3cmmhhimJPkPykPhG4zgjwk0KeSuC0XWaC4P4xc1zgcP1c5+3K1DVqqWZ1vLvS3g==
X-Received: by 2002:ac2:5de3:0:b0:4b6:fddc:1fcd with SMTP id z3-20020ac25de3000000b004b6fddc1fcdmr455426lfq.23.1680076851549;
        Wed, 29 Mar 2023 01:00:51 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id h18-20020ac25972000000b004cc8207741fsm5398146lfp.93.2023.03.29.01.00.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 29 Mar 2023 01:00:51 -0700 (PDT)
Message-ID: <6147a27e-2bb8-6072-fefc-f4c21f1802ad@linaro.org>
Date:   Wed, 29 Mar 2023 10:00:50 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [PATCH 2/2] dt-bindings: pinctrl: mediatek: deprecate custom bias
 pull properties for mt8365
Content-Language: en-US
To:     Alexandre Mergnat <amergnat@baylibre.com>,
        Linus Walleij <linus.walleij@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>,
        Zhiyong Tao <zhiyong.tao@mediatek.com>,
        =?UTF-8?Q?Bernhard_Rosenkr=c3=a4nzer?= <bero@baylibre.com>
Cc:     linux-gpio@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org
References: <20230327-cleanup-pinctrl-binding-v1-0-b695e32e4f2e@baylibre.com>
 <20230327-cleanup-pinctrl-binding-v1-2-b695e32e4f2e@baylibre.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230327-cleanup-pinctrl-binding-v1-2-b695e32e4f2e@baylibre.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-0.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 28/03/2023 15:06, Alexandre Mergnat wrote:
> In order to be more generic, "mediatek,pull-up-adv" and
> "mediatek,pull-down-adv" should be deprecated. Use "bias-pull-up" and
> "bias-pull-down" instead.
> 
> Signed-off-by: Alexandre Mergnat <amergnat@baylibre.com>
> ---
>  .../bindings/pinctrl/mediatek,mt8365-pinctrl.yaml  | 32 +++++++++++++++++++---
>  1 file changed, 28 insertions(+), 4 deletions(-)

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

