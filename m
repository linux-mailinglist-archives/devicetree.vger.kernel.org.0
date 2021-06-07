Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0C20E39D727
	for <lists+devicetree@lfdr.de>; Mon,  7 Jun 2021 10:23:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230127AbhFGIZS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 7 Jun 2021 04:25:18 -0400
Received: from youngberry.canonical.com ([91.189.89.112]:38774 "EHLO
        youngberry.canonical.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229545AbhFGIZR (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 7 Jun 2021 04:25:17 -0400
Received: from mail-wr1-f70.google.com ([209.85.221.70])
        by youngberry.canonical.com with esmtps  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
        (Exim 4.93)
        (envelope-from <krzysztof.kozlowski@canonical.com>)
        id 1lqAXd-0002dy-Re
        for devicetree@vger.kernel.org; Mon, 07 Jun 2021 08:23:25 +0000
Received: by mail-wr1-f70.google.com with SMTP id g14-20020a5d698e0000b0290117735bd4d3so7451920wru.13
        for <devicetree@vger.kernel.org>; Mon, 07 Jun 2021 01:23:25 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=nNihlv2mQDvu7x35XjiDukEpJ//QCmebfmPCVN6DojI=;
        b=SpLBSs/YWhrqaHTAAXJ7a5FBymcSzWS9FU1DuMKhMYlD7u2vDvo5eMdSLvc6LY/6Sf
         2njBs7aZGKxi82LaJec+MbKzbYR82NxRQfIkOzN+vYa0VqL5sg5v4rmuFv9eorz/NZsU
         U28sMBM+Eu2YkIeDS/GaCwavQ2LlfHvu34pmpHc+q0XuVcDaltzgdI1kGAJocd2fZh7Q
         g53b50GvBgrKTkbS3WXQ2ct9/F9RsefiEjhrcPurB9gHG8gKZ40eMzGRaM8JUGliD0lU
         suoOrGrvCh/ZGCFP6k2G/YHXG/YSh8AbrAj3K4IL6YPRvwnXXq7lLj/F990B10Q3K/13
         txUA==
X-Gm-Message-State: AOAM531yBhYf9t1EGh9+4TJnveuWya6+swarUs/FLaFBEQhSf/Euzfde
        AFZwO+HZGQyovrfcyAZNobhzod2K990abNdkWwpspF+uhGnL3rusbHTVg/dJT58ut2vE2gTFUmC
        DEwKmYSL3VzI8+tQIzr6SyoVf8z4ZxZY4FGf68qI=
X-Received: by 2002:a05:600c:4a29:: with SMTP id c41mr15998421wmp.17.1623054205597;
        Mon, 07 Jun 2021 01:23:25 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwFB+dRPKGdNJg3l60fhDad4GGbvMwgFjD2jIMcvCpVhYadAMZl/UxKxT1ZNfyObVD0Hqpaug==
X-Received: by 2002:a05:600c:4a29:: with SMTP id c41mr15998412wmp.17.1623054205481;
        Mon, 07 Jun 2021 01:23:25 -0700 (PDT)
Received: from [192.168.1.115] (xdsl-188-155-185-9.adslplus.ch. [188.155.185.9])
        by smtp.gmail.com with ESMTPSA id b15sm14473023wru.64.2021.06.07.01.23.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 07 Jun 2021 01:23:25 -0700 (PDT)
Subject: Re: [PATCH 5/5] arm64: dts: qcom: msm8916-samsung-a2015: Add NFC
To:     Stephan Gerhold <stephan@gerhold.net>,
        Bjorn Andersson <bjorn.andersson@linaro.org>
Cc:     Andy Gross <agross@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, phone-devel@vger.kernel.org,
        ~postmarketos/upstreaming@lists.sr.ht,
        Michael Srba <Michael.Srba@seznam.cz>
References: <20210604172742.10593-1-stephan@gerhold.net>
 <20210604172742.10593-5-stephan@gerhold.net>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Message-ID: <f835dc4d-5643-1249-0f23-e9c0337a4f38@canonical.com>
Date:   Mon, 7 Jun 2021 10:23:24 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <20210604172742.10593-5-stephan@gerhold.net>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 04/06/2021 19:27, Stephan Gerhold wrote:
> The Samsung Galaxy A3/A5 both have a Samsung S3FWRN5 NFC chip that
> works quite well with the s3fwrn5 driver in the Linux NFC subsystem.
> 
> The clock setup for the NFC chip is a bit special (although this
> seems to be a common approach used for Qualcomm devices with NFC):
> 
> The NFC chip has an output GPIO that is asserted whenever the clock
> is needed to function properly. On the A3/A5 this is wired up to
> PM8916 GPIO2, which is then configured with a special function
> (NFC_CLK_REQ or BB_CLK2_REQ).
> 
> Enabling the rpmcc RPM_SMD_BB_CLK2_PIN clock will then instruct
> PM8916 to automatically enable the clock whenever the NFC chip
> requests it. The advantage is that the clock is only enabled when
> needed and we don't need to manage it ourselves from the NFC driver.
> 
> Note that for some reason Samsung decided to connect the I2C pins
> to GPIOs where no hardware I2C bus is available, so we need to
> fall back to software bit-banging with i2c-gpio.
> 
> Cc: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
> Signed-off-by: Stephan Gerhold <stephan@gerhold.net>
> ---
>  .../qcom/msm8916-samsung-a2015-common.dtsi    | 64 +++++++++++++++++++
>  1 file changed, 64 insertions(+)
> 


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>


Best regards,
Krzysztof
