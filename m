Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (unknown [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7A0495F3D05
	for <lists+devicetree@lfdr.de>; Tue,  4 Oct 2022 09:05:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229730AbiJDHFY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 4 Oct 2022 03:05:24 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46478 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229612AbiJDHFX (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 4 Oct 2022 03:05:23 -0400
Received: from mail-lj1-x22c.google.com (mail-lj1-x22c.google.com [IPv6:2a00:1450:4864:20::22c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4ACBF13CD5
        for <devicetree@vger.kernel.org>; Tue,  4 Oct 2022 00:05:21 -0700 (PDT)
Received: by mail-lj1-x22c.google.com with SMTP id q16so163218ljh.4
        for <devicetree@vger.kernel.org>; Tue, 04 Oct 2022 00:05:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=jzMalaKHtcyjpdkJ9aqJfOJDj5m18SqEdVKlufQo18w=;
        b=JJKfdYfxegSnk6O7MG4eYy5u/GR/WGyCZ2qqTIxz4RwfkNj938Jlec71aSK+5kEkVz
         U4ndYfH6xLct09CrNFXcB0ldLU2+xGgSuBpSgI7I49XiXVsQ5hTsZDjiVkHQveSwnQqi
         XzjEeFRzcusi83nHO3Lj8AIzEJMache0FSLRknq3+Zy/eGujTQrjKZQhnYRdBb2b7iTL
         rA7NbL9Aa0GhCKsPSDqpi8DPqDf4oF1SODRGPQher05RS+udoRlpTTBHRWGQzf9b+lA0
         5GmcKhlPN7heozLRlNZZyr0+Ls6axhm3og1cNPRYLePRbEx7x99vn0Cp9PNSG+vnKdGM
         4Apw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=jzMalaKHtcyjpdkJ9aqJfOJDj5m18SqEdVKlufQo18w=;
        b=wIrEeKO/XyzfhUjQzEj0JgNAmwg6NYcaTgYs8qWcHEpmBDvjOzsX+YiA0S4A2BOKN5
         9aV5S8+ZVOBChPZoO/XOB7EJn2UQYwdA2ch553X+Bd19/9mJmvuG2Cg6WdRlIRhIF7Ie
         a6nLMsII6A/BXcd2uAX5ClNDzsdE6z+W9ZujQPIWl2d9HlpaWlOWpgVW2s/mz92N7u+a
         KeIWnSBDsSIxpaA/ZfUXUcvtFghn9OW0DBPa8rtJfK3fnROMw5zisHIjptwvjqIZB3KB
         FXU6Iduv7CcK9qDMuEe5d7urSa/FN0vjydCK/uDD9W5efaur70rtFCcV4EUr6h1AlWod
         Rebg==
X-Gm-Message-State: ACrzQf0zRzqnXuO6drKUFCN2mMcEXu4+SxTofbB0Fr00W4EVpQvnMK5u
        uzpd8G/0UEcXJW+7Fp2MtTTOPA==
X-Google-Smtp-Source: AMsMyM7nwhROyPipuTPgoJikv8ubv2vKDxfJ3XRBgzzopGfQqZ6jJFYV7q3gM0rEBXXy4l5rM+6zfQ==
X-Received: by 2002:a2e:be90:0:b0:26c:4622:36db with SMTP id a16-20020a2ebe90000000b0026c462236dbmr7408515ljr.448.1664867119685;
        Tue, 04 Oct 2022 00:05:19 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id bi12-20020a0565120e8c00b00492e3c8a986sm1782821lfb.264.2022.10.04.00.05.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 04 Oct 2022 00:05:19 -0700 (PDT)
Message-ID: <9d6651cb-85cb-1616-9f7f-d626ce8fd616@linaro.org>
Date:   Tue, 4 Oct 2022 09:05:18 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.0
Subject: Re: [PATCH v3 2/2] dt-bindings: arm: add xiaomi,sagit board based on
 msm8998 chip
Content-Language: en-US
To:     Dzmitry Sankouski <dsankouski@gmail.com>,
        linux-kernel@vger.kernel.org
Cc:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        "open list:ARM/QUALCOMM SUPPORT" <linux-arm-msm@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>
References: <20221003185500.928608-1-dsankouski@gmail.com>
 <20221003185500.928608-3-dsankouski@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221003185500.928608-3-dsankouski@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 03/10/2022 20:55, Dzmitry Sankouski wrote:
> add xiaomi,sagit board (Xiaomi Mi 6) binding

Start with capital letter and finish with full-stop.

> 
> Signed-off-by: Dzmitry Sankouski <dsankouski@gmail.com>
> ---
> Changes for v3:
> - remove unused 'sagit' compatible line

With commit fixes:

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

