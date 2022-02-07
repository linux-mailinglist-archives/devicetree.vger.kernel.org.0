Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 943F14AC9DE
	for <lists+devicetree@lfdr.de>; Mon,  7 Feb 2022 20:49:31 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236777AbiBGTsq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 7 Feb 2022 14:48:46 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60082 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240424AbiBGTpm (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 7 Feb 2022 14:45:42 -0500
Received: from smtp-relay-internal-1.canonical.com (smtp-relay-internal-1.canonical.com [185.125.188.123])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B2C06C0401E6
        for <devicetree@vger.kernel.org>; Mon,  7 Feb 2022 11:45:41 -0800 (PST)
Received: from mail-ed1-f71.google.com (mail-ed1-f71.google.com [209.85.208.71])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 0D0A63F1F0
        for <devicetree@vger.kernel.org>; Mon,  7 Feb 2022 19:45:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1644263134;
        bh=ZFe7GrDYXMM8CLQ5SMwXw4UQni/9UZT69dDdKHMLJTo=;
        h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
         In-Reply-To:Content-Type;
        b=CXNu75oEuLgWLAAwUIzGlsCrsh6PsFr867GTO1mueUbFGXRKvlITzZsVZddpE3JrP
         PqizrVsInxFq/pkeoTx89IUwlMhbkfYZis3IIF4zKw1ZRd8IaVRg32nDI2mUGdcnON
         c4kKuuU1kIsVHDgjJE9gt2n2B6X/3EHPnIaefbwB6KmMcjuNtB8jw00c5v7vP7i+Mt
         x2SN9pMybsVyANw8uoBaUIPEWW3Pzcge2X8wAo7sscFusK3hMe58jIzX2Rr5zw8oFi
         nQc3J3ux2ScW7S0cPLrZJMRKT4aDXynVF2Sez3CeFrlIZqSuY/IXgqimqLoEqtJhbh
         bx25iwXfh+Xkg==
Received: by mail-ed1-f71.google.com with SMTP id en7-20020a056402528700b00404aba0a6ffso8427494edb.5
        for <devicetree@vger.kernel.org>; Mon, 07 Feb 2022 11:45:34 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=ZFe7GrDYXMM8CLQ5SMwXw4UQni/9UZT69dDdKHMLJTo=;
        b=3cyF88CubqtuHjrMLd1jytwPkMaaAPAe9wPx/R3QUHtxbMjEZ1hk6qxK6T0PYTtOGH
         F9l8fkHznZme1lZQV6Ixhf7Daz3jcUgmXYkBReNfYzjgRswcEay/D1To0woyob4AT7gT
         u/ehCIduExXnB6B++Gor31+VKKv2eUECxMf+5dLxIWbPALdo1s+//yN72uIFyBrNnflL
         k0t7eAzgWXbNgTSmvKnjZqhcQicnG576ev/9U+ovYRuzDdvlb/zRX+EcJILV4zVD8hWF
         DJAKnp8z3CvLf9lAcfj/ZJ3Mrlrfi6seUiWMCpH6k5XoG4U/WRVP01FghDIzdvUiHYrF
         11/Q==
X-Gm-Message-State: AOAM532rjzcJ2nmHw7OyH+V3miWrWORD35s/ZqJbF84ay38td5e4tMrJ
        0QzAV8UPWDiDW+Aaio9bj1jolzwpu5ugAy+X1Q/UWAseuowtffc0bTRO+Tkq/u5P4cUpomsvYp8
        Z82IGoJBOx88/8D9Czw5WjPms0NhM3sIxMzxDRLA=
X-Received: by 2002:a17:907:98e8:: with SMTP id ke8mr968013ejc.524.1644263132764;
        Mon, 07 Feb 2022 11:45:32 -0800 (PST)
X-Google-Smtp-Source: ABdhPJzFbHJhhicQcTAJbCV7XtoidiI0ekXusMyI1v7J4cYe1pPDkuk3WrSncw/sfZC1Yn4c59YKVQ==
X-Received: by 2002:a17:907:98e8:: with SMTP id ke8mr967987ejc.524.1644263132572;
        Mon, 07 Feb 2022 11:45:32 -0800 (PST)
Received: from [192.168.0.91] (xdsl-188-155-168-84.adslplus.ch. [188.155.168.84])
        by smtp.gmail.com with ESMTPSA id t22sm5595617edv.105.2022.02.07.11.45.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 07 Feb 2022 11:45:32 -0800 (PST)
Message-ID: <22952187-80c2-a456-f389-f70a2a30f467@canonical.com>
Date:   Mon, 7 Feb 2022 20:45:31 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH v6 1/4] spi: dt-bindings: samsung: convert to dtschema
Content-Language: en-US
To:     Mark Brown <broonie@kernel.org>, Lee Jones <lee.jones@linaro.org>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Benson Leung <bleung@chromium.org>,
        Guenter Roeck <groeck@chromium.org>,
        Alim Akhtar <alim.akhtar@samsung.com>,
        Andi Shyti <andi@etezian.org>,
        Sam Protsenko <semen.protsenko@linaro.org>,
        Pratyush Yadav <p.yadav@ti.com>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-samsung-soc@vger.kernel.org, linux-spi@vger.kernel.org
References: <20220124082347.32747-1-krzysztof.kozlowski@canonical.com>
 <20220124082347.32747-2-krzysztof.kozlowski@canonical.com>
 <YgFgQsV2bJS6mjQs@sirena.org.uk>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
In-Reply-To: <YgFgQsV2bJS6mjQs@sirena.org.uk>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 07/02/2022 19:09, Mark Brown wrote:
> On Mon, Jan 24, 2022 at 09:23:44AM +0100, Krzysztof Kozlowski wrote:
>> Convert the Samsung SoC (S3C24xx, S3C64xx, S5Pv210, Exynos) SPI
>> controller bindings to DT schema format.
> 
> Reviewed-by: Mark Brown <broonie@kernel.org>

Hi Mark and Lee,

Thanks for the review. The dt-bindings part have Rob's review. I think
this means Lee can pick up the entire set (SPI+MFD)?

Best regards,
Krzysztof
