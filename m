Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3D83F60E5B3
	for <lists+devicetree@lfdr.de>; Wed, 26 Oct 2022 18:47:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233774AbiJZQr4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 26 Oct 2022 12:47:56 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49178 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233789AbiJZQrz (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 26 Oct 2022 12:47:55 -0400
Received: from mail-qv1-xf2c.google.com (mail-qv1-xf2c.google.com [IPv6:2607:f8b0:4864:20::f2c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 46A14FB705
        for <devicetree@vger.kernel.org>; Wed, 26 Oct 2022 09:47:53 -0700 (PDT)
Received: by mail-qv1-xf2c.google.com with SMTP id x15so12005796qvp.1
        for <devicetree@vger.kernel.org>; Wed, 26 Oct 2022 09:47:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=9pFTE78kst/vKn4eCc/U/+wA4I2bSXL1KteJZdxZbf8=;
        b=VWngGKd00l/aHB6OUoq30ponveK3ej9tdg8RS2juEplU7PdDey1nOjIuQR5rcVxdbM
         cEBYlPJW6888IRrs3M25OtvJv4WtlC7+TYqIo9sDWn3n8+S6ECkOu/H5mBHyR4XMOEaH
         VSmNJk+1aUINdCmACJQPyYZ1nxht2XYb8Pqsnuo/ojdxfB85n0iZNoHnNcGEw/upk5yC
         6Cw37TpRuEvZSmpBh+UPBjblsTrM4G5nrXZkGYqeL5YBuy+Gvg0Ha/rGUIJKRMOe6KI/
         w1S1AWd/gcADOwR+WFtyOtZkpLxPbMEkxHREhcywbQknSUlwKwKb+1wDIozwRleN8ZnZ
         3NVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=9pFTE78kst/vKn4eCc/U/+wA4I2bSXL1KteJZdxZbf8=;
        b=NeHizIVQMhPDNo/yU7MuG9pBVgu8WPmZ1LqauSehFQuvhej65IajwdqjBlrExzcWo0
         GY9h3VNgUc05DTd5ibdP+eoQTdI4WNUpeoMwIyjqxYxSsF8BrlG4BjGQXAtQgG1247Vw
         lvrjz6tyzWw8KJpa/8vhcHk5sOH9SfhbV30S/gR4X/BZHvGePNyxaPeafbcNN8u2dsvh
         yQrITiSGE01GC8FlRq8k2ZOe+v3JUqt850rZGTUvLsyP5mrYHP2YUoFe9hzR4Y71FRlN
         K/X5l0kx4a1PmUK1RDDxDldBRnJpYxgMSvF7viQnxDgXa7SnBZTSR8s/xnbn316MV8dW
         m1vQ==
X-Gm-Message-State: ACrzQf3eQsh3mx8Hu0JL4Vy+sBPu/MkXNzESJZdCTOQZsJassvlG33nL
        3IzyCCUkypYrf8SwiCzPunSvLlkmeyrjBw==
X-Google-Smtp-Source: AMsMyM53h58tjhIcrbODqrgr1LtrQZj+a0fONXss6Zi/lvIwP0m0b0WNjI6y3bPJsl5MiRTmC40OBA==
X-Received: by 2002:a05:6214:ccd:b0:4bb:663c:8018 with SMTP id 13-20020a0562140ccd00b004bb663c8018mr17087369qvx.24.1666802872422;
        Wed, 26 Oct 2022 09:47:52 -0700 (PDT)
Received: from [192.168.1.11] ([64.57.193.93])
        by smtp.gmail.com with ESMTPSA id s16-20020a05620a255000b006cbe3be300esm4207134qko.12.2022.10.26.09.47.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 26 Oct 2022 09:47:51 -0700 (PDT)
Message-ID: <733bebc5-f632-aa53-0c91-b858fa87848a@linaro.org>
Date:   Wed, 26 Oct 2022 12:47:50 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.0
Subject: Re: [PATCH 1/2] memory: omap-gpmc: wait pin additions
Content-Language: en-US
To:     "B. Niedermayr" <benedikt.niedermayr@siemens.com>,
        devicetree@vger.kernel.org, linux-omap@vger.kernel.org
Cc:     robh+dt@kernel.org, rogerq@kernel.org, tony@atomide.com
References: <20221021081612.591613-1-benedikt.niedermayr@siemens.com>
 <20221021081612.591613-2-benedikt.niedermayr@siemens.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221021081612.591613-2-benedikt.niedermayr@siemens.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 21/10/2022 04:16, B. Niedermayr wrote:
> From: Benedikt Niedermayr <benedikt.niedermayr@siemens.com>
> 
> This patch introduces support for setting the wait-pin polarity as well
> as using the same wait-pin for different CS regions.
> 
> The waitpin polarity can be configured via the WAITPIN<X>POLARITY bits
> in the GPMC_CONFIG register. This is currently not supported by the
> driver. This patch adds support for setting the required register bits
> with the "ti,wait-pin-polarity" dt-property.
> 
> The wait-pin can also be shared between different CS regions for special
> usecases. Therefore GPMC must keep track of wait-pin allocations, so it
> knows that either GPMC itself or another driver has the ownership.
> 
> Signed-off-by: Benedikt Niedermayr <benedikt.niedermayr@siemens.com>

This is v8, not v1. Please mark your patches appropriately.

Roger,

Any comments from you? You were reviewing previous sets, so does it look
good now?

Best regards,
Krzysztof

