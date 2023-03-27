Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 13FC86C9C7D
	for <lists+devicetree@lfdr.de>; Mon, 27 Mar 2023 09:42:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232527AbjC0HmQ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 27 Mar 2023 03:42:16 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50288 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232660AbjC0Hl6 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 27 Mar 2023 03:41:58 -0400
Received: from mail-wm1-x32f.google.com (mail-wm1-x32f.google.com [IPv6:2a00:1450:4864:20::32f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EBA39FD
        for <devicetree@vger.kernel.org>; Mon, 27 Mar 2023 00:41:33 -0700 (PDT)
Received: by mail-wm1-x32f.google.com with SMTP id l15-20020a05600c4f0f00b003ef6d684102so1344754wmq.3
        for <devicetree@vger.kernel.org>; Mon, 27 Mar 2023 00:41:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1679902891;
        h=content-transfer-encoding:in-reply-to:organization:references:to
         :content-language:subject:reply-to:from:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=nMDnDVndzHNxg8IysowsDNshZJLrhOGXhE/oQgMJt/I=;
        b=EsFgBGI6BZ5ZwDAdbcfRIPDxe8eYQItMtqfFw25GhIa7AY+vGmel0quZRkl9QnaAFu
         pIrgEpxLejlsdV4FguN9YPOUkiNJsKDefJ6eEVTDxdXSpGBdrzHmYONRTTODpaTOxrWO
         9m6SdAhLyUB8NGgMoPEgGd8tUkzYAo0TPSDEi1H6HYuuO6T2aA5GjnlHo3JJsm/jD4DL
         EHIsp+4/OVrHhR2WLmOQ9ZiDHKLxSWdS2HMHzQk/YgyjqxYlP/Ddw5wuEvAERzxW6uNp
         CHxU133Y47dv1W2gn7qo2ODdqF5izciLdy4RNlGyx4XSfHI1nUoyaJXmpaJ7Cxj76/KZ
         RZJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679902891;
        h=content-transfer-encoding:in-reply-to:organization:references:to
         :content-language:subject:reply-to:from:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=nMDnDVndzHNxg8IysowsDNshZJLrhOGXhE/oQgMJt/I=;
        b=EeiSvz1TBHObfTUWk2mtXFj2I0Jl+16/jxa2B8v8+6HJJeA1pBkZVNzlnXIP/mnlfy
         kGNrKnFn6npc0j6hU3TBuRnrmVqkabyFHoi/9bx7hSEu8lnzZKZQ0mjs0fLmsRevl1R1
         OuDAbep6O7GDY/29DXDhiDOABPORw/SH8s0StOk43hVA1aW5ifcJEr2QNJkQy8Wm0nqY
         0PilrecW22BShgu274Jnkr7gVrE3ruqGGJBTNckAfRn6KHXMRaqyD4+R9NskUtnijpHc
         3bJTAKJ0QoTs/kg68nUfnicRVMXOiNpLWhxs+C6QC2yGl+RhYkXkSfaspm1pv1pFo7Oe
         q6CA==
X-Gm-Message-State: AO0yUKUauuM/5xAvcLd2UtOQbyGMSfp11ygPc5obfYBIiz24P6WNm3ul
        Lh2vz6q0lvMmR6AGbapo/4m6iQ==
X-Google-Smtp-Source: AK7set+XzclimABLgzyAaFqjRJkjXg0QKtHa5QnWiLQJdngamdnCBLbkp2QJ3aYaDYZYaiWLArXVCQ==
X-Received: by 2002:a05:600c:25a:b0:3ed:358e:c1c2 with SMTP id 26-20020a05600c025a00b003ed358ec1c2mr8493947wmj.18.1679902891504;
        Mon, 27 Mar 2023 00:41:31 -0700 (PDT)
Received: from [192.168.7.111] (679773502.box.freepro.com. [212.114.21.58])
        by smtp.gmail.com with ESMTPSA id p20-20020a7bcc94000000b003edd1c44b57sm12680153wma.27.2023.03.27.00.41.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 27 Mar 2023 00:41:31 -0700 (PDT)
Message-ID: <702f7101-8e1f-21b3-d958-b9653313efa8@linaro.org>
Date:   Mon, 27 Mar 2023 09:41:30 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
From:   Neil Armstrong <neil.armstrong@linaro.org>
Reply-To: neil.armstrong@linaro.org
Subject: Re: [PATCH 1/4] dt-bindings: display: xinpeng,xpp055c272: document
 port
Content-Language: en-US
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Sam Ravnborg <sam@ravnborg.org>,
        David Airlie <airlied@gmail.com>,
        Daniel Vetter <daniel@ffwll.ch>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Jagan Teki <jagan@amarulasolutions.com>,
        Heiko Stuebner <heiko.stuebner@theobroma-systems.com>,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20230326204224.80181-1-krzysztof.kozlowski@linaro.org>
Organization: Linaro Developer Services
In-Reply-To: <20230326204224.80181-1-krzysztof.kozlowski@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-0.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 26/03/2023 22:42, Krzysztof Kozlowski wrote:
> Panels are supposed to have one port (defined in panel-common.yaml
> binding):
> 
>    px30-evb.dtb: panel@0: 'port' does not match any of the regexes: 'pinctrl-[0-9]+'
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---
>   .../bindings/display/panel/xinpeng,xpp055c272.yaml        | 8 ++++++++
>   1 file changed, 8 insertions(+)

<snip>

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>
