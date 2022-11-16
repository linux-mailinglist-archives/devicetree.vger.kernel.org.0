Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 55DB962C021
	for <lists+devicetree@lfdr.de>; Wed, 16 Nov 2022 14:51:36 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233200AbiKPNvf (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 16 Nov 2022 08:51:35 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36108 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233183AbiKPNve (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 16 Nov 2022 08:51:34 -0500
Received: from mail-lj1-x229.google.com (mail-lj1-x229.google.com [IPv6:2a00:1450:4864:20::229])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 99642A462
        for <devicetree@vger.kernel.org>; Wed, 16 Nov 2022 05:51:33 -0800 (PST)
Received: by mail-lj1-x229.google.com with SMTP id l8so21864865ljh.13
        for <devicetree@vger.kernel.org>; Wed, 16 Nov 2022 05:51:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ZVqYFxsYRGDK4BSE4IejaqidEq/aFBZSOsUCozD+YsM=;
        b=Toe1qhjY4eZpa9zT/Ju7PpCISviTgblCNYQrXjxW7TD+XHE1NQw0/3h4BF2v5C+B2E
         hxOjFHTMIAd97O9eI47PhoZqffjAGoBloakEllb33rpYQ95dzDScTONQcipbxV43jlRn
         AQXwEnZ0q3fvbPhj93PVmprys9Bs9FoVQB6ri6t5Z1SR7WuJaziLy3k1+pNdjDRZsDda
         8SH885fHhqpwpDQWOsfQhWvUS7I/o/46/0jaDqP3ZcgL4aKpwJ3SjgftSspn5V8JJO6P
         EFmlpgA4U70ZOokaWRchLJagutGoC0vmqWF47ZwZrjUS3uUhiyuuZxfbDLYbGKwNkyUf
         jqJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ZVqYFxsYRGDK4BSE4IejaqidEq/aFBZSOsUCozD+YsM=;
        b=rA5CeM3J8+AO5cDRsh3GQIR6szRyvsFRDqElHA9qIvqpbeMSSvBl/dRAPp1DM1/rqH
         NxNinkD+XJJESzUfDVU65y4wCFhXOlAYqj1wlGJeDTZ2AD8J4OcqAiRvYQ/3YzBjNSXO
         Op0d9QMTa6jGVqPrKJAYxl/wxH/KxGtRPZubCNFqqZ2noaJc46BaKQ98s/8sGp171z9b
         4e/0ojwVCGvuyktOZmYATPVEZntV5GuJLANGY6juo4gHSOhMiFIxsHFwOIB72NZhx8Z6
         PRMLtgygpyIKnGiNxf+V1Ornxs3gfHoI7AEv1b1eifqJYQsmLSEosgdKunhvUkEs/n/G
         /hEA==
X-Gm-Message-State: ANoB5pkkw2sLFCMPTXJ85kX2MFhUkoTLoUuVwjSaVaNTMZGdTA5yzaBi
        VUfWXtaz9B+gaejhJTEdrFxJaUfp2hYW/F9Z
X-Google-Smtp-Source: AA0mqf7MBMvHr43L3TlFJpjJJhAkOLRcZcjdrjHeo6G6JH1o7bk6LWe9LAz7WgCHNxcf+Oai6nCeTw==
X-Received: by 2002:a05:651c:130f:b0:26e:50c:b724 with SMTP id u15-20020a05651c130f00b0026e050cb724mr8235881lja.44.1668606691961;
        Wed, 16 Nov 2022 05:51:31 -0800 (PST)
Received: from [10.10.15.130] ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id b10-20020a056512070a00b004948378080csm2610821lfs.290.2022.11.16.05.51.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 16 Nov 2022 05:51:31 -0800 (PST)
Message-ID: <8ebc21e1-2a3a-2efc-645b-0da6f7ccc5ef@linaro.org>
Date:   Wed, 16 Nov 2022 16:51:31 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.1
Subject: Re: [PATCH v2 13/15] phy: qcom-qmp-combo: add support for updated
 sc8280xp binding
Content-Language: en-GB
To:     Johan Hovold <johan+linaro@kernel.org>,
        Vinod Koul <vkoul@kernel.org>
Cc:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20221115144005.2478-1-johan+linaro@kernel.org>
 <20221115144005.2478-14-johan+linaro@kernel.org>
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <20221115144005.2478-14-johan+linaro@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 15/11/2022 17:40, Johan Hovold wrote:
> Add support for the new SC8280XP binding.
> 
> Note that the binding does not try to describe every register subregion
> and instead the driver holds the corresponding offsets.
> 
> Also note that (possibly) unlike on earlier platforms, the TX registers
> are used by both the USB and DP implementation.
> 
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> ---
>   drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 145 ++++++++++++++++++++--
>   1 file changed, 134 insertions(+), 11 deletions(-)

The comment regarding txa/txb vs tx/tx2 still applies.
Being a minor nit:

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

