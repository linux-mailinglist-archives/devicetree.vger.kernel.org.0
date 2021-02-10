Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1734F316577
	for <lists+devicetree@lfdr.de>; Wed, 10 Feb 2021 12:45:20 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231124AbhBJLos (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 10 Feb 2021 06:44:48 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33312 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229789AbhBJLme (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 10 Feb 2021 06:42:34 -0500
Received: from mail-wr1-x42d.google.com (mail-wr1-x42d.google.com [IPv6:2a00:1450:4864:20::42d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6AB26C061756
        for <devicetree@vger.kernel.org>; Wed, 10 Feb 2021 03:40:32 -0800 (PST)
Received: by mail-wr1-x42d.google.com with SMTP id g6so2072177wrs.11
        for <devicetree@vger.kernel.org>; Wed, 10 Feb 2021 03:40:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=to:cc:references:from:subject:message-id:date:mime-version
         :in-reply-to:content-language:content-transfer-encoding;
        bh=5GoJC4V0UCuiiuIOTJUq3dIm+H2v/ROpsGNFKYUDXXU=;
        b=Qi5XNSOFPAVFMr0fcYS7hcd3qhkQTLTVqeruUI9G2lw1lgceAhsT2AYnmtP9wVURdp
         7PAZENJo35MBq8rQiYSjPTTkHrTP7/qncDHbV+j3O/Euq6kAKQ62yDYuIJt+c2OCtoWo
         Z4/hWslhlVa7iv2ROx5r/aDDHKf9F4YXl4w1QlvqxlgrSdJAr7E0qROdgDvjDyfhqgfe
         XCEIodx+aMr7xnX23ufyqWM6AsdTipeHFNJ/JTXE7tUMVl99QyGEQizweoERsWY2v8xb
         LQa0bCMlSi9rEAAEUBWCIIp9/A1e5xW4rv3S9mQKzCLlDfTkdFm0JVqbj6uUKFAmd/pV
         3uTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:to:cc:references:from:subject:message-id:date
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=5GoJC4V0UCuiiuIOTJUq3dIm+H2v/ROpsGNFKYUDXXU=;
        b=ATaip7beAgxn86KhQPWGISTdahKdIJYoLRkFJ/puHVeMV4WbgILM//OVDjolF3OQ1n
         Rn+VslbEgzr5rxIYnkJ0ueAPPLhVJ+0dIbFj7iDunVzTrYJLTgjON3rzilRS1nOxHOGt
         OLBV7+uLh7Bm9LowMh6oPX8Bbs/gBZfEbncURWbVMpNXwIsL42JBAEZaJKEvJUeKfFk2
         uTIPtvS9iVOpezDdgvOLU34wpX+gtT21s4EXbzJcIj2qCbNPt6xYf5pzUVwb9DR8YPrj
         n6oaFzbvpfbLSp1JhZ5CJ71KEIt9R1Zs9hB573c4lQ0iYCAycdecx6jIAQ19t1B+bQCJ
         VtPw==
X-Gm-Message-State: AOAM531B2oQcst/vtbO9SFb/tdpqHSlyvx9Mg/Vtp6jIdsx2XYOE0XEt
        R3XziMnNSdcz42zDdIwlYzHRjw==
X-Google-Smtp-Source: ABdhPJxzau1EbOBPcSPe2+wNcHLxx/mMRPnSIsn0pb7u1nT2J0Pqr4ogGG9I/HtSEhRYsfiKnwqv7w==
X-Received: by 2002:a5d:6712:: with SMTP id o18mr3077510wru.375.1612957231068;
        Wed, 10 Feb 2021 03:40:31 -0800 (PST)
Received: from [10.44.66.8] ([212.45.67.2])
        by smtp.googlemail.com with ESMTPSA id c62sm2216146wmd.43.2021.02.10.03.40.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 10 Feb 2021 03:40:30 -0800 (PST)
To:     Vinod Koul <vkoul@kernel.org>
Cc:     linux-arm-msm@vger.kernel.org,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Odelu Kukatla <okukatla@codeaurora.org>,
        linux-pm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20210210104724.340991-1-vkoul@kernel.org>
 <20210210104724.340991-2-vkoul@kernel.org>
From:   Georgi Djakov <georgi.djakov@linaro.org>
Subject: Re: [PATCH 2/2] interconnect: qcom: Add SM8350 interconnect provider
 driver
Message-ID: <8ab6dfcc-a710-1ecd-6774-1f54ce30685c@linaro.org>
Date:   Wed, 10 Feb 2021 13:40:29 +0200
MIME-Version: 1.0
In-Reply-To: <20210210104724.340991-2-vkoul@kernel.org>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Vinod,

On 2/10/21 12:47, Vinod Koul wrote:
> Add driver for the Qualcomm interconnect buses found in SM8i350 based

SM8i350?

> platforms. The topology consists of several NoCs that are controlled by
> a remote processor that collects the aggregated bandwidth for each
> master-slave pairs.
> 
> Generated from downstream interconnect driver written by David Dai
> 
> Signed-off-by: Vinod Koul <vkoul@kernel.org>
> ---
>   drivers/interconnect/qcom/Kconfig  |  10 +
>   drivers/interconnect/qcom/Makefile |   2 +
>   drivers/interconnect/qcom/sm8350.c | 635 +++++++++++++++++++++++++++++
>   3 files changed, 647 insertions(+)
>   create mode 100644 drivers/interconnect/qcom/sm8350.c
> 
> diff --git a/drivers/interconnect/qcom/Kconfig b/drivers/interconnect/qcom/Kconfig
> index a8f93ba265f8..2ad0aea8336a 100644
> --- a/drivers/interconnect/qcom/Kconfig
> +++ b/drivers/interconnect/qcom/Kconfig
> @@ -85,5 +85,15 @@ config INTERCONNECT_QCOM_SM8250
>   	  This is a driver for the Qualcomm Network-on-Chip on sm8250-based
>   	  platforms.
>   
> +config INTERCONNECT_QCOM_SM8350
> +	tristate "Qualcomm SM8350 interconnect driver"
> +	depends on INTERCONNECT_QCOM
> +	depends on (QCOM_RPMH && QCOM_COMMAND_DB && OF) || COMPILE_TEST

Maybe depend on INTERCONNECT_QCOM_RPMH_POSSIBLE instead of the above.

Thanks,
Georgi
