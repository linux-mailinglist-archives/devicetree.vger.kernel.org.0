Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C2DA9701966
	for <lists+devicetree@lfdr.de>; Sat, 13 May 2023 20:48:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233814AbjEMSsJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 13 May 2023 14:48:09 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38718 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231472AbjEMSsI (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 13 May 2023 14:48:08 -0400
Received: from mail-ed1-x52e.google.com (mail-ed1-x52e.google.com [IPv6:2a00:1450:4864:20::52e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 82166213B
        for <devicetree@vger.kernel.org>; Sat, 13 May 2023 11:47:52 -0700 (PDT)
Received: by mail-ed1-x52e.google.com with SMTP id 4fb4d7f45d1cf-50bc4b88998so19741426a12.3
        for <devicetree@vger.kernel.org>; Sat, 13 May 2023 11:47:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1684003671; x=1686595671;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=QNxit4G2OfHy/dgY5eKaeotVIwzUn6LBJoJYUQTnfKQ=;
        b=MDRhxcS+xAjgrYeNvIz4eieHgiRzS20rlP4Cw7u1uo3zw3cV2J1Dbs0G5BV7uHmn9W
         93IUTvc1B4vB/Bul0fyXzI25uUPemt9y6e9vxXfUbdFZQSfUmL3aJNhMG1Xr1fjpZ//g
         rD4mnhflra37yysYnVeDbc3nYp54hAs0xL058/ICDF8w4CgJ5e3HqBgwJIKpASSGARDZ
         2CXoSCR85vobyZNA4dLaLeFBR8y/V1Z9qHcF/10igkOydtED3KfykzQiec76tELNJKYg
         8XefryRqah7EX70bgqO69IFYDFrOUiqTZzGgKyVtuLIheqFW0Zu9tqX8W9dUil7EhKg1
         rp6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684003671; x=1686595671;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=QNxit4G2OfHy/dgY5eKaeotVIwzUn6LBJoJYUQTnfKQ=;
        b=Ve9p4hDjHtxLzs334CAucEb+97q1UqNaWwonMIuT4tMcLJsf+NxmQSDOOJIrQMu4DQ
         71fOoeKmWaYWhwV7R9YrzCzJCqojrSHvaYrytNnDMJc3Ydi9Gu5UzoiytUemtaTyoTjC
         Owev/KWaxt/p9q8zowchNMVwzp77XvQNIa0BhuR/KkWTKD1WrlZjQF//CHyBauFZbGCO
         nJqeItx9a9ESt6d+uNv0yGZ59LQC9CCrkpew+tPQbiN33hANWiDlE3VH8OlFbZBiYhvw
         0VA6na9+FLJu09mARtu5Gbp1inW/OdtuW3NAA43ZKH3FsnYgvu6QPhuXLRZhEn8YB8hT
         Hbug==
X-Gm-Message-State: AC+VfDwYQbX9UbwnqdM0/Mmx5KdZ8TUYHaCH2GGJ9rr6xD3Om4VPzEvu
        hhEpg+a0qx+Rbs5fPFXjG22hTw==
X-Google-Smtp-Source: ACHHUZ4emlTNUt5qJm5CL2eykRbBXY0R8LuXd7+zqH+oGXUgC5tAB1XfwXRewUPZqmhEunlkueZzOA==
X-Received: by 2002:a05:6402:605:b0:50d:91c8:9e10 with SMTP id n5-20020a056402060500b0050d91c89e10mr21136629edv.10.1684003671017;
        Sat, 13 May 2023 11:47:51 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:ba68:e5c9:694e:c6e4? ([2a02:810d:15c0:828:ba68:e5c9:694e:c6e4])
        by smtp.gmail.com with ESMTPSA id q17-20020a056402033100b00509dfb39b52sm5346724edw.37.2023.05.13.11.47.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 13 May 2023 11:47:50 -0700 (PDT)
Message-ID: <b74c8780-28c0-46bc-b4fb-456d6a6ce284@linaro.org>
Date:   Sat, 13 May 2023 20:47:49 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH] arm64: dts: hi3798cv200: Correct 'clock-names' in sd0
Content-Language: en-US
To:     David Yang <mmyangfl@gmail.com>
Cc:     Wei Xu <xuwei5@hisilicon.com>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20230315112829.165884-1-mmyangfl@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230315112829.165884-1-mmyangfl@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 15/03/2023 12:28, David Yang wrote:
> "ciu" and "biu" were incorrectly swapped. Fix them to match 'clocks'.
> 
> Signed-off-by: David Yang <mmyangfl@gmail.com>

This breaks the bindings. You wanted probably different order.

Does not look like you tested the DTS against bindings. Please run `make
dtbs_check` (see Documentation/devicetree/bindings/writing-schema.rst
for instructions).

Best regards,
Krzysztof

