Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5B24461FD33
	for <lists+devicetree@lfdr.de>; Mon,  7 Nov 2022 19:18:43 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232842AbiKGSSm (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 7 Nov 2022 13:18:42 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34128 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233041AbiKGSSL (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 7 Nov 2022 13:18:11 -0500
Received: from mail-lj1-x234.google.com (mail-lj1-x234.google.com [IPv6:2a00:1450:4864:20::234])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E273919A
        for <devicetree@vger.kernel.org>; Mon,  7 Nov 2022 10:17:01 -0800 (PST)
Received: by mail-lj1-x234.google.com with SMTP id k19so17588287lji.2
        for <devicetree@vger.kernel.org>; Mon, 07 Nov 2022 10:17:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=f6V4UohAWc2m+jNDZH5W+975Jb/3YdWztcr9QXvBFnQ=;
        b=ETE5lYGBmXaa9JIPl/vSiCxdAe9AjOFJO71t+bN8UOwMFDctx74kyA1/9V9nfM9MKr
         aLyYymTJxSRuiyhQbfu6zkTpRYiyOCM2VqQLw9YAGc7tR4trFeSc+LTPX7CgDwkZIc6G
         KIYMCwK9Em950H6uKi4+I6xENKYcocRQN2ATJdKWdXt/M958jD1fS5PGNtRKgZxRowvA
         FiVbnzRPnYcNZosk/4vf2TMDExyZjAHV1NgQ8W1ptLywLfEBej+yOJ/8aaYfTmuew8aY
         ZUSelnTbKK6VK9f3ETmGp/zuBAejqf43wdpaWqSQ8W97zgBiqfdcouvF0ezM0enq/AOL
         Q/NA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=f6V4UohAWc2m+jNDZH5W+975Jb/3YdWztcr9QXvBFnQ=;
        b=dsvp4Ygj/T8BMXE5HReOtdzm/yQMaJRtt5BDa/SvLr+yNpccSj5mrAbBSMrxnAyoyH
         TJA2euBL0dpKvfD1WkLBXOUbI0ZhvOB/gVVcczawgXoRNEck5+0N6AdSRltxNekxyDuW
         nrvAVlPxsP6h1VEUQ/WYgFiNNUpQrwdLKIh5kybJDye+STe7U80SY3eMkxv1Yicoy1/R
         HUAiv6xvxKUYzCaLHTwHohZSkBQiXMQv/zCDuu/9/1kh71nPTRHd8axqlCgApddmac2E
         5ghULTZehjMtycB2J+oLIumnkFzOjmLBIQ2xiwZkLW0e/oiakucIbYSpqe3bGlT+h/Iv
         qPmg==
X-Gm-Message-State: ACrzQf0XJcuIFRLt5B6kS/T/QCGu02WeSWsSquWWndRz4FUTFMFA5lRo
        BvZ7GtT4JjLpfd0Qp2qxLsEA6w==
X-Google-Smtp-Source: AMsMyM407OWxYUKac90YuT7TQcGnAfE0ACHr16p6PrcKPVVlUIq0zK0SMbxXoi3Ocdr5fTaSYFpkkg==
X-Received: by 2002:a05:651c:1110:b0:277:9e5:6cc8 with SMTP id e16-20020a05651c111000b0027709e56cc8mr5404021ljo.105.1667845020311;
        Mon, 07 Nov 2022 10:17:00 -0800 (PST)
Received: from [192.168.0.20] (088156142199.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.199])
        by smtp.gmail.com with ESMTPSA id s12-20020a056512214c00b004a25468d86asm1367400lfr.68.2022.11.07.10.16.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 07 Nov 2022 10:16:59 -0800 (PST)
Message-ID: <e5c049a1-a7f3-b804-9866-5c8edb07da0c@linaro.org>
Date:   Mon, 7 Nov 2022 19:16:58 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Subject: Re: [PATCH v2 08/10] dt-bindings: vendor-prefixes: add Lctech name
Content-Language: en-US
To:     Andre Przywara <andre.przywara@arm.com>,
        Chen-Yu Tsai <wens@csie.org>,
        Samuel Holland <samuel@sholland.org>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     =?UTF-8?B?Q2zDqW1lbnQgUMOpcm9u?= <peron.clem@gmail.com>,
        Icenowy Zheng <uwu@icenowy.me>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev
References: <20221107005433.11079-1-andre.przywara@arm.com>
 <20221107005433.11079-9-andre.przywara@arm.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221107005433.11079-9-andre.przywara@arm.com>
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

On 07/11/2022 01:54, Andre Przywara wrote:
> Shenzen LC Technology [1] is a company making various boards and related
> products around IoT and AI technology.
> They used to use the "Cherry Pi" brand before.
> 
> Add it to the vendor prefixes list.
> 


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

