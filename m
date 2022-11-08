Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AF28D620DF2
	for <lists+devicetree@lfdr.de>; Tue,  8 Nov 2022 11:59:18 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233658AbiKHK7P (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 8 Nov 2022 05:59:15 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46576 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233597AbiKHK7N (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 8 Nov 2022 05:59:13 -0500
Received: from mail-lf1-x12b.google.com (mail-lf1-x12b.google.com [IPv6:2a00:1450:4864:20::12b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A5F7B450B3
        for <devicetree@vger.kernel.org>; Tue,  8 Nov 2022 02:59:11 -0800 (PST)
Received: by mail-lf1-x12b.google.com with SMTP id p8so20655614lfu.11
        for <devicetree@vger.kernel.org>; Tue, 08 Nov 2022 02:59:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=gKq0Z1l8oyk0eTyU/o64FPBYWBNjgIJP6U1m6VFKy38=;
        b=jq15JLHcMwjPo4ZAVev6hyodHFze50Y4xkNNcEBd3N5bTa5gPvN3mV2VtvW5wu6ow2
         A8mYz+ncNNJPaeD8cjsxQ0on0uzB7GZNwbzPGec0nSf9nwHtpfrVRRP4u0rF8bmJ79ZT
         vV2R/dk6RqbMfiY2mXFfkSt1XD/C7yLwAVFDWdsCDje0sYSjkh+QNA+S1uPn4H/vhq+/
         3GMNVA/4fSCXVmmdZzIVn7K5uRRi6BWuVWamfeexUaMBYGz3hCFUtvN357DOABEiXHdF
         xF6p280cnlJRpgCWwwesbDSenCdz4xURwFz2ShhVS5eQ8EjTskEGfhHwgk+1mE9SwEAe
         5Kvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=gKq0Z1l8oyk0eTyU/o64FPBYWBNjgIJP6U1m6VFKy38=;
        b=2Ep5FuYSMnXKgvvbhDcKLTT4tEWk7dek2Bqo2/Wsm2Gibk63T/LyXQUOlR/t0oS/6C
         p2Is52WfiBBFQlRx8hFdAevrzAlut8DZeJKfKhR3bgvxR0+7LSzZ+46lcx/ZD+ocZMTA
         mqI05rYtjZVM/B47kqaozyHmWV1gOcgOgP65warvNAvNtsSUAbhWbBzcDjXqfDLZnHKA
         bGHHJyRTrfVCWByqaoDPLTXIFp1ntXfgc6yASltwxPO1qZlpqZGduuN2tMygLjo0nnQ5
         PGcD7Jhl4vxhOfPwj+0BHsvVEeO7IhWZkLxDc3azUtR38kU58vS1c0yFLJW7U5j9l35m
         O6jg==
X-Gm-Message-State: ACrzQf2JPwNzTv9TGRk9625avUbPaiBpfP33QX4bwRSE9Sb9K2UYkyse
        z7hnbTkddcCkD+us/VWW8Q60zg==
X-Google-Smtp-Source: AMsMyM6/CWgviva8Ua5H2rBPqp+shUg1VToT4XYT2Nz9j6W2D+ROm/o9KyJhfyTcFBWltkiLfbmkbA==
X-Received: by 2002:ac2:4c8e:0:b0:4a2:4745:a63d with SMTP id d14-20020ac24c8e000000b004a24745a63dmr18436290lfl.605.1667905150054;
        Tue, 08 Nov 2022 02:59:10 -0800 (PST)
Received: from [192.168.0.20] (088156142199.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.199])
        by smtp.gmail.com with ESMTPSA id t1-20020a2e9d01000000b0026fa9e19197sm1688928lji.36.2022.11.08.02.59.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 08 Nov 2022 02:59:09 -0800 (PST)
Message-ID: <241dfd95-8572-626a-fa9a-339c67641fd7@linaro.org>
Date:   Tue, 8 Nov 2022 11:59:08 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Subject: Re: [PATCH v4 2/3] dt-bindings: watchdog: fsl-imx: document suspend
 in wait mode
Content-Language: en-US
To:     Andrej Picej <andrej.picej@norik.com>,
        linux-watchdog@vger.kernel.org
Cc:     wim@linux-watchdog.org, linux@roeck-us.net, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, shawnguo@kernel.org,
        s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com,
        linux-imx@nxp.com, Anson.Huang@nxp.com, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20221104070358.426657-1-andrej.picej@norik.com>
 <20221104070358.426657-3-andrej.picej@norik.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221104070358.426657-3-andrej.picej@norik.com>
Content-Type: text/plain; charset=UTF-8
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

On 04/11/2022 08:03, Andrej Picej wrote:
> Property "fsl,suspend-in-wait" suspends watchdog in "WAIT" mode which
> corresponds to Linux's Suspend-to-Idle S0 mode. If this property is not
> set and the device is put into Suspend-to-Idle mode, the watchdog
> triggers a reset after 128 seconds.
> 
> Signed-off-by: Andrej Picej <andrej.picej@norik.com>
> Reviewed-by: Fabio Estevam <festevam@gmail.com>


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

