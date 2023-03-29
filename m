Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 655F96CD3D8
	for <lists+devicetree@lfdr.de>; Wed, 29 Mar 2023 10:00:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230150AbjC2IA3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 29 Mar 2023 04:00:29 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53330 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230250AbjC2IAW (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 29 Mar 2023 04:00:22 -0400
Received: from mail-lf1-x12e.google.com (mail-lf1-x12e.google.com [IPv6:2a00:1450:4864:20::12e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1661D40E6
        for <devicetree@vger.kernel.org>; Wed, 29 Mar 2023 01:00:19 -0700 (PDT)
Received: by mail-lf1-x12e.google.com with SMTP id br6so18995349lfb.11
        for <devicetree@vger.kernel.org>; Wed, 29 Mar 2023 01:00:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1680076817;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=BL2itQzukLRwkGxIdHjN1VJkHZ8v7g0L+3aB4SoIfhU=;
        b=yEec9OikNdut9qNOpXOS7YhiUrTl7g+qZgWu/lPjLyerRtom8d2ID1wb7ODdWSqG3M
         SQ1jF0GCZQii+ThZdpc2sO2aslJgs/Uai+NcZhQ+VNocgWjOATzme5tBTd3wgehQuB31
         3aukxeicKmfDAX4RDZEyitq5Ih7NSPW21FDNDn0wroOPYUoJIyaT5O0KDPZ2ce9kTJ9w
         V9lpv3e5/eFULKitL59D7zzsqLO/Xoh2CUtuecIjl2jNy6O9qUduu3fZ+mqm2rW63Jju
         3mhIypbLJ7U27cSHi3PCHPCubBkyILNXKavz4RcMGPvPp1gV1Dr0eFNtkZ/gwL8BXQq+
         3XVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680076817;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=BL2itQzukLRwkGxIdHjN1VJkHZ8v7g0L+3aB4SoIfhU=;
        b=DCAYBDVe99MOa7l7GaDv1QsgWQBc4hKcR1e/OegoQD5KhqKmFgnchmNLJXTqslUQZg
         Qplj53QA5W+bo4ZxBbp0G77jsa3pb+lBcWizUZxXBmpZlQ1ZvY8sVvo+cZEb9p9s6WTp
         MTUU9vkpG0+KHNNcX9maNF2Y1WLVXX0g2WR9/jjzNWrHMfzSZ8kn03jTwpLj596QZfcj
         HjBrEZvec3Eqftc645rEje2Ve3KFHlAXBDodB9veFbP7WHTayhWCWKaFzV46ow1h9YkG
         BT67LVyMG8pEtIrH+v7CBbQTuPGAJr2Jtf6JPG9obKkcm40Yi0qWpThD2rLn7er66NoD
         uIrA==
X-Gm-Message-State: AAQBX9dxmEcWIIV2zABcjvU+QXovT3EFWxf/w40LvQamLNQtHnYW8qo3
        cqs7f7+0EUlu6aXAKKtav+NjyQ==
X-Google-Smtp-Source: AKy350buG4bPyFyMS83rhjniPHydkSePEYgBaTDKNZ48qvCPbrcmXETHLl0aQrjPXtzHeQHaEUYlUg==
X-Received: by 2002:ac2:5fe6:0:b0:4e0:a426:6ddc with SMTP id s6-20020ac25fe6000000b004e0a4266ddcmr4409082lfg.0.1680076817323;
        Wed, 29 Mar 2023 01:00:17 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id h13-20020a2e900d000000b00290b375a068sm5361127ljg.39.2023.03.29.01.00.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 29 Mar 2023 01:00:17 -0700 (PDT)
Message-ID: <24105ee4-4ad0-9aaf-566a-07033aabdf4f@linaro.org>
Date:   Wed, 29 Mar 2023 10:00:15 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [PATCH 1/2] dt-bindings: pinctrl: mediatek: deprecate custom
 drive strength property
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
 <20230327-cleanup-pinctrl-binding-v1-1-b695e32e4f2e@baylibre.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230327-cleanup-pinctrl-binding-v1-1-b695e32e4f2e@baylibre.com>
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
> Deprecate mediatek,drive-strength-adv which shall not exist, that was an
> unnecessary property that leaked upstream from downstream kernels and
> there's no reason to use it.
> 
> The generic property drive-strength-microamp should be used instead.
> 
> Signed-off-by: Alexandre Mergnat <amergnat@baylibre.com>
> ---
>  .../devicetree/bindings/pinctrl/mediatek,mt8183-pinctrl.yaml      | 8 ++++++--
>  .../devicetree/bindings/pinctrl/mediatek,mt8365-pinctrl.yaml      | 6 +++++-
>  2 files changed, 11 insertions(+), 3 deletions(-)
> 

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof

