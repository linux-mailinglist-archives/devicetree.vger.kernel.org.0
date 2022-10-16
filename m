Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 73A35600063
	for <lists+devicetree@lfdr.de>; Sun, 16 Oct 2022 17:06:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229697AbiJPPGL (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 16 Oct 2022 11:06:11 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48804 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229826AbiJPPGJ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 16 Oct 2022 11:06:09 -0400
Received: from mail-qt1-x830.google.com (mail-qt1-x830.google.com [IPv6:2607:f8b0:4864:20::830])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E7289422D3
        for <devicetree@vger.kernel.org>; Sun, 16 Oct 2022 08:06:00 -0700 (PDT)
Received: by mail-qt1-x830.google.com with SMTP id l28so6432537qtv.4
        for <devicetree@vger.kernel.org>; Sun, 16 Oct 2022 08:06:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=sZRp/fSwQq25KMpGhSZVmGnYNucuD6Tcnn49Kw1Ky48=;
        b=TYHVsGCeK1huMx7iRcl5ZkR5iFfPLnDfD0Ay8IPxJFA7kMJ29tvnWr6edCMGUxPOho
         xOwn0zn9STFngRPfDC+2Kzu/Fk4/S5N+cQXwoCCzW8YIcKm7VOPzSe0RZQmEgGeoRKrm
         W9G9js11IGI8th2W6h1luDsMwdEH8pa8KXxpnovy07kSYctSA26d9Kql/0byEX46yh3P
         E+CawSCBb+KnrKfqkxpcTK3qblJio+yYNPJ6pASsMPV0zJDePfdshiOp4bOqRG8niBPQ
         dAEMl4fMkxUP1FbNTcZigE/Pmt91Dwmk2n3Y5JXIS8hJ8ye/lYKfinl8GwpYF3T+vkNj
         rFSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=sZRp/fSwQq25KMpGhSZVmGnYNucuD6Tcnn49Kw1Ky48=;
        b=O4grQnTfl/FedmYhTsLyv4qxaYRIVLXdH6A4OWwiJp8Qpp+LHgFnE3BTjLDXoVM+5n
         REwpHSQbYtJkxW/O/rWTQp4kwGzfubOeoNh+gp0BIAilDyYPJIhqpC8CH95w0SqcL7Gk
         Pp3yRti2jchZDaGboAb3LcfRLj5ly7WaGcTFSoNdEIBA/yz3r7IHzfU1TWv04SMTZaxI
         i8G/ODaRV0mLjiTc1cET0WjW3lREML1T3P6x4A8Tl5mae4EpJ9bD6IZMQyGmtG/skJps
         YctRpP/AtHbbtFIsHnsbSsq9OWEichUEa3u74Y7/boqBO73COYRzc8Uc+jEHbQH2xkR1
         /6Ug==
X-Gm-Message-State: ACrzQf3lolsIjevepGXHcgfJLPwypVLSMfNqWkFJDTgVU8JQYQkWWRts
        wrVitJtL6QENBHADhNOI5B8vQw==
X-Google-Smtp-Source: AMsMyM40b617U3a6uGTVRT5RHjRhTstA6B9hRcf7vlbFDNy16XMMoRZlf5BOcXK97FsKax34nJms3Q==
X-Received: by 2002:a05:622a:174b:b0:35d:1be5:c65e with SMTP id l11-20020a05622a174b00b0035d1be5c65emr5351950qtk.422.1665932759534;
        Sun, 16 Oct 2022 08:05:59 -0700 (PDT)
Received: from ?IPV6:2601:42:0:3450:9b13:d679:7b5b:6921? ([2601:42:0:3450:9b13:d679:7b5b:6921])
        by smtp.gmail.com with ESMTPSA id bm11-20020a05620a198b00b006ee96d82188sm7245263qkb.1.2022.10.16.08.05.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 16 Oct 2022 08:05:58 -0700 (PDT)
Message-ID: <edc9e423-0aab-e0bf-8307-abbbcf68b1d9@linaro.org>
Date:   Sun, 16 Oct 2022 11:05:57 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.2
Subject: Re: [PATCH v2 01/20] media: dt-bindings: Convert imx290.txt to YAML
Content-Language: en-US
To:     Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        linux-media@vger.kernel.org
Cc:     Sakari Ailus <sakari.ailus@iki.fi>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Alexander Stein <alexander.stein@ew.tq-group.com>,
        Dave Stevenson <dave.stevenson@raspberrypi.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        devicetree@vger.kernel.org
References: <20221016061523.30127-1-laurent.pinchart@ideasonboard.com>
 <20221016061523.30127-2-laurent.pinchart@ideasonboard.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221016061523.30127-2-laurent.pinchart@ideasonboard.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 16/10/2022 02:15, Laurent Pinchart wrote:
> Convert the Sony IMX290 DT binding from text to YAML. Add Manivannan as
> a maintainer given that he is listed in MAINTAINERS for the file, as
> volunteering myself.
> 
> The name of the input clock, "xclk", is wrong as the hardware manual
> names it INCK. As the device has a single clock, the name could be
> omitted, but that would require a corresponding change to the driver and
> is thus a candidate for further patches.
> 

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

