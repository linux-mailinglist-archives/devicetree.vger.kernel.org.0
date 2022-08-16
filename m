Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E6E64595D0F
	for <lists+devicetree@lfdr.de>; Tue, 16 Aug 2022 15:17:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234803AbiHPNRe (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 16 Aug 2022 09:17:34 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47690 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235672AbiHPNRP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 16 Aug 2022 09:17:15 -0400
Received: from mail-lf1-x133.google.com (mail-lf1-x133.google.com [IPv6:2a00:1450:4864:20::133])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 62956B6D03
        for <devicetree@vger.kernel.org>; Tue, 16 Aug 2022 06:16:20 -0700 (PDT)
Received: by mail-lf1-x133.google.com with SMTP id f20so14868275lfc.10
        for <devicetree@vger.kernel.org>; Tue, 16 Aug 2022 06:16:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc;
        bh=WpveidhoH5bD/0MSr6APaKClQAGOik9LoKqKj6TsJ5M=;
        b=wlXhVABb6DuNOKMp2jJfTsQeCgWmlpjO9qhyw6ILpgP6KITF7+3ce6xYpIJ38wjz63
         DOw07+Ehyxq5EeY/KrbgtM/JfK1iY6Yydfsyjgngx9KFx2KLKOKPDhEjR4izgItAKeW4
         H5m3M2KjqATWIojX2h9IfMFgV9mV0Vzg2RJ1V6F48oiV50l9pZD+sHRUWZ154e5Yhy9D
         pESu0aK87HESTVXfXF+H/ZwJLvqz4VuEganMjk1MmiHWT5Ak6dbIWpH6SZurPArwolXI
         oZrxdh+tN3RqjvUFDT3cZnT2D9j8qu1XlxicqKHI9zYz/B/J6WVdhgJ+4rpIWuEBO/P8
         RjGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc;
        bh=WpveidhoH5bD/0MSr6APaKClQAGOik9LoKqKj6TsJ5M=;
        b=zNkeaJLsYntC/iLC8QkX91R+jMK0eknbujSfRWvFF9fQMcSkLGOPXo3+YrmJLYxacG
         TcSGGVOtjq4UYYxB8akkD4+BSd5HUFffy4GLb0CvzirDa/ybzN1Vj/rG1c6TBvktq9Vb
         37irJq7elLve2GZTbb0qtv/e2tE7z3+OpWBEurFUxLVPSchvkz8q7C6ukHENWaUiZo2u
         NQqcm7sQsKsnjfaxUXPzE7KSsTR0xb6vTz1xarxb+W5WRzUkQ3HtKUjhcxdm4oykjOqR
         RengQbTh3QIkaXb82Z/brKjXyvBIQroNR2i2VZZaxH/RZf+PdsJbWRRiU2s9JxJK8gd0
         BQzg==
X-Gm-Message-State: ACgBeo2Ei69u/kRBNlo+E+CDIzitsg3Qv0aRW+wB6XUs/8AYK27CiVEF
        K86Zf6KZ1uP2ctgd6iq75O43iJxU5JQbO9vR
X-Google-Smtp-Source: AA6agR5tgahZD6sKKJ5xtAu8W6AUYS8nvCvK9dPEE95gFwW8UrWV5Xo6lBCfR/k2wtwRxdZ0rNth2Q==
X-Received: by 2002:a05:6512:3d25:b0:48b:562:162d with SMTP id d37-20020a0565123d2500b0048b0562162dmr6575622lfv.684.1660655778779;
        Tue, 16 Aug 2022 06:16:18 -0700 (PDT)
Received: from ?IPV6:2001:14bb:ae:539c:1782:dd68:b0c1:c1a4? (d15l54g8c71znbtrbzt-4.rev.dnainternet.fi. [2001:14bb:ae:539c:1782:dd68:b0c1:c1a4])
        by smtp.gmail.com with ESMTPSA id q27-20020ac25a1b000000b0048bd7136ef3sm1386448lfn.221.2022.08.16.06.16.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 16 Aug 2022 06:16:18 -0700 (PDT)
Message-ID: <478dc6a0-99b5-a3be-1358-d29fec28b3dd@linaro.org>
Date:   Tue, 16 Aug 2022 16:16:16 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Subject: Re: [PATCH] dt-bindings: phy: Drop Pratyush Yadav
Content-Language: en-US
To:     Michael Walle <michael@walle.cc>, pratyush@kernel.org
Cc:     devicetree@vger.kernel.org, kishon@ti.com,
        krzysztof.kozlowski+dt@linaro.org, linux-kernel@vger.kernel.org,
        linux-phy@lists.infradead.org, robh+dt@kernel.org, vkoul@kernel.org
References: <20220811063840.7670-1-krzysztof.kozlowski@linaro.org>
 <20220816131041.1771872-1-michael@walle.cc>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220816131041.1771872-1-michael@walle.cc>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 16/08/2022 16:10, Michael Walle wrote:
> [+ Pratyush ]
> 
>> Emails to Pratyush Yadav bounce ("550 Invalid recipient").
> 
> FWIW, he updated his entry in MAINTAINERS in commit 92714596cdbe
> ("MAINTAINERS: Use my kernel.org email"). So I'm not sure if this was
> just an oversight.

Thanks, I'll update the patch to use his @kernel email.

Best regards,
Krzysztof
