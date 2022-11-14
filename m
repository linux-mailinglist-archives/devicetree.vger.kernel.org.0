Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 361246277C7
	for <lists+devicetree@lfdr.de>; Mon, 14 Nov 2022 09:33:50 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236017AbiKNIdr (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 14 Nov 2022 03:33:47 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51846 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236181AbiKNIdp (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 14 Nov 2022 03:33:45 -0500
Received: from mail-lj1-x22d.google.com (mail-lj1-x22d.google.com [IPv6:2a00:1450:4864:20::22d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id ADFEAD58
        for <devicetree@vger.kernel.org>; Mon, 14 Nov 2022 00:33:43 -0800 (PST)
Received: by mail-lj1-x22d.google.com with SMTP id h12so12178558ljg.9
        for <devicetree@vger.kernel.org>; Mon, 14 Nov 2022 00:33:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=nv2mTO1mXU+qJR78pkHuvDmOxMUqFbsFRYLJz+d7S94=;
        b=ikIRcb62a3RaRtVJ3D0zUJTavMFwzObC8GwZ6MQE/vn/LpOkMT6vbNJoFX9+RXNgR+
         D12bGcSKlz8TacLLq6qku+kk51IHXLXxTHLdhYxVmZCV9wrJPilKz1I1rWZNLws7T8ro
         AZKCuceLHFO69fRuQyBfv3kDvtfwdpIcL9ajr0izjaJeTghUxp2iAHd0RfKytyyv6Vv3
         wRs6mOvgcJHQ4njjxLrWMAWnT1HsdXcgKEUjX6jvYVfitbuSUXzNgyxnf6MBc8wUEob1
         UzoS+X2C0TcuHmPQEI1OOOGWrhY6znn4de8JdmLfEnn0DcOwYc94fywUKH1Hq4/hMRoL
         ZygQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=nv2mTO1mXU+qJR78pkHuvDmOxMUqFbsFRYLJz+d7S94=;
        b=3UwBzKGvK6k53M2ipNS9nM4A9DulUAi9BR/UKxybxmw7xsQRlS8iQsQadN/hN9+CIn
         pdlN1BNV18jzxIhccFQmWKBCUmxA5mEuzNiWsDexr5jkEgYP474Q4eHPrQ9ajnIAWiBW
         1V5XV+IxE0IUtEQur062tTq9IzoIj390OV3GZn9E2LjPean+yxi4J0cqhHt6EOJzSXDL
         yUiTMwHP/fbjG3jSx3u87PLdifymvce0Oosy8FLxPjYtUoRx7X0TlrxysC1Rl3u/OQta
         Eytm/yvrRt0YuIWNEQV5fwSygvIzh5xNIF+AKjrRAT8DWG0jgSaDh5h3tD9hXaCL0qey
         x09A==
X-Gm-Message-State: ANoB5pmcmv62cmJGLhzPvxYQ6Yq5mnDdR615m0aPz4V9N/PluT8sCULQ
        U3etkdcowpMJ2ysIlK9i6LWPXw==
X-Google-Smtp-Source: AA0mqf7NU7wseUm43b1Hnk7b7Sx9HYyK8aRP5aS3CRAPNAcChnJe7cGMyGIKZlMr22/QteqOGG9+cA==
X-Received: by 2002:a2e:9d85:0:b0:277:100c:db42 with SMTP id c5-20020a2e9d85000000b00277100cdb42mr3510632ljj.417.1668414822123;
        Mon, 14 Nov 2022 00:33:42 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id u11-20020a2eb80b000000b0026dc7b59d8esm1908384ljo.22.2022.11.14.00.33.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 14 Nov 2022 00:33:41 -0800 (PST)
Message-ID: <5a6576a7-c166-119e-04da-e78d13223cc5@linaro.org>
Date:   Mon, 14 Nov 2022 09:33:40 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Subject: Re: [PATCH 1/3] dt-bindings: vendor-prefixes: Add an entry for Cloos
Content-Language: en-US
To:     Fabio Estevam <festevam@gmail.com>, shawnguo@kernel.org
Cc:     robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Fabio Estevam <festevam@denx.de>
References: <20221113124459.662004-1-festevam@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221113124459.662004-1-festevam@gmail.com>
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

On 13/11/2022 13:44, Fabio Estevam wrote:
> From: Fabio Estevam <festevam@denx.de>
> 
> Carl Cloos Schweisstechnik GmbH develops, manufactures and delivers
> welding industrial solutions:
> 
> https://www.cloos.de/de-en/
> 
> Add a vendor prefix entry for it.

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

