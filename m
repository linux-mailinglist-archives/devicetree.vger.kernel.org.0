Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 36DF959E5F9
	for <lists+devicetree@lfdr.de>; Tue, 23 Aug 2022 17:27:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S243654AbiHWP1S (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 23 Aug 2022 11:27:18 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52730 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S243634AbiHWP1C (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 23 Aug 2022 11:27:02 -0400
Received: from mail-lj1-x232.google.com (mail-lj1-x232.google.com [IPv6:2a00:1450:4864:20::232])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CE35CB4423
        for <devicetree@vger.kernel.org>; Tue, 23 Aug 2022 04:06:29 -0700 (PDT)
Received: by mail-lj1-x232.google.com with SMTP id l21so13163601ljj.2
        for <devicetree@vger.kernel.org>; Tue, 23 Aug 2022 04:06:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc;
        bh=yGKM2I7UEt0vdW0TbqK/IUc9qD27rValEiMJNQwZVjg=;
        b=ufPztWR2ngWfrbxMEAb6f3dXCo0gFdTtTmwimLCWzMYoKe7v37RMteWpmqKZpPAkAV
         1Lh0t8V9UnrpAUDwKqdvRnCVKEGY3NN7N4VjCyEP6hdzmUrsI76S+hNr31CmBbAVbXEz
         vn06k98hKekCkp9zzj9FAKkeI3VUvEwfbIOx4PKHWJXXCp6W/2Cva8qK/4WT3FJRB2tH
         PHqQpIPkhD0JrIuAf1kTUp6dZ+NpXqpEQLXk7BC97fPIxFKAD93CNaoORb6IyGYIzGkv
         2qprWXTL9R2go6TJVZrE2U1xAB1zGO5u1wR33qSfiIZ2Y39KeXuv6s4RsEtzVpwnXqZG
         xP1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc;
        bh=yGKM2I7UEt0vdW0TbqK/IUc9qD27rValEiMJNQwZVjg=;
        b=Q/Vt7M5rcxSCfnmTjpRus4rTNO7BNats33sO8UoKel+rNyuFBhsuh7anDGwn7UUhUp
         vFS6gUKaUvgOi1KrZLLTG8eiWdGwyD02ICnUWMi6QSRjQ27qE+lvlzEpZJ1k5SHmfB3j
         xFgQwXEipQrqnRL6I+06NOOjWcCylwtMtdphgGNa7sj+hP3pdw0TpHn4CB9FM4knWluP
         qw8yLQ8hwiIbuQkLSqZhVkBdf+94Q7e6c9YpsamEo5rARmg0S3UAx6+Q0VooNjlaQYst
         DL1nigZwtuQ3FJXHcNQBk5dXTe+iAWM84AsvxLdzQ1k138fom2akLgePd5tK8bChc8h2
         A8rg==
X-Gm-Message-State: ACgBeo0iJ4QKYxY6iXp5Hms1DgnaU27/kzCNn24s/S8EcjCp9Rw6tP/e
        AOaP2S7EKm8tNAHAYWO87yT8OA==
X-Google-Smtp-Source: AA6agR7LQZqic18Ny4TRgU5tXACZsr/Um9gWa1WzwzvlFs+fOfXqJ4LO1H1vqpbF9RIuGuN6WEDzYQ==
X-Received: by 2002:a05:651c:b98:b0:261:ab8f:3905 with SMTP id bg24-20020a05651c0b9800b00261ab8f3905mr6910952ljb.518.1661252751496;
        Tue, 23 Aug 2022 04:05:51 -0700 (PDT)
Received: from [192.168.0.11] (89-27-92-210.bb.dnainternet.fi. [89.27.92.210])
        by smtp.gmail.com with ESMTPSA id a17-20020a19ca11000000b00492b679d5aesm1722089lfg.81.2022.08.23.04.05.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 23 Aug 2022 04:05:50 -0700 (PDT)
Message-ID: <04f61840-451f-c323-938f-ca91bc65e854@linaro.org>
Date:   Tue, 23 Aug 2022 14:05:49 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Subject: Re: [PATCH v4 1/8] dt-bindings: arm: fsl: Rename compatibles for
 Kontron i.MX8MM SoM/board
Content-Language: en-US
To:     Frieder Schrempf <frieder@fris.de>, devicetree@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-kernel@vger.kernel.org, Li Yang <leoyang.li@nxp.com>,
        Rob Herring <robh+dt@kernel.org>,
        Shawn Guo <shawnguo@kernel.org>
Cc:     linux-arm-kernel@lists.infradead.org,
        Frieder Schrempf <frieder.schrempf@kontron.de>,
        Alexander Stein <alexander.stein@ew.tq-group.com>,
        Denys Drozdov <denys.drozdov@toradex.com>,
        Fabio Estevam <festevam@denx.de>,
        Marcel Ziswiler <marcel.ziswiler@toradex.com>,
        Marek Vasut <marex@denx.de>,
        Matthias Schiffer <matthias.schiffer@tq-group.com>,
        Max Krummenacher <max.krummenacher@toradex.com>,
        Rob Herring <robh@kernel.org>
References: <20220822080357.24478-1-frieder@fris.de>
 <20220822080357.24478-2-frieder@fris.de>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220822080357.24478-2-frieder@fris.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 22/08/2022 11:03, Frieder Schrempf wrote:
> From: Frieder Schrempf <frieder.schrempf@kontron.de>
> 
> This updates the bindings in order to use names for the boards that
> follow the latest convention used by Kontron marketing.
> 
> By updating we make sure, that we can maintain this more easily in
> future and make sure that the proper devicetree can be selected for
> the hardware.
> 
> Signed-off-by: Frieder Schrempf <frieder.schrempf@kontron.de>


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof
