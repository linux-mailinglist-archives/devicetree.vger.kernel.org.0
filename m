Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4666C57D19C
	for <lists+devicetree@lfdr.de>; Thu, 21 Jul 2022 18:34:00 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229913AbiGUQd7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 21 Jul 2022 12:33:59 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39100 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229640AbiGUQd6 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 21 Jul 2022 12:33:58 -0400
Received: from mail-lf1-x12e.google.com (mail-lf1-x12e.google.com [IPv6:2a00:1450:4864:20::12e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9630689A97
        for <devicetree@vger.kernel.org>; Thu, 21 Jul 2022 09:33:57 -0700 (PDT)
Received: by mail-lf1-x12e.google.com with SMTP id d17so1475141lfa.12
        for <devicetree@vger.kernel.org>; Thu, 21 Jul 2022 09:33:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=0wZNg+3wPANTd0lRPHXLuv+xpAninwLRTERLUu9/iV0=;
        b=VqMex1M6FRxuAjOX5PnC/HKTSGZJlg9F3Xl1Th8veis9ZwLc8vDjULvKc5W7mKvdei
         UyrqTs0MSVXnYDpTkaQCjk6dltKKxb6E2AF6xC+d5WuPbwawbs0EBXOxhCHwO0IlvNvj
         Lg5NQUECCQiifIcnY8aAspgN4O2OZEyflkzfZVOQP4vKZGU3InFxkg//fNB6eRZaqlHq
         47czCUSM+Jwy36BP2/ikS4zshHQLPrXSTsEittrTRMFEdvUs6wPCpSC2H2UEyT38Zx/k
         LE7UBa+JvuYxgC4J04LfAt9mBh9YwO6MgSHmEHRmbuekLhdo38DM3YVXtXJkCJ4BYhpz
         ertQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=0wZNg+3wPANTd0lRPHXLuv+xpAninwLRTERLUu9/iV0=;
        b=x9HLp1LGkrad+h/aB7GJcZE+p0eRiCLK4sAfsiBOaVhjc/s4mCXT/I+kg66oQrtB+L
         dX07kCzYLv8DwrlvatJEPuGaEfifmlNWyVGSc+ccXm2prZvhR2t1/x/l59US1AdEr1mg
         dyPx3ZdxXC2GRxhZZiqIbD72Q4MoloUCTKiFjqVRgDU63QXhV0A9gb9YCcSjU9AAmCJH
         GQczcTSNe1VthcKP0MLi2rIIhIo49hVsTTvYpdKumufk7c64/EHXDdd0qA7d/VqIq/W8
         65beh4tfNpsede5yQmcvwMPl3MAAUcWUTdXFCEtbD8CgNzTXpOf8+my/FVjG/qz4jksS
         FKew==
X-Gm-Message-State: AJIora8DF+q69wT5DBS80ePtZjqVZHpm4fAIlzFwIUab+aIhmvaa6ZIY
        10vu8IXKailD2HXaCf/EBOQ7/Q==
X-Google-Smtp-Source: AGRyM1suwpWeDcSxhta8Meu7xyqrPbrBgRqfzDYdr1Ot0b9fitq1x465Kq3zXTHaFYc9Em7plvJk4Q==
X-Received: by 2002:a05:6512:6d4:b0:48a:2aaf:1d93 with SMTP id u20-20020a05651206d400b0048a2aaf1d93mr15556923lff.457.1658421235985;
        Thu, 21 Jul 2022 09:33:55 -0700 (PDT)
Received: from [192.168.115.193] (89-162-31-138.fiber.signal.no. [89.162.31.138])
        by smtp.gmail.com with ESMTPSA id t14-20020a056512208e00b00488bef659d2sm526769lfr.234.2022.07.21.09.33.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 21 Jul 2022 09:33:55 -0700 (PDT)
Message-ID: <05ad5e68-7ff2-b1b5-fa49-0e48c7cc313f@linaro.org>
Date:   Thu, 21 Jul 2022 18:33:54 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [PATCH v3 1/2] dt-bindings: arm: fsl: Add MSC SM2S-IMX8PLUS SoM
 and SM2-MB-EP1 Carrier
Content-Language: en-US
To:     Martyn Welch <martyn.welch@collabora.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Shawn Guo <shawnguo@kernel.org>, Li Yang <leoyang.li@nxp.com>
Cc:     kernel@collabora.com, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20220721101050.2362811-1-martyn.welch@collabora.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220721101050.2362811-1-martyn.welch@collabora.com>
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

On 21/07/2022 12:10, Martyn Welch wrote:
> Add DT compatible strings for a combination of the 14N0600E variant of
> the Avnet (MSC branded) SM2S-IMX8PLUS SoM on it's own and in combination
> with the SM2-MB-EP1 carrier board.
> 
> Signed-off-by: Martyn Welch <martyn.welch@collabora.com>


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof
