Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DBAAE65DFFD
	for <lists+devicetree@lfdr.de>; Wed,  4 Jan 2023 23:30:11 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240301AbjADWaJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 4 Jan 2023 17:30:09 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47808 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229464AbjADWaG (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 4 Jan 2023 17:30:06 -0500
Received: from mail-wm1-x335.google.com (mail-wm1-x335.google.com [IPv6:2a00:1450:4864:20::335])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 75A8F3FA29
        for <devicetree@vger.kernel.org>; Wed,  4 Jan 2023 14:30:03 -0800 (PST)
Received: by mail-wm1-x335.google.com with SMTP id k26-20020a05600c1c9a00b003d972646a7dso24415506wms.5
        for <devicetree@vger.kernel.org>; Wed, 04 Jan 2023 14:30:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=kiiu/Seb82UTPCSu/8Bs7i2e8eXl5Aa8bi8QlsNKuis=;
        b=BIDg1fcFkWUBfF69/HvdlnWlqGKoISpfZDgqIHythOcg1wBn/HejNRvo49F3OQ09ww
         dktSem0F4w4G1o1uskYQuQxUV0CxnamHTsmnnYlPAbwEt4QFp7GdZboo30Sou5DLT6xx
         kYxXizmr7JR9ZHWjNQspCHLlChfJX+UbgPlXxQaIWYOXbO1fJwQ8q0NZYhOgexbQw+tF
         r03C8hARvYz4QW1Zb95TMsSn/9UqX0OzuOZznvnmL7TtQw/Pq3ez8w9SjVorTsb7S+6v
         /ZSbBJD4RHjbAqbxBPTxbMV+ofdWSfBuCc5mb2Fl3v4dwXJBYsaMXdFJaVcSR5uEFJ5p
         FrdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=kiiu/Seb82UTPCSu/8Bs7i2e8eXl5Aa8bi8QlsNKuis=;
        b=HCbGNs8kXzS2SKEqy/GrSWBTkau0faqO1OizIpofskox+fqzUeQEwyvtN1NidxizVI
         RP1/LtaQxMlcLzhOQelKUxBlu6jayKo1uN7CoJc96Gnvr18HB26mZSS1abXl84MblbWl
         e6ys11kZXpq2yw2mCEfOjW/4ZdKSpZqtw8SPAE566cpTzYlR6sCUHpT6+VGXWUVATCoy
         Dv3sErlpcFC0zxK2cz3gG6x4c4ik4zxW+i9A00hUn6fy5sQ4tcXB0kqlxPoZXXqnESBy
         mcXyDPvMTADHuP9vyhQY/5U4rJm3ePSxJhN37bYjUx7vySik+TtTq+EO/NsH1njZTmLr
         U+tQ==
X-Gm-Message-State: AFqh2krZrE1Oif//3K8gfqr3+U7BCz6W69YqYTulHGGmUvzhlYUa6kmG
        UvrP9HIweoDc3AHDUxMJmdoAfw==
X-Google-Smtp-Source: AMrXdXulBTZ0uWBN5rhjfCWeQ571oYcrzq/+b5U8l9PLgxXI4VkY4BZIi+I9BlsE1N8K8rldlrArEQ==
X-Received: by 2002:a05:600c:5006:b0:3d2:3eda:dd1 with SMTP id n6-20020a05600c500600b003d23eda0dd1mr35240937wmr.17.1672871401974;
        Wed, 04 Jan 2023 14:30:01 -0800 (PST)
Received: from [192.168.10.46] (146725694.box.freepro.com. [130.180.211.218])
        by smtp.googlemail.com with ESMTPSA id m7-20020a05600c3b0700b003cfd4cf0761sm267118wms.1.2023.01.04.14.30.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 04 Jan 2023 14:30:01 -0800 (PST)
Message-ID: <8fa6b106-5670-247c-08d2-2740b1b00979@linaro.org>
Date:   Wed, 4 Jan 2023 23:30:00 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Subject: Re: [PATCH v6 0/3] Improve CLOCK_EVT_FEAT_C3STOP feature setting
Content-Language: en-US
To:     Anup Patel <apatel@ventanamicro.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Palmer Dabbelt <palmer@dabbelt.com>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Thomas Gleixner <tglx@linutronix.de>
Cc:     Andrew Jones <ajones@ventanamicro.com>,
        Atish Patra <atishp@atishpatra.org>,
        Samuel Holland <samuel@sholland.org>,
        Conor Dooley <conor.dooley@microchip.com>,
        Anup Patel <anup@brainfault.org>, devicetree@vger.kernel.org,
        linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20230103141102.772228-1-apatel@ventanamicro.com>
From:   Daniel Lezcano <daniel.lezcano@linaro.org>
In-Reply-To: <20230103141102.772228-1-apatel@ventanamicro.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-3.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 03/01/2023 15:10, Anup Patel wrote:
> This series improves the RISC-V timer driver to set CLOCK_EVT_FEAT_C3STOP
> feature based on RISC-V platform capabilities.
> 
> These patches can also be found in riscv_timer_dt_imp_v6 branch at:
> https://github.com/avpatel/linux.git
> 
> Changes since v5:
>   - Rebased on Linux-6.2-rc2

Applied, thanks

-- 
<http://www.linaro.org/> Linaro.org │ Open source software for ARM SoCs

Follow Linaro:  <http://www.facebook.com/pages/Linaro> Facebook |
<http://twitter.com/#!/linaroorg> Twitter |
<http://www.linaro.org/linaro-blog/> Blog

