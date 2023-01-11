Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BAA2D665933
	for <lists+devicetree@lfdr.de>; Wed, 11 Jan 2023 11:42:04 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233517AbjAKKmD (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 11 Jan 2023 05:42:03 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58280 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233325AbjAKKmB (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 11 Jan 2023 05:42:01 -0500
Received: from mail-wm1-x336.google.com (mail-wm1-x336.google.com [IPv6:2a00:1450:4864:20::336])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B1AD025FA
        for <devicetree@vger.kernel.org>; Wed, 11 Jan 2023 02:42:00 -0800 (PST)
Received: by mail-wm1-x336.google.com with SMTP id o15so10767874wmr.4
        for <devicetree@vger.kernel.org>; Wed, 11 Jan 2023 02:42:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=QCB9HC+nOODlhgQeT6tYCcnxKnTMlcj4XPzktx4ilxw=;
        b=cM0cDprDbL3928y3K/CBVa6ETnMywsmJPhhQAv4pvu4CEHy4GKdy3qbaQEAd38EHzZ
         ne7dt8ylDAA9lcwTB0/EJu9Lw/rdNjxjhHLy8PftjKhF19i4YEjBJ6RfqZ9CESSQQRdU
         tlOty7NB1h1kgm/obRWwkCTVf7w5s+0Ue7kAlcYKSRnngSFk/UkeKH1QSWfZADyV9ZDG
         suB9V6DhKlSJx4ByrBi4E6QcZnYyO0d/XU1gIWYnfRHAvw7Brn2vLhh8nZ4JAXIzEiuD
         wUwdFIN1+klb4V0qt39R9BZSJXA0t3kFbH1HNTaVmejDs1vlEMdioeqdUyIwaVIDdBD8
         rXlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=QCB9HC+nOODlhgQeT6tYCcnxKnTMlcj4XPzktx4ilxw=;
        b=CrptEbu3EiA/4RBNnUcLATKpCelHhmatXlGdZGajoJkJbGPwiXbIlR2X/B0Qqdphww
         akMT7XgzXnoyBVUvzjA/GqicGMDSufkmJzZBKyMeb5f9lui1eDEOx7x5i8H+UlPgYBRq
         5K2bq0NhUvyGwIzGGjf3xcMDektR8QMwjzaCqzxqgGzFRAuKmG1nHSaF03EtUxrcEtO1
         6J3LJOpRDJ3IL9WvVc6WsTEa+f1buDQy5QyXflP1nkRe2wtBgquN54BDZSKMWjfJ+FcK
         hoZvf4bLsA5xrgTrpTK2aB1g+9b50zh6mgD0+t2AQK8QILEQlmD3KXJ6ASYHaAQCLyhJ
         RA7w==
X-Gm-Message-State: AFqh2krjUxN5Q+GMhbg4wS8HmJoAg7Xh9vug8bD6yq+xhMuoHxiOFUxs
        xcTaVt1bnITD25y/OaTmJZ038w==
X-Google-Smtp-Source: AMrXdXu+qZ79UaiIi9fB8q9zgE864/BrT4A7HXZ3JRhyGLpw7KkMcEnaFBxgrbP2oUdKUB6eoTKR/g==
X-Received: by 2002:a05:600c:35d1:b0:3d3:58d1:2588 with SMTP id r17-20020a05600c35d100b003d358d12588mr53288995wmq.41.1673433719242;
        Wed, 11 Jan 2023 02:41:59 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id q6-20020a05600c46c600b003d1f3e9df3csm24237019wmo.7.2023.01.11.02.41.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 11 Jan 2023 02:41:58 -0800 (PST)
Message-ID: <5dab7c06-7d6a-0e8c-4618-6607df27217d@linaro.org>
Date:   Wed, 11 Jan 2023 11:41:57 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Subject: Re: [PATCH v2] dt-bindings: sound: tlv320aic3x: Add optional clock
 and port properties
Content-Language: en-US
To:     Jai Luthra <j-luthra@ti.com>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>
Cc:     alsa-devel@alsa-project.org, devicetree@vger.kernel.org
References: <20221230132644.6398-1-j-luthra@ti.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221230132644.6398-1-j-luthra@ti.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 30/12/2022 14:26, Jai Luthra wrote:
> Describe optional properties for clocks and ports that were missing in
> the original txt binding, to fix warnings like:
> 
> aic33@18: 'assigned-clock-parents', 'assigned-clock-rates',
> 	'assigned-clocks' do not match any of the regexes:
> 	'pinctrl-[0-9]+'
> 	arch/arm/boot/dts/omap2420-n810.dtb
> 
> tlv320aic3106@1b: 'port' does not match any of the regexes:
> 	'pinctrl-[0-9]+'
> 	arch/arm/boot/dts/am335x-sl50.dtb
> 
> codec@18: 'clocks' does not match any of the regexes: 'pinctrl-[0-9]+'
> 	arch/arm/boot/dts/imx6dl-gw5903.dtb
> 	arch/arm/boot/dts/imx6q-gw5903.dtb
> 
> Some uses of "port" still lead to warnings because they pass clocks in
> the endpoint, but that is discouraged:
> https://lore.kernel.org/all/20210205152644.GA3083322@robh.at.kernel.org/
> 
> Signed-off-by: Jai Luthra <j-luthra@ti.com>
> ---
> 

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

