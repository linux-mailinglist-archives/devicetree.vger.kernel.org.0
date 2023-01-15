Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id EF63666B3AD
	for <lists+devicetree@lfdr.de>; Sun, 15 Jan 2023 20:34:11 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231592AbjAOTeJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 15 Jan 2023 14:34:09 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47698 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231593AbjAOTeH (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 15 Jan 2023 14:34:07 -0500
Received: from mail-ej1-x62a.google.com (mail-ej1-x62a.google.com [IPv6:2a00:1450:4864:20::62a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E195D12865
        for <devicetree@vger.kernel.org>; Sun, 15 Jan 2023 11:34:05 -0800 (PST)
Received: by mail-ej1-x62a.google.com with SMTP id cf18so57170811ejb.5
        for <devicetree@vger.kernel.org>; Sun, 15 Jan 2023 11:34:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=45kJ3qNQGZUv9XAiOi5TmsAFHoxPfVEphsFC6odAcqw=;
        b=O0xSMtzNRl0GNPl7sgxuSD1dj5qrWWnVkL7syRCRRYnYaRcNuBH58pJ3hSdNE47EIk
         gb5B22qVkE2FWoEtadystLZImyKCSRxyXGzla4L/pxshrd8oP+ONSFRHrLQ9E38LlFO2
         gP4p1ugQz8PrGfrh5/9ks7TDNv/ZTfLZ1bsiifFPAejDzZ710HFDXNT1lfTKs5g0PkVW
         WLO/fx//Jv00t7j7Z7W75eksr9PMzha4GDQ0IUBU1wqBjhsBvsTx4a2Vp4zpBJzvmpWE
         9azLlZ0pRzy31txYd8AJ74rBNMiufN0okmgrIoGs2+7oIN9VNleEmJnLjW4c89d07KQ7
         F0hg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=45kJ3qNQGZUv9XAiOi5TmsAFHoxPfVEphsFC6odAcqw=;
        b=z7UHoQkaUvQnnL5768rCudFMBRaBdETTELp7G3TgLV2Q2XVSjCwGZdy2ViQdMHgC28
         xWA8Bb84r66IwB1BYl9al5zTiNkz6ZWCMULsAYVpsEAAQiGfBXCsWij99RJlbZOPmAUp
         WPeG+56CvSHE2PR82SD1vbR43TCwDEwdY2TMFO6pbuEusp8Rw/ESfiDgq2mSxSDTFNLj
         yJapMEjzRNDIB+sXDfKGVe005EvZW1sn/NibZ7nJ+PDUnBW9dUYS13xD/k0tQrxLUiAk
         Htrv/qAq43y7fY7Fa8NJmU0g58dGPWwR/qRjK0suUn+t13nXhcrB9K9PmqRR3r8vBvTB
         qdcg==
X-Gm-Message-State: AFqh2kqkfHF2ydkevXgYva9uxjitDa6jw8ZnWwttTScPzMwSDbNAUJ6V
        fPDn+Q9N2OvbsWJqlArAH01THw==
X-Google-Smtp-Source: AMrXdXv1RGNoxgJIc6OHNYslM12+qt894RbJesLJsKI/njhqJUWEl/FaN29h7FOcf2o3utWgDIBuSQ==
X-Received: by 2002:a17:906:1993:b0:870:5ed6:74a0 with SMTP id g19-20020a170906199300b008705ed674a0mr1627852ejd.73.1673811244536;
        Sun, 15 Jan 2023 11:34:04 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id 10-20020a170906210a00b007c0f2d051f4sm10920091ejt.203.2023.01.15.11.34.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 15 Jan 2023 11:34:04 -0800 (PST)
Message-ID: <1475e6ef-1dbc-9503-ceb4-f8bb9ca7e6f6@linaro.org>
Date:   Sun, 15 Jan 2023 20:34:02 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Subject: Re: [PATCH] dt-bindings: iio: dac: Maxim max5522 DAC
Content-Language: en-US
To:     Jonathan Cameron <jic23@kernel.org>, linux-iio@vger.kernel.org,
        Angelo Dureghello <angelo.dureghello@timesys.com>,
        devicetree@vger.kernel.org
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Jonathan Cameron <Jonathan.Cameron@huawei.com>
References: <20230115173958.134201-1-jic23@kernel.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230115173958.134201-1-jic23@kernel.org>
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

On 15/01/2023 18:39, Jonathan Cameron wrote:
> From: Jonathan Cameron <Jonathan.Cameron@huawei.com>
> 
> Add binding Doc for this SPI DAC.
> 
> The driver was perviously posted but was missing the DT binding document.
> https://lore.kernel.org/all/20221106165928.223318-1-angelo.dureghello@timesys.com/
> 
> Signed-off-by: Jonathan Cameron <Jonathan.Cameron@huawei.com>
> Cc: Angelo Dureghello <angelo.dureghello@timesys.com>
> 
> ---


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

