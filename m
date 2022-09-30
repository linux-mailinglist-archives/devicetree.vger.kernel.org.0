Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 451E75F0A87
	for <lists+devicetree@lfdr.de>; Fri, 30 Sep 2022 13:32:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231252AbiI3Lce (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 30 Sep 2022 07:32:34 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43018 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230193AbiI3LcK (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 30 Sep 2022 07:32:10 -0400
Received: from mail-lf1-x134.google.com (mail-lf1-x134.google.com [IPv6:2a00:1450:4864:20::134])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E02AD1032D8
        for <devicetree@vger.kernel.org>; Fri, 30 Sep 2022 04:22:55 -0700 (PDT)
Received: by mail-lf1-x134.google.com with SMTP id i26so6365766lfp.11
        for <devicetree@vger.kernel.org>; Fri, 30 Sep 2022 04:22:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=olwAjHoumqUjw9lGDWhVpKlTWEmE2o9jVcYAXDcHQHg=;
        b=t07aS2xSWqO60oG2FsdL262bo9zDBNQ+TIfnubA5o9yzDcPbAcyN++6N5g+mYY2rm0
         rNIrQrNC+Sng9fn+pUDoVCbPRCqXlMhu7hIduyk7O6gGTPGdkplExVPj1v1kIwJkk0tF
         nj4ZPGLh5maYOkUistyC3EGQJkVM75fd0PZuiy3ROCv2KhcTxjvA+i7FR/WjNKLB0xvq
         +LcfqBaDZyVwhG/JQTulgRlwFVggmEfy6EbaiX06ae2inObekUQp33ip7+vk3LjeDml0
         ddQMIWvjMopGYpRaRsSfhKkcUmGP0MOZ0j5X4pSzrnRZDYV1RU6Ny5FOS0Hu7atB3dfS
         9QuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=olwAjHoumqUjw9lGDWhVpKlTWEmE2o9jVcYAXDcHQHg=;
        b=vBSdGP1DN0U5TGn088TSEcltZpsAjD//PgKxkPHUdch7iKplpT+PtXqGzVHM+T/owz
         ybodUPFLCUqRW+eS3JYL5z4i+ScfSROAF/bn7msEUawk9zoewqeJeBeo3+h717qUt/MU
         WVg9Y2ynycEkzFSmUQLKcAl/na5mfuyguX0V02efx/zVgul64sMDLC3sJP3qT7AC3o+X
         OrmFYvteG3Y0jqlOjSuNp5D3RRj9Qw3SBCQ6OWEXZf9nkJCFlFZXiBNnpE6YxBwjOR3/
         H/3IVp+kWw6qkmhrxK/7gXA7xyQclrxxzWUcVMYiO5psi452xiHgjReT/a+pBEZAiIWt
         zQkw==
X-Gm-Message-State: ACrzQf1M4orBoHUNhNnZx0SQrzE82ri1EJE/kWyCnwPzri5eqHFGe0zy
        BEX0Dy8a70X8w4J32QMBjv77Pw==
X-Google-Smtp-Source: AMsMyM7NEPzsg5WNkOctCoFuHB4s3AMcWguXCPh4rsF4DEngfxkiNjt1Zhv4EmpXJgI5GvsStN7wwA==
X-Received: by 2002:ac2:4e14:0:b0:49b:67f3:e450 with SMTP id e20-20020ac24e14000000b0049b67f3e450mr3372325lfr.591.1664536974252;
        Fri, 30 Sep 2022 04:22:54 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id d7-20020ac25ec7000000b004949a8df775sm269136lfq.33.2022.09.30.04.22.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 30 Sep 2022 04:22:53 -0700 (PDT)
Message-ID: <dba43c3d-83a6-74c2-f2a5-0d7a02154745@linaro.org>
Date:   Fri, 30 Sep 2022 13:22:52 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.0
Subject: Re: [PATCH] RM: dts: stihxxx-b2120: fix polarity of reset line of
 tsin0 port
Content-Language: en-US
To:     Dmitry Torokhov <dmitry.torokhov@gmail.com>,
        Patrice Chotard <patrice.chotard@foss.st.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Alain Volmat <avolmat@me.com>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <YzXuU/60TI3tc6ii@google.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <YzXuU/60TI3tc6ii@google.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 29/09/2022 21:13, Dmitry Torokhov wrote:
> According to c8sectpfe driver code we first drive reset line low and
> then high to reset the port, therefore the reset line is supposed to
> be annotated as "active low". This will be important when we convert
> the driver to gpiod API.
> 
> Signed-off-by: Dmitry Torokhov <dmitry.torokhov@gmail.com>

Typo in subject - s/RM/ARM/

Best regards,
Krzysztof

