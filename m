Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 0AABA373A6
	for <lists+devicetree@lfdr.de>; Thu,  6 Jun 2019 13:58:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728679AbfFFL6C (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 6 Jun 2019 07:58:02 -0400
Received: from mail-wr1-f68.google.com ([209.85.221.68]:36077 "EHLO
        mail-wr1-f68.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727563AbfFFL6C (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 6 Jun 2019 07:58:02 -0400
Received: by mail-wr1-f68.google.com with SMTP id n4so2132612wrs.3
        for <devicetree@vger.kernel.org>; Thu, 06 Jun 2019 04:58:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=iQVQsp7yTMbyUZ8rytSHxonc28Ex6r7FqihQPfOnjW8=;
        b=a9QAxuF04hTpg0B8dGsEuCpH8U7gtBioreWz0yIR638Zk80u2ahFA2obpDkysuExhi
         gnaZvRR3Gzqvc+jwCKhnb8IqIHmtNipH1yenzXcY++kYCwnvpyecHFHDMOcM3BpWdk/S
         ygi63H8UyT4Xzrzwm6SDEOia8/arndrYDj4aiBS2pyz9ntCR8KbKEN0wdzZj2+L1ySwa
         9Nmm+Fo/SAwU7sue0OJks8G8Algw0Bmv6dE2pRj2hNN8yZK3+n9irrcwzw/lEZAA6G61
         7+1yI/zkl46awiFDWa9pV+PgZ5YnbbYQU/wKCHdS63TrBop9qUL4Y0OCGDAnQzRxWJcp
         twiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=iQVQsp7yTMbyUZ8rytSHxonc28Ex6r7FqihQPfOnjW8=;
        b=kcbbJFsEpB4u5clMF5GtuXGrAWKxMXM2whKWPEjDqpx1k3z5kLJ3U0SD9gRCSn+Waa
         daNO07R2vtUL/9QtJ1ErEmzc4xyn+XIDWr0MHUZrEFchSeIx7E3XyejnySuHdY7aP4hm
         7OLe+rPnvb1lMOO/OJvMMXn2+RlAyj+1C6WiWCv764L5HHrwcMxp4Q3gNVkrIW71L1f+
         8uxQq+7t3pzCBN3ee1lON6S8UHAg1HKYn4Cm/6G+BD++v1/Ilrk7NCVMfQBFLDZcc31f
         ULHyCVi9vLT6GUEBdywwW5eOBEyq4Qu/Qpa6TALjzgJnSQ9oncJuf56qLovbmVftWujf
         +cyw==
X-Gm-Message-State: APjAAAWD2eqGTtTeg8ZTxKMP4Pu11wmgLLGXDL+lq6VS1BE2H0NPsLg2
        mp3LeuSIl9EMezNcSNf5Ne4BQQ==
X-Google-Smtp-Source: APXvYqxYzBpcZtw9gqPO/J05cK+ojwGsBT4wUti524KX8WKqkfLLTYe3HsMes+lMVRuANk648TV7hg==
X-Received: by 2002:a5d:4087:: with SMTP id o7mr15711726wrp.277.1559822281127;
        Thu, 06 Jun 2019 04:58:01 -0700 (PDT)
Received: from [192.168.86.34] (cpc89974-aztw32-2-0-cust43.18-1.cable.virginm.net. [86.30.250.44])
        by smtp.googlemail.com with ESMTPSA id k184sm1836981wmk.0.2019.06.06.04.58.00
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 06 Jun 2019 04:58:00 -0700 (PDT)
Subject: Re: [PATCH v2] arm64: dts: qcom: Add Dragonboard 845c
To:     Bjorn Andersson <bjorn.andersson@linaro.org>,
        Andy Gross <agross@kernel.org>,
        David Brown <david.brown@linaro.org>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20190606043851.18050-1-bjorn.andersson@linaro.org>
From:   Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Message-ID: <64d89d4e-df71-1204-42cf-be5c93617a06@linaro.org>
Date:   Thu, 6 Jun 2019 12:57:59 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190606043851.18050-1-bjorn.andersson@linaro.org>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 06/06/2019 05:38, Bjorn Andersson wrote:
> This adds an initial dts for the Dragonboard 845. Supported
> functionality includes Debug UART, UFS, USB-C (peripheral), USB-A
> (host), microSD-card and Bluetooth.
> 
> Initializing the SMMU is clearing the mapping used for the splash screen
> framebuffer, which causes the board to reboot. This can be worked around
> using:
> 
>    fastboot oem select-display-panel none
> 
> Signed-off-by: Bjorn Andersson <bjorn.andersson@linaro.org>
> ---
> 
Tested-by: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
