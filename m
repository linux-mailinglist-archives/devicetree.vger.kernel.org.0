Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1E6C078BEA0
	for <lists+devicetree@lfdr.de>; Tue, 29 Aug 2023 08:43:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229461AbjH2Gmd (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 29 Aug 2023 02:42:33 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53052 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229896AbjH2GmE (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 29 Aug 2023 02:42:04 -0400
Received: from mail-ed1-x531.google.com (mail-ed1-x531.google.com [IPv6:2a00:1450:4864:20::531])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6CB0E185
        for <devicetree@vger.kernel.org>; Mon, 28 Aug 2023 23:42:01 -0700 (PDT)
Received: by mail-ed1-x531.google.com with SMTP id 4fb4d7f45d1cf-52a39a1c4d5so5234654a12.3
        for <devicetree@vger.kernel.org>; Mon, 28 Aug 2023 23:42:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1693291320; x=1693896120;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=FjfPeAhfUYBw/sXIgz8fmHiXM0sr1IQcX1df/SswdE4=;
        b=VuhACe9AiWTu/WV9z8211V3yy1g2LRWqtdEvx0zlz7tzFvGeb2FkT7M5FQZSrrIxfm
         4ex8HVLmHKTiUkGfUVzYyB+RPiIosm5kHUNsR/tWJbltCYZyWciRq2wgOZcxQh3/pZs5
         yMKcSmKU/1Pco6PIseuKUQaby9oyzOX3OfOUWG3/QxZ/arXk8KPGL3mPq3KH4n9sHYgw
         zYEhRiycXviWNI2zT/6WlPy2YsoUJed5Ie8LfDK7l+JzBFwpad6Xus3QiSLioIU0roni
         MaEL1aj/8uV5e4EGdobgD3/UczFeziqM7qCqTFzPsmivhnBOSzA5KalZGnT7B3y+A37e
         rrew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1693291320; x=1693896120;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=FjfPeAhfUYBw/sXIgz8fmHiXM0sr1IQcX1df/SswdE4=;
        b=XuFrX96KB9x0TGgqdsk7i25XZzQx4gfQtrSvuMdn6pc6awFcEPCq/d3G+5LBY7SYnG
         pfXGp1ocOR7yU/hwSFy5h08C4MQSk8ijczXOCHcfjLn35v0fff/9101vufpb1ggqv6Yt
         K4H1L0gMyslaSIXMy0asXvANENo4YGZdhZ2EHHdGZjLxOtLa0irGw695LZ5ZGAm+yke7
         Dd0xJduWIPe/YGPU8gxP2xnG7RK30DCYF4VYp4FkbA/3TUAb9Q9UZMs98BJtEoHILMtJ
         WpTSi/0/hDfv2tkkERrDpNMwy7Yu80el3RDADugOk51vLLa5dyHY6zyHnJEzcwgZebF1
         3Phg==
X-Gm-Message-State: AOJu0Yyza7U592o8AKcC2hUoYbGrHPIjSRfSfzkJm7NtsRCvxdi/le5L
        qiYnosRNpM8ZyvRaI4TuC4UUVw==
X-Google-Smtp-Source: AGHT+IE2hnf68ZZs5cjHk7ilR0OikTToDljPRaazsKZjQ74t15LWrQSogMSxNi+uen/atOSHa2B98Q==
X-Received: by 2002:aa7:ccc9:0:b0:523:1ea3:b9a6 with SMTP id y9-20020aa7ccc9000000b005231ea3b9a6mr20326288edt.39.1693291319940;
        Mon, 28 Aug 2023 23:41:59 -0700 (PDT)
Received: from [192.168.0.22] ([77.252.47.196])
        by smtp.gmail.com with ESMTPSA id o8-20020aa7d3c8000000b0052544bca116sm5286014edr.13.2023.08.28.23.41.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 28 Aug 2023 23:41:59 -0700 (PDT)
Message-ID: <6aa6f1b0-0ccc-c2a7-8be1-ffd444193400@linaro.org>
Date:   Tue, 29 Aug 2023 08:41:58 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.14.0
Subject: Re: [PATCH v3 1/3] dt-bindings: thermal-zones: Document
 critical-action
Content-Language: en-US
To:     Fabio Estevam <festevam@gmail.com>, daniel.lezcano@linaro.org
Cc:     rafael@kernel.org, amitk@kernel.org, rui.zhang@intel.com,
        linux-pm@vger.kernel.org, krzysztof.kozlowski+dt@linaro.org,
        robh+dt@kernel.org, conor+dt@kernel.org,
        devicetree@vger.kernel.org, Fabio Estevam <festevam@denx.de>
References: <20230828195902.1645169-1-festevam@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230828195902.1645169-1-festevam@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 28/08/2023 21:59, Fabio Estevam wrote:
> From: Fabio Estevam <festevam@denx.de>
> 
> Document the critical-action property to describe the thermal action
> the OS should perform after the critical temperature is reached.


We see that from the diff. You should explain here why you need it, why
this is good idea. You should provide here answers to my concerns on v1,
so you do not get exactly the same question from Conor or Rob or anyone
else.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

