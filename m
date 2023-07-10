Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 35DBD74CCD1
	for <lists+devicetree@lfdr.de>; Mon, 10 Jul 2023 08:26:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230527AbjGJG0B (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 10 Jul 2023 02:26:01 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33508 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230496AbjGJGZp (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 10 Jul 2023 02:25:45 -0400
Received: from mail-ed1-x52b.google.com (mail-ed1-x52b.google.com [IPv6:2a00:1450:4864:20::52b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 50284185
        for <devicetree@vger.kernel.org>; Sun,  9 Jul 2023 23:25:37 -0700 (PDT)
Received: by mail-ed1-x52b.google.com with SMTP id 4fb4d7f45d1cf-51e5da802afso130473a12.3
        for <devicetree@vger.kernel.org>; Sun, 09 Jul 2023 23:25:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1688970336; x=1691562336;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=drdnhLURZEPaimksDzGGidvaf1tZatFdFlk35KUhevU=;
        b=U7YuqLDpKYEf9nFKzVz4vye09/kMzj5aemcbwPVozSJkkwnHdtJ1eyyPPWPzaWt2mF
         52butmA+muHWdPkw7MDVrxrN1mOVrdzw69/rl2Aog0gJ2826pubwKGD1BJlJVKk3hB44
         1chwtX0ucx4A0cJI0SWS5sOF7FPEPlnJkiUX7+famdaJmkOCGKMCjL6ErTfOpHMRFTTv
         YTJnZQcYilUyCZ9rV6uVB/w7HtUl/QelZwHZVIaB5OpvcmzrZiTEoXTIBTpre1izibLV
         B5JJyRWUEDzxT8OwuM8UnpButRjJI74TN6zFSVzFnOpd4liV8IV1grxv+aUj/tCNnYEp
         O/+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1688970336; x=1691562336;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=drdnhLURZEPaimksDzGGidvaf1tZatFdFlk35KUhevU=;
        b=NTIXF8Fhk/udGFFl4ZKG15rd6/cHr3TOksi9su0+is3YCeEVQ5gy08l1F3tDiwgKAB
         /SRHaKsu8C3mCj5GZZ480ariFoh1U9KxFDS8xCe0qnDP/RGNoJ20mVOKuQ82jYFF3b1m
         MGKwk5ul4K7jmcR1bZqkK8kY9RqOjRU9yRqd2BhUaKH3mp/KEBh1MvMvgaaXTMUzvJ1Q
         /D49iyLTehQj2DC/l7Plj2Oah5oSgO3m4x208giYX9H5OeVBk8RM9S5lIC1bMY/LwwZa
         8OgqtGzwqKy0m7PvMfcqB7bOaSBocZokwTExQE4gFPK0z8LxWgaQ33Jn/CHmUKlwNcuV
         YHiw==
X-Gm-Message-State: ABy/qLZfILil5EFNeUxjUk3bK3WRasYqLJ8xImCjwLritpfEUJDsq0mT
        KCvJWZ24DvvkbdrEJomdRj9bLw==
X-Google-Smtp-Source: APBJJlFa7JPuu2IaQBSIWHdBfw2zDOJRj6l7fKN0eBLvqoDyOgCh3F6VxVDLOfWmn47k0KvG1/4mkg==
X-Received: by 2002:a05:6402:1ac4:b0:51b:cee4:fc21 with SMTP id ba4-20020a0564021ac400b0051bcee4fc21mr11060214edb.39.1688970335883;
        Sun, 09 Jul 2023 23:25:35 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.223.104])
        by smtp.gmail.com with ESMTPSA id i25-20020aa7dd19000000b0051dd19d6d6esm5373971edv.73.2023.07.09.23.25.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 09 Jul 2023 23:25:35 -0700 (PDT)
Message-ID: <10b2f68f-20b7-d226-467e-ef2b5ab34333@linaro.org>
Date:   Mon, 10 Jul 2023 08:25:33 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
Subject: Re: [PATCH v2] arm64: dts: imx8ulp-evk: add caam jr
Content-Language: en-US
To:     Pankaj Gupta <pankaj.gupta@nxp.com>,
        "robh+dt@kernel.org" <robh+dt@kernel.org>,
        "krzysztof.kozlowski+dt@linaro.org" 
        <krzysztof.kozlowski+dt@linaro.org>,
        "conor+dt@kernel.org" <conor+dt@kernel.org>,
        "shawnguo@kernel.org" <shawnguo@kernel.org>,
        "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
        "kernel@pengutronix.de" <kernel@pengutronix.de>,
        "festevam@gmail.com" <festevam@gmail.com>,
        dl-linux-imx <linux-imx@nxp.com>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Cc:     Varun Sethi <V.Sethi@nxp.com>
References: <20230616174050.644880-1-pankaj.gupta@nxp.com>
 <DU2PR04MB86300C782DC7637C469599EC9526A@DU2PR04MB8630.eurprd04.prod.outlook.com>
 <PAXPR04MB8638AD814BC6A3BFF6A822209530A@PAXPR04MB8638.eurprd04.prod.outlook.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <PAXPR04MB8638AD814BC6A3BFF6A822209530A@PAXPR04MB8638.eurprd04.prod.outlook.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 10/07/2023 07:27, Pankaj Gupta wrote:
> Hi All,
> 
> Gentle reminder. Please review this patch.

Why do you ping just after the merge window? You sent the patch during
or just before the merge window when SoC's maintainer tree is obviously
closed, so why so impatient? Instead try to adjust to Linux kernel
process instead of pinging us...

Best regards,
Krzysztof

