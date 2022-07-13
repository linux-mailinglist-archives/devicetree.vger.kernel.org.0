Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C4F9E5734AD
	for <lists+devicetree@lfdr.de>; Wed, 13 Jul 2022 12:54:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235297AbiGMKyb (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 13 Jul 2022 06:54:31 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47012 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235281AbiGMKya (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 13 Jul 2022 06:54:30 -0400
Received: from mail-wm1-x32c.google.com (mail-wm1-x32c.google.com [IPv6:2a00:1450:4864:20::32c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 556B9FF580
        for <devicetree@vger.kernel.org>; Wed, 13 Jul 2022 03:54:28 -0700 (PDT)
Received: by mail-wm1-x32c.google.com with SMTP id z23-20020a7bc7d7000000b003a2e00222acso2063904wmk.0
        for <devicetree@vger.kernel.org>; Wed, 13 Jul 2022 03:54:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=zA+Gr0O1dXUymIsstXZ4+gp6YZgz92xz0+cifPtZ8VY=;
        b=dJ/IaUjPDcxVY9HMm3gvgLJNirdBz/bvUFkBr34JiH8xRV06oc+hpCZYAZbKB89uDf
         tavyQSpRmeBM3FveWRa2+nSbrGTf7E3U3rFMhm8E/LCO1kpwZM1ufHumDFAKBgAH6l6o
         My+t2ZY83MUztNI90GI6U1GllZFQAq/oDX7A/ccslPaJngYFq3vOX2cNBgdNY59+9CUo
         HIlupftubdymC5blRqYpAVtps3H1V2fZ4N/g+dlxABo9M6M/WSL+UUGulP76wpzb5LEv
         Npyivq+nzLGvdwenhGdSPLnPLgBow+W05G4oBsTOlp3pdkWhg8Kl87Y4WZe85xfcA1lp
         etig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=zA+Gr0O1dXUymIsstXZ4+gp6YZgz92xz0+cifPtZ8VY=;
        b=GKlI90Q9Az5owy8SlUfodrMjf9zO7vy97Jo8fbeLjQ50QlDZJ5K+SP1UHPi/k+9oh0
         YYyZIuV4oxCAqtfjvlnaESrQQkHur2ZdD5VPQGnbHKFHD2hT3tut+Wb8NiMv9LD/IWWP
         CPIBv8BUiGSUQOVb/gKrmR4Cystut2hzf6cySU5azPlcD5IrtQ6Q+J1WMtwRYJga49Pd
         VimViZ3wcPSJTm1FKqjPyMeHNkWvAoyOk9aE4qPce5pv30YVy5Ga7ciWHZr1m7yMNusC
         f4RfpLmVbdstRsn+6K3UWX4B7qgq60FDh7BCZugtVmNB4lDOMiNTyizWd9U/zagnfxp2
         cSDQ==
X-Gm-Message-State: AJIora8c2cVvV207pCvBbqPZyL8yZlKuFaFwfpf0q+iG3g0PScBhyg0L
        yoaG8Tde92FuLAdFaLNLbEHAFw==
X-Google-Smtp-Source: AGRyM1vO7jToOcXSkbXztEq6GM/5r+GdyuM6v7AVP/FZykv/iRWy7YkYg9j7PTNkFpVVg1qVpS30KA==
X-Received: by 2002:a05:600c:1c96:b0:3a2:f29c:2c1f with SMTP id k22-20020a05600c1c9600b003a2f29c2c1fmr5559676wms.161.1657709666918;
        Wed, 13 Jul 2022 03:54:26 -0700 (PDT)
Received: from [192.168.0.17] (cpc152649-stkp13-2-0-cust121.10-2.cable.virginm.net. [86.15.83.122])
        by smtp.gmail.com with ESMTPSA id c14-20020a7bc00e000000b003a044fe7fe7sm1796725wmb.9.2022.07.13.03.54.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 13 Jul 2022 03:54:26 -0700 (PDT)
Message-ID: <e014e037-db0b-56fc-f713-b371ae097acb@sifive.com>
Date:   Wed, 13 Jul 2022 11:54:25 +0100
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
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
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

Thanks for the reviews, I'll get a new series out tomorrow.

I might avoid the last patch about number of pwms for now
and just get the basic driver updates sorted.

-- 
Ben


