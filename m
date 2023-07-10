Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2AAFC74D082
	for <lists+devicetree@lfdr.de>; Mon, 10 Jul 2023 10:46:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231878AbjGJIqc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 10 Jul 2023 04:46:32 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56604 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231977AbjGJIqL (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 10 Jul 2023 04:46:11 -0400
Received: from mail-ed1-x52d.google.com (mail-ed1-x52d.google.com [IPv6:2a00:1450:4864:20::52d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 58A86173B
        for <devicetree@vger.kernel.org>; Mon, 10 Jul 2023 01:45:23 -0700 (PDT)
Received: by mail-ed1-x52d.google.com with SMTP id 4fb4d7f45d1cf-51d805cb33aso5710376a12.3
        for <devicetree@vger.kernel.org>; Mon, 10 Jul 2023 01:45:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1688978722; x=1691570722;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=J1kpkmX0sgE6nFdKUaA4dAqhfduRWU6fjDfbf+EuPWc=;
        b=phx5kx0qEkacp0UDLoCo0Drikd63crzZ4r+03TyajRfMLouu/oBHo/fspWLY8AVzn2
         MQ2XelLwCq1VMWsJxeNbeFW6zgscT3sXsQGVCUyv+6QgE06oH0l+UR6aOpof1T8QcjMj
         cZ2Z2ebpjIlFRjF+Kn06mM0/6ursQbsnzJ2b2HBXFWwtWf6SNoiITCQR2d0DhsSMDLUs
         9/hwhkum6Apo0ZOSdfqLYjaUiUc8qrDgKF1e3+h/XuK4WbgOR0GxZf5Dn8dVoCqIhVQj
         cymwwCh3ri14snQP5rVDkNBpsjc/MeFAoHLYVIAwHbR29IBxtVjJh3//0lsHNTG0HpoS
         gLBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1688978722; x=1691570722;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=J1kpkmX0sgE6nFdKUaA4dAqhfduRWU6fjDfbf+EuPWc=;
        b=jEK7UX3F9/5p/R1hiyKe88R3Y2IhWq8spqrw3qkWxdHs+yvW6FOsxrPwRN5niKcLsL
         lbq1GrKm9Y5lNd2wxf/tF+leGaLnCdfe9GkrNzq+o2lwMhCBBtW1fPEYOeME9lFrBzVw
         PNetKrXdzYjyTfY+E5UnhkkWvF7EYHi6W52C+RHEIo+hU4Hwub6MhsHRU1w0bkC8wSFM
         oqAkyypfs2DE1jTAvxmvIiDVq2iaT1zviuQJmoUMs7lEpVvruy0HsalEEz3m3ODTyxpL
         5pOGK7YqLaS/OVbUQby4ZtJC0tvJ0Z+l4wa8mBbsIymGQFxxaKEXTkrNs9SWjF31wNb/
         2oNw==
X-Gm-Message-State: ABy/qLZQrM8ZCdQOmfCha2LkzNPjyMyUpRsfh6F2qnBxIJxQD7iuefa3
        uwHtDExz1dyT65tqIcKeS26DSg==
X-Google-Smtp-Source: APBJJlEQa5HQMECel3uzVaxsDwQDsueU6mAxaUxGsraPRC8Bd51Gf8ISI7ENvBW5vO032jU1MO5uYA==
X-Received: by 2002:a17:907:3112:b0:94a:9f9a:b3c4 with SMTP id wl18-20020a170907311200b0094a9f9ab3c4mr10887457ejb.49.1688978721886;
        Mon, 10 Jul 2023 01:45:21 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.223.104])
        by smtp.gmail.com with ESMTPSA id rh16-20020a17090720f000b00988be3c1d87sm5797766ejb.116.2023.07.10.01.45.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 10 Jul 2023 01:45:21 -0700 (PDT)
Message-ID: <a77cdc48-632e-3d32-2f83-45f996757f06@linaro.org>
Date:   Mon, 10 Jul 2023 10:45:19 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
Subject: Re: [PATCH v2 3/4] dt-bindings: input: iqs7222: Add properties for
 Azoteq IQS7222D
Content-Language: en-US
To:     Jeff LaBundy <jeff@labundy.com>, dmitry.torokhov@gmail.com,
        robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        conor+dt@kernel.org
Cc:     linux-input@vger.kernel.org, devicetree@vger.kernel.org
References: <ZKrotyhz7eueujys@nixie71> <ZKrpOdp+rM8gDekw@nixie71>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <ZKrpOdp+rM8gDekw@nixie71>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 09/07/2023 19:07, Jeff LaBundy wrote:
> Extend the common binding to include a new variant of the silicon,
> which effectively replaces a pair of slider nodes with a trackpad
> node comprising the same or similar properties.
> 
> As part of this change, the if/then/else schema have been updated
> to identify properties that are not supported by the new device.
> 
> Signed-off-by: Jeff LaBundy <jeff@labundy.com>


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

