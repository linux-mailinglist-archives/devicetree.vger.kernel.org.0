Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7E7AA70B669
	for <lists+devicetree@lfdr.de>; Mon, 22 May 2023 09:24:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232421AbjEVHYR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 22 May 2023 03:24:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50544 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230412AbjEVHYE (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 22 May 2023 03:24:04 -0400
Received: from mail-wm1-x329.google.com (mail-wm1-x329.google.com [IPv6:2a00:1450:4864:20::329])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3969294
        for <devicetree@vger.kernel.org>; Mon, 22 May 2023 00:24:03 -0700 (PDT)
Received: by mail-wm1-x329.google.com with SMTP id 5b1f17b1804b1-3f41dceb9d1so56037605e9.1
        for <devicetree@vger.kernel.org>; Mon, 22 May 2023 00:24:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1684740241; x=1687332241;
        h=content-transfer-encoding:in-reply-to:organization:references:cc:to
         :content-language:subject:reply-to:from:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=DP8vc4lqhrsQ7DMlA5RHt36AfG1aqpkYdAb6gvy80+A=;
        b=bY4GxMrMwaalbkKP5sS71k32QpVTWBOkl+IWQ22b7K+xJNLFWeWRVqWOirEDukY78H
         dSq094Q/I2tCZmT/H81QKwM0IV1vpy+78FmXMGCqEjdRg8Ilgi7R8K3FhDIXvOD/knDe
         Po7SGfjhXgf6EVGp7/7+WUPsLl3MNQZVfTb/QyFWFdswigcTCIt80BY1as3e+sWoWEuL
         cfDLTdRIlELuELTqk3xNl5zpt2M1pVuk+wik+qmKYh7gpqJ3121x4I8R6NZISrtaUA/K
         ci+bD1RNsPXtPod4D1SlUbx2URkRgvuvMLQAkDTyxvYId8skmNGW3Joxxq9AlHzTFCes
         lT2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684740241; x=1687332241;
        h=content-transfer-encoding:in-reply-to:organization:references:cc:to
         :content-language:subject:reply-to:from:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=DP8vc4lqhrsQ7DMlA5RHt36AfG1aqpkYdAb6gvy80+A=;
        b=dCnIqfbuy3FPkjxXwc9i7uA0izRZjElhSJY0PLBkXzHdosWDR+DLDFoS/dYEFsVVNB
         CV6i5MmEf+XBiDF00sKAT/Kmr02MYtH4EpcXio+H2j1EHAwDRcg2+5O4feobspZJL9Pb
         RWaZaE7Z/5UJIeZEI/4RbpFiFWOCFGxmEn5qEmO7hryWxAeedJTuUFwDHze2khxU3e6/
         uN4epfZX8xx/G6XTT40YOTARHZ0UIKmqMQzfioN6vF/DXklP2mAJq12gfC86dY1UjIYQ
         hXOzC2NlU8ckpItPptlW3EV4NZ0XbuyBTXxNCAwEJhjQTQgybXerT6L3VFPx8B9XL7y6
         ybkw==
X-Gm-Message-State: AC+VfDxbZVOcyj4JJEfmxN3hjWH9uIBHK/TFAryCpyzRxRTgLlUik7on
        Ojt6U5iL8fK7NbL1oaw2IBhgeg==
X-Google-Smtp-Source: ACHHUZ7yVBS628L12BOKyRlxAwNcCRJj3WJkt+J+IZCzDwMzw7fDFJdG1r9DF3W0NDLJprNMiR6OpQ==
X-Received: by 2002:a05:600c:2104:b0:3f6:53a:6665 with SMTP id u4-20020a05600c210400b003f6053a6665mr989148wml.19.1684740241626;
        Mon, 22 May 2023 00:24:01 -0700 (PDT)
Received: from [192.168.7.188] (679773502.box.freepro.com. [212.114.21.58])
        by smtp.gmail.com with ESMTPSA id i7-20020a05600c290700b003f506e6ff83sm7353434wmd.22.2023.05.22.00.24.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 22 May 2023 00:24:01 -0700 (PDT)
Message-ID: <ed8fc8f2-e5d8-8e08-dc29-e1197c911571@linaro.org>
Date:   Mon, 22 May 2023 09:24:03 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.1
From:   neil.armstrong@linaro.org
Reply-To: neil.armstrong@linaro.org
Subject: Re: [v1 0/2] *** Support Starry-himax83102-j02 and Starry-ili9882t
 TDDI MIPI-DSI panel ***
Content-Language: en-US
To:     Cong Yang <yangcong5@huaqin.corp-partner.google.com>,
        sam@ravnborg.org, daniel@ffwll.ch, dianders@google.com,
        hsinyi@google.com
Cc:     dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20230519032316.3464732-1-yangcong5@huaqin.corp-partner.google.com>
 <20230519080136.4058243-1-yangcong5@huaqin.corp-partner.google.com>
Organization: Linaro Developer Services
In-Reply-To: <20230519080136.4058243-1-yangcong5@huaqin.corp-partner.google.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,


On 19/05/2023 10:01, Cong Yang wrote:
> The previous patch is not based on drm-misc-next, resend this series.
> Support Starry-himax83102-j02 and Starry-ili9882t TDDI MIPI-DSI panel,
> set the default high for RST at boe_panel_add and add lp11_before_reset flag.

If the reset gpio polarity is different, please change it in the DT by using
a different gpio flag instead of changing the driver.

However if the logic is different and reset must never be asserted to low,
the the bindings + driver to make the reset line optional and set a gpio-hog
in DT to keep it at a safe level.

Neil


> Cong Yang (2):
>    drm/panel: Support for Starry-himax83102-j02 TDDI MIPI-DSI panel
>    drm/panel: Support for Starry-ili9882t TDDI MIPI-DSI panel
> 
>   .../gpu/drm/panel/panel-boe-tv101wum-nl6.c    | 474 +++++++++++++++++-
>   1 file changed, 473 insertions(+), 1 deletion(-)
> 

