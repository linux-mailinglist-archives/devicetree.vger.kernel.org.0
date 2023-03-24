Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5CAA66C7A28
	for <lists+devicetree@lfdr.de>; Fri, 24 Mar 2023 09:45:52 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229921AbjCXIpu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 24 Mar 2023 04:45:50 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41784 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231460AbjCXIps (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 24 Mar 2023 04:45:48 -0400
Received: from mail-ed1-x536.google.com (mail-ed1-x536.google.com [IPv6:2a00:1450:4864:20::536])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 285154224
        for <devicetree@vger.kernel.org>; Fri, 24 Mar 2023 01:45:46 -0700 (PDT)
Received: by mail-ed1-x536.google.com with SMTP id cn12so4939748edb.4
        for <devicetree@vger.kernel.org>; Fri, 24 Mar 2023 01:45:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1679647544;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=fk/3/3DIvawnE3jueJhVp1irCLDgjRQLsPqOm9m9zFY=;
        b=g4xcmZD7cpX7ajUFVMrQHVHkK8dDi+aGBHhtoLKtZWoe2Bo2NBaDV8svN46KDdtFqq
         +Vx5JvyTH/G7Zfxsnz2ZLCjX+WEkhoMtgsNcoH9LDuAQ4F+tcYUbc0Uzzxe2/SRnpNzl
         bOpPqvHfX4Tzotpit4fE60KGY9B1pzzDIsqU1HVY6wqyNokqQPfmi967DXKZY4SxshIO
         ES7rb5WKf6GM0SaImWd1Y7G3qahPP6FYm/T5xGKQACGyrPCQt8+Npqzg1wUWx8xXJz5G
         Nqww2/sZUAl/bFOAgVAS91puakAbPXmMsznq3XjLEwsuXaeVOgw2wqDge159auJe+QZP
         EBJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679647544;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=fk/3/3DIvawnE3jueJhVp1irCLDgjRQLsPqOm9m9zFY=;
        b=m4Ue9PhiTXUC9Y8GTtLEkIW0wUFZrA17oT4Df8Y3ssiKDe6OF5RV9gsHUfnLaO2X3D
         e5sn5yR87URrEMFpQ4RtFlw6Aab/aLyMM+dvb/Gz+aNNvmO5tPMzug8uyx2C3xOTul5Q
         XhwD5Dne1kjMWV7RPHccx7vFB5bywplV5uOzxFd1dbNimb9eDk250S8v/6dGd+L7jJre
         UMMMazzLSazF3I2ZRM/yFOuFiQTenkudkkGtkbTHO91HtUGCG6/ptYgpcwmgpBD8Kd2+
         bkh/FdTF+py8fnQbM+GNWR7t7iKq9rBeBhcB57xwrTf6TiCAQ4l37TVNo9vFZAkUo2ne
         p5kQ==
X-Gm-Message-State: AAQBX9fonF1zqo3/AltEqpYWmjY2MtaFkgp42HY8jlIKXNhtYgaZjEPR
        5DeTVQipBBbnMDvlM7OwMYa4GQ==
X-Google-Smtp-Source: AKy350Y+gYHEv6PuyzvwQhIPQS9VvWOc5+813JMaAAyJdMB3rFzWm0z8LvCylzql59aJ/Urejp0XGg==
X-Received: by 2002:a17:906:38b:b0:8af:4120:63a8 with SMTP id b11-20020a170906038b00b008af412063a8mr1889312eja.68.1679647544644;
        Fri, 24 Mar 2023 01:45:44 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:ce50:243f:54cc:5373? ([2a02:810d:15c0:828:ce50:243f:54cc:5373])
        by smtp.gmail.com with ESMTPSA id lk8-20020a170906cb0800b009311c9d33d7sm9788826ejb.184.2023.03.24.01.45.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 24 Mar 2023 01:45:44 -0700 (PDT)
Message-ID: <4888cf8b-e9b8-ddf2-1a0c-b2b4d6fd70a8@linaro.org>
Date:   Fri, 24 Mar 2023 09:45:43 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [PATCH v2] ASoC: dt-bindings: alc5632: Convert to dtschema
Content-Language: en-US
To:     Saalim Quadri <danascape@gmail.com>, broonie@kernel.org
Cc:     alsa-devel@alsa-project.org, daniel.baluta@nxp.com,
        devicetree@vger.kernel.org, krzysztof.kozlowski+dt@linaro.org,
        lgirdwood@gmail.com, linux-kernel@vger.kernel.org,
        robh+dt@kernel.org
References: <4a553ab8-4cd3-4ce4-8225-20f43b70a5be@sirena.org.uk>
 <20230323193709.5176-1-danascape@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230323193709.5176-1-danascape@gmail.com>
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

On 23/03/2023 20:37, Saalim Quadri wrote:
> Convert the ALC5632 audio codec bindings to DT schema.
> 
> Signed-off-by: Saalim Quadri <danascape@gmail.com>
> ---
>  .../devicetree/bindings/sound/alc5632.txt     | 43 -------------
>  .../bindings/sound/realtek,alc5632.yaml       | 64 +++++++++++++++++++
>  2 files changed, 64 insertions(+), 43 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/sound/alc5632.txt

Also, do not attach your new patches to some other threads. Each
patchset version is new submission and new thread.

Best regards,
Krzysztof

