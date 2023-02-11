Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5B3DE69307A
	for <lists+devicetree@lfdr.de>; Sat, 11 Feb 2023 12:45:45 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229648AbjBKLpo (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 11 Feb 2023 06:45:44 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55578 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229532AbjBKLpn (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 11 Feb 2023 06:45:43 -0500
Received: from mail-wm1-x335.google.com (mail-wm1-x335.google.com [IPv6:2a00:1450:4864:20::335])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 31BDC30198
        for <devicetree@vger.kernel.org>; Sat, 11 Feb 2023 03:45:42 -0800 (PST)
Received: by mail-wm1-x335.google.com with SMTP id bg26so5676651wmb.0
        for <devicetree@vger.kernel.org>; Sat, 11 Feb 2023 03:45:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=YBt/taX/G2QM9vqdF1bVvJdxUqwAOZJhe/1/EDeKocU=;
        b=bm+SgZLe5NrZbieNnQtiFwE2K/3AO7jW9s6TNjrTRl7xQXARygAM00tiwScxCAdKdp
         Zn4qD7ERgelkBxNranc8LgLP1o3VP47i57uV2s4JeJIVleII4myw+DD0FH0QdHtgI0Z2
         GS/ZIEepI+P/jAG/0EQ0VAPoUDx1wnHez7K9dwsCdkf04Xj4wQZVeRwpBq0xILywIUBu
         MtMBQ8Z/IWMf0lw55H1LsBnHIP5aGtZRApMpu9oR4ZU0xvmASfjLVN9b7jJ2cg0iUfSA
         jftIshQ3ikf0J4zJ+lrsey27WWjbMZtVOleStnFqgMW5pdSFQOhI/teHJl3HmFi4+IxN
         gbRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=YBt/taX/G2QM9vqdF1bVvJdxUqwAOZJhe/1/EDeKocU=;
        b=S7PCExuSJ4OUJY1bpaFDrCsPubgLcMb9c4mDj/rNgB8d2geATb3uYqbRTfRH3XhFzJ
         UAceCCUsjnw7X8mELym/xqD/ER+W1LHvM0WP5n2MS71En4QE+Jv4l0Z4kKDydd9Aldvs
         TZu1DqfJm3I1J4YK8PM+OqVmJV8pdtPOn5J+BHJOoCCtz3SkZDKM6UrXIDG8ekKU5JKe
         8VmtZF/41HUn+YPmDi4jL9KW0n3ELbM1m2cRZthUiFIYTttul7n0/3utYA7JoNGSrUPk
         7GEZfuwZPLnc/kEAz2ElQxIaKhD7b2EP2MSaJK5dLBSXpCN06KDI40Q3vQFWhEH+iO1o
         mejg==
X-Gm-Message-State: AO0yUKWDHpZ5yDF4O6FVeTqLf5gI85KfCw5Z7utB0hKoldCItYdgf0aJ
        69Gj6D9aY6dDP6tH4GGF6p3efA==
X-Google-Smtp-Source: AK7set8wFLO8lnOLUVnh8/DaU2KX5NRrPqJQaFHl7oUA/BSOjBKLRCvpLIgv31uSO0JWL0YMO/wb4Q==
X-Received: by 2002:a05:600c:4da4:b0:3dc:37d0:e9df with SMTP id v36-20020a05600c4da400b003dc37d0e9dfmr14605408wmp.14.1676115940766;
        Sat, 11 Feb 2023 03:45:40 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id bi5-20020a05600c3d8500b003d9aa76dc6asm11696689wmb.0.2023.02.11.03.45.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 11 Feb 2023 03:45:40 -0800 (PST)
Message-ID: <6413db4a-b62f-2ebe-dc40-9f44bf6e54e3@linaro.org>
Date:   Sat, 11 Feb 2023 12:45:38 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Subject: =?UTF-8?Q?Re=3a_=5bPATCH_4/6=5d_dt-bindings=3a_arm=3a_fsl=3a_Add_Y_?=
 =?UTF-8?Q?Soft_IOTA=c2=a0Phoenix=2c_Lynx=2c_Pegasus_and_Pegasus+?=
Content-Language: en-US
To:     =?UTF-8?B?TWljaGFsIFZva8OhxI0=?= <michal.vokac@ysoft.com>,
        Rob Herring <robh+dt@kernel.org>,
        Shawn Guo <shawnguo@kernel.org>
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Arnd Bergmann <arnd@arndb.de>, Olof Johansson <olof@lixom.net>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
References: <20230210154855.3086900-1-michal.vokac@ysoft.com>
 <20230210154855.3086900-5-michal.vokac@ysoft.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230210154855.3086900-5-michal.vokac@ysoft.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-3.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 10/02/2023 16:48, Michal Vokáč wrote:
> These i.MX6 boards are based on a facelifted PCB from the previous designs.
> Routing for some unused parts was completely removed (uSD card, PCIe, audio
> codec) and some new parts were added (supercap backed RTC, secure element,
> PWM audio, GPIO button).
> 
> Signed-off-by: Michal Vokáč <michal.vokac@ysoft.com>
> ---
>  Documentation/devicetree/bindings/arm/fsl.yaml | 4 ++++


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

