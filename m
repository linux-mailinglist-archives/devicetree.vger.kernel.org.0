Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9C0836C9C35
	for <lists+devicetree@lfdr.de>; Mon, 27 Mar 2023 09:36:03 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232576AbjC0HgB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 27 Mar 2023 03:36:01 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39992 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232470AbjC0Hf7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 27 Mar 2023 03:35:59 -0400
Received: from mail-wr1-x42a.google.com (mail-wr1-x42a.google.com [IPv6:2a00:1450:4864:20::42a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7B352559A
        for <devicetree@vger.kernel.org>; Mon, 27 Mar 2023 00:35:29 -0700 (PDT)
Received: by mail-wr1-x42a.google.com with SMTP id r11so7582342wrr.12
        for <devicetree@vger.kernel.org>; Mon, 27 Mar 2023 00:35:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1679902523;
        h=content-transfer-encoding:in-reply-to:organization:references:to
         :content-language:subject:reply-to:from:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=hUUIlCCSusXuIUbK8ao9/l+7rjKJGKXCAR4GRUaMd3w=;
        b=zAGlj0HG92BQp2NQn/qoGG/XU8I2x7Ca45RcIIPMDDdCh5UJtDWUcjcqzfp9AMvXir
         O9HvO/+RonfIqMR3VTJG0RBQqoKlaOSs4p8ImoRzxGa004AjIyBFOR7FfnQ5ua6aJqqk
         0mdzytGYEBb7qUUi7uD898bPJ6fcXR2suwFH7Ilbs5Erw8KuB1JOk1M//M/VJEljLinX
         SrDUckFCqQnarOASQTLNK3flN553o1cU99NuDauPENjkaibRl8+LRX04L9DaiBuRUupr
         j+EDvu+qfrc11gij0Wb6a0/c7um2fgBxCmM0u98Nrs3xsbQ97zY3a1P1AjQeL4X6jCh1
         Xn5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679902523;
        h=content-transfer-encoding:in-reply-to:organization:references:to
         :content-language:subject:reply-to:from:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=hUUIlCCSusXuIUbK8ao9/l+7rjKJGKXCAR4GRUaMd3w=;
        b=6wnCW+hateZEI/8Ixmjjq1E87wlmBBRhAbvJ8MZlYqv4i1QsmNIErwLnCMLypoYV2v
         LOcY4tea3FlYQVE3TdGUbWjmthKq/0JLkezXjQ1vMMA/wG7wLr01/hFXe08qlv1xAh2S
         +53lrtUQjZMwqxauywwBjsmp3BlXDskY1LWGJH9vSQumnmUS41rgxXJJPoj3ScIbcw6p
         OZGL+JIGtocZyS82prEpfsbNFcKxRgOKPPL7mh2sqoTrVP6+wulj572MnzcSNWgX/PQF
         JgprkCmW5bLXtCdM6XymN1SM1ytUzE5TUEyD+vhTTO/7sqdrbrhoqEZFujKlIkyFRq6M
         2XXA==
X-Gm-Message-State: AAQBX9dVMQykKDeqHh6y+1skWTBipxIuSjrWPf1/RdxtnUkoh/1n9KjK
        E1VXCzDboWH6/4/b6My6WxRWjg==
X-Google-Smtp-Source: AKy350basepWyA7cJrWSHJE4h50ml/pm16/tEY+oV7GILd+6++p2mht+ak9fMFA0pA/bKmZtL9VWTA==
X-Received: by 2002:adf:eb8c:0:b0:2ce:a8e9:bb3a with SMTP id t12-20020adfeb8c000000b002cea8e9bb3amr7887211wrn.4.1679902523399;
        Mon, 27 Mar 2023 00:35:23 -0700 (PDT)
Received: from [192.168.7.111] (679773502.box.freepro.com. [212.114.21.58])
        by smtp.gmail.com with ESMTPSA id n1-20020a5d67c1000000b002cfe685bfd6sm24329945wrw.108.2023.03.27.00.35.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 27 Mar 2023 00:35:23 -0700 (PDT)
Message-ID: <502597c6-3e8d-0a63-b81e-8011ffdfae43@linaro.org>
Date:   Mon, 27 Mar 2023 09:35:22 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
From:   Neil Armstrong <neil.armstrong@linaro.org>
Reply-To: neil.armstrong@linaro.org
Subject: Re: [PATCH 1/6] dt-bindings: display: panel-simple: merge Innolux
 p120zdg-bf1
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
Organization: Linaro Developer Services
In-Reply-To: <20230326155425.91181-1-krzysztof.kozlowski@linaro.org>
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
> There is nothing special in Innolux p120zdg-bf1 panel, so just like
> other Innolux panels it can be made part of panel-simple.
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---
>   .../display/panel/innolux,p120zdg-bf1.yaml    | 43 -------------------
>   .../bindings/display/panel/panel-simple.yaml  |  2 +
>   2 files changed, 2 insertions(+), 43 deletions(-)
>   delete mode 100644 Documentation/devicetree/bindings/display/panel/innolux,p120zdg-bf1.yaml
> 

<snip>

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>
