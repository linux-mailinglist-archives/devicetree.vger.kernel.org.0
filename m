Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id EE3256CD3F9
	for <lists+devicetree@lfdr.de>; Wed, 29 Mar 2023 10:06:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229656AbjC2IGA (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 29 Mar 2023 04:06:00 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60920 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230117AbjC2IF6 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 29 Mar 2023 04:05:58 -0400
Received: from mail-lf1-x12f.google.com (mail-lf1-x12f.google.com [IPv6:2a00:1450:4864:20::12f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 27D962137
        for <devicetree@vger.kernel.org>; Wed, 29 Mar 2023 01:05:56 -0700 (PDT)
Received: by mail-lf1-x12f.google.com with SMTP id c9so8630486lfb.1
        for <devicetree@vger.kernel.org>; Wed, 29 Mar 2023 01:05:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1680077154;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=xjsCaclLV54PUQBCXvfqXG6NcxhUWOzoT0j7GVU3LHk=;
        b=JkmUi/idGnZvhQNNVFQ7LPjDya7OX27oIez1Vy/KArqlD2gs4p2XgvA00bVLlcf99Z
         l4wL8KOOW+E93PtjJb0N04FOA2nNBjDKmyf+B2tZjNp3OAEmTyTwp/nywhSfX447hpeo
         d7VervBxS2h7/XvEORlYL/N/4BB7+Syt3OnzrNOIAHgi9pp2Bh6V0yx2/kNmeqYMd8I/
         IvEnvR6a2E2O4kETdWhIisP2FpqqeBc6IC+Xcxq9Gom6QnN3UTfFcYDORtJ1EYe02ZuH
         Z84+BfgZGmTlnNOsK787ZAU0GNVkQeWTtZiDavAxGJwjJNYv6uQqd/+sFOPhB3R5zkEd
         XNzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680077154;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=xjsCaclLV54PUQBCXvfqXG6NcxhUWOzoT0j7GVU3LHk=;
        b=ydQHuVlQVl3n7PuiUm5zpwQhNk2yIMk/E8AZawsXJSZnGeaR6IUMHeqOrVgIqS6sCD
         kOZtOeDVqBYmTKdmKmdUltrMvEy1uSdl3WEd7/bHP8JQZDgRRFdvoWlEROUW4Eru4iby
         89Brs100ewLt9WZE3eq2hgBbbLnZGhkKcknNZ5gTFjVS0N333srdUPQOTitlqdyBQ7Wf
         hHZ+k/2CpYMeepc7ojtAgWFTlBOOy628VU2JS5VPDxHj+rm01r1PEwoHYShnUo9oUJvi
         NijE8kOYU2B5sTu129T9/3Z13wRDPySIU4VYUel6CCBjt+lE/IPZIckCSXwN7jTpVS8W
         RzVw==
X-Gm-Message-State: AAQBX9d1qUY3Nkir4xEhqxvgqrXRAStHGCXEgTUPlNve8fMrO20ebGdS
        lEAMJo2D+cK1qpB7+dUDeIwoiA==
X-Google-Smtp-Source: AKy350ZHmWuIA0HL6qbVF9DdPRUk6J/Ib7EpPBBdbwXuprkVuitGJ+/S4yTzEeLzd8KdLZvgYbrtKw==
X-Received: by 2002:ac2:530d:0:b0:4e9:a9e6:2752 with SMTP id c13-20020ac2530d000000b004e9a9e62752mr5597821lfh.22.1680077154459;
        Wed, 29 Mar 2023 01:05:54 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id s8-20020a19ad48000000b004dc83d04840sm5325670lfd.79.2023.03.29.01.05.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 29 Mar 2023 01:05:54 -0700 (PDT)
Message-ID: <3850df80-d3e9-00a8-df4a-fddd86706373@linaro.org>
Date:   Wed, 29 Mar 2023 10:05:53 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [PATCH v4 1/2] dt-bindings: spi: add loongson spi
Content-Language: en-US
To:     zhuyinbo <zhuyinbo@loongson.cn>, Rob Herring <robh@kernel.org>
Cc:     Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        wanghongliang@loongson.cn, Liu Peibao <liupeibao@loongson.cn>,
        Mark Brown <broonie@kernel.org>,
        Jianmin Lv <lvjianmin@loongson.cn>,
        loongson-kernel@lists.loongnix.cn, linux-kernel@vger.kernel.org,
        linux-spi@vger.kernel.org
References: <20230328112210.23089-1-zhuyinbo@loongson.cn>
 <20230328112210.23089-2-zhuyinbo@loongson.cn>
 <168000761529.3001360.2224316097077012976.robh@kernel.org>
 <4ed4e0b6-63a8-a5b1-fed9-64a6d036459b@loongson.cn>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <4ed4e0b6-63a8-a5b1-fed9-64a6d036459b@loongson.cn>
Content-Type: text/plain; charset=UTF-8
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

On 29/03/2023 03:12, zhuyinbo wrote:
> This patch need depend on
> https://lore.kernel.org/all/20230323025229.2971-1-zhuyinbo@loongson.cn/
> then the spi yaml file will build successful. That changelog had record it.

Thus it cannot be merged now. Do not resend it till dependency hits
mainline (since you decided not to go with Rob's advice).

Best regards,
Krzysztof

