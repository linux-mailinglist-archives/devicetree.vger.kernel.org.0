Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 933A34C0D1B
	for <lists+devicetree@lfdr.de>; Wed, 23 Feb 2022 08:13:13 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231398AbiBWHNb (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 23 Feb 2022 02:13:31 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43538 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238608AbiBWHNa (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 23 Feb 2022 02:13:30 -0500
Received: from smtp-relay-internal-0.canonical.com (smtp-relay-internal-0.canonical.com [185.125.188.122])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A4396593AF
        for <devicetree@vger.kernel.org>; Tue, 22 Feb 2022 23:13:03 -0800 (PST)
Received: from mail-ej1-f70.google.com (mail-ej1-f70.google.com [209.85.218.70])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 744D43FCA5
        for <devicetree@vger.kernel.org>; Wed, 23 Feb 2022 07:13:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1645600382;
        bh=Yk2F1aFfW1Ld0LeoUO0G0aplUyclczODbC5pm0OWl08=;
        h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
         In-Reply-To:Content-Type;
        b=HH0jGjFHQBGMrzLPpRxGnMMKVZxL+QEtQnzartFRw6txhGwcGx2diyUldPV6/57oe
         pKXoxQlamIGH8mpvaTFf7c6GAy7OKnLlS/gdhCeWgaqbjVMuLOvaI7Ovf7pgn8RJQH
         +8KdnC4x6m+j5BTx5vntqSmrRJ1MR+rSLa4vfaSOBhUQ2Sxi91uc7OGisH5t6O5veS
         ePD+5wlbA3t0stDOAsjg0frPJoLvDqJD35VHKYETijzj7ehsNYRiE5VlgHpsGinBvd
         2TDkiIUCgbQdjHQ9IedTPk7x3o7duNjr2P5lQUjUlR6roNpHbRg5n2XCOxPlkH82I7
         kh56fjjPzJHSA==
Received: by mail-ej1-f70.google.com with SMTP id qa30-20020a170907869e00b006cee5e080easo6668087ejc.3
        for <devicetree@vger.kernel.org>; Tue, 22 Feb 2022 23:13:02 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=Yk2F1aFfW1Ld0LeoUO0G0aplUyclczODbC5pm0OWl08=;
        b=uDkQWGWB5xE7PvBag9rOzS4hmJ+UxCsZmfHjeIqL05oDPD7UHWINYbLaDpEKFG0uXG
         0+W46hdR52D9ZhTK3gs78X2LvQunUTEBYAL+l8jQ9XtZYBcNMSb6VnZydd4bEIfDG3/8
         Q7f3wMizxkAvff0MNIYSP/o2H0S3FR7LbAuXDKjnGhML46lWjKvb98lq4uxbbRnyBd0U
         TKsfORKM/JXGaWJqVzmsTGwXvLQKtoVPvbfDDRweD0TA2lL9DvcD9vAo0qMPSwHHwjau
         sBCVBk9jpLK6P9Xyk5d/USqWhcj9x5T0nEDMNHKV2ErRxDg/q5yukoOyTcb1WQ2ZA5jC
         XBhA==
X-Gm-Message-State: AOAM533Wu3uXNspVabGkfIEjbgYMVSKCJcA62uR7KjI5FvvNIGMMNUck
        HDDFzZgGH8ddeUQbsGBZTMd/BtOxooGxFuuaL54FMCychMW/BR5P3D3aMJ6se+d7FJke/kVGmS/
        Jd1RouFyxqN6I4Na78YrcTscSOC5dDfd3IfTOxUE=
X-Received: by 2002:a17:906:64e:b0:6ce:36ae:7ab5 with SMTP id t14-20020a170906064e00b006ce36ae7ab5mr22053175ejb.192.1645600371112;
        Tue, 22 Feb 2022 23:12:51 -0800 (PST)
X-Google-Smtp-Source: ABdhPJzmck5fg5WgUrwFyTS+l2MRKX24yg2vyux+78JbFW201Iyi4ERfI4O0zm2hCcKJyNLWo8yoPA==
X-Received: by 2002:a17:906:64e:b0:6ce:36ae:7ab5 with SMTP id t14-20020a170906064e00b006ce36ae7ab5mr22053144ejb.192.1645600370934;
        Tue, 22 Feb 2022 23:12:50 -0800 (PST)
Received: from [192.168.0.124] (xdsl-188-155-181-108.adslplus.ch. [188.155.181.108])
        by smtp.gmail.com with ESMTPSA id g16sm6978683ejf.218.2022.02.22.23.12.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 22 Feb 2022 23:12:50 -0800 (PST)
Message-ID: <65edc257-82ec-e100-7a44-5c510aba51ce@canonical.com>
Date:   Wed, 23 Feb 2022 08:12:49 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH v7 05/11] dt-bindings: pwm: add microchip corepwm binding
Content-Language: en-US
To:     =?UTF-8?Q?Uwe_Kleine-K=c3=b6nig?= <u.kleine-koenig@pengutronix.de>,
        conor.dooley@microchip.com
Cc:     linus.walleij@linaro.org, brgl@bgdev.pl, robh+dt@kernel.org,
        jassisinghbrar@gmail.com, thierry.reding@gmail.com,
        lee.jones@linaro.org, a.zummo@towertech.it,
        alexandre.belloni@bootlin.com, paul.walmsley@sifive.com,
        palmer@dabbelt.com, aou@eecs.berkeley.edu, geert@linux-m68k.org,
        linux-gpio@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-pwm@vger.kernel.org,
        linux-rtc@vger.kernel.org, linux-riscv@lists.infradead.org,
        lewis.hanly@microchip.com, daire.mcnamara@microchip.com,
        ivan.griffin@microchip.com, atishp@rivosinc.com,
        Rob Herring <robh@kernel.org>,
        Palmer Dabbelt <palmer@rivosinc.com>
References: <20220214135840.168236-1-conor.dooley@microchip.com>
 <20220214135840.168236-6-conor.dooley@microchip.com>
 <20220223062018.nbgidqxgh2soz625@pengutronix.de>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
In-Reply-To: <20220223062018.nbgidqxgh2soz625@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 23/02/2022 07:20, Uwe Kleine-König wrote:
> On Mon, Feb 14, 2022 at 01:58:35PM +0000, conor.dooley@microchip.com wrote:
>> From: Conor Dooley <conor.dooley@microchip.com>
>>
>> Add device tree bindings for the Microchip fpga fabric based "core" PWM
>> controller.
>>
>> Reviewed-by: Rob Herring <robh@kernel.org>
>> Signed-off-by: Conor Dooley <conor.dooley@microchip.com>
>> Acked-by: Palmer Dabbelt <palmer@rivosinc.com>
> 
> I like it:
> 
> Acked-by: Uwe Kleine-König <u.kleine-koenig@pengutronix.de>
> 
> nitpick: Put your S-o-b last in the commit log. (This doesn't justify a
> resend IMHO)

It should be the opposite - the first. First author signs the patch,
then comes review and finally an ack. Putting SoB at then suggests that
tags were accumulated before sending patch, out of mailing list.


Best regards,
Krzysztof
