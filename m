Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C0EA64EBEB0
	for <lists+devicetree@lfdr.de>; Wed, 30 Mar 2022 12:25:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S245340AbiC3K1V (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 30 Mar 2022 06:27:21 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59158 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S245339AbiC3K1T (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 30 Mar 2022 06:27:19 -0400
Received: from mail-wm1-x333.google.com (mail-wm1-x333.google.com [IPv6:2a00:1450:4864:20::333])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BE81D260C43
        for <devicetree@vger.kernel.org>; Wed, 30 Mar 2022 03:25:34 -0700 (PDT)
Received: by mail-wm1-x333.google.com with SMTP id r7so11926611wmq.2
        for <devicetree@vger.kernel.org>; Wed, 30 Mar 2022 03:25:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=HIWpi/8D1djUzx7THE7n67oIfPKGmrvE/SwlU2lSkLA=;
        b=lUWULG+IN08a/hn4fiOqt6bNpyrGelQJQQY1CO+dbSwLUb9LqmiaxxfEyaUmS1WD1E
         6Jh9UUc1S9Faj6gbNsE1UGXowCMXW9fox/hH8ydwEozmwmjHofa2kmtOeViq1U77opI2
         vWjMN/479f4tpGR1N/HBWVWKoSWriXnn5aTNLupu48ytgHgQfKXB5xNZ6wMEw6E/rd2f
         tga/3YYw9x4s3e7bXWWAxkM0GhNB8rXBdc0zwV20vnf/aqnBi6V5jV5sUyOQnWEhRkAA
         gGWeg1S5vX7034R0tAt8JAAr98CdjhB+5x56eT4ZrVkfDpatE41YlX20jXiou0JSMMot
         gnrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=HIWpi/8D1djUzx7THE7n67oIfPKGmrvE/SwlU2lSkLA=;
        b=rO0q3tCfyJRINGSS+g3KUPcutCbsZ/tzkZeHWJ9dUHy9BvLHhzEaRDmbYDWCEirwtz
         aH6BTDx7k9ANe1szvK5ZTesZ0cojPWnzdpKYc0UAE7fYXxNAKQ+gIb1Rw4W2aW//ndl/
         PDig2raVqOeX+assYMS0m+4h5N80JVEjjqBrmE00nb0vuR/lWaU83F87N69BXBZaGqIH
         NhJa5nGSYEO+Z3/ZTLDCPEIDwtBeItYLNbkjCPPTDf0ESc6puZJAC1CeFlkeGRFKktfU
         s6Ey9kGoEyfkq30zURFf5EN2I8lyy0VNVszN2kPyIea5D051wjfaJI/64ufdYu9HhyHM
         shgw==
X-Gm-Message-State: AOAM533DlXRuc/pt0AlVIUjGuqLJ2NsHaO5wG2Cq50DdNreXoRyp50sq
        rr+3hWlWhTOzy92FGUea0fh3mg==
X-Google-Smtp-Source: ABdhPJyG1sVXUz6I5tf6C8RXiwYzb3kTwXz6SO1D1h3jIBPDn8sAoDtDK/poWTpvBTCo65fGctX0OA==
X-Received: by 2002:a05:600c:34c5:b0:38c:30e3:1e6c with SMTP id d5-20020a05600c34c500b0038c30e31e6cmr3824774wmq.144.1648635933279;
        Wed, 30 Mar 2022 03:25:33 -0700 (PDT)
Received: from [192.168.86.34] (cpc90716-aztw32-2-0-cust825.18-1.cable.virginm.net. [86.26.103.58])
        by smtp.googlemail.com with ESMTPSA id g10-20020a5d46ca000000b00203fd86e198sm16609627wrs.96.2022.03.30.03.25.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 30 Mar 2022 03:25:32 -0700 (PDT)
Message-ID: <b59fd0f0-cedd-dc48-52bf-090358ce7786@linaro.org>
Date:   Wed, 30 Mar 2022 11:25:30 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [PATCH 1/3] dt-bindings: mmc: mmci: add a property to disable DMA
 LLI
Content-Language: en-US
To:     Linus Walleij <linus.walleij@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>
Cc:     Yann Gautier <yann.gautier@foss.st.com>, ulf.hansson@linaro.org,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        linux-mmc@vger.kernel.org,
        linux-stm32@st-md-mailman.stormreply.com,
        Alexandre Torgue <alexandre.torgue@foss.st.com>,
        Christophe Kerello <christophe.kerello@foss.st.com>,
        Ludovic Barre <ludovic.barre@foss.st.com>,
        Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Russell King <linux@armlinux.org.uk>,
        Marek Vasut <marex@denx.de>, kernel@dh-electronics.com,
        Grzegorz Szymaszek <gszymaszek@short.pl>
References: <20220304135134.47827-1-yann.gautier@foss.st.com>
 <20220304135134.47827-2-yann.gautier@foss.st.com>
 <CACRpkdYQz+-im3n-r0_8RKL7so2bHS=aZobty4BbzixmPzms-Q@mail.gmail.com>
 <0bc53018-fce4-4104-fa47-6e60d2367d69@foss.st.com>
 <20220329153114.GA58120@thinkpad>
 <71b10ce2-7b87-14d5-c8e4-3a4598c889e0@foss.st.com>
 <20220329173322.GC58120@thinkpad>
 <CACRpkdaiOhMGzuWPwoRLZ05HyM8BO_-cZt4TiAqAYQvDaJA-mA@mail.gmail.com>
From:   Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
In-Reply-To: <CACRpkdaiOhMGzuWPwoRLZ05HyM8BO_-cZt4TiAqAYQvDaJA-mA@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 29/03/2022 22:16, Linus Walleij wrote:
> On Tue, Mar 29, 2022 at 7:33 PM Manivannan Sadhasivam <mani@kernel.org> wrote:
>> [Yann]
>>> As for Prabhakar's answer, the IDMA here is inside our IP, and not used in
>>> any other IP. So I'm not sure it is really relevant to move that to another
>>> dmaengine driver.
>>
>> Okay, I think this justification makes sense. I was worried of DMA IPs that get
>> sandwiched into many peripherals like the one on Renesas platforms. It turned
>> out that each subsystem has to add internal DMA support for it :/
> 
> That is a justified worry.
> 
> Qualcomm has "BAM DMA" (I think it is called?) which is added to each IP
> that needs DMA. drivers/mmc/host/mmci_qcom_dml.c
> It's for older Qualcomm platforms but I *think* it is actually not just used
> for the MMCI, just noone ever got around to adding it to any other
> peripheral? Srini do you know?

There are multiple instances of BAM (Bus access manager) on Qcom SoC, 
some of these instances are dedicated for each peripheral instance.
In this particular case we have 4 instances of BAM each of which are 
dedicated to 4 instances of SD Controllers.

BAM dmaengine is used across many Qualcomm peripheral drivers.

--srini

> 
> Yours,
> Linus Walleij
