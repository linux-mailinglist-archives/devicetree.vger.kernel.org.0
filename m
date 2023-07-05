Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A3E78747CFB
	for <lists+devicetree@lfdr.de>; Wed,  5 Jul 2023 08:23:00 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231478AbjGEGWw (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 5 Jul 2023 02:22:52 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41132 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230353AbjGEGWw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 5 Jul 2023 02:22:52 -0400
Received: from mail-ej1-x62e.google.com (mail-ej1-x62e.google.com [IPv6:2a00:1450:4864:20::62e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3AF7B10E3
        for <devicetree@vger.kernel.org>; Tue,  4 Jul 2023 23:22:51 -0700 (PDT)
Received: by mail-ej1-x62e.google.com with SMTP id a640c23a62f3a-991fe70f21bso732052266b.3
        for <devicetree@vger.kernel.org>; Tue, 04 Jul 2023 23:22:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1688538170; x=1691130170;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=cT5NW4wQJ91cZNzz/oqU7a+eIw7wp42YDx+j1clN4l0=;
        b=CGkk0tJdPxNADfi30IdF/8tz9Cg9irHT+2ZtcIgHlBxuSF9KzfFzJpw27DhmWdTGli
         4acytRibYoUyyWyoZPFZKW8TPRGkXRDArWpoqnCb3P3KUYImakOlGhsG0T/8cOHtj0as
         NMMN1bJ7bWt7XeBWvMne6/fmDwOgqGaN+cJRnTWe3bJO3z8ZAKayVLEWWDsKJCoaMLhf
         OLkFQaTiJonmliBlGiL+P4UtIFT5mHFnM8X/Ky5Z8y3H4iFDwN237IJSUdBLQSMvOjtb
         Sqd59o7z14wdW3GIYAy4rdZcCETfXyMsK6w+Qhrpr7YfyAtEbuyvlKVS5MhWLtOmlT1s
         Bueg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1688538170; x=1691130170;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=cT5NW4wQJ91cZNzz/oqU7a+eIw7wp42YDx+j1clN4l0=;
        b=QskdlQ0zmG7IoZ4HrRIwlEhgWJ/6xtbJSI/VE11FM1H/jFNnrrMrHcBahGajqpMdTr
         poWLIRZ9kTpfg/4CiNogMVHGxaj+fr04f2+WwpG6/pSXKsqva0W9rm8kMPZmiCW24025
         WQ+xuv+XAODt1N2kAXjnhJqMjk9i1ABI0YQrqtij9Bw/jEL0KYaO365Y7f4uv+Trd1aE
         snoVhy2zGgF+S7ABK4wtxFUBd08RaFe5nxHaMjiwevDytVgR5jzmauez0iqTFmpvAQbF
         z6yUNZXK02X11OzsWtiDknOL25Q5YRX2qrqmBIajflCZCNBlG1YD0uIYu7IHo1qO/hfm
         d6OQ==
X-Gm-Message-State: ABy/qLZRW6mrWG5EV1f30nb2RyKHuJ01dkuXNyefTkNzhXt+JO4pBYWO
        sAh6vFeo6ISE7Rg9TwhCpM54fQ==
X-Google-Smtp-Source: APBJJlEqyEf8GppIuop8lhLwkp/2L6SQDP/kqnrTaWOdbNJxw1Zmvb5JtE/slmmN5FQr7d8hU0S9Sw==
X-Received: by 2002:a17:907:2157:b0:991:c566:979 with SMTP id rk23-20020a170907215700b00991c5660979mr11227341ejb.36.1688538169752;
        Tue, 04 Jul 2023 23:22:49 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.219.26])
        by smtp.gmail.com with ESMTPSA id g19-20020a170906869300b00992b8d56f3asm7613715ejx.105.2023.07.04.23.22.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 04 Jul 2023 23:22:49 -0700 (PDT)
Message-ID: <f9e8becf-b7c1-5a00-619e-a82b02d61b13@linaro.org>
Date:   Wed, 5 Jul 2023 08:22:47 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
Subject: Re: [PATCH v2 0/3] clk: imx: add audio clock mux driver
Content-Language: en-US
To:     Shengjiu Wang <shengjiu.wang@nxp.com>, abelvesa@kernel.org,
        peng.fan@nxp.com, mturquette@baylibre.com, sboyd@kernel.org,
        robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        conor+dt@kernel.org, shawnguo@kernel.org, s.hauer@pengutronix.de,
        kernel@pengutronix.de, festevam@gmail.com, linux-imx@nxp.com,
        shengjiu.wang@gmail.com
Cc:     linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
References: <1688521839-3036-1-git-send-email-shengjiu.wang@nxp.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <1688521839-3036-1-git-send-email-shengjiu.wang@nxp.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 05/07/2023 03:50, Shengjiu Wang wrote:
> The Audio Clock Mux (ACM) is a collection of control registers
> and multiplexers that are used to route the audio source clocks
> to the audio peripherals on i.MX8QXP, i.MX8QM, i.MX8DXL
> 
> Shengjiu Wang (3):
>   dt-bindings: clock: fsl,imx8-acm: Add audio clock mux support
>   clk: imx8: Add audio clock mux related clock
>   clk: imx: imx8: add audio clock mux driver
> 
> changes in v2:
> - update yaml file according to review comments

That's not enough. What changed?

Best regards,
Krzysztof

