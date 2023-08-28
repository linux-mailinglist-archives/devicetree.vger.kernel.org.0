Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8E22078A65A
	for <lists+devicetree@lfdr.de>; Mon, 28 Aug 2023 09:17:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229543AbjH1HRB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 28 Aug 2023 03:17:01 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43820 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229654AbjH1HQm (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 28 Aug 2023 03:16:42 -0400
Received: from mail-ej1-x631.google.com (mail-ej1-x631.google.com [IPv6:2a00:1450:4864:20::631])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E060811D
        for <devicetree@vger.kernel.org>; Mon, 28 Aug 2023 00:16:36 -0700 (PDT)
Received: by mail-ej1-x631.google.com with SMTP id a640c23a62f3a-99bdeae1d0aso363248466b.1
        for <devicetree@vger.kernel.org>; Mon, 28 Aug 2023 00:16:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1693206995; x=1693811795;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=hp/XWLpiEUgnU4ewp+U12wgdua4CvKI8JPQCjHO/yKw=;
        b=xanC6T0ZvDvg9QZZGlQpFK52hRIe7CIP9jRQN+5MmuPrzxvENUlhlX4ht9ZAZE6GG9
         yxpBHNOFFF5sX7fRM9e2s2KefgQ/hfwDdDO2+FnSVtQA2x3wZRzzoDbDLHthf9ihVrgX
         ZuthEjdVBNLLjTyeebf6SxxpAunK90LGMI+Q1HItZa7sIUHp3IbknaNk8bEE/QWPowyn
         w/u/EVj+1ZE0liiAhQ/ilzEv4oXQChNWMLhzIsoH+/4O0kK42xtL7lM46drQF5XxEiTg
         dftq4JHk7ZlEjRyoazFxpWnc94k2hpGc3cpMcXGWyKlnqEOmNVwDmSPU7oeC0UTl3JuG
         Wfgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1693206995; x=1693811795;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=hp/XWLpiEUgnU4ewp+U12wgdua4CvKI8JPQCjHO/yKw=;
        b=ZA623AJkn0M1ZYu+A5t1q75VKWt8pRakEGYu7BfkhW2kaf1zudJk8FaUFVX2QUJK+Z
         NYpNGJfs/wFo7XZKi2bltdqC3OIZjPT7uPD5HZnx5BseqtU6AoK3c7QuHo/42eGitP8d
         yLp3Sw7HQ42wvDzc5ICVdactijB2KE5nG5WRTUTm0Asapma1VsVA5KkVBbZbU8fYwFYg
         YMVQom14Ze946O23WRqBfSv60KuomdZYlxGkls+CMh/a2C0ZJCRjDJZJ11y/+DMCVuxW
         9xlFvNp6rowp16/1/st/tfU5s0x3KwH9HeA4OGnryiVBdB88wkf8SDPixzCj3oXFeIaz
         Oa/w==
X-Gm-Message-State: AOJu0Yzwu3jvADtnVyXetczr5EnJJ6CG0w1DOWctyg7te/Hxpa8gdWDT
        pU+aG0jTxfkxXtSTQHAJ6Qwe8w==
X-Google-Smtp-Source: AGHT+IHyMOpJrZ+Qzlb1fHwd1TbXXH7HRzRkGSV9ysIYUu/tn7Jd9mzMZNE7BODMEr/mwjXic/LV0g==
X-Received: by 2002:a17:907:7714:b0:99b:4a29:fb6a with SMTP id kw20-20020a170907771400b0099b4a29fb6amr19071209ejc.59.1693206995315;
        Mon, 28 Aug 2023 00:16:35 -0700 (PDT)
Received: from [192.168.0.22] ([77.252.47.225])
        by smtp.gmail.com with ESMTPSA id q4-20020a170906144400b00992f81122e1sm4292083ejc.21.2023.08.28.00.16.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 28 Aug 2023 00:16:34 -0700 (PDT)
Message-ID: <683df184-6688-f006-c4d8-fa7000b7b771@linaro.org>
Date:   Mon, 28 Aug 2023 09:16:33 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.14.0
Subject: Re: [RFC v4 0/4] StarFive's Pulse Width Modulation driver support
Content-Language: en-US
To:     Hal Feng <hal.feng@starfivetech.com>,
        Conor Dooley <conor@kernel.org>,
        William Qiu <william.qiu@starfivetech.com>
Cc:     devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-riscv@lists.infradead.org, linux-pwm@vger.kernel.org,
        Emil Renner Berthing <kernel@esmil.dk>,
        Rob Herring <robh+dt@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Thierry Reding <thierry.reding@gmail.com>,
        =?UTF-8?Q?Uwe_Kleine-K=c3=b6nig?= <u.kleine-koenig@pengutronix.de>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Palmer Dabbelt <palmer@dabbelt.com>,
        Albert Ou <aou@eecs.berkeley.edu>
References: <20230825081328.204442-1-william.qiu@starfivetech.com>
 <20230825-exclusion-doing-93532be4fa97@spud>
 <a49737f0-0a09-b558-ea06-b3d47a6e4240@starfivetech.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <a49737f0-0a09-b558-ea06-b3d47a6e4240@starfivetech.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 28/08/2023 09:12, Hal Feng wrote:
> On Fri, 25 Aug 2023 16:06:12 +0100, Conor Dooley wrote:
>> On Fri, Aug 25, 2023 at 04:13:24PM +0800, William Qiu wrote:
>>> Hi,
>>>
>>> This patchset adds initial rudimentary support for the StarFive
>>> Pulse Width Modulation controller driver. And this driver will
>>> be used in StarFive's VisionFive 2 board.The first patch add
>>> Documentations for the device and Patch 2 adds device probe for
>>> the module.
>>>
>>> Changes v3->v4:
>>> - Rebased to v6.5rc7.
>>> - Sorted the header files in alphabetic order.
>>> - Changed iowrite32() to writel().
>>> - Added a way to turn off.
>>> - Moified polarity inversion implementation.
>>> - Added 7100 support.
>>> - Added dts patches.
>>> - Used the various helpers in linux/math.h.
>>> - Corrected formatting problems.
>>> - Renamed dtbinding  to 'starfive,jh7100-pwm.yaml'.
>>> - Dropped the redundant code.
>>>
>>> Changes v2->v3:
>>> - Fixed some formatting issues.
>>>
>>> Changes v1->v2:
>>> - Renamed the dt-binding 'pwm-starfive.yaml' to 'starfive,jh7110-pwm.yaml'.
>>> - Dropped the compatible's Items.
>>> - Dropped the unuse defines.
>>> - Modified the code to follow the Linux coding style.
>>> - Changed return value to dev_err_probe.
>>> - Dropped the unnecessary local variable.
>>>
>>> The patch series is based on v6.5rc7.
>>
>> Out of curiosity, why is this series still an RFC?
> 
> There was no comments received in v4. So William resend it and
> request for comments.

The question was: why he requests for comments?

RFC means *it should not be merged, it is not ready*.

Best regards,
Krzysztof

