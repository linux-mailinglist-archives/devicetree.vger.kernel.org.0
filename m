Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DB3606A7D99
	for <lists+devicetree@lfdr.de>; Thu,  2 Mar 2023 10:25:07 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229437AbjCBJZG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 2 Mar 2023 04:25:06 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57466 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229652AbjCBJYm (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 2 Mar 2023 04:24:42 -0500
Received: from mail-wm1-x32c.google.com (mail-wm1-x32c.google.com [IPv6:2a00:1450:4864:20::32c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 685D521A2C
        for <devicetree@vger.kernel.org>; Thu,  2 Mar 2023 01:24:33 -0800 (PST)
Received: by mail-wm1-x32c.google.com with SMTP id k37so10266015wms.0
        for <devicetree@vger.kernel.org>; Thu, 02 Mar 2023 01:24:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1677749072;
        h=content-transfer-encoding:in-reply-to:organization:references:cc:to
         :content-language:subject:reply-to:from:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=BWGLYdD4ufr/E1ThoieJ1WMoxdv/y+QHtWqXixPFyHM=;
        b=X68qidyzTxaMruoXSnw75a33xhU2o+s2SL3T5qVupPU8y5m5co69P00W5FuDrOzHVo
         qUmlZhYwbREc0fLI5Is3/kPvW7WhJJPUxs5bbjTFLuU/gJllttSYrfqxNposQLCEdYQY
         2D/g+2lHdy6bkoCdR9obskI5dHzZFLx/MJnDrUJSHJSSQrU7XIrqThiUBwYwQwevNb6U
         TGC6GZP8tV/6vhc5rnvQ5m3LGpwd4eymVgY+gQUmPikcrYB4uSkKPULBQsjBM1qzlCow
         oMBNJURS/WqJ1IkqsGpR9028mwHWUGRLqe3O3Ex79dRn4iXSS57ucWnNBbnZQkJA6dVI
         LNmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1677749072;
        h=content-transfer-encoding:in-reply-to:organization:references:cc:to
         :content-language:subject:reply-to:from:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=BWGLYdD4ufr/E1ThoieJ1WMoxdv/y+QHtWqXixPFyHM=;
        b=E8B6XHlZOmYvgqI8BNFUySPqTMuk92Z01vPP+1iy4tuE27EHAcka+0arHaUVbl8od4
         SWuAVSrKW0KQLaogGEZf3DpmuWrDXFA8yZIMzzQRqi963u/6hIiZEvbFtuPj/t+kVaeg
         FeaOp5/6tL1Zz6vLlGgaSmxDeAWO0LvGj5m98AdhAdbm3aHcU9P/tDLZl+fwlT+4S02R
         acFcGd7i/Fl9cXrl4/WOhYhornpvw81a+PwrVDiBAnndEgDH1zji8l57JTMT8O52bfY8
         nwR9Y0ZWN2FRAmr//gsE6s4u0fwUbMsdFmXa3WM4FmkRPUb4fLMoYt5sm4wnb/pPr6Sv
         fU+Q==
X-Gm-Message-State: AO0yUKVoXh1XhOJLY2QyBUDTc16ER5ePUORo6X+Pzvu3+qKeV+n/3JCW
        ml9vpozMpwSysp97+D0Z5PxKvw==
X-Google-Smtp-Source: AK7set8erNKdqlF8yG+383R3lM3MlNAuoEOfGSP045v0ekFPlCjl3NaWImxTogQfTMWbxdLPor7Tuw==
X-Received: by 2002:a05:600c:713:b0:3eb:2b69:c3c4 with SMTP id i19-20020a05600c071300b003eb2b69c3c4mr8106566wmn.36.1677749071877;
        Thu, 02 Mar 2023 01:24:31 -0800 (PST)
Received: from ?IPV6:2a01:e0a:982:cbb0:217a:db24:fe27:6b35? ([2a01:e0a:982:cbb0:217a:db24:fe27:6b35])
        by smtp.gmail.com with ESMTPSA id c21-20020a7bc015000000b003e214803343sm2238704wmb.46.2023.03.02.01.24.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 02 Mar 2023 01:24:31 -0800 (PST)
Message-ID: <80fe197a-3f15-d1b8-ed99-adeb4a8c24d2@linaro.org>
Date:   Thu, 2 Mar 2023 10:24:30 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.2
From:   Neil Armstrong <neil.armstrong@linaro.org>
Reply-To: neil.armstrong@linaro.org
Subject: Re: [PATCH 2/3] dt-bindings: media: Add compatible for Meson-S4 IR
 Controller
Content-Language: en-US
To:     zelong dong <zelong.dong@amlogic.com>, Sean Young <sean@mess.org>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Jerome Brunet <jbrunet@baylibre.com>,
        Kevin Hilman <khilman@baylibre.com>,
        Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Cc:     linux-media@vger.kernel.org, linux-amlogic@lists.infradead.org,
        devicetree@vger.kernel.org
References: <20230302063402.42708-1-zelong.dong@amlogic.com>
 <20230302063402.42708-3-zelong.dong@amlogic.com>
Organization: Linaro Developer Services
In-Reply-To: <20230302063402.42708-3-zelong.dong@amlogic.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 02/03/2023 07:34, zelong dong wrote:
> From: Zelong Dong <zelong.dong@amlogic.com>
> 
> Add new compatible for Amlogic's Meson-S4 IR Controller
> 
> Signed-off-by: Zelong Dong <zelong.dong@amlogic.com>
> ---
>   Documentation/devicetree/bindings/media/meson-ir.txt | 3 +++
>   1 file changed, 3 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/media/meson-ir.txt b/Documentation/devicetree/bindings/media/meson-ir.txt
> index efd9d29a8f10..2a6662edd04d 100644
> --- a/Documentation/devicetree/bindings/media/meson-ir.txt
> +++ b/Documentation/devicetree/bindings/media/meson-ir.txt
> @@ -5,11 +5,14 @@ Required properties:
>   		  - "amlogic,meson6-ir"
>   		  - "amlogic,meson8b-ir"
>   		  - "amlogic,meson-gxbb-ir"
> +		  - "amlogic,meson-s4-ir"
>    - reg		: physical base address and length of the device registers
>    - interrupts	: a single specifier for the interrupt from the device
>   
>   Optional properties:
>    - linux,rc-map-name:	see rc.txt file in the same directory.
> + - amlogic,ir-support-hw-decode: enable hardware IR Decoder, and register
> +				 rc driver as type RC_DRIVER_SCANCODE

AFAIK this is a software parameter since the HW is capable of decoding,
if you want to make the HW decoding a runtime option, please use another way.

>   
>   Example:
>   

Please base changes on top of https://lore.kernel.org/all/20221117-b4-amlogic-bindings-convert-v3-4-e28dd31e3bed@linaro.org/

Thanks,
Neil
