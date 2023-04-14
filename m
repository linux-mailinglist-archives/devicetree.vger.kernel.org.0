Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BBA0D6E2250
	for <lists+devicetree@lfdr.de>; Fri, 14 Apr 2023 13:36:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230193AbjDNLgO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 14 Apr 2023 07:36:14 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40126 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230011AbjDNLgN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 14 Apr 2023 07:36:13 -0400
Received: from mail-ed1-x536.google.com (mail-ed1-x536.google.com [IPv6:2a00:1450:4864:20::536])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C010B197
        for <devicetree@vger.kernel.org>; Fri, 14 Apr 2023 04:36:12 -0700 (PDT)
Received: by mail-ed1-x536.google.com with SMTP id 4fb4d7f45d1cf-504eb1155d3so11549360a12.1
        for <devicetree@vger.kernel.org>; Fri, 14 Apr 2023 04:36:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1681472171; x=1684064171;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=bu0J0jXaoF+Vfo+tAUmH6X4V46w/LRWlcin/PVMKbsA=;
        b=Z0w2KduUTcGtw23LU1AlAqUDTi+9c7L0D+Nte808oQu9zrfYGwijtCTcPDIpJ8NFWN
         D2Ax8VhjqpiR5ajGqaRsc7CyzDSHguIY8EncjFrsnRnw6vNA+RvytM0yzIdXdE8NhHnW
         4ymhnBHj0WOe/knL9bD4iCd41l0TbW3Sz0mMOAo3Zvx2BzFJUW8+LY3L2z3jGIVushLX
         /+TeSMGdRs/0GWl1GDmdUWl5nfU5vUKI8srLYKZJoHttHYY6kh3Da3+6jS8m9hFf2hJI
         j3LPUp08ElanDyLhmaqkzjo4vdF38NmxDhwUyaBt3TmHuBfkIuKT713VJxgRGmh+NblE
         YzEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681472171; x=1684064171;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=bu0J0jXaoF+Vfo+tAUmH6X4V46w/LRWlcin/PVMKbsA=;
        b=VUJYWDnGZ3PEdj+EjUijGDkfsSUCiKmft6jGskMUo91FRubZcEdBelRFaZp+s13iUe
         mjXHnXbRwIScX0ZU4sIDhT63XxGLTtfew6QTj2MdfuIm77dhYonlHcG+zovHoTml4mIz
         RIt3bJmhTacCFKCjSc8e6U/dZh+NInZp7I1m7pmoIjHUBpIILKffbOqF6UCEn/AisopC
         xmFEB10dEBtPHVoNBBTuleJFUewRgwsWe9KriRuJRGNjpFSRSXIIiYge1UEjR80zAjgw
         rStRKH6bVzuk/Gi7Vf8v1W6+NMe1pFbpKUW0+DLW39ln0RteZeylK897TsI0U3oSpI9a
         LBdw==
X-Gm-Message-State: AAQBX9drmWzCtufQIk8JBofWCBh0LMfYXpL7oU2a3W01mgrZQmpXlvNd
        0RdNq2ZhKjfIgFQ6fVGd+05i2g==
X-Google-Smtp-Source: AKy350aaJwO/dhK/+SlkQcGC2PT1+7MsO0enRyzt/sxsZTtuh9pzQVUwqlAo/xMvNlc61vKHxrFqTQ==
X-Received: by 2002:a05:6402:5210:b0:506:72f8:eb10 with SMTP id s16-20020a056402521000b0050672f8eb10mr5487485edd.0.1681472171021;
        Fri, 14 Apr 2023 04:36:11 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:40b9:8c57:b112:651d? ([2a02:810d:15c0:828:40b9:8c57:b112:651d])
        by smtp.gmail.com with ESMTPSA id x9-20020aa7d6c9000000b004fa19f5ba99sm2020419edr.79.2023.04.14.04.36.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 14 Apr 2023 04:36:10 -0700 (PDT)
Message-ID: <714a56b1-438c-7aad-920b-f3f1d72afc5f@linaro.org>
Date:   Fri, 14 Apr 2023 13:36:09 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Subject: Re: [PATCH v2 0/5] arm64: dts: ti: k3-j7200-som-p0: Add TP6594 family
 PMICs
Content-Language: en-US
To:     Esteban Blanc <eblanc@baylibre.com>, nm@ti.com, vigneshr@ti.com,
        kristo@kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org
Cc:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, sterzik@ti.com, u-kumar1@ti.com,
        jneanne@baylibre.com, jpanis@baylibre.com, aseketeli@baylibre.com
References: <20230414112843.1358067-1-eblanc@baylibre.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230414112843.1358067-1-eblanc@baylibre.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 14/04/2023 13:28, Esteban Blanc wrote:
> TPS6594 is a Power Management IC which provides regulators and others
> features like GPIOs, RTC, watchdog, ESMs (Error Signal Monitor), and
> PFSM (Pre-configurable Finite State Machine). The SoC and the PMIC can
> communicate through the I2C or SPI interfaces.
> TPS6594 is the super-set device while TPS6593 and LP8764 are derivatives.
> 
> This should be applied on top of other patch series:
> - https://lore.kernel.org/all/20230406075622.8990-1-jpanis@baylibre.com/
>   For core MFD driver
> - https://lore.kernel.org/lkml/20230414101217.1342891-1-eblanc@baylibre.com/
>   For regulator driver

Why? DTS cannot be merged with drivers, so if you insist on such
dependency then:
1. Your patchset is broken,
2. I actually does not understand why,
3. NAK - don't merge DTS into driver branches.

You probably are misunderstanding branches and dependencies.

Best regards,
Krzysztof

