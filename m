Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 19E3A6C9C5B
	for <lists+devicetree@lfdr.de>; Mon, 27 Mar 2023 09:38:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229685AbjC0Hiz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 27 Mar 2023 03:38:55 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46092 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229771AbjC0Hix (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 27 Mar 2023 03:38:53 -0400
Received: from mail-wm1-x329.google.com (mail-wm1-x329.google.com [IPv6:2a00:1450:4864:20::329])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 14EDD3C34
        for <devicetree@vger.kernel.org>; Mon, 27 Mar 2023 00:38:24 -0700 (PDT)
Received: by mail-wm1-x329.google.com with SMTP id o32so4446360wms.1
        for <devicetree@vger.kernel.org>; Mon, 27 Mar 2023 00:38:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1679902700;
        h=content-transfer-encoding:in-reply-to:organization:references:to
         :content-language:subject:reply-to:from:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=/qD7FjtvhZtJ81NOzUBx3LFaX12EP53IsdEv9Tl4bAI=;
        b=aCjXanFbaLw6M4VjmfBrrCt/WP0u1RNUsO+qupKmrHDpo2Pns2BofEaCHbZl3yb4Ac
         S5UKozMj86cIrzr7Uv77bHR7XtbQE8mEu3UnwfqwoPeCZCWBtS4IDbjz+39/I49vAXkn
         2sXvK57OoaJb8Bvap/bltiDHSAwhY+Oqa/rgAh1MmBP3mHUwUrrAA/8KllcgIwRs+HQj
         9B0qvmbo7Hl0gNg1R2baAs44Rzy7guY6qLF63xk8ZASRXgN5pr2wsB/E5WYH5X1XjDZE
         i8AINF31s85s2hhaElh5coliA4DQZ3SUfZmnREojxXXl+aiqeGcU3BHanP88eTq+YFty
         WKUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679902700;
        h=content-transfer-encoding:in-reply-to:organization:references:to
         :content-language:subject:reply-to:from:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=/qD7FjtvhZtJ81NOzUBx3LFaX12EP53IsdEv9Tl4bAI=;
        b=dfs1owh+R4ij0HuFAJMDg4MFrvvtUrdGnzFZNkeTQ/YpUP4yx9MWkGi7RNkfl3zJYe
         qhd2TwfZGNR2g1fBXBfBIQH2g9sW1YC4B5ehEoZjK0IfVpr7q+qICeOP8KunmWy4cyn0
         ZD+VH/XTSzI29rIzr0do9RKMmLY9HqJze0bdHi3zfB+yNhIqpMyZgNS7ndIQkxERbI5y
         4NocwkiWV3GQZLDkVPJT95LTfpMzcN3pHcN6skWQ6UpwTCHAx90qK8JJwlxPn8V+T72s
         yMyqi7XHglPe0XE1By8uWTPsTzqXH8KfSy4LSIkaeSr7IMvn4RU5ENf24mtUNwsHhtlu
         lD0w==
X-Gm-Message-State: AAQBX9c4jmtphBR+o9rYx35jDlFcQVUl+Jior6r4M6T9CGwSvbekRwEq
        3y9QltYSeqgOnzo3JmohrAfquw==
X-Google-Smtp-Source: AKy350a2wxNM50qk+pj7L2It/9Y8AxzXlhVA3FjGXQkX6PTzQ9sSZL2rJXy43EngRugYesbfAevI5Q==
X-Received: by 2002:a7b:c444:0:b0:3ef:72e7:fce2 with SMTP id l4-20020a7bc444000000b003ef72e7fce2mr164229wmi.17.1679902700621;
        Mon, 27 Mar 2023 00:38:20 -0700 (PDT)
Received: from [192.168.7.111] (679773502.box.freepro.com. [212.114.21.58])
        by smtp.gmail.com with ESMTPSA id u15-20020a05600c210f00b003ed2433aa4asm12783619wml.41.2023.03.27.00.38.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 27 Mar 2023 00:38:20 -0700 (PDT)
Message-ID: <f786f389-d03f-1cef-dff0-dcdf3b5e4042@linaro.org>
Date:   Mon, 27 Mar 2023 09:38:19 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
From:   Neil Armstrong <neil.armstrong@linaro.org>
Reply-To: neil.armstrong@linaro.org
Subject: Re: [PATCH 5/6] dt-bindings: display: visionox,rm69299: document reg
Content-Language: en-US
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Sam Ravnborg <sam@ravnborg.org>,
        David Airlie <airlied@gmail.com>,
        Daniel Vetter <daniel@ffwll.ch>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Sumit Semwal <sumit.semwal@linaro.org>,
        Thierry Reding <thierry.reding@gmail.com>,
        Michael Srba <Michael.Srba@seznam.cz>,
        Harigovindan P <harigovi@codeaurora.org>,
        Bjorn Andersson <andersson@kernel.org>,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20230326155425.91181-1-krzysztof.kozlowski@linaro.org>
 <20230326155425.91181-5-krzysztof.kozlowski@linaro.org>
Organization: Linaro Developer Services
In-Reply-To: <20230326155425.91181-5-krzysztof.kozlowski@linaro.org>
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

On 26/03/2023 17:54, Krzysztof Kozlowski wrote:
> Panels are supposed to have one reg.  This fixes dtbs_check warnings
> like:
> 
>    sc7180-idp.dtb: panel@0: 'reg' does not match any of the regexes: 'pinctrl-[0-9]+'
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---
>   .../display/panel/visionox,rm69299.yaml       | 25 +++++++++++++------
>   1 file changed, 17 insertions(+), 8 deletions(-)

<snip>

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>

