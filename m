Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 472EE63223E
	for <lists+devicetree@lfdr.de>; Mon, 21 Nov 2022 13:35:31 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230029AbiKUMf3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 21 Nov 2022 07:35:29 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55220 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229922AbiKUMf2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 21 Nov 2022 07:35:28 -0500
Received: from mail-lf1-x136.google.com (mail-lf1-x136.google.com [IPv6:2a00:1450:4864:20::136])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BF61562F0
        for <devicetree@vger.kernel.org>; Mon, 21 Nov 2022 04:35:25 -0800 (PST)
Received: by mail-lf1-x136.google.com with SMTP id j16so18577541lfe.12
        for <devicetree@vger.kernel.org>; Mon, 21 Nov 2022 04:35:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=vffrhK9Te14ot6nrYXwRIs5s8kqJmNUxCSUFhBsYZp0=;
        b=IdjFTWo+w7W5Kqok9Bj6Sg9Mynfi5Qr/hfkjR0FhAtf1kq+nVcXgiGMQE1bAxE/xuY
         9+s6dWhb8EOV9i0+3j0XYvPIOpRymM1ulkucc1SiruWu71tGr+XHhh0d0EE/J1aNMLkF
         CVOuAU/h6vyI3M0iSXxfqtlnAKUTgwD7xL3Ms017hU1PkrpMNH/mRo/YceeeFdSfEPh/
         jRa04svBQA1FEnXywXPtF5Nt5AZU2MKBoHiWCik2zWGHM0zkecOhni7MfvBlTCl/8Hav
         ccrguLTqYxxmyJJ7+BjdkyqRlr2GwOmPhIPG7yV2WSpH/siApqF1+7xELNwc5IhKoLWz
         4C/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=vffrhK9Te14ot6nrYXwRIs5s8kqJmNUxCSUFhBsYZp0=;
        b=23HD59u/k8VO/5zwwKK06zL8Phwt7MGZOksJ3lYoPbjq6xJaJOiS06gFW6RfV/NIAc
         BFc22QM/zXrwzXVeZ3XzBVWgg1wZt4wzLCLNtPoB3eFuOMkV8XZw5nBi9edZHh3FWZZH
         DZoqS/PTTzubnQn8YqepqJjyH3adQkE1rNR+yjLk0Z+FtDI9YWispL7IhHzVdRhwf2Qa
         r3HEAGkttci91gwP+NZefoDF9LecU7QsMA94alQC5Ut98HgsAQ7UdRzXtEoPOw/vEkEJ
         6Q43LQvSnBI6+TzN5VDRYQ/3/aLRIhBP2BKIqx2+teNfV1EgI0oH0XfUZ8gOZh8oiVcq
         ynhw==
X-Gm-Message-State: ANoB5pkYBKHqga5BzS8HRwtRIFXUFg0/CHxAnDEikURFaHHFaWpsWCKT
        LjPrmfjG4x4YIL6ujo0rC9cCKeck2z9UT+Z/
X-Google-Smtp-Source: AA0mqf4gmSRKmaoGoiytSGboomRjNdwUktarWK9tIMFu4H+Qm4luOiIDR+475AFqNgf6pDTMP86Nrw==
X-Received: by 2002:a19:7708:0:b0:4a2:6b44:d742 with SMTP id s8-20020a197708000000b004a26b44d742mr6536562lfc.191.1669034124151;
        Mon, 21 Nov 2022 04:35:24 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id h14-20020a19ca4e000000b0048b0696d0b1sm2009320lfj.90.2022.11.21.04.35.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 21 Nov 2022 04:35:23 -0800 (PST)
Message-ID: <b07930c1-6ce8-3fa2-aa54-134aad673ebf@linaro.org>
Date:   Mon, 21 Nov 2022 13:35:22 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Subject: Re: [PATCH 1/9] pinctrl: mediatek: common: Remove check for
 pins-are-numbered
Content-Language: en-US
To:     =?UTF-8?Q?Bernhard_Rosenkr=c3=a4nzer?= <bero@baylibre.com>,
        devicetree@vger.kernel.org
Cc:     linux-mediatek@lists.infradead.org,
        linux-stm32@st-md-mailman.stormreply.com,
        linux-arm-kernel@lists.infradead.org, khilman@baylibre.com,
        mcoquelin.stm32@gmail.com, alexandre.torgue@foss.st.com,
        matthias.bgg@gmail.com
References: <20221121015451.2471196-1-bero@baylibre.com>
 <20221121015451.2471196-2-bero@baylibre.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221121015451.2471196-2-bero@baylibre.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 21/11/2022 02:54, Bernhard Rosenkränzer wrote:
> Remove the check for the unnecessary pins-are-numbered Devicetree property.
> 
> Signed-off-by: Bernhard Rosenkränzer <bero@baylibre.com>
> ---
>  drivers/pinctrl/mediatek/pinctrl-mtk-common.c | 6 ------
>  1 file changed, 6 deletions(-)
> 

FWIW:

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

