Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 38FF54110F1
	for <lists+devicetree@lfdr.de>; Mon, 20 Sep 2021 10:29:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235785AbhITIa3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 20 Sep 2021 04:30:29 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53116 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231966AbhITIa3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 20 Sep 2021 04:30:29 -0400
Received: from mail-wr1-x436.google.com (mail-wr1-x436.google.com [IPv6:2a00:1450:4864:20::436])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CFBFDC061760
        for <devicetree@vger.kernel.org>; Mon, 20 Sep 2021 01:29:02 -0700 (PDT)
Received: by mail-wr1-x436.google.com with SMTP id g16so27378968wrb.3
        for <devicetree@vger.kernel.org>; Mon, 20 Sep 2021 01:29:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=subject:to:cc:references:from:organization:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=NmwufkRm5QXP0RAh9pBbo8ktk5iDLTsqfPbzEqZPusQ=;
        b=ASztJaW6JLqDSrnzAc8sDk8rdLwza8sZQRFbsVufD7S6x99Hhl7BGV5YzttOZprJPR
         A6TbTopEIqMinlR87Ykkzakz5iZ/O/5AuzDw4YkrqTEzes8j1K5NNjA2QOw3sTxJDGo1
         XfwHT0hIyrbhKwUogGCw6ZC/OLu1RprMonZ9Yj7TzNFrcOJTTC+hFsqWWqbusTZVIns3
         HIrSkjQ1/g2BaOGHXjp7iU8kmma/vSYLuYp3Ba7eGXib4bCsmpcwJYXGuSMU8W/KojWX
         ehFVT2F7wWBmutG0rItwEPu77rY+Gr2IPyptA1Iz0a49hWLhllx3WS+WWU82s7eXfgZ+
         197Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:subject:to:cc:references:from:organization
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language:content-transfer-encoding;
        bh=NmwufkRm5QXP0RAh9pBbo8ktk5iDLTsqfPbzEqZPusQ=;
        b=sCgV/4cunlBwLL9MRTcDfocBwwJgXT00FZ0CvLB8g9ihSvGZC3xBquKmJQN9LsN9Cx
         3nA2mNH7FhOGtSYLJmmOE2apf8OfklpElrtGcaMpQ+3j57msSxTMgzcBzinm0FrKH/nG
         FpZZw+R8ChBa2NmPjp47fdkOk2A9hBkxlMmeyTmP/cTwnjxj7H1riMw7o8iueTHiLQqb
         iKfmHIp7eJreks7dryuogeosGW+uB0kqDFJOyCSUzzE93VIWsFCOXUFAASBgL3zgcbjm
         C8BQXw4ho9jnVBi5R+zJ8uPIJsmTccwQhCAybEBlpSIrp0kU5VJJgxE3Qs3bpBnOEtBe
         H+Og==
X-Gm-Message-State: AOAM532moeyCb4yEkcVXNdI/Htd4znHGhkahjUCC32sr3sW1+S/Rmn7N
        cyI5tdqOnNiKL51LaCRs6j3ZoP8iju7OEQ==
X-Google-Smtp-Source: ABdhPJzuxaefHZvd38Fmw8Tt/MDEALuJp9Z/DsWNUXhTEtV7qyVR7JWj5ElkPT5QmeIyOw9MdlrDLw==
X-Received: by 2002:adf:d1cf:: with SMTP id b15mr803908wrd.181.1632126541068;
        Mon, 20 Sep 2021 01:29:01 -0700 (PDT)
Received: from [172.20.10.7] ([37.169.24.17])
        by smtp.gmail.com with ESMTPSA id b16sm15249049wrp.82.2021.09.20.01.28.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 20 Sep 2021 01:29:00 -0700 (PDT)
Subject: Re: [PATCHv2 0/3] Fix the pwm regulator supply properties
To:     Anand Moon <linux.amoon@gmail.com>,
        linux-arm-kernel@lists.infradead.org,
        linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org
Cc:     Rob Herring <robh+dt@kernel.org>,
        Kevin Hilman <khilman@baylibre.com>,
        Jerome Brunet <jbrunet@baylibre.com>,
        Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
        Christian Hewitt <christianshewitt@gmail.com>,
        devicetree@vger.kernel.org
References: <20210919202918.3556-1-linux.amoon@gmail.com>
From:   Neil Armstrong <narmstrong@baylibre.com>
Organization: Baylibre
Message-ID: <9d759c05-c67f-1230-7f58-562dc9bb1224@baylibre.com>
Date:   Mon, 20 Sep 2021 10:28:59 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <20210919202918.3556-1-linux.amoon@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,


On 19/09/2021 22:29, Anand Moon wrote:
> Changes PWM supply properties help fix internal link of PWM to
> main 12V supply as per the shematics.
> 
> V1: https://lkml.org/lkml/2021/6/29/288
> 
> Thanks
> -Anand
> 
> Anand Moon (3):
>   arm64: dts: meson-g12a: Fix the pwm regulator supply properties
>   arm64: dts: meson-g12b: Fix the pwm regulator supply properties
>   arm64: dts: meson-sm1: Fix the pwm regulator supply properties
> 
>  arch/arm64/boot/dts/amlogic/meson-g12a-sei510.dts       | 2 +-
>  arch/arm64/boot/dts/amlogic/meson-g12a-u200.dts         | 2 +-
>  arch/arm64/boot/dts/amlogic/meson-g12a-x96-max.dts      | 2 +-
>  arch/arm64/boot/dts/amlogic/meson-g12b-khadas-vim3.dtsi | 4 ++--
>  arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dtsi   | 4 ++--
>  arch/arm64/boot/dts/amlogic/meson-g12b-w400.dtsi        | 4 ++--
>  arch/arm64/boot/dts/amlogic/meson-sm1-bananapi-m5.dts   | 2 +-
>  arch/arm64/boot/dts/amlogic/meson-sm1-khadas-vim3l.dts  | 2 +-
>  arch/arm64/boot/dts/amlogic/meson-sm1-odroid.dtsi       | 2 +-
>  arch/arm64/boot/dts/amlogic/meson-sm1-sei610.dts        | 2 +-
>  10 files changed, 13 insertions(+), 13 deletions(-)

Thanks for fixing all the other boards !

I'll let a few days for Martin to review, but it's ok for me.

Neil


> 
> --
> 2.33.0
> 

