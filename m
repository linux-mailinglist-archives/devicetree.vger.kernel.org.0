Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BC5685BDDC6
	for <lists+devicetree@lfdr.de>; Tue, 20 Sep 2022 09:06:53 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229669AbiITHGv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 20 Sep 2022 03:06:51 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33140 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229793AbiITHGu (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 20 Sep 2022 03:06:50 -0400
Received: from mail-lf1-x132.google.com (mail-lf1-x132.google.com [IPv6:2a00:1450:4864:20::132])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 23EB44D4C3
        for <devicetree@vger.kernel.org>; Tue, 20 Sep 2022 00:06:49 -0700 (PDT)
Received: by mail-lf1-x132.google.com with SMTP id a2so2255456lfb.6
        for <devicetree@vger.kernel.org>; Tue, 20 Sep 2022 00:06:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=BpGibXFgS0C/8+QW13M1OlsPel1EQHzKXdhl+DKxo08=;
        b=HPT/6Gjgl4SGIytwzUcr3sYP2ohP3kgKY6hkpB3irXCTIxpy/JZERpkhxabAiTD6PM
         JPoD0D24wIcG83ptsDEsJrx79haAbkb+ktr/KxcNEFhDBqlNoKetTEEtK6mNpnfg5cWi
         zTRMF9FeN+iOx7g1zheSFkh6CtR43QtgJvAzb1iKgswKJL2VNE9GODHQ4bUM/fAxV2co
         Wq0xuhIegzSTISXDNoadzzEgeib8bnQG3F/qiJDFUcswKZv1Naqu/oe7V9AcFscUywHL
         XYYTHDipmu7HeoZhRWf99LSdm1FjrO4rOq/anaDb9z9us9v/Lqlne2diVY2I+MPzAz5v
         uqlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=BpGibXFgS0C/8+QW13M1OlsPel1EQHzKXdhl+DKxo08=;
        b=Y8KRGD8sStvp1d1DysITelC7R3ZQAdmFUqXuKyYIWo1feLWqEO1rLXDy4778AOnC6J
         RxpIZj34ZLBgcED01E9S20cad0PmYyfh7fnO79V7CbHIJTfedHYXsIIos51TOHrDA0N2
         9aN5LhYcVLkR791aR1jE5WeWbHPoFrU40s2nApzv7jl3nEcQuwCLn8UgF+UbTVwH216R
         4II4UF4Y75wWgcbALsKTz4bR6ZnnMlC9fpue5WmtImca24u2Jh7qrjw8mGm1tHAhk7GJ
         JavvxkZA4+L/flzoO+Z7ojuPHdYGhURS/nKMzFcGOIvHtaK/T8+/zFCEDrWLk1P3H8J9
         4Aog==
X-Gm-Message-State: ACrzQf3wJ+VjiDkpCgOgITNw9SbnF/9cxXSiNsCgoKK8YvbCeRQcOkZW
        2VXyI8Ekk/Uh+sWpNTrAzwQEBw==
X-Google-Smtp-Source: AMsMyM5ppkFWKFY0q7coi2ylM45dStSfuK7WNLNglTVeYJNwKlA0P10H0k8wQBoC6MA5O/rI6AMKvg==
X-Received: by 2002:a05:6512:400d:b0:499:d9e:e04c with SMTP id br13-20020a056512400d00b004990d9ee04cmr7127207lfb.400.1663657607344;
        Tue, 20 Sep 2022 00:06:47 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id v11-20020a2e9f4b000000b00261eb75fa5dsm113836ljk.41.2022.09.20.00.06.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 20 Sep 2022 00:06:46 -0700 (PDT)
Message-ID: <1b03d24e-7bd3-f912-b59b-f2199770e9d8@linaro.org>
Date:   Tue, 20 Sep 2022 09:06:45 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Subject: Re: [PATCH] ARM: dts: aspeed: greatlakes: Add Facebook greatlakes
 (AST2600) BMC
Content-Language: en-US
To:     Bonnie Lo <Bonnie_Lo@Wiwynn.com>
Cc:     patrick@stwcx.xyz, garnermic@fb.com, Delphine_Chiu@Wiwynn.com,
        Arnd Bergmann <arnd@arndb.de>, Olof Johansson <olof@lixom.net>,
        soc@kernel.org, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Joel Stanley <joel@jms.id.au>,
        Andrew Jeffery <andrew@aj.id.au>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-aspeed@lists.ozlabs.org
References: <20220920023042.19244-1-Bonnie_Lo@Wiwynn.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220920023042.19244-1-Bonnie_Lo@Wiwynn.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 20/09/2022 04:30, Bonnie Lo wrote:
> From: Bonnie Lo <Bonnie_Lo@wiwynn.com>
> 
> Add linux device tree entry related to
> greatlakes specific devices connected to BMC SoC.
> 
> Signed-off-by: Bonnie Lo <Bonnie_Lo@wiwynn.com>

Do not ignore comments, but either implement them or keep discussion
going. If something is not clear, feel free to ask for clarifications.

Since there are no changes and you resubmit the same patch - NAK.

(...)

> 
> WIWYNN PROPRIETARY
> This email (and any attachments) contains proprietary or confidential information and is for the sole use of its intended recipient. Any unauthorized review, use, copying or distribution of this email or the content of this email is strictly prohibited. If you are not the intended recipient, please notify the sender and delete this email immediately.

This means we have to remove the email because I was not authorized to
copy/distribute it.

Best regards,
Krzysztof
