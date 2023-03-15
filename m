Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E56456BA9A6
	for <lists+devicetree@lfdr.de>; Wed, 15 Mar 2023 08:45:46 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231398AbjCOHpn (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 15 Mar 2023 03:45:43 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41434 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231480AbjCOHpj (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 15 Mar 2023 03:45:39 -0400
Received: from mail-ed1-x52a.google.com (mail-ed1-x52a.google.com [IPv6:2a00:1450:4864:20::52a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 872B32BF03
        for <devicetree@vger.kernel.org>; Wed, 15 Mar 2023 00:45:35 -0700 (PDT)
Received: by mail-ed1-x52a.google.com with SMTP id w9so1104498edc.3
        for <devicetree@vger.kernel.org>; Wed, 15 Mar 2023 00:45:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1678866334;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=UmXwlToH/e5W1q0ZH/ZtfDxKvmto9XQ3kAoMsQSVFFE=;
        b=hCa0X9sAt53YHCVUg/TkuhK2H/6aPpMwHLOh7igrx0Ap2v8uDVo8828ZbV/D13hZMs
         vHrjrtlAF87+CupvylCtmSmbmybe2cI+nvQgsPa9V+jSwtm9+bUYEA0JsbtW4foVAPRL
         hN8roV50pJoqnPB8P3i2/GLhHKF4edP5RuZpyaUd+c0AdVZc2t5d/2YqhvBhwyOgDDMT
         cYvYdmWKaJfQEEWKl0f5uOcFJXOGAkzGWAdkt5rOMokSEk6uRQNevwsvj+mk4e2pSj8W
         UpKRKt5SkHeHvmw/QY27v1Ox9FmcTMvkt//Iygxq+atqR7+OOYeKK2imBnsmxh80rCvH
         xsGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678866334;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=UmXwlToH/e5W1q0ZH/ZtfDxKvmto9XQ3kAoMsQSVFFE=;
        b=AF8RdPKLM7U+RtIokXb2kS2DyaVMjMa8RBH5tuE9GHnusPX/IZ3ltZ+X8E4y0vheJH
         v1K9CKMFyYExOqFXvwRzDbdp8UkqigwjHzVg0++xup6SxLY7LvS6Q8/sSOpdLBoKmcRH
         /xDUyJ5z2bWcUi9igV/O1t3PB8XeewAjvqKl8sxBWPp8jElbHNsfzNoORUHEXGaaiz2j
         sateGiODcqtk3H4qFe/sYPPHCf3DBoWqvWxmGSAj8ngNN0lmwjuW4+Au9wB4+jsL83Nw
         Pv2xcv/FlcvVJQInD0Hf7/RNCNHfCVGZ+++T/Ao3v64ga5wvQURWruLZPRYr5anO9ddX
         a/OQ==
X-Gm-Message-State: AO0yUKWSTp3Eglhl6pofQW67ruaZUcK505Td6RN6hC3HDCjbHxmA9XRc
        /6CSmAoGt+znvl7Z5a0UdpLdzf+IgorN/DBnZtc=
X-Google-Smtp-Source: AK7set+2wmOAgjAOQx9LiW4tbxQH4h3rfy1lWkysHWCygxpEtOcqdLpxvdtatzMoGqHXPUZMrBnR0Q==
X-Received: by 2002:a17:906:25c5:b0:8af:5403:992d with SMTP id n5-20020a17090625c500b008af5403992dmr4792415ejb.28.1678866334005;
        Wed, 15 Mar 2023 00:45:34 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:940e:8615:37dc:c2bd? ([2a02:810d:15c0:828:940e:8615:37dc:c2bd])
        by smtp.gmail.com with ESMTPSA id gf4-20020a170906e20400b0092396a853bbsm2145932ejb.143.2023.03.15.00.45.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 15 Mar 2023 00:45:33 -0700 (PDT)
Message-ID: <f97ed61d-71d0-f05a-e4f8-abae8f9fbdd8@linaro.org>
Date:   Wed, 15 Mar 2023 08:45:32 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH v7 13/13] media: dt-bindings: Convert Cadence CSI2RX
 binding to YAML
Content-Language: en-US
To:     Vaishnav Achath <vaishnav.a@ti.com>, linux-media@vger.kernel.org,
        devicetree@vger.kernel.org, mripard@kernel.org, mchehab@kernel.org,
        robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        laurent.pinchart@ideasonboard.com, sakari.ailus@linux.intel.com,
        tomi.valkeinen@ideasonboard.com
Cc:     linux-kernel@vger.kernel.org, bparrot@ti.com,
        niklas.soderlund+renesas@ragnatech.se, j-luthra@ti.com,
        devarsht@ti.com, praneeth@ti.com, u-kumar1@ti.com, vigneshr@ti.com,
        nm@ti.com, martyn.welch@collabora.com
References: <20230314115516.667-1-vaishnav.a@ti.com>
 <20230314115516.667-14-vaishnav.a@ti.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230314115516.667-14-vaishnav.a@ti.com>
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

On 14/03/2023 12:55, Vaishnav Achath wrote:
> From: Pratyush Yadav <p.yadav@ti.com>
> 
> Convert the Cadence CSI2RX binding to use YAML schema.
> 
> Signed-off-by: Pratyush Yadav <p.yadav@ti.com>
> Signed-off-by: Vaishnav Achath <vaishnav.a@ti.com>
> Reviewed-by: Rob Herring <robh@kernel.org>
> Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> ---
> 
> (no changes since v5)
> 

So it seems your patchset is not bisectable. Fix this and test
bisectability. All patchsets are expected to be fully bisectable.

Best regards,
Krzysztof

