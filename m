Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 508376E6AFB
	for <lists+devicetree@lfdr.de>; Tue, 18 Apr 2023 19:29:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231379AbjDRR3b (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 18 Apr 2023 13:29:31 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38724 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231659AbjDRR3a (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 18 Apr 2023 13:29:30 -0400
Received: from mail-ed1-x535.google.com (mail-ed1-x535.google.com [IPv6:2a00:1450:4864:20::535])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CB99383E2
        for <devicetree@vger.kernel.org>; Tue, 18 Apr 2023 10:29:28 -0700 (PDT)
Received: by mail-ed1-x535.google.com with SMTP id 4fb4d7f45d1cf-504eb1155d3so25123123a12.1
        for <devicetree@vger.kernel.org>; Tue, 18 Apr 2023 10:29:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1681838967; x=1684430967;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=k8K/4YMZuDcuh5BZ2DbCbQlB4lFUO8Ytiq9k9HbeZFA=;
        b=sccrfK60nOcez5USmWirFJsYTIddBTzhgQ8+MIXG+OqMLaXClvKsbybDfaXI4HH83P
         1h0gIZDrvAZSe454VoJtEDQFWqF96DzjDyTwSs/tW7rje7D5Q60/6mxj9wvyLPqmTcv6
         GWaCi0AsbD3XRxDwSgUUPKWjQRlYfMHVJcuPmpezdbz7T02gmiGU3nLWNVKDrWapA4e7
         0+/a8WRnp4Sbt53ECE8t9jVjgdhwgRWurHVX06uHf79TKOjYj1Lzwqh62sseWmz0sVwg
         LKwrm3als5Oh/PqNKvaxtb+biIJuffgECyPC35TsGxyhzenEA0KO4OeNrDFQZi/Fyrzz
         DR2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681838967; x=1684430967;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=k8K/4YMZuDcuh5BZ2DbCbQlB4lFUO8Ytiq9k9HbeZFA=;
        b=G8QWeYu7i2xa/9cywKg7bwcczVZzql2h3JZ/p+tft8KFW3s+SnY3azCSYRTY2fnBE9
         pcX88u6Lr5lJZc//aJE48uwHwGIAT/+bKbar9gtXHRYTVc/XH9/LjCOXTCfXD8k1x/A0
         Setyn49kJF37y2y0LDODwZc1nC8cA4mS6wti4jcsqT1Bg3kENy/EWrpDupoVxcPdemQA
         j1aAXmVUkiRdgoMmE6fZMB1Spoj158FWjXQdgqwnj5vDt+bGn6FbzzKonTZ07BSdAkEv
         5a1wNLNcQiqgUbvmFQRu82q3uxCSwRmmSw6T+L8pEOZAQmVbMGJkkVa6TizHHBDAeqEH
         pFOw==
X-Gm-Message-State: AAQBX9eEY5TuPeSNnn6nFaUuS2N1r4pTeqAHED92RzF8T5WtE3UcZ+zO
        GR5ATQ9b0Ub+vJnEXsntEYk6Ew==
X-Google-Smtp-Source: AKy350arEzNQ4T5BD+P0URcn7Uvt1j65gpuJYpNBnBKMiWN16xeO5EwyxUGCCccSBZ53+R/0tGpuOQ==
X-Received: by 2002:a05:6402:27cf:b0:506:70a3:2aa0 with SMTP id c15-20020a05640227cf00b0050670a32aa0mr3156647ede.3.1681838967266;
        Tue, 18 Apr 2023 10:29:27 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:a276:7d35:5226:1c77? ([2a02:810d:15c0:828:a276:7d35:5226:1c77])
        by smtp.gmail.com with ESMTPSA id p9-20020a05640210c900b004fa012332ecsm7263677edu.1.2023.04.18.10.29.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 18 Apr 2023 10:29:26 -0700 (PDT)
Message-ID: <9b6f54d9-f5ee-3e1c-7924-dd5c706aaf41@linaro.org>
Date:   Tue, 18 Apr 2023 19:29:25 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Subject: Re: [PATCH v1 1/2] dt-bindings: clocking-wizard: add versal
 compatible
Content-Language: en-US
To:     Shubhrajyoti Datta <shubhrajyoti.datta@amd.com>,
        devicetree@vger.kernel.org
Cc:     git@amd.com, linux-clk@vger.kernel.org, robh+dt@kernel.org,
        sboyd@kernel.org, mturquette@baylibre.com,
        krzysztof.kozlowski+dt@linaro.org, michal.simek@xilinx.com
References: <20230418102855.6791-1-shubhrajyoti.datta@amd.com>
 <20230418102855.6791-2-shubhrajyoti.datta@amd.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230418102855.6791-2-shubhrajyoti.datta@amd.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 18/04/2023 12:28, Shubhrajyoti Datta wrote:
> Add the devicetree compatible for Versal clocking wizard.
> 

Use subject prefixes matching the subsystem (which you can get for
example with `git log --oneline -- DIRECTORY_OR_FILE` on the directory
your patch is touching).

> Signed-off-by: Shubhrajyoti Datta <shubhrajyoti.datta@amd.com>
> ---


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof

