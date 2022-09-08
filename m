Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 357725B201E
	for <lists+devicetree@lfdr.de>; Thu,  8 Sep 2022 16:06:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231918AbiIHOGm (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 8 Sep 2022 10:06:42 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58102 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230309AbiIHOGl (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 8 Sep 2022 10:06:41 -0400
Received: from mail-lj1-x22a.google.com (mail-lj1-x22a.google.com [IPv6:2a00:1450:4864:20::22a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1B4366F555
        for <devicetree@vger.kernel.org>; Thu,  8 Sep 2022 07:06:40 -0700 (PDT)
Received: by mail-lj1-x22a.google.com with SMTP id bn9so20024129ljb.6
        for <devicetree@vger.kernel.org>; Thu, 08 Sep 2022 07:06:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=yyJq2F0UIbp+QN4RLKTqNQQiuOE3MJUDBVNBCzzbv0A=;
        b=jN0L5qJ317FYKljRrrDKg+a+g5126FgqcjsqJcEV6qe4q4cnjglJnb/GMqroHSWfno
         sZrYKtZEF//nog6SYx13NsBfirUJeskM5y8XqJLmkkKxMOgL+vokp5v5IdEQ5PBjF6BI
         3bMeDZ5EnPRZvtVt/jZ9UJ6d6Hs9xlZyOSOJ+ia6/FI4cicFsS7uY6AfO1mrcljv/gSA
         MjKhwAHGNcsVgaibKu0NjzI7wmD0ZNUyc527Pn+oqDEWpObkABHLyhwCCrLPUmiw3XgY
         M/N0CQc1kLbMjwrmvxwJzYDzQ1CVgUU0JPF9dNG2KWSqBM7LJzkCFx2uDfjanv4q36HD
         4Mjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=yyJq2F0UIbp+QN4RLKTqNQQiuOE3MJUDBVNBCzzbv0A=;
        b=lcpMlxzxj3byl7PUh/OK8cZxqWc9BJdQJA5V/ENsduwCduo7pzze84VRoTJZvtcwLZ
         FsDUM/Ezsqy+LJpR1T2AY34vRselB1DK78qRM6f+Y0ethc8sMSlBT2GD72BSAdu+fnjT
         HSQo2xaopiKH0zxcVO9/O5zKDL1sAeAGCSFMRRuy3EtjrHL9uPv0lY1fQvykwDvU+Pk/
         A4Q6mWSMO5PiJsdrmY0tx/wmCECnKNZWJxUikjCDBqijjY6WsipnE+K4Bc6fBDbZ8lU+
         1kXVpf8SQDBka18d4BW+GXol621bh6fWQx5sxQtJA1QQ/Z7BQAs3c87ncTU8A0bbRZ9W
         Ssxw==
X-Gm-Message-State: ACgBeo3rtvdX6IS4S7vHwBTTZ0tWpcRUhxB7iRpyUELlUnyQMouOHaMo
        c1p6cEHr9Izyy5bZqcWwxCd3/g==
X-Google-Smtp-Source: AA6agR5LPl1a0KPnCaPB/QMCDGFCxhQnxUbgV0nlJe5WM/dkbNUMQCIkWHKyqliNnOG3IZKiDM47rA==
X-Received: by 2002:a2e:888f:0:b0:268:d10e:8a2b with SMTP id k15-20020a2e888f000000b00268d10e8a2bmr2575455lji.114.1662645998508;
        Thu, 08 Sep 2022 07:06:38 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id v23-20020ac258f7000000b00497a5a91763sm1151817lfo.12.2022.09.08.07.06.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 08 Sep 2022 07:06:37 -0700 (PDT)
Message-ID: <837b2df1-551b-3e34-4ef3-6a301278f10f@linaro.org>
Date:   Thu, 8 Sep 2022 16:06:35 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Subject: Re: [PATCH v2 3/4] dt-bindings: display: Document Jadard JD9365DA-H3
 DSI panel
Content-Language: en-US
To:     Jagan Teki <jagan@edgeble.ai>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Thierry Reding <thierry.reding@gmail.com>,
        Sam Ravnborg <sam@ravnborg.org>,
        Linus Walleij <linus.walleij@linaro.org>
Cc:     devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org
References: <20220908135940.299324-1-jagan@edgeble.ai>
 <20220908135940.299324-3-jagan@edgeble.ai>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220908135940.299324-3-jagan@edgeble.ai>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-5.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 08/09/2022 15:59, Jagan Teki wrote:
> Jadard JD9365DA-H3 is WUXGA MIPI DSI panel and it support TFT
> dot matrix LCD with 800RGBx1280 dots at maximum.
> 
> Document it.
> 
> Cc: dri-devel@lists.freedesktop.org
> Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


> Signed-off-by: Jagan Teki <jagan@edgeble.ai>
> ---
> Changes for v2:
> - collect Krzysztof ack

There was no ack.

https://lore.kernel.org/all/f492ded6-16a8-6c15-2826-6ce2f784dffe@linaro.org/

Best regards,
Krzysztof
