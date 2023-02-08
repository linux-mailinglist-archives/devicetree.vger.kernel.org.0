Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id ACFC768E97A
	for <lists+devicetree@lfdr.de>; Wed,  8 Feb 2023 09:00:46 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230440AbjBHIAo (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 8 Feb 2023 03:00:44 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46460 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230351AbjBHIAn (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 8 Feb 2023 03:00:43 -0500
Received: from mail-wm1-x330.google.com (mail-wm1-x330.google.com [IPv6:2a00:1450:4864:20::330])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7CF4B38E8B
        for <devicetree@vger.kernel.org>; Wed,  8 Feb 2023 00:00:42 -0800 (PST)
Received: by mail-wm1-x330.google.com with SMTP id n28-20020a05600c3b9c00b003ddca7a2bcbso801981wms.3
        for <devicetree@vger.kernel.org>; Wed, 08 Feb 2023 00:00:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=/T8GlSOWUMkvXqolRXEwWkOi+uALwWqOltz+lIT3MrA=;
        b=rV9fjM7Fvf6/2NSCz6hBbGN3LvJDUFpThIKPOJ5R2pfd7MSbm0MCyIX+yUTrmM/RVu
         8EDaOHut9D5nwON30SrMxEI4A0cB1xrt8LVjXGPZS/AgrlwrOY8WKLCDmkHFO6sUfroC
         3FoNxua0b0/tslQbrCqS5UxU2xAVV9L8R0OIxIXyT9OeMkemMMEUlAQOxPN7ey06LKiy
         WfBxvojKJqhSg3j52ICKZQO7W1dS52Na+0Dc45LSDHIV5a6mWqpDh5AKfH3E0R2Vv2ay
         CPepOxzUCI/E3eLWMXTvU0VHSM2DclQXYMN0OxPlXhggKQui0/ynWPm1IWO5MXSihdWj
         FIrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=/T8GlSOWUMkvXqolRXEwWkOi+uALwWqOltz+lIT3MrA=;
        b=xfXoLr4jcNIWsyNwksKHjQHihEOsN7+93/zGCHfiH6kfnCsOxaHCwlkgaf6T384hWH
         HuG550veG5wbi77oK9I4/uYt74RLkUpiQhXeOriDzM1//nKQF7KDGEQbL4QQwlBvmKBz
         go+Mu5Q4OUGrRrAov1v6CfH2GxTJLipr8+qOS/50N9dINhCwLzaV8+EYbYYNmljYXA0/
         70bMkgD9jaNQeZ49L3zQszja2JneTtHUt0IFKUqA6Yn+f4x/yvwDzfhMeKhfRA7b7j5J
         yomLS9XB8KHXmgmnqQQcd9HAqBk9iwN+g3hONqREkB09nlkgaLM8mq4gz7gBKui0eMS2
         nuOQ==
X-Gm-Message-State: AO0yUKVxVx3kY81hRZua+ysCwDMLZQ4k+IIWjaCJQqw25vCo1REn/V/U
        wuYyWX1VGLcerswFy+gmW0qgwA==
X-Google-Smtp-Source: AK7set822co0BaF2eGyw9WPSx/f1VlCycWqRGJtFjmZazwUIiofCt104vI3x8urd8BRk1Rgu7r96FQ==
X-Received: by 2002:a1c:7417:0:b0:3dd:62fe:9914 with SMTP id p23-20020a1c7417000000b003dd62fe9914mr5607876wmc.18.1675843241047;
        Wed, 08 Feb 2023 00:00:41 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id l4-20020a7bc444000000b003d9fba3c7a4sm1093383wmi.16.2023.02.08.00.00.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 08 Feb 2023 00:00:40 -0800 (PST)
Message-ID: <614486df-c792-c349-d383-c8d9910ead16@linaro.org>
Date:   Wed, 8 Feb 2023 09:00:37 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Subject: Re: [PATCH V3] arm64: defconfig: Enable scm download mode config for
 IPQ Targets
Content-Language: en-US
To:     Poovendhan Selvaraj <quic_poovendh@quicinc.com>, agross@kernel.org,
        andersson@kernel.org, konrad.dybcio@linaro.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, lee@kernel.org,
        mturquette@baylibre.com, sboyd@kernel.org,
        jassisinghbrar@gmail.com, catalin.marinas@arm.com, will@kernel.org,
        shawnguo@kernel.org, arnd@arndb.de, marcel.ziswiler@toradex.com,
        robimarko@gmail.com, dmitry.baryshkov@linaro.org,
        nfraprado@collabora.com, broonie@kernel.org,
        quic_gurus@quicinc.com, linux-arm-msm@vger.kernel.org,
        linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Cc:     quic_srichara@quicinc.com, quic_gokulsri@quicinc.com,
        quic_sjaganat@quicinc.com, quic_kathirav@quicinc.com,
        quic_arajkuma@quicinc.com, quic_anusha@quicinc.com,
        quic_devipriy@quicinc.com
References: <20230208053332.16537-1-quic_poovendh@quicinc.com>
 <20230208053332.16537-5-quic_poovendh@quicinc.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230208053332.16537-5-quic_poovendh@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 08/02/2023 06:33, Poovendhan Selvaraj wrote:
> Enabling the download mode config by default as the IPQ Targets use

Freescale IPQ?

> crashdump feature extensively to debug crashes.

That's still not enough. Only few targets use it, but all 99% others
don't yet you want to enable it by default. That's not a justification
for me, especially that I do not see problem with enabling it during
runtime.

Best regards,
Krzysztof

