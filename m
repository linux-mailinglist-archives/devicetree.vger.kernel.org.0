Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8025E50138A
	for <lists+devicetree@lfdr.de>; Thu, 14 Apr 2022 17:21:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S244677AbiDNOG6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 14 Apr 2022 10:06:58 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35924 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1345413AbiDNNuM (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 14 Apr 2022 09:50:12 -0400
Received: from mail-wm1-x329.google.com (mail-wm1-x329.google.com [IPv6:2a00:1450:4864:20::329])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0CAA9A66CB
        for <devicetree@vger.kernel.org>; Thu, 14 Apr 2022 06:44:06 -0700 (PDT)
Received: by mail-wm1-x329.google.com with SMTP id l62-20020a1c2541000000b0038e4570af2fso3209162wml.5
        for <devicetree@vger.kernel.org>; Thu, 14 Apr 2022 06:44:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=MtBAJnFEqMmsR8zChqlpd88AeYKbytaIa73T69IiwUs=;
        b=zG6wTndHYS5H3tj7P7Bm1rx0CqJYlfJmM5pgzaPIMlvAEVzBVL0MAs2bND/+R/2S1n
         eJs/hGE/I5yMx9SP/qjEmG9UYXyOX1Hd/C1eMJkpuKCfrxhbgNGN1jPbRsTIOV/0n8JE
         279GaGFcnFb37GV+6K1GHFfSR8XxRPFwbir2lOHXS2DqAvTN0qbvD2JG9IR/U8/hjspf
         9EMx8Ce10GhoIvzrmlXkcfJeEQ9hV1bjDl+IfmvPzQV+KAMxPb8ZLOwyEH7TLDbY0mGy
         GDLAdgEG9FNTPuZQ4PaO/ZStnPgN0lDGkwv9GIGwY9N8+bZ7U2AnnXHZwpN9cF3v8pRF
         mM3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=MtBAJnFEqMmsR8zChqlpd88AeYKbytaIa73T69IiwUs=;
        b=EauntO3nhNoXhDRXTRFiiEKs3og/E8LpxjvfqN7MJb8TJK23xSLTTT48ZEk0805m7l
         f7SHuDRQH7hrPsqMDwy0kTXTIblnhqr2giLSoDf31dSXdNBEb17m1ovxlfPbA6wsrrdk
         kfvURnqfJf2UmANCW6CG0X0rZPsdveFRFwTb24hf/Bb8yTyWTWdkCXkqAVRZm35/Qr0d
         zmY8msEZE8QJNveE2c0pMPHri1r4Ns4Ru8TjNCNcuJnz1hYtwy3Xkon5qikNCsiWRqm6
         KN8+1bUUMFhNtuB7PPl0tO1tRFP7N0Cq8bsCFDaWKgovACS+clYH/3rohZg9xl7DKC2j
         QOtQ==
X-Gm-Message-State: AOAM532LAD2sLP9W29w0q+rLwCRRg5VXMWrLDvGU2cyySiP1NPTJfDv0
        E21K2NIf9W+qAtRvHkIEm3EPeQ==
X-Google-Smtp-Source: ABdhPJzfwQRFFqzeBVonENZunrSC8oNdYnabR9Z/zXNGMJBliuJyVGpaPPv+1R7Z/PmS0p8U+aXhJw==
X-Received: by 2002:a05:600c:2113:b0:38e:bc71:2b0 with SMTP id u19-20020a05600c211300b0038ebc7102b0mr3168107wml.153.1649943844444;
        Thu, 14 Apr 2022 06:44:04 -0700 (PDT)
Received: from [192.168.0.162] (188-141-3-169.dynamic.upc.ie. [188.141.3.169])
        by smtp.gmail.com with ESMTPSA id 7-20020a05600c024700b0038ec0c4a2e7sm5445783wmj.11.2022.04.14.06.44.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 14 Apr 2022 06:44:03 -0700 (PDT)
Message-ID: <39cae749-67ef-13d7-2648-01c6e9603887@linaro.org>
Date:   Thu, 14 Apr 2022 14:44:00 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.0
Subject: Re: [PATCH v3 2/2] media: i2c: imx412: Add bulk regulator support
Content-Language: en-US
To:     Sakari Ailus <sakari.ailus@iki.fi>
Cc:     paul.j.murphy@intel.com, daniele.alessandrelli@intel.com,
        mchehab@kernel.org, linux-media@vger.kernel.org,
        devicetree@vger.kernel.org, robert.foss@linaro.org, hfink@snap.com,
        jgrahsl@snap.com, dmitry.baryshkov@linaro.org,
        vladimir.zapolskiy@linaro.org
References: <20220414124505.1329295-1-bryan.odonoghue@linaro.org>
 <20220414124505.1329295-3-bryan.odonoghue@linaro.org>
 <Ylga7FVsbK6znD/+@valkosipuli.retiisi.eu>
From:   Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <Ylga7FVsbK6znD/+@valkosipuli.retiisi.eu>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 14/04/2022 14:00, Sakari Ailus wrote:
>>   	ret = clk_prepare_enable(imx412->inclk);
>>   	if (ret) {
>> +		regulator_bulk_disable(imx412->num_supplies,
>> +				       imx412->supplies);
> As the function already has an error handling section using labels, this
> should go there as well.
> 
Are you asking to move regulator_bulk_disable() to error_reset ?
