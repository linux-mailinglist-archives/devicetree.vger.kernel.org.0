Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5706D60FD56
	for <lists+devicetree@lfdr.de>; Thu, 27 Oct 2022 18:45:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234372AbiJ0Qpn (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 27 Oct 2022 12:45:43 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46258 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233668AbiJ0Qpm (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 27 Oct 2022 12:45:42 -0400
Received: from mail-qv1-xf36.google.com (mail-qv1-xf36.google.com [IPv6:2607:f8b0:4864:20::f36])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C9522748EA
        for <devicetree@vger.kernel.org>; Thu, 27 Oct 2022 09:45:41 -0700 (PDT)
Received: by mail-qv1-xf36.google.com with SMTP id e15so1842066qvo.4
        for <devicetree@vger.kernel.org>; Thu, 27 Oct 2022 09:45:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=o8E7f+pbai6yNionn/RucFtJANfu+mS+MIa2K7Eho/8=;
        b=z7vJkI3Sc3woYN3W1CoV94ELnbBfBwnApLU5+2VLwFinpR5/nT4L711ilpekqYgNcC
         ukQAnfFpt0DZ3pNmN1snpxXrKx/mt0z/leChy5W2pSjYibqelOFNWafYk5FZW1EBdIBU
         ieAJUANrvOPu06uXKZewj3T4bfK/EJ4Wg+bHUO53SOr1dZkOa4n5/fh7iyqInnn0rw7A
         ZUPYTMp0iiMt3VQNO7I2KOboAamniF7cM4HtugId3udr0Bvog/ezITI2vEc30/djD6IM
         WOfg0HP9hne7Pc+0MsIyhW89Y1m1D9/7x5mRE0wsZHsJs6u7C8yHSTBzDTTHFQ5UYBSx
         Yw3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=o8E7f+pbai6yNionn/RucFtJANfu+mS+MIa2K7Eho/8=;
        b=5KiYBEIfMeR4Yj9ermIGgUYRC0X9/63dYkejPhhK3cWFKbLqFKLwnZcEWh83fbz6VV
         OiiMsbpOHGsAhoNSy9Xex2bLoo6aj42QiWxnF4AKct0BmsYXU7dp9qNWjCK3uDPDE5X7
         T5Hs2skCrqGZT8GUsLhdIZ/4CF7NWU4TxV4HF/jjddLqWsU9Ce9PeNFBSNtomZlK3jKf
         HfL8a7tHCDMKrZgvEOvkZEQplaM6V9NqdOaVNGUMzBOZWwce8pYCshAVT8OXvwSxC16U
         TWsAEc90wTJ7Z7JgD5e+ZM2UNV5B5wMJaiiLFnL2mp4Oaw5pgXg2Q2uVVErx2E6Vp7b9
         NX0A==
X-Gm-Message-State: ACrzQf30efo8VMvwEivI79rZ6PwgaTIgRUHXjzbIxCyzXgvlVAflcTYN
        1YwdqkgCvSO0UAFCsB3O+hsHmQIIDGBbNA==
X-Google-Smtp-Source: AMsMyM57a6LQobl39EIHUvYv9F9ueqjvF0NgC33FdCUUNQFRFn6DRCQ8utqMeylgbUFbcEJxjucwNQ==
X-Received: by 2002:a05:6214:2aa4:b0:4b3:fcfb:6479 with SMTP id js4-20020a0562142aa400b004b3fcfb6479mr42265023qvb.127.1666889141013;
        Thu, 27 Oct 2022 09:45:41 -0700 (PDT)
Received: from [192.168.1.11] ([64.57.193.93])
        by smtp.gmail.com with ESMTPSA id bq33-20020a05620a46a100b006bb366779a4sm1293337qkb.6.2022.10.27.09.45.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 27 Oct 2022 09:45:40 -0700 (PDT)
Message-ID: <f1f514d3-cab5-9502-02f6-0a1b84067eab@linaro.org>
Date:   Thu, 27 Oct 2022 12:45:38 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.0
Subject: Re: [PATCH 1/3] ASoC: dt-bindings: fsl,sai: Add compatible string for
 i.MX93 platform
Content-Language: en-US
To:     Chancel Liu <chancel.liu@nxp.com>, lgirdwood@gmail.com,
        broonie@kernel.org, perex@perex.cz, tiwai@suse.com,
        alsa-devel@alsa-project.org, linux-kernel@vger.kernel.org,
        robh+dt@kernel.org, devicetree@vger.kernel.org,
        krzysztof.kozlowski+dt@linaro.org, shengjiu.wang@gmail.com,
        Xiubo.Lee@gmail.com, festevam@gmail.com, nicoleotsuka@gmail.com,
        linuxppc-dev@lists.ozlabs.org
References: <20221027060311.2549711-1-chancel.liu@nxp.com>
 <20221027060311.2549711-2-chancel.liu@nxp.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221027060311.2549711-2-chancel.liu@nxp.com>
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

On 27/10/2022 02:03, Chancel Liu wrote:
> Add compatible string "fsl,imx93-sai" for i.MX93 platform
> 
> Signed-off-by: Chancel Liu <chancel.liu@nxp.com>
> ---
>  Documentation/devicetree/bindings/sound/fsl,sai.yaml | 1 +


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

