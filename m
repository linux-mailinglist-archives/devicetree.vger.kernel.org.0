Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C588F475D0D
	for <lists+devicetree@lfdr.de>; Wed, 15 Dec 2021 17:14:20 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S244543AbhLOQM1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 15 Dec 2021 11:12:27 -0500
Received: from smtp-relay-internal-1.canonical.com ([185.125.188.123]:54324
        "EHLO smtp-relay-internal-1.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S230423AbhLOQM0 (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Wed, 15 Dec 2021 11:12:26 -0500
Received: from mail-lf1-f71.google.com (mail-lf1-f71.google.com [209.85.167.71])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 7D9113F1F6
        for <devicetree@vger.kernel.org>; Wed, 15 Dec 2021 16:12:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1639584745;
        bh=Gqc3SWSuQa3GN/NS9ZGbbsxJWcy8NtTw1YR++9SWwQw=;
        h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
         In-Reply-To:Content-Type;
        b=KGshOtyxuE3MVTKTbOebTCBv+DVq/p4jcjEwTGbIL8JFb7lNiKMOvNmPIPFh4T8cH
         FwZGtxoFMIhh2ot1SGULocc5se5T+aGVFtMmG2HfoWI6FwQO5xWkx1fitdbA0G7oee
         iHqTk57QTlSxMIwzt5l5TzVGYH0/m56nV4WKpXByXUm6P4Lgx5DbiqJ/psIKY2pVB4
         1WWf1VhTr2WVz4Pbyydi6ielc9bsyVviy951dtwrSI/hpcWWkUonesXa8302MZlha9
         RzgjWMdSXSAj7etc4R/PO9R2UewKyjNdcrhNYAjqI3v2dUKRWmvlrm+aCxu/pZajmJ
         DylpBfQDULzOw==
Received: by mail-lf1-f71.google.com with SMTP id bq6-20020a056512150600b0041bf41f5437so9818687lfb.17
        for <devicetree@vger.kernel.org>; Wed, 15 Dec 2021 08:12:25 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=Gqc3SWSuQa3GN/NS9ZGbbsxJWcy8NtTw1YR++9SWwQw=;
        b=dYuANGnRZ8qnE4i+z5Mj6orprgtI7S/KZNhknXsbi4feMaxpEQeyo7wbHuzmaUyuKW
         V5PCXVxWwUiWGAGAdh8SlIcEPRNqk7ArvSv8UrcZi7XWh3HhmN/SVs88YlDOyuIM74GP
         k2C5Atn+HCeHPem0GV5Nja5PWX5S0q0OjnTqJbJrZfP2muLTPAaH0Ilnyw5TFmK6uXeI
         KOxNUybNN3cAt1tL8bMq1RxghNNk+1rO5BR/U1Dw/jWVI6HedFIMkrVNUN0HOoO6qfFV
         t0VVe09icH03YXAvgJrBS/2gpn4OIDDtyie4E+9/k09+kTEbEYDIyyDUva9j4vwpAQ8d
         BC7w==
X-Gm-Message-State: AOAM532A++3Spv2qUS0g7Uy+EW3bMfAK7iVM0pqt+mxXI8hCQp2AauIL
        zfEMg08AKTQLtCa5YBOYX+TVoZ0/ZkQz8tPV75fVfbX/lztlPTavoG39iMoUwrTEsdfFJ1Pufbz
        UsR0joVHodRYJyLiRpIWqT6AbmMpatzwQnf7sqEk=
X-Received: by 2002:a05:6512:3682:: with SMTP id d2mr10716074lfs.442.1639584744925;
        Wed, 15 Dec 2021 08:12:24 -0800 (PST)
X-Google-Smtp-Source: ABdhPJxNVGmlJj0OKjNo7M0Kl/aa/AKzI1cH8gLEUiWMbPVLW5IlObeJGkS3Mke6b9GAr49iwqZ8LQ==
X-Received: by 2002:a05:6512:3682:: with SMTP id d2mr10716048lfs.442.1639584744769;
        Wed, 15 Dec 2021 08:12:24 -0800 (PST)
Received: from [192.168.3.67] (89-77-68-124.dynamic.chello.pl. [89.77.68.124])
        by smtp.gmail.com with ESMTPSA id i21sm384643lfr.133.2021.12.15.08.12.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 15 Dec 2021 08:12:24 -0800 (PST)
Message-ID: <1111ab2c-d542-c464-6367-deb487867ce7@canonical.com>
Date:   Wed, 15 Dec 2021 17:12:23 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.1
Subject: Re: [PATCH 2/7] clk: samsung: exynos850: Add missing sysreg clocks
Content-Language: en-US
To:     Sam Protsenko <semen.protsenko@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Sylwester Nawrocki <s.nawrocki@samsung.com>
Cc:     Jaewon Kim <jaewon02.kim@samsung.com>,
        Chanho Park <chanho61.park@samsung.com>,
        David Virag <virag.david003@gmail.com>,
        Youngmin Nam <youngmin.nam@samsung.com>,
        Tomasz Figa <tomasz.figa@gmail.com>,
        Chanwoo Choi <cw00.choi@samsung.com>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>,
        Linus Walleij <linus.walleij@linaro.org>,
        Daniel Palmer <daniel@0x0f.com>,
        Hao Fang <fanghao11@huawei.com>,
        linux-arm-kernel@lists.infradead.org,
        linux-samsung-soc@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org
References: <20211215160906.17451-1-semen.protsenko@linaro.org>
 <20211215160906.17451-3-semen.protsenko@linaro.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
In-Reply-To: <20211215160906.17451-3-semen.protsenko@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 15/12/2021 17:09, Sam Protsenko wrote:
> System Register is used to configure system behavior, like USI protocol,
> etc. SYSREG clocks should be provided to corresponding syscon nodes, to
> make it possible to modify SYSREG registers.
> 
> While at it, add also missing PMU and GPIO clocks, which looks necessary
> and might be needed for corresponding Exynos850 features soon.
> 
> Signed-off-by: Sam Protsenko <semen.protsenko@linaro.org>
> ---
>  drivers/clk/samsung/clk-exynos850.c | 29 +++++++++++++++++++++++++++++
>  1 file changed, 29 insertions(+)
> 


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>


Best regards,
Krzysztof
