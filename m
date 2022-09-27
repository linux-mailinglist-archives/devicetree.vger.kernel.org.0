Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D7F665ECC43
	for <lists+devicetree@lfdr.de>; Tue, 27 Sep 2022 20:43:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231502AbiI0Snj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 27 Sep 2022 14:43:39 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48878 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231970AbiI0Sng (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 27 Sep 2022 14:43:36 -0400
Received: from mail-pf1-x431.google.com (mail-pf1-x431.google.com [IPv6:2607:f8b0:4864:20::431])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9660AF3904
        for <devicetree@vger.kernel.org>; Tue, 27 Sep 2022 11:43:34 -0700 (PDT)
Received: by mail-pf1-x431.google.com with SMTP id d82so10433434pfd.10
        for <devicetree@vger.kernel.org>; Tue, 27 Sep 2022 11:43:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=+TQVNnvYuIcxybhKE1xynS1yVD02TiOMP0eQ0g6NP6M=;
        b=W9P6X0QACe72sXwNhfhthf+yb0ofwxN+3Bz10Zx7Y0tnopsxTW42tYabeELRyYaleT
         vhOegmtjjZMU3HbjHUFDx0mcSkfKywOVbSc72O+JNe6/OCVoi+ZtpSNhVQLD68/GNAtR
         Ln5qJMMhI8ocEyYCQ0OwQOkWjSLpu8bTmRV+tAf6VCYiD0tlWGaRVgKyI3/ZIet34n0d
         +8gIw4CqYjrMXuJDliDWAkzzMLFbgf/I/lXkANwkibA4a3J9Oyg6pJiql8mLMnGNhPpO
         3yc5iIgnGDe8/qNskkhSYvfVanShz0cHuOBB/bpcTK7dp5zDIZifnXgJ+Nm0GRugvuSI
         IedQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=+TQVNnvYuIcxybhKE1xynS1yVD02TiOMP0eQ0g6NP6M=;
        b=W5CrobPDbVbwRcA+lqPDIF/KKzsx3duqmKP7hOD9nMFb4e5+7BiasvPwgDL+K3eJyl
         Xa0H3Seohx52zpD6D2A8gspfRErf+iyaKFlxxR4V4pc3Sp+sbk9MSIYWPqJaoIHJGp7H
         Gmnb37UuxEzcXPJypaqooBqtc/8dhE8/kup3DSXq1VwAhJF76vCkp2ajjlDxiAYCWCrD
         8Q8ddKDS9nOyoQ+iiDS1CoEe9yzKZi4vqdJ4Q+EWuhUpc6UteCwlm/7yn7kkEYLS3ViJ
         dETR/DZt4o5X6IhTFQzVaN/Ag/XWNlHcpQGOZt4ATcHrh1WzMdyZBixMLBzh7RiNMZ8L
         s6bg==
X-Gm-Message-State: ACrzQf1oE6Z4velWqTceR9D40FA6GqUFsyQr/6AC8KCyl97+PAFgRZ0c
        dmAwCIV7TinLroxLPRQz+ROafuErE9vLsw==
X-Google-Smtp-Source: AMsMyM72rc7qkjJI6awVUQjzou1Ga2BTLPA+I4W1t4ksnnKOr+o8kfUOgIZpQ485z+F9aVoIEg8BjQ==
X-Received: by 2002:a63:af03:0:b0:434:305b:d25d with SMTP id w3-20020a63af03000000b00434305bd25dmr25785640pge.214.1664304213995;
        Tue, 27 Sep 2022 11:43:33 -0700 (PDT)
Received: from [10.30.63.46] ([4.35.71.194])
        by smtp.gmail.com with ESMTPSA id n6-20020a654506000000b00438e0db80dasm1830837pgq.65.2022.09.27.11.43.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Sep 2022 11:43:33 -0700 (PDT)
Message-ID: <4e37c7dd-a445-522c-be57-7ad571b456e1@sifive.com>
Date:   Tue, 27 Sep 2022 19:43:30 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.2
Subject: Re: [RFC v4 00/10] RFC on synpsys pwm driver changes
Content-Language: en-GB
To:     =?UTF-8?Q?Uwe_Kleine-K=c3=b6nig?= <u.kleine-koenig@pengutronix.de>
Cc:     linux-pwm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Lee Jones <lee.jones@linaro.org>,
        Thierry Reding <thierry.reding@gmail.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Greentime Hu <greentime.hu@sifive.com>,
        jarkko.nikula@linux.intel.com,
        William Salmon <william.salmon@sifive.com>,
        Jude Onyenegecha <jude.onyenegecha@sifive.com>
References: <20220816211454.237751-1-ben.dooks@sifive.com>
 <20220927164742.3ulbkcwxqpukibla@pengutronix.de>
From:   Ben Dooks <ben.dooks@sifive.com>
In-Reply-To: <20220927164742.3ulbkcwxqpukibla@pengutronix.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 27/09/2022 17:47, Uwe Kleine-König wrote:
> Hello Ben,
> 
> there was some feedback to individual patches that require a rework. I'm
> marking the whole series as "changes requested" in the expectation that
> you will resend them all once you addressed the feedback.

I have most of the feedback done but we've not had a chance to test them
fully. I can send a new series later today but the changes for the clock
division calculations have yet to be tested.

-- 
Ben


