Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3561E50C96B
	for <lists+devicetree@lfdr.de>; Sat, 23 Apr 2022 12:53:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235105AbiDWKzy (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 23 Apr 2022 06:55:54 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52812 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235098AbiDWKzv (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 23 Apr 2022 06:55:51 -0400
Received: from mail-ed1-x532.google.com (mail-ed1-x532.google.com [IPv6:2a00:1450:4864:20::532])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 53D10205D97
        for <devicetree@vger.kernel.org>; Sat, 23 Apr 2022 03:52:54 -0700 (PDT)
Received: by mail-ed1-x532.google.com with SMTP id b24so13226719edu.10
        for <devicetree@vger.kernel.org>; Sat, 23 Apr 2022 03:52:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=SnLxGyDlH+f6meURmeh/oYKzc3TusTflpKC2msJGp18=;
        b=VItS62qaFGAceiXdlqbdB9+ruWRpST1ulKyCNtDd1RdC50ct8mS2pXtpi3WWrh+rSP
         tNzAXjrrpBeQRm2edCURtRh9B01TYKDeSvFO0j1KgfsXpGrSSIyZ2e3MMG3HOY9DL8hc
         ZU54vrXPFwTwSRqyfF2HVTFct3Po2bvHhvK07vau0AlZfIpmB7dX0dr0VmwLGY/3CObe
         H2Skf57Xxs1NdFzKHBjz5vbrMTqV9vpv+g/xAmMQHrKLVFBBuPiqgxCsUV7fWaEclL6Y
         fW2OHrOUyjmGb4pffxxM/PpjN/qdifJtgj3R00F7XzKhLhr65t742qojYxRPGRawS4CE
         JBOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=SnLxGyDlH+f6meURmeh/oYKzc3TusTflpKC2msJGp18=;
        b=uqQJthKPysvCfMdA45f/OdVRuqMgX2YbN3w9jmfov/AC60QsWX+J7jZyPU97j0UYPF
         5DA/qj0orbsYURjtB4EvrjtZU7ojbhyn6IiByPvwgts3EHzNBddyBp9Nyih3zB/iCjv4
         jxFejpbWtLALc4mUYH6ypjHLSIyTqz/T4Z5SLE0LwmJIaqtaWdjseLPjoPvtSt4a5kjK
         lAoJCm9xq69zMJzJIVesoyboWNzwPRPRC8bbs2jkKqmc16JT6gI+nlMXlHGXTcIzdA6s
         4c8U4BQCK8D2JoqSx4xi9/fc9y8bVwiru6FXJfJfHqACFHkSCtsSUz2I4+9QDTzN3zZM
         axhg==
X-Gm-Message-State: AOAM533DN2En+S5I1rgdgTlfromUhQXvuWTUE9hK9sp5GpeS71z72DHS
        nJMMoFO8niP7qyYECcC4lEBQWA==
X-Google-Smtp-Source: ABdhPJzFYbwY1hBBb4KD1bsYKaKWZiWZFmm0TdsTCJuQO1GfWSsldiXIzka7E/qihjcWIP8Cyf4sCg==
X-Received: by 2002:a05:6402:2985:b0:425:d51f:ae4 with SMTP id eq5-20020a056402298500b00425d51f0ae4mr1518847edb.379.1650711172990;
        Sat, 23 Apr 2022 03:52:52 -0700 (PDT)
Received: from [192.168.0.234] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id d2-20020a170906040200b006e84213fdffsm1591852eja.201.2022.04.23.03.52.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 23 Apr 2022 03:52:52 -0700 (PDT)
Message-ID: <8a423201-09fc-feec-ac5b-9a8c2bea6c71@linaro.org>
Date:   Sat, 23 Apr 2022 12:52:51 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [PATCH v5 08/11] dt-bindings: usb: generic-ehci: Add HPE GXP ehci
 binding
Content-Language: en-US
To:     nick.hawkins@hpe.com, verdun@hpe.com, joel@jms.id.au,
        arnd@arndb.de, openbmc@lists.ozlabs.org
Cc:     Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-usb@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20220421192132.109954-1-nick.hawkins@hpe.com>
 <20220421192132.109954-9-nick.hawkins@hpe.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220421192132.109954-9-nick.hawkins@hpe.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 21/04/2022 21:21, nick.hawkins@hpe.com wrote:
> From: Nick Hawkins <nick.hawkins@hpe.com>
> 
> Add hpe,gxp-ehci to the generic-ehci list. This is to
> enable the device tree.
> 
> Signed-off-by: Nick Hawkins <nick.hawkins@hpe.com>


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof
