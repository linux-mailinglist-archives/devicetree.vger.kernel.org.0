Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 494CC6AC1D3
	for <lists+devicetree@lfdr.de>; Mon,  6 Mar 2023 14:50:11 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229705AbjCFNuB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 6 Mar 2023 08:50:01 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41280 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229587AbjCFNuA (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 6 Mar 2023 08:50:00 -0500
Received: from mail-wr1-x432.google.com (mail-wr1-x432.google.com [IPv6:2a00:1450:4864:20::432])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 74AED30CA
        for <devicetree@vger.kernel.org>; Mon,  6 Mar 2023 05:49:58 -0800 (PST)
Received: by mail-wr1-x432.google.com with SMTP id r18so8894821wrx.1
        for <devicetree@vger.kernel.org>; Mon, 06 Mar 2023 05:49:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1678110597;
        h=content-transfer-encoding:in-reply-to:organization:references:cc:to
         :content-language:subject:reply-to:from:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=4jttNTsMYo3hO4zmFRMt6lMJ/dsTxQ98EZIAfYPHck8=;
        b=RcC4brTzUz+W2jOBplkTuiwHCsvXSckMpm3gt81QtV+tuX4kXk+sEpyAhEsrvyBtij
         yUSrw7I/kxyny+vei8JMAVj7HVC4qZW8KO5hme8Bl9s0HrsbpUqvnqSEipDou/xPap9c
         HRrdFu38BjYUFG1fDNbQBds/ndtGpZmPyNGuFz09POQcGf+IMi7Y5yVTq2yK62WxhW/d
         EGVA1y+ONOCTQsStRAu/y+vVqQAXJQRQ6HIGEeVDuDgHp1KUE86hoj/bqiQglpYQ96Ll
         +T7OIE/t1/qze9yeUjFBMwGQ3lsJPL/T2daCLccXlh/XrqXh6c2HRo3GGNYdOQM8Ik/0
         loVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678110597;
        h=content-transfer-encoding:in-reply-to:organization:references:cc:to
         :content-language:subject:reply-to:from:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=4jttNTsMYo3hO4zmFRMt6lMJ/dsTxQ98EZIAfYPHck8=;
        b=qZt7gmDXhSn8EciREN7lmg76Nf0glOXzcs5sDvs+cWAjUrsoaW3LDyi+fxvKS3kNQ0
         RhAW8cfBKE4CsHJquJqsSvv3ZaWE9rSuM1TkWanqg2xNLS+89pUlmT2vyKRtz59BaLKx
         JRsoqMh7aoA/Hnb3/w8Q+93VqSQmMaxf/wkSgJ2gQ9iRNelBC6vosWIyyRg7GgSgluaP
         s6+vHznOkJDnrneASy1plnmKiQvPoT+5wOkUkkr2VeyGP3EWaO9bbuZLhrtWEh4NNL09
         lOv4SxtlW8tmA/Y8muge8NdLyCELVZEXLKa+YwMRTLGIlCziZSucnGdVIQ704eznYDPY
         qeHw==
X-Gm-Message-State: AO0yUKX01fHXz6NnB670ylYol+GixxYAa6i6MUHhzf95ZCoTchPUuX7+
        xyAxNr9ZkSYSJGQMm0GLgeP3XA==
X-Google-Smtp-Source: AK7set83efNzzJIPdS6ZaS0rm2KQxwFZZmA9X2pC+KVtPznDTxzOM6N0acKc02PI/7R7IdprelQF0A==
X-Received: by 2002:a5d:62c3:0:b0:2c5:5237:3b21 with SMTP id o3-20020a5d62c3000000b002c552373b21mr7941779wrv.69.1678110596959;
        Mon, 06 Mar 2023 05:49:56 -0800 (PST)
Received: from ?IPV6:2a01:e0a:982:cbb0:cd23:1024:19b6:1a10? ([2a01:e0a:982:cbb0:cd23:1024:19b6:1a10])
        by smtp.gmail.com with ESMTPSA id j29-20020a5d6e5d000000b002c59f18674asm9902098wrz.22.2023.03.06.05.49.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 06 Mar 2023 05:49:56 -0800 (PST)
Message-ID: <2d9e01df-0047-98bc-f1e7-fa860d92c254@linaro.org>
Date:   Mon, 6 Mar 2023 14:49:55 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.2
From:   neil.armstrong@linaro.org
Reply-To: neil.armstrong@linaro.org
Subject: Re: [PATCH v1 1/3] meson: pinctrl: use CONFIG_PINCTRL_A1 with
 CONFIG_ARM
Content-Language: en-US
To:     Linus Walleij <linus.walleij@linaro.org>,
        Alexey Romanov <avromanov@sberdevices.ru>
Cc:     robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        khilman@baylibre.com, jbrunet@baylibre.com,
        martin.blumenstingl@googlemail.com, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org,
        kernel@sberdevices.ru
References: <20230222115020.55867-1-avromanov@sberdevices.ru>
 <20230222115020.55867-2-avromanov@sberdevices.ru>
 <CACRpkdbWubk3A3qYuYqDc4OBGP6T7TaKwFeW17CwAzPvttk=WQ@mail.gmail.com>
Organization: Linaro Developer Services
In-Reply-To: <CACRpkdbWubk3A3qYuYqDc4OBGP6T7TaKwFeW17CwAzPvttk=WQ@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Linus,

On 06/03/2023 14:45, Linus Walleij wrote:
> On Wed, Feb 22, 2023 at 12:50 PM Alexey Romanov
> <avromanov@sberdevices.ru> wrote:
> 
>> Tested A1 pinctrl support for ARM and it works.
>>
>> Signed-off-by: Alexey Romanov <avromanov@sberdevices.ru>
> 
> This patch applied to the pinctrl tree for v6.4.

Erf, this serie is something we would avoid, so no need to apply it for v6.4

> 
> Have you considered also adding || COMPILE_TEST?

It would be great to have || COMPILE_TEST for sure

Neil

> 
> Or does that break builds?
> 
> Yours,
> Linus Walleij

