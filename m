Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 32A7D577C60
	for <lists+devicetree@lfdr.de>; Mon, 18 Jul 2022 09:19:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233793AbiGRHTX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 18 Jul 2022 03:19:23 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50238 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230463AbiGRHTW (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 18 Jul 2022 03:19:22 -0400
Received: from mail-wr1-x434.google.com (mail-wr1-x434.google.com [IPv6:2a00:1450:4864:20::434])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7E17562E9
        for <devicetree@vger.kernel.org>; Mon, 18 Jul 2022 00:19:19 -0700 (PDT)
Received: by mail-wr1-x434.google.com with SMTP id r2so14688919wrs.3
        for <devicetree@vger.kernel.org>; Mon, 18 Jul 2022 00:19:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=SQ3SllmUgI/0gTSk6zeAGxNHKWL97JN2nZZc5fKOm5c=;
        b=N4DASKSLJdxXiMrG1KCns0eaYNhtD01q7nBkHfbQ5fuvMjJPcJxAOjHzaeHz1xxvVI
         FhNmPm/D/w62u1v6LqH9gZ/TQ39JMZJt/qP05zBXeUmF88upVMniVieTi/chSTmYfHS+
         ElRG0OQTXkSjAdKAxCzxlSjM1CzKcK8EVSggpUk3cE4uhQpHfz0wdMRmE2dfU6aJMO/a
         fRdOck9cBpI+jrMbOy66rXv+ZeCv8k33gB/OnbCfJm/EkLbpEW5D0azB6teG12D+N7cp
         e/8MXlSvj/ymaqgSCzAMBmIymPL6US4hhLtCn9u7alc/lL0zC6PZ4c1VyRiGUFgOgawM
         cDRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=SQ3SllmUgI/0gTSk6zeAGxNHKWL97JN2nZZc5fKOm5c=;
        b=K5F3vbIA7ildyZ0i+vjKDp1NoKIzhRTrs6UlQZiURdfnqvjA638MINK/RwbmLUfEfT
         gg0+gnrSTYnqaMfuXP1JLSWlgLmqavNQIg1tF1ZEOivLmp0mDvySvN2Gafiaw8re2acj
         qVxdUB6Wcy+ahOdyVmfKZypO1LsAYNJ/VxpbHRS2zvUGKZle19SAmXwvLhedx+MPLvj9
         OSKEHZiR82WlED5Y7p6oNue6vSLzCP0ZZ1VTabehFpgOQCRygKAtx5g34U9Xv8S3igoD
         3tjiBpyBHOnijoL8HvaRAfJP5FPe+iSQWADS6vT3tA2+6394PDP1OYb40XqpgdsIgTnL
         d5MA==
X-Gm-Message-State: AJIora9P5BQR73T7z0IAbC5IJulVIDVL0bQxVbNJG8bmi1kToIpy6WKC
        ZMJu4YEPHTuzm9MEJEdzW6S83g==
X-Google-Smtp-Source: AGRyM1u1ldPCMxt1zHXsh5Een4rWGOOpz/5xX/Em7Zo3s1lNKEmrnSdsnHECNarbUOs9uaChc5P9oA==
X-Received: by 2002:a5d:5985:0:b0:21d:b6b6:4434 with SMTP id n5-20020a5d5985000000b0021db6b64434mr21236181wri.111.1658128757889;
        Mon, 18 Jul 2022 00:19:17 -0700 (PDT)
Received: from [10.35.4.171] ([167.98.27.226])
        by smtp.gmail.com with ESMTPSA id t4-20020a1c7704000000b003a308e9a192sm12037687wmi.30.2022.07.18.00.19.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 18 Jul 2022 00:19:17 -0700 (PDT)
Message-ID: <2cd139dd-559e-7975-41a7-c813bc5851ea@sifive.com>
Date:   Mon, 18 Jul 2022 08:19:16 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Subject: Re: [PATCH 1/7] pwm: change &pci->dev to dev in probe
Content-Language: en-GB
To:     =?UTF-8?Q?Uwe_Kleine-K=c3=b6nig?= <u.kleine-koenig@pengutronix.de>
Cc:     linux-pwm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Lee Jones <lee.jones@linaro.org>,
        Thierry Reding <thierry.reding@gmail.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Greentime Hu <greentime.hu@sifive.com>,
        Jude Onyenegecha <jude.onyenegecha@sifive.com>,
        Sudip Mukherjee <sudip.mukherjee@sifive.com>,
        William Salmon <william.salmon@sifive.com>,
        Adnan Chowdhury <adnan.chowdhury@sifive.com>
References: <20220712100113.569042-1-ben.dooks@sifive.com>
 <20220712100113.569042-2-ben.dooks@sifive.com>
 <20220713081633.5lsunbl5mfnngdrs@pengutronix.de>
From:   Ben Dooks <ben.dooks@sifive.com>
In-Reply-To: <20220713081633.5lsunbl5mfnngdrs@pengutronix.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 13/07/2022 09:16, Uwe Kleine-König wrote:
> On Tue, Jul 12, 2022 at 11:01:07AM +0100, Ben Dooks wrote:
>> The dwc_pwm_probe() assignes dev to be &pci->dev but then uses
>> &pci->dev throughout the function. Change these all to the be
>> 'dev' variable to make lines shorter.
> 
> Looks reasonable.
> 
> Acked-by: Uwe Kleine-König <u.kleine-koenig@pengutronix.de>

ack for 1/7 or the series?
I'll repost v2 this week once we've dealt with polarity.

> 

