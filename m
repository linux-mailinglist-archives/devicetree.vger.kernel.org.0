Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C46A460B3E6
	for <lists+devicetree@lfdr.de>; Mon, 24 Oct 2022 19:20:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231156AbiJXRUq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 24 Oct 2022 13:20:46 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47042 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233045AbiJXRUU (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 24 Oct 2022 13:20:20 -0400
Received: from mail-wr1-x42c.google.com (mail-wr1-x42c.google.com [IPv6:2a00:1450:4864:20::42c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 68DDB9AF9D
        for <devicetree@vger.kernel.org>; Mon, 24 Oct 2022 08:55:14 -0700 (PDT)
Received: by mail-wr1-x42c.google.com with SMTP id h9so5858972wrt.0
        for <devicetree@vger.kernel.org>; Mon, 24 Oct 2022 08:55:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=wDFVlliW39efbrrCfZ0/dVE6VRPxMJV1lpZ22oSXw1Q=;
        b=gywg8JYD19QTRdYRsy8drpE7vSO8yy/36lpRnuxkFu+ClpA10E037kcqUiQYJjFbiz
         5kEEMdyiDZ0nzXSmF601NAska1FCHBm+M2bJ07Px28iijJMeuJsCr3dEUjtw7RzklIUT
         OctU94h3QRV7cmrCv0suHnAjsIZGQKtBh+GodGwcYCHs+cinOIXcVe3PxE+3iwbrr3Z7
         ZerB/s92MD1SlTM2R/mgN0RhrTr88Cldc6UQktNAL7PAcoBtzLxkmE0VyeFQuIkGYc+1
         maXswxHpFRO56PnNPJvuoIdrW+V1X0kRBgnf5ulVZrBByq3i3crgPZtjIuwszXzuBHJp
         CZHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=wDFVlliW39efbrrCfZ0/dVE6VRPxMJV1lpZ22oSXw1Q=;
        b=MJNNiEqe7oBJA7ZJzKgj7ZrFEvZai0xYF1jWtSvCdgu15tK5e6E0sFS/OFBiwDViWL
         ujnPRynJakPTK3YLTkjt1NRcccvGIqJQh1xp+CwmfUzB1DwiTyaLEdO9RpYOf2Or4dIy
         DHBy3Wnu25LISQS2zwOQNokqPbgp5ivsRpzQpyzbfpFCagVySygF5F8d1mDLib6P5Fmz
         4I1DYCJU99RJD5L68L4c2BJ4k2/xxU7RFOJx9PyT1UqZCheihozfOYPi2NcFojKy/CDN
         CLQc4VLdQR54CKDPmVa4YilaYB+12VbbHpqDgyDtjtt8115Xf7v7h/F/bau6EemRQlom
         ErVg==
X-Gm-Message-State: ACrzQf13Akv2wpKxQDez33oKPfJxYZzP6UZYXLAUgMqebVbwTCpebzND
        vr0cePxmofUvx2PDMI4ouYzrR+I5txVBHg==
X-Google-Smtp-Source: AMsMyM5xJixdAMTXWidAfcHrl0NUtmIch9q35qRxZsQhviqwf65C6oQ8lT68qkPJYpYXmIlpxpXzfQ==
X-Received: by 2002:adf:f2c1:0:b0:231:3f1c:2fb with SMTP id d1-20020adff2c1000000b002313f1c02fbmr21387665wrp.602.1666626032394;
        Mon, 24 Oct 2022 08:40:32 -0700 (PDT)
Received: from [10.35.6.130] ([167.98.27.226])
        by smtp.gmail.com with ESMTPSA id k5-20020a5d6d45000000b0022e57e66824sm31526618wri.99.2022.10.24.08.40.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 24 Oct 2022 08:40:31 -0700 (PDT)
Message-ID: <60e69701-c0dd-1c22-5956-775a7b0dac4b@sifive.com>
Date:   Mon, 24 Oct 2022 16:40:30 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.3
Subject: Re: [PATCH v6 00/10] Designware PWM driver updates for OF
Content-Language: en-GB
To:     Jarkko Nikula <jarkko.nikula@linux.intel.com>,
        linux-pwm@vger.kernel.org
Cc:     devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Lee Jones <lee.jones@linaro.org>,
        u.kleine-koenig@pengutronix.de,
        Thierry Reding <thierry.reding@gmail.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Greentime Hu <greentime.hu@sifive.com>,
        William Salmon <william.salmon@sifive.com>,
        Jude Onyenegecha <jude.onyenegecha@sifive.com>
References: <20221020151610.59443-1-ben.dooks@sifive.com>
 <623284c8-f4bb-1020-2f2e-a475f424c5b5@linux.intel.com>
From:   Ben Dooks <ben.dooks@sifive.com>
In-Reply-To: <623284c8-f4bb-1020-2f2e-a475f424c5b5@linux.intel.com>
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

On 24/10/2022 09:39, Jarkko Nikula wrote:
> Hi
> 
> On 10/20/22 18:16, Ben Dooks wrote:
>> This is an updated version of the Designware PWM driver updates
>> for OF support, which now splits the driver into PCI and OF parts
>> as well as tries to sort out the review comments.
>>
>> Hopefully this can now be queued for the next kernel version.
>>
>> v6:
>>   - fix removal ordering of DWC_PERIOD_NS
> 
> I did a quick test on our HW and PWM was counting as before.
> 
> Tested-by: Jarkko Nikula <jarkko.nikula@linux.intel.com>

Ok, great to hear, thank you.

I guess I should sort out putting a v7 out this week with all
the updated comments.
