Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5A9FD666CC1
	for <lists+devicetree@lfdr.de>; Thu, 12 Jan 2023 09:44:50 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236734AbjALIoq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 12 Jan 2023 03:44:46 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40028 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238924AbjALIn6 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 12 Jan 2023 03:43:58 -0500
Received: from mail-ej1-x62e.google.com (mail-ej1-x62e.google.com [IPv6:2a00:1450:4864:20::62e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 56D2032E81
        for <devicetree@vger.kernel.org>; Thu, 12 Jan 2023 00:43:15 -0800 (PST)
Received: by mail-ej1-x62e.google.com with SMTP id ud5so43034595ejc.4
        for <devicetree@vger.kernel.org>; Thu, 12 Jan 2023 00:43:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=4Jk8OKbJVOGO2ax+n9Uw1lMvUic32I7MAD3n/q3tQgo=;
        b=qYpxNW67LuHeOccEN11GDickCKFuAVQXpxxGp3SkmgSCI+pyvwFkqfzV8Z7L8fMtUq
         yq6y2cj6GC+Q46Fz4G0ZFhpMSNx3a7MJXpV1VLXRy4U2tOMmQ1Nqqtn/C9HT+ONP9FtE
         LKGW3Nh8P7EU3xCEodCvczBQ0ZctKQFrGTFsd6CW0raqlTHSSHhROPXZ17nksS9W5Q/O
         ZaJJMdUOGjSAv8/mQ9kiRm2jvS/F6BLK7tJ0ih1z81q5DfQdhrzofITIPywxBAj/B99y
         LOECDdYk0M+yV23QVdE3y8hzFXlpkBUTpK/usZChcjQHzHelY0fMSvgrcyw6OzepytTz
         XwDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=4Jk8OKbJVOGO2ax+n9Uw1lMvUic32I7MAD3n/q3tQgo=;
        b=fUozVDwGTtB3ovMwMBQObvZthUUv4vLPTftcA3pQbV8wLo0ibeAmW5no8hYfjh9uJI
         xVy7yx8ClryEJp62Lz4pql9ve8C6YFh6cOPC9PJodIV1uRaxFBngVArdFUo1Qv1Xe1Oa
         7EWzYZxW+H9KCiNFeV3ARpSuB2YwopLCmDxP0d02fnlci7RDKkxNBFPSeohln0J98C/3
         Pp1xubsuT2fg8xk5/x3kYUdgRrMhE6W4t+8O3fPcTWs0jqp993IYF23IBYHK0Ev5pOQU
         S7mwQUUM32YmIDDgc55Sc6f3K51rbfUVu3XIV7RSdUGGuEbwDjGt8uG9eKk0V9MAiUpb
         GAxw==
X-Gm-Message-State: AFqh2krfdQZZhWPbAhlCiXANPJa11ynUTfAFGIppoiulouSJo8tUSxgP
        L8sDw3sq0pZrQA8xlaofmkQRjA==
X-Google-Smtp-Source: AMrXdXv+OLQ9T55N8qgTS8DT/IP/wQoxXZa9DWELSSqRy6uwFm9RXdL0QXXfddBcByRlTmtKCJVTMQ==
X-Received: by 2002:a17:907:7f8a:b0:7c0:e4b7:517e with SMTP id qk10-20020a1709077f8a00b007c0e4b7517emr89699850ejc.16.1673512993898;
        Thu, 12 Jan 2023 00:43:13 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id n12-20020a1709062bcc00b007ae38d837c5sm7247249ejg.174.2023.01.12.00.43.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 12 Jan 2023 00:43:13 -0800 (PST)
Message-ID: <9c5245ef-ea6b-1aa9-c526-b96ae8708364@linaro.org>
Date:   Thu, 12 Jan 2023 09:43:11 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Subject: Re: [PATCH] dt-bindings: clk: vc5: Make SD/OE pin configuration
 properties not required
Content-Language: en-US
To:     Geert Uytterhoeven <geert+renesas@glider.be>,
        Luca Ceresoli <luca.ceresoli@bootlin.com>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Sean Anderson <sean.anderson@seco.com>,
        Marek Vasut <marek.vasut@gmail.com>
Cc:     devicetree@vger.kernel.org, linux-clk@vger.kernel.org,
        linux-reneas-soc@vger.kernel.org
References: <68037ad181991fe0b792f6d003e3e9e538d5ffd7.1673452118.git.geert+renesas@glider.be>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <68037ad181991fe0b792f6d003e3e9e538d5ffd7.1673452118.git.geert+renesas@glider.be>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 11/01/2023 16:55, Geert Uytterhoeven wrote:
> "make dtbs_check":
> 
>     arch/arm64/boot/dts/renesas/r8a77951-salvator-xs.dtb: clock-generator@6a: 'idt,shutdown' is a required property
> 	    From schema: Documentation/devicetree/bindings/clock/idt,versaclock5.yaml
>     arch/arm64/boot/dts/renesas/r8a77951-salvator-xs.dtb: clock-generator@6a: 'idt,output-enable-active' is a required property
> 	    From schema: Documentation/devicetree/bindings/clock/idt,versaclock5.yaml
> 

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

