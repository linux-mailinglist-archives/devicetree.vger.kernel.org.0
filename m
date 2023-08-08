Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 40E06774613
	for <lists+devicetree@lfdr.de>; Tue,  8 Aug 2023 20:52:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233592AbjHHSwx (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 8 Aug 2023 14:52:53 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54150 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235852AbjHHSwa (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 8 Aug 2023 14:52:30 -0400
Received: from mail-ej1-x629.google.com (mail-ej1-x629.google.com [IPv6:2a00:1450:4864:20::629])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 929915FDD7
        for <devicetree@vger.kernel.org>; Tue,  8 Aug 2023 10:06:29 -0700 (PDT)
Received: by mail-ej1-x629.google.com with SMTP id a640c23a62f3a-99bed101b70so845317266b.3
        for <devicetree@vger.kernel.org>; Tue, 08 Aug 2023 10:06:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1691514387; x=1692119187;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=U/ENPbWDACTq/gT25pwElyGsToVBQemAbfEgTyGefM8=;
        b=KiZVYnjUU1vKIHhB5HsmiqD4lZSuz2o74EEUASVHAIt6FBa8QHq14UTb4xONXiKgyM
         F86eDQowNmcyGmElTbJCo2Si44K684oPoWIRBrFHc36IwKEzawhozW3yw8rSImAxk87X
         ieMnJ4d5+4FAJMxW/uSvr5SKaeTyf08GPm3KoCUdhoXLIIe3goQfmweiMWK4srN0eJI7
         i1AQ9gsUm0R/YigTdJ7s2DZHWoqtMOYA59cOX4msvE8oSbvJA1SSgatpm83QIiDwQGwA
         xJ1onLxoI8AthowtZIc+0sM2eiYST4JzcIqro+hKWcM69zHk+e2PP6ne3HLHjPUW84cc
         AWGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1691514387; x=1692119187;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=U/ENPbWDACTq/gT25pwElyGsToVBQemAbfEgTyGefM8=;
        b=D9MKh20KDYve9ao+hlCZR0Nc3Nw1o9t9d//6yrcBzt3R7zmknW4AdlJbyy+NhIPByT
         QNthbz4BaSVQyeng3w5yu28Vi0cS8g3DcXcQsvj0JxN9AHV7/tgfFRIexmvvnAkrio/y
         4ialmilKzLWfPNaRcXw9lWJuxVkAASTShmHOZt8C541e0LjiZj8hfJPc0DtdXOxEJpAp
         smN390kDiOIlQ5akijoAdqhOHRsCDtT35CmsPH2Ffvbzl7zLHHlFDeMnGCerrnSLR8U/
         2KxdDWz9TIBtAEEKiI8yP2pcwVwgm+F3w7JaxFHqJxzrDC6m9dEwQ+RWggZYLsQnYGNQ
         k47A==
X-Gm-Message-State: AOJu0YxVO+7lUokH6kpZrPKx7UiZ14ndTqHL14xPhHTVw7gQyGv0l98G
        zX0eHFYwGipNsP7lNBbDEXbNQRNedKvkNM7g7+k=
X-Google-Smtp-Source: AGHT+IH20o5oXu1MzFaME7Vqm8k1vG/h5IULgofIK8nWT0wfuYK0Ryctno9bzeuLujRtR/SQOzZBWA==
X-Received: by 2002:a17:906:d8:b0:99b:ca5d:1466 with SMTP id 24-20020a17090600d800b0099bca5d1466mr11379531eji.66.1691474329221;
        Mon, 07 Aug 2023 22:58:49 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.222.113])
        by smtp.gmail.com with ESMTPSA id e4-20020a1709062c0400b00982d0563b11sm3463474ejh.197.2023.08.07.22.58.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 07 Aug 2023 22:58:48 -0700 (PDT)
Message-ID: <9e235de6-972a-84e5-3e09-f0b07b10e28d@linaro.org>
Date:   Tue, 8 Aug 2023 07:58:46 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.14.0
Subject: Re: [PATCH v4 0/8] Initial Marvell PXA1908 support
Content-Language: en-US
To:     =?UTF-8?Q?Duje_Mihanovi=c4=87?= <duje.mihanovic@skole.hr>,
        Robert Jarzmik <robert.jarzmik@free.fr>,
        Linus Walleij <linus.walleij@linaro.org>,
        Bartosz Golaszewski <brgl@bgdev.pl>,
        Andy Shevchenko <andy@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Lubomir Rintel <lkundrak@v3.sk>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>,
        Kees Cook <keescook@chromium.org>,
        Tony Luck <tony.luck@intel.com>,
        "Guilherme G. Piccoli" <gpiccoli@igalia.com>
Cc:     linux-gpio@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-hardening@vger.kernel.org,
        ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
        afaerber@suse.de,
        Andy Shevchenko <andriy.shevchenko@linux.intel.com>
References: <20230807-pxa1908-lkml-v4-0-cb387d73b452@skole.hr>
 <5723818.DvuYhMxLoT@radijator>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <5723818.DvuYhMxLoT@radijator>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-3.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 07/08/2023 23:02, Duje Mihanović wrote:
> Patch 8/8 is missing because b4 lost connection to my SMTP server while 
> sending it. Should I resend the whole series?
> 
>

Just send patch 8 manually setting in-reply-to= argument to git
send-email. b4 maybe also has this option, I don't know.

Best regards,
Krzysztof

