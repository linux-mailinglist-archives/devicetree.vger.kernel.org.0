Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 13ADF567619
	for <lists+devicetree@lfdr.de>; Tue,  5 Jul 2022 20:01:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230398AbiGESBQ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 5 Jul 2022 14:01:16 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46086 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230129AbiGESBP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 5 Jul 2022 14:01:15 -0400
Received: from mail-lf1-x135.google.com (mail-lf1-x135.google.com [IPv6:2a00:1450:4864:20::135])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6E42619C14
        for <devicetree@vger.kernel.org>; Tue,  5 Jul 2022 11:01:13 -0700 (PDT)
Received: by mail-lf1-x135.google.com with SMTP id z25so4313481lfr.2
        for <devicetree@vger.kernel.org>; Tue, 05 Jul 2022 11:01:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=0079lLmav/VCCFzPGL1GXPUq4bAgsYoN8nrtlXETWH8=;
        b=KYcHBYys3eLsXJLm/eYQ/ZNS+mx8xvwor3pYgFX5OQk5VLfScF2Zw6XEaC9gwWDo4j
         mcLzHVi9MnfgJtP8ceZceddHpveWbfkaMLYpS4HC7fK/lKAwkrusIckPnJjWcYNzuRRH
         MRLgEoedTLKgS96qcCc2SiauxBsXUtv77fmJ0D7AGCDvTsZkNBBUFJ88uAPlOSXspbxr
         MP/0EmUiIv3PBWAqry8cZQgbCioCpcYbBEKfdmw2tpLp2z6rXdfhNXLHD1RYiTNW4qbq
         7ZpIqoqifj2U6IYgwfFGInm4dTBoPEU4KLS2/tvgtuLy4Em14B3LHV5WWp0O02sKR4o8
         d/pQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=0079lLmav/VCCFzPGL1GXPUq4bAgsYoN8nrtlXETWH8=;
        b=ldRaydVZVlUwDASJacHevd77bUNvMO4k/fDpVupwMBQTF4Bam78PjN2xVojdxRlUpt
         NIf7PuEFQMli86fA9sZYoDzX8++3PgBwnLsZOgd8s1DHPf5Qto9qA82U2ePZgVIfxDQd
         rcHYPPHaO7ShGwy5zQ53hjmnq9lUTGH0pO1jtlWwTdz/ZOFiS+yQ0yZTwGEq9LezNmNu
         75WqN0FZS+W1DAknvM0P3lqdvXp5zebyxRaeH+fnPnngfnvEDCEpLhUKPuCADhkcDzCj
         AygKRYyK4dwcnFRiD6wi+2ruhY/ekz4BQRLjLePLWdiBnmdjyiUOTJSFSqxf6ZMxT5Qj
         At6w==
X-Gm-Message-State: AJIora8kiLNqFX0g7bNstX873BY2HpYhLhKoSeTbVDdDzsi2Ul7T8pBO
        xpuotx1resaYcAEqdVu3h5eUZw==
X-Google-Smtp-Source: AGRyM1upKilZU4ZKNQrEZdcfM1s7N9ZuleYTw86ANBrPbDZ8QK/h77KQm2CPc3QLLwp33Gl5u1kdjQ==
X-Received: by 2002:a05:6512:260a:b0:47f:ab30:d624 with SMTP id bt10-20020a056512260a00b0047fab30d624mr24227411lfb.326.1657044071745;
        Tue, 05 Jul 2022 11:01:11 -0700 (PDT)
Received: from [192.168.1.52] ([84.20.121.239])
        by smtp.gmail.com with ESMTPSA id bi37-20020a05651c232500b0025d3ba76992sm201662ljb.97.2022.07.05.11.01.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 05 Jul 2022 11:01:10 -0700 (PDT)
Message-ID: <919d53fc-b2c0-bd9e-09fe-d6402ad3af8b@linaro.org>
Date:   Tue, 5 Jul 2022 20:01:09 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [PATCH] dt-bindings: sound: Convert atmel CLASSD to json-schema
Content-Language: en-US
To:     Ryan.Wanner@microchip.com, Claudiu.Beznea@microchip.com,
        nicolas.ferre@microchip.com, alexandre.berna@microchip.com,
        robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org
Cc:     linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org
References: <20220705163046.18409-1-Ryan.Wanner@microchip.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220705163046.18409-1-Ryan.Wanner@microchip.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 05/07/2022 18:30, Ryan.Wanner@microchip.com wrote:
> From: Ryan Wanner <Ryan.Wanner@microchip.com>
> 
> Convert atmel CLASSD devicetree binding to json-schema.
> Change file name to match json-scheme naming.
> 
> Signed-off-by: Ryan Wanner <Ryan.Wanner@microchip.com>
> ---
>  .../bindings/sound/atmel,sama5d2-classd.yaml  | 111 ++++++++++++++++++
>  .../bindings/sound/atmel-classd.txt           |  55 ---------
>  2 files changed, 111 insertions(+), 55 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/sound/atmel,sama5d2-classd.yaml
>  delete mode 100644 Documentation/devicetree/bindings/sound/atmel-classd.txt
> 

All comments from your other patch apply here as well. It's easier to
send them in a patchset...


Best regards,
Krzysztof
