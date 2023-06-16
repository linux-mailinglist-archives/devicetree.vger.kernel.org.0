Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 93E417331C0
	for <lists+devicetree@lfdr.de>; Fri, 16 Jun 2023 14:58:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1343928AbjFPM6k (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 16 Jun 2023 08:58:40 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49062 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1344428AbjFPM6g (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 16 Jun 2023 08:58:36 -0400
Received: from mail-ej1-x62a.google.com (mail-ej1-x62a.google.com [IPv6:2a00:1450:4864:20::62a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3D6D63C3B
        for <devicetree@vger.kernel.org>; Fri, 16 Jun 2023 05:58:13 -0700 (PDT)
Received: by mail-ej1-x62a.google.com with SMTP id a640c23a62f3a-98377c5d53eso94382866b.0
        for <devicetree@vger.kernel.org>; Fri, 16 Jun 2023 05:58:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1686920291; x=1689512291;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=MgtDQ6bDPZyyAntdHn08plKAlJAs76Eb6ZzIbs7ABB8=;
        b=yclOATTzqCQCO9g0Jb2Dw5FaBgTwDNdUxQVVEFA94uZJGmJwNlPwDupKjU9JUhLNWm
         FjCNjKX4wMg1Sh3MJ9vrJrzqCdxDOjq+6Jw8kgncrG6YCFP1vC8xUXwL1SpVZ9aZREx3
         Qazs5czixy52zNXmb2W5yAAgHUYSpWjia8FEzpyx6QLrmos1uk6EGD88iZg14+cnZDf7
         MYVG7ly62NJW6lu2DtbLmY2V489OPahS7O2MgfbGyu2H3AUDcVJCH1nNkNz+nI2YFCmd
         Hqy9hQ3ld5Hs6xgtKZmof7wM7j7Wbi+i8Bk2gyMv9K4/sA2R+Ij15Utp8X/68HuFqrSn
         V8dA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686920291; x=1689512291;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=MgtDQ6bDPZyyAntdHn08plKAlJAs76Eb6ZzIbs7ABB8=;
        b=dwOL/+ckzKWXyFz7BQHVvGvILdvZQ0N+at1WILTpvg1gsTkWm8RDMjIm06pW5OPTrR
         M41KZwgqKPP6b0515eHuNivUe2S3M8NwTMFyaQJAjBOAuWysTpP2nfkzlImELuoUhmsc
         TV6drOcBJlYnQC4yY37LIceXNd1A928hKgvcO23FFdwqA59Mx3Yh2KvRMY3JbkKU+6go
         K1UsCl8kl9xCrPQ9bQF732EKyQ4vi/Eehj+K8MDgmliAUQkD1VNWzzfnDDQ3J2I4BDnu
         jlJcAx4zz7x906U27iC0dQeqIGBh2MehlSX6t6f3H3zFjIzw78Zrcszx41i22YbTAew5
         ILRQ==
X-Gm-Message-State: AC+VfDwYZtjSfOmHuGwB5QQqdTtsnthifbU0Hr1BCau3qfpfWkJzcb3u
        ZUmbu2n1xcD4fZwwGkZcjFu+Dw==
X-Google-Smtp-Source: ACHHUZ4Ta/+1VYO7sObstNfnTgsWxYUXdoJ8QcqTt0hEmAwLEUHwpap+M9Sy9lhjMKQU5S6Iv0sUcg==
X-Received: by 2002:a17:906:ef03:b0:974:183a:54b6 with SMTP id f3-20020a170906ef0300b00974183a54b6mr1894788ejs.33.1686920291060;
        Fri, 16 Jun 2023 05:58:11 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.219.26])
        by smtp.gmail.com with ESMTPSA id qc11-20020a170906d8ab00b00977d7ccd9fdsm10964730ejb.95.2023.06.16.05.58.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 16 Jun 2023 05:58:10 -0700 (PDT)
Message-ID: <33c48eb8-c970-b560-8031-848a79233765@linaro.org>
Date:   Fri, 16 Jun 2023 14:58:08 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
Subject: Re: [PATCH 1/3] dt-bindings: armada-thermal: add armada-ap807-thermal
 compatible
Content-Language: en-US
To:     "Russell King (Oracle)" <rmk+kernel@armlinux.org.uk>,
        Amit Kucheria <amitk@kernel.org>, Andrew Lunn <andrew@lunn.ch>,
        Daniel Lezcano <daniel.lezcano@linaro.org>,
        Gregory Clement <gregory.clement@bootlin.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Miquel Raynal <miquel.raynal@bootlin.com>,
        "Rafael J. Wysocki" <rafael@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>,
        Zhang Rui <rui.zhang@intel.com>
Cc:     Josua Mayer <josua@solid-run.com>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-pm@vger.kernel.org
References: <ZIxMYXDCTB7IvsDk@shell.armlinux.org.uk>
 <E1qA7yP-00Ea4o-FS@rmk-PC.armlinux.org.uk>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <E1qA7yP-00Ea4o-FS@rmk-PC.armlinux.org.uk>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 16/06/2023 13:50, Russell King (Oracle) wrote:
> From: Alex Leibovich <alexl@marvell.com>
> 
> Add marvell,armada-ap807-thermal compatible for the AP807 die.
> 
> Signed-off-by: Alex Leibovich <alexl@marvell.com>
> Tested-by: sa_ip-sw-jenkins <sa_ip-sw-jenkins@marvell.com>

This is a TXT file, thus testing by some jenkins seems like a fake tag.
Please drop fake tags.

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

