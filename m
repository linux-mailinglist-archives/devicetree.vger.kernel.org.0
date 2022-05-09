Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E242251F610
	for <lists+devicetree@lfdr.de>; Mon,  9 May 2022 09:59:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230450AbiEIHlU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 9 May 2022 03:41:20 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34728 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234147AbiEIH2B (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 9 May 2022 03:28:01 -0400
Received: from mail-ej1-x634.google.com (mail-ej1-x634.google.com [IPv6:2a00:1450:4864:20::634])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4389664EA
        for <devicetree@vger.kernel.org>; Mon,  9 May 2022 00:24:04 -0700 (PDT)
Received: by mail-ej1-x634.google.com with SMTP id i27so24984544ejd.9
        for <devicetree@vger.kernel.org>; Mon, 09 May 2022 00:24:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=z5Clk3XYXTp+vmz5f/jeXgXYH06mx9BqefglYqriuK0=;
        b=KHHanOPHMJzQqw6GMXaDS9KVtVOGdklcaRuC/OvfhXffD6M69QJz260KKpWqqYpaCA
         6A3/Sdd5SwhVxkmqbwke+bGMT8WU5XQaU+DQMTDdqVgMivB5VcoAO8MFNkMepLy5OuAI
         WSTxjSIUmFpuz0fenzMVdz5HU+R7DCnoYTCWXUtu9dhTO/Ni4katAVIPuzZzuhL7+8DC
         J/ywTVxCEkeLABC7V0SeijP1PduRx5nIPfdQd/hWqvwFnSE2b01bEU8zcLUKoUYROl5p
         bgXeMuPwatUa3smZHrf2Qk3yntrVkqaTXwBdEnUsooZEZ1QYjzOjRAJY9Xcf6gHaoWmU
         U1oA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=z5Clk3XYXTp+vmz5f/jeXgXYH06mx9BqefglYqriuK0=;
        b=Oi0acXYi0hgWEjRz3blKGEWdVtPatFGpqOSL8IV+SUC3ex5RX9K5xal3JDqJ96/PvB
         V1Zelso5E/ToYi0AOxYk7gml8Vd4L9l6/nuBfsfPXbZ1SpkmE1WnJjDBScoRNHrddq80
         2gMNhsG5xFq7Sdg/gW889IGlpr+Z4xWuWraR5uqJKSJryEaw0vkhOF7PBQVQAXmiVUJ5
         of+9xkW+XXJPdiKDpPv1GjiyCMXE1nx4NtHkrMrqydx6Af3N9SygkcQYQ4aHSJP3zr1C
         PF9p6guXGINikVy0poMYM7TW5/4TxPuF5pzt5Fgq6Jfe8R1id8s8cTONZhphbj3AGq+a
         vwlQ==
X-Gm-Message-State: AOAM5302MmyN5ffcGTlCz4twUGkjVk4gjRK00qxcY64PE6Ar4MO5xVx7
        iYFaeIPXrvjUg5UZfNvQZJIAwg==
X-Google-Smtp-Source: ABdhPJxsCeAGzJhiVxk3d02pleP/R1atUtuQTe5bS4dXtMXLktM0/4uRbPSxOhKyBgBzGzmTexDkXQ==
X-Received: by 2002:a17:907:a40d:b0:6f3:d1e4:9d7b with SMTP id sg13-20020a170907a40d00b006f3d1e49d7bmr13391190ejc.69.1652081036476;
        Mon, 09 May 2022 00:23:56 -0700 (PDT)
Received: from [192.168.0.242] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id md17-20020a170906ae9100b006f3ef214e30sm4799652ejb.150.2022.05.09.00.23.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 09 May 2022 00:23:55 -0700 (PDT)
Message-ID: <0c44d40e-cded-cf35-b836-baff156f36d7@linaro.org>
Date:   Mon, 9 May 2022 09:23:54 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.1
Subject: Re: [PATCH v7 25/33] dt-bindings: crypto: rockchip: convert to new
 driver bindings
Content-Language: en-US
To:     Corentin Labbe <clabbe@baylibre.com>, heiko@sntech.de,
        ardb@kernel.org, herbert@gondor.apana.org.au,
        krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-crypto@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-rockchip@lists.infradead.org
References: <20220508185957.3629088-1-clabbe@baylibre.com>
 <20220508185957.3629088-26-clabbe@baylibre.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220508185957.3629088-26-clabbe@baylibre.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 08/05/2022 20:59, Corentin Labbe wrote:
> The latest addition to the rockchip crypto driver need to update the
> driver bindings.
> 
> Signed-off-by: Corentin Labbe <clabbe@baylibre.com>


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof
