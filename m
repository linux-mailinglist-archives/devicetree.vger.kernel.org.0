Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DDFC0676C9D
	for <lists+devicetree@lfdr.de>; Sun, 22 Jan 2023 13:00:03 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229869AbjAVMAC (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 22 Jan 2023 07:00:02 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50876 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229699AbjAVMAB (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 22 Jan 2023 07:00:01 -0500
Received: from mail-wr1-x42d.google.com (mail-wr1-x42d.google.com [IPv6:2a00:1450:4864:20::42d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 93E5116323
        for <devicetree@vger.kernel.org>; Sun, 22 Jan 2023 03:59:57 -0800 (PST)
Received: by mail-wr1-x42d.google.com with SMTP id bk16so8453700wrb.11
        for <devicetree@vger.kernel.org>; Sun, 22 Jan 2023 03:59:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=B2LDrF4mdXRODwHYb9g9f5UoWpcaY5wVZNODxK+6ym4=;
        b=A/PftIvd7aQMmaQ0+f6sTZ0jewQUlUirWHFFvCOzJ7Ev+bQEHqPL9sGZcVqPtRrTT4
         +HKdELZ7eUPeKPGPP4XSjYE/H1/IGaMmt6I8DaOY+buWBGECi26ARlyrIu7AkM7tD3Xp
         gNPe/n/FQqVK5VvYPnZaBbLXWWp2NZtn9/q3GzjIZ3g3TtevchRoA4AO5F8elhLUOCoq
         Ae07avCADDHnRi59CivBqOS+04pUd5VXgXI+wG4g6H4aKvPbCi1hKk9zrWT/WydjZVw8
         83YmRzcOxvcZKn51IUbNxPK90IEpR8U146OPllCcRMVYrOxpoEAgfAKWwV7/Rg6ObcAX
         wJIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=B2LDrF4mdXRODwHYb9g9f5UoWpcaY5wVZNODxK+6ym4=;
        b=MFg0XwY4oxqz+dT5vNYqRRPnI+R6EZ5PNZSro6xhdjqly57GtMGjw3IoOQgiXKnYVs
         nIEMUQh0VnCr7Gu0YHXdxeI6MlwlNwoW71grlFunI4pml9MBeh3H3O1VydcpYbbjV0cq
         7NhQqhfmFe5krNvJZUb8W+F4YXRIqf/pCEOyhnfSeFdhDAoKckQhCsbfqp6d9S60OaNC
         Dhi7WIcHJoj34qw8XN7+C2lEWWr0v2dA0Qe7vVtggS/m8YVahlY113fiPJFBB4ypL8vc
         2O8xj0lkBuZjQ4w8tsaV7zg5kkrway6PhN3n75vjiKnNp7WRSgbLscKXgV2K7DeJo5MK
         PR2A==
X-Gm-Message-State: AFqh2komV7fY3d2HVWq92qKAsOSDRq+4yyLpTWCTr5sye/+t+OpTaxC/
        gUCcUfnFQG0V6yYYWvPZyVDnTnZHzCJ6VF6I
X-Google-Smtp-Source: AMrXdXuaF/TrZ4zpb+eoFpCMqA7VQH3RLErJJfzsKl1A7D8KW/Hodkc9JOcgF2DszJKKF2FAAmtjzA==
X-Received: by 2002:a5d:42d0:0:b0:2bf:9459:255 with SMTP id t16-20020a5d42d0000000b002bf94590255mr6565401wrr.70.1674388796187;
        Sun, 22 Jan 2023 03:59:56 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id w11-20020adfd4cb000000b00241fde8fe04sm2739852wrk.7.2023.01.22.03.59.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 22 Jan 2023 03:59:55 -0800 (PST)
Message-ID: <0b4ff383-d07e-6c18-9d42-f336f282d990@linaro.org>
Date:   Sun, 22 Jan 2023 12:59:54 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.0
Subject: Re: [PATCH 1/2] dt-bindings: nvmem: qfprom: add IPQ8074 compatible
Content-Language: en-US
To:     Robert Marko <robimarko@gmail.com>, agross@kernel.org,
        andersson@kernel.org, konrad.dybcio@linaro.org,
        srinivas.kandagatla@linaro.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20230121112358.52216-1-robimarko@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230121112358.52216-1-robimarko@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 21/01/2023 12:23, Robert Marko wrote:
> Document IPQ8074 compatible for QFPROM, its compatible with the generic
> QFPROM fallback.
> 
> Signed-off-by: Robert Marko <robimarko@gmail.com>

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

