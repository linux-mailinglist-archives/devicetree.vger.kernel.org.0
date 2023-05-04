Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CF3276F655A
	for <lists+devicetree@lfdr.de>; Thu,  4 May 2023 08:56:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229806AbjEDG4o (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 4 May 2023 02:56:44 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:32974 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229482AbjEDG4o (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 4 May 2023 02:56:44 -0400
Received: from mail-ed1-x531.google.com (mail-ed1-x531.google.com [IPv6:2a00:1450:4864:20::531])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7AF0FE7
        for <devicetree@vger.kernel.org>; Wed,  3 May 2023 23:56:42 -0700 (PDT)
Received: by mail-ed1-x531.google.com with SMTP id 4fb4d7f45d1cf-5083bd8e226so44119a12.3
        for <devicetree@vger.kernel.org>; Wed, 03 May 2023 23:56:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1683183401; x=1685775401;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=MPztowsHFezqyJZyXA5xp92FGwLNK6UgVy0YahbGY3I=;
        b=Mxv2KpyGZCTGhXp2O9LlsdA91/hBG3ZNp7t1UqdUJJxgK8CEjY31JGt2O1FkGSMIUI
         gywj34DwdU2ROUb4VQFgak0gqKBi0MGXZZOV0y9RxuvBkvu/ARS4Ml40uPjcd5tyiC0i
         Nq7eHz33fNywrtKSOBTvptBuOBY63jC+29cDk+xPDv6ytFrVn0vLktWvdDXh/m2epxzs
         NYrcUMV3Psm7l2WqQaK9iI0UTEEuqVI5FDVVDFvEsZPB3wgtTs1I5qoad0AHjumRm9HK
         QxOxCJW5vuH2tbgA7LlaqSi4DBXBuVMmUCjCLu19hnCd2VOMmXryCf4/FTkvOTJWLT0P
         Pwaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683183401; x=1685775401;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=MPztowsHFezqyJZyXA5xp92FGwLNK6UgVy0YahbGY3I=;
        b=D/saMDAsQNRIiRBMco2IHxXmrMTHiwq+Ps+XUA7Ef16K404rlhHoB7S0fwhE8A5i5K
         w2g4wGfSYDBCYSQYdF51uP9EFLdwFc0RNjZwQdmpVzDS2ZSS460tkB8W4LCIze8ZV1oz
         L321X9RzJqsca/zW9DSzuTp5933iJ0g6Cmd4G10w3AHnCCVuMXgw4upADQmmKGOSSg3P
         eHMUNFIrc6hBFNtnvwDHHyA5UbGaTIdufH/5mvnwGWmkPdZX6CM+n4+kCVAUxiXTmfBQ
         XgMt5r3VKJnAzKm9YslMOewD4cMQhMMqXRf0rFghOSBXN9ST5mt8CtMuTaqfD99c7FwF
         qnpQ==
X-Gm-Message-State: AC+VfDwYVX8p7s/dPYsMXo4+IycjS9SA33oyoOkM8omCMeXe5a1/E8Oz
        sHuJ/xmmsJ/C358MWz6wv+UIZw==
X-Google-Smtp-Source: ACHHUZ4OJG8CDDodcJIsjMvOC4I5DfEGi2wbUws6WYHRe+HNPQWn8aKvHvIr7+W+5YokPni+wwLX6A==
X-Received: by 2002:a17:907:72d4:b0:94f:80d6:b825 with SMTP id du20-20020a17090772d400b0094f80d6b825mr7003281ejc.19.1683183400940;
        Wed, 03 May 2023 23:56:40 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:cbf1:e7ef:fb81:e912? ([2a02:810d:15c0:828:cbf1:e7ef:fb81:e912])
        by smtp.gmail.com with ESMTPSA id q3-20020aa7da83000000b005021d210899sm1516556eds.23.2023.05.03.23.56.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 03 May 2023 23:56:40 -0700 (PDT)
Message-ID: <9ac282d5-9b37-dae9-2cb6-824dc50b2183@linaro.org>
Date:   Thu, 4 May 2023 08:56:39 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.1
Subject: Re: [PATCH 2/2 v5] Watchdog: Add marvell GTI watchdog driver
Content-Language: en-US
To:     Bharat Bhushan <bbhushan2@marvell.com>, wim@linux-watchdog.org,
        linux@roeck-us.net, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, linux-watchdog@vger.kernel.org,
        devicetree@vger.kernel.org
References: <linux-kernel@vger.kernel.org, sgoutham@marvell.com>
 <20230503121016.6093-1-bbhushan2@marvell.com>
 <20230503121016.6093-2-bbhushan2@marvell.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230503121016.6093-2-bbhushan2@marvell.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-6.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 03/05/2023 14:10, Bharat Bhushan wrote:
> This patch add support for Marvell GTI watchdog.  Global timer
> unit (GTI) support hardware watchdog timer. Software programs
> watchdog timer to generate interrupt on first timeout, second
> timeout is configured to be ignored and system reboots on
> third timeout.
> 
> Signed-off-by: Bharat Bhushan <bbhushan2@marvell.com>



> +
> +static void gti_clk_disable_unprepare(void *data)
> +{
> +	clk_disable_unprepare(data);
> +}
> +
> +static int gti_wdt_get_cntfrq(struct platform_device *pdev,
> +			      struct gti_wdt_priv *priv)
> +{
> +	int err;
> +
> +	priv->sclk = devm_clk_get(&pdev->dev, NULL);
> +	if (IS_ERR(priv->sclk))
> +		return PTR_ERR(priv->sclk);

NAK. Undocumented property. Test your DTS. There is no way it was
working. Either you did not test DTS against bindings or you did not
test driver and DTS together.

Better actually to upstream your DTS...

Best regards,
Krzysztof

