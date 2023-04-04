Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AE3646D5A90
	for <lists+devicetree@lfdr.de>; Tue,  4 Apr 2023 10:16:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234021AbjDDIQb (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 4 Apr 2023 04:16:31 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53028 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234118AbjDDIQa (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 4 Apr 2023 04:16:30 -0400
Received: from mail-ed1-x52c.google.com (mail-ed1-x52c.google.com [IPv6:2a00:1450:4864:20::52c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E54D410C0
        for <devicetree@vger.kernel.org>; Tue,  4 Apr 2023 01:16:28 -0700 (PDT)
Received: by mail-ed1-x52c.google.com with SMTP id eg48so127061812edb.13
        for <devicetree@vger.kernel.org>; Tue, 04 Apr 2023 01:16:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1680596187;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=miHUyUNmojfIItEHS1ocDVFcVyQlVzUoZy6LNzCd8iM=;
        b=j+Z6LlwyGlurTnhoA/v00QGDlGgTS8okFCWMxdIAg8t0gKOJ0+fKDy+zcEZf6v6CO6
         3VByImao6RBMcgTCCz/uWmeOpxSlpkqEp7PO9pn6muH3GLxkM1E9+geE3iyMXhrV/T/W
         W+Og4jUJrBQF/zreX0bFL5713QMYfQ5ZNa01iI/3dHEVwAM0VihOw04APgFLTYdP5YeQ
         CaVfBGGnIl3+nz8c03tWwSDwrN06YgA0FJ3DssmlZ1YCtrbdlLjfBCts0ETJ5sXqNnOA
         3kLSUXyWEzRkKBSJ6ETyuoElvv4krzIrzbzGsU/SzUZtTe+UOVldPrOrLESsbmt6Ydrh
         lkjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680596187;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=miHUyUNmojfIItEHS1ocDVFcVyQlVzUoZy6LNzCd8iM=;
        b=lfRJOYYPYx3umrp5cYhJ4iHi4CLXNGPji8SH4a5dPxj1y3NXxznZKeKanWiZkMP2Kk
         PEU4bGNhvINth+B1Oxf3J+8EKgmJE4E55PWAURWAFTz+dBDgDO2RZ6paJV5yrdYKDcIj
         S3atwc+vDBOHKydwd4KKqm/PysFNJs09jUqxXIHaZTSPKsBAAc5LkyqcGRLwIUqkiAug
         yhRY6bKG6Bhs+dYpH1sWlEOpZ8ts0rqqdIjkbyoik+HhPMegdraGdZZudsXNfl/wMk8O
         eTw3ZDhI18WtbW6gbZXdxE1NmLiz9qPv2sJfaTPacqUXrTmc0N3dwJglc5GvVBkUS+kF
         +48g==
X-Gm-Message-State: AAQBX9dTn3THsm7MCSLi0l8SnfkhiagDlq/tebOrR73GfQWWd/rxxNZh
        yEJ/TLRJPncqYqvmefxYsIEC3w==
X-Google-Smtp-Source: AKy350ZwDvqnyIubzzt0HCD26W8pCbMIetSIJ3v9g3Iard2u2TxiyleGqkFBQt1Tu0D3z5Wt2qEQIg==
X-Received: by 2002:a17:906:20d7:b0:932:d2bb:4fd with SMTP id c23-20020a17090620d700b00932d2bb04fdmr1315066ejc.58.1680596187048;
        Tue, 04 Apr 2023 01:16:27 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:233a:5c18:b527:381e? ([2a02:810d:15c0:828:233a:5c18:b527:381e])
        by smtp.gmail.com with ESMTPSA id gl25-20020a170906e0d900b00929fc8d264dsm5714850ejb.17.2023.04.04.01.16.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 04 Apr 2023 01:16:26 -0700 (PDT)
Message-ID: <27076f5c-1693-75bf-2ae9-d0e232b80b02@linaro.org>
Date:   Tue, 4 Apr 2023 10:16:25 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [PATCH V5 2/6] dt-bindings: w1: Add DS2482/DS2484 I2C to 1-W
 bridges
Content-Language: en-US
To:     Stefan Wahren <stefan.wahren@chargebyte.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Arnd Bergmann <arnd@arndb.de>, Olof Johansson <olof@lixom.net>,
        Evgeniy Polyakov <zbr@ioremap.net>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>
Cc:     linux-imx@nxp.com, soc@kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, stefan.wahren@i2se.com
References: <20230404080243.9613-1-stefan.wahren@chargebyte.com>
 <20230404080243.9613-3-stefan.wahren@chargebyte.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230404080243.9613-3-stefan.wahren@chargebyte.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 04/04/2023 10:02, Stefan Wahren wrote:
> This adds a dedicated devicetree binding for the Maxim DS2482/DS2484
> I2C to 1-W bridges, which can be extended later for further features
> (e.g. sleep mode control GPIO). Since one wire is a bus, child nodes
> needs to be allowed here.
> 
> Signed-off-by: Stefan Wahren <stefan.wahren@chargebyte.com>
> ---

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

