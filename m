Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 787E459FB5A
	for <lists+devicetree@lfdr.de>; Wed, 24 Aug 2022 15:27:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237172AbiHXN1U (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 24 Aug 2022 09:27:20 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57490 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237980AbiHXN1T (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 24 Aug 2022 09:27:19 -0400
Received: from mail-lf1-x132.google.com (mail-lf1-x132.google.com [IPv6:2a00:1450:4864:20::132])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B773D72EEA
        for <devicetree@vger.kernel.org>; Wed, 24 Aug 2022 06:27:17 -0700 (PDT)
Received: by mail-lf1-x132.google.com with SMTP id s1so21192026lfp.6
        for <devicetree@vger.kernel.org>; Wed, 24 Aug 2022 06:27:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc;
        bh=c45lYX8RXqinZK4YfOxUYn7I1dL1A9tsyXH/7KdT7zo=;
        b=j17KyB8x4HHjQgrh7HEBJuDHYBcdyG5IYrfjIAfF29/vOt5ceX5mYiEN9Lhr26iEHT
         uguDoQY5k75hXyfRORn/LIoIIZXgnfjsRkknswONFXYgOB6hu46c6q1jCnKRxMozx+U8
         IwKzb8fz1FtUJ3u86SjBVR7KbiYwf8HBMfLUmwVCJ/UuLhWIKFo4Pdl6hhFe/FfHb6id
         K2GtQCOpwdX/IHCXHISI4qDW0RlADt+S/e7StA3OHH++Kzi3UWW0QFVE0vImgiKB0Nm1
         QLkXkED2ft0zCWwkSHcqsPk5AtknEvFaxsj74ToimQwyfjoBNeAZhSssV2mdV5JY0KkE
         N+jg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc;
        bh=c45lYX8RXqinZK4YfOxUYn7I1dL1A9tsyXH/7KdT7zo=;
        b=eww2xvSkZm1BCOiuHzx3TghflvsOQ44E00cxgc6sS/epsY9XXaF6h48LhG8qojZCR+
         srYJ71F3tYn1CINAlmarm11DMkulea4PyF2fQoAuOBMQl4MfRZ3NQwyEwv39Ck1Ei7ba
         7hLphud8ADwz1ulvnSGicV/vM3dLbpyIi2x0WctWYVUJLkMY7V0/v6sZXK2ZTXqcl66e
         kyhlQiMIqMVo3yMjWYeKdO/AaSmphKb1EK2T3uIBhDVLIYXy8DlHgrXHIK9UWlAvvytw
         v2bakfofbD20jnL+ha9DXVJui4C4Fq4nBgU6OLRRTajGqjkXEFMkl5HAbtdm8aZGkWpW
         x7Pg==
X-Gm-Message-State: ACgBeo0yy0XQ2mco6U+QE0+TYDHraK33+xavf9DqiOC9nzdJPh5OFefZ
        ihlaoe8zVmHNbwJG5v/5i3nEjA==
X-Google-Smtp-Source: AA6agR5+dvoQAGR9/rB/GV9HncXOGxbKuFJefiohubaUP2MqmRN7gCj3f7ww8Mwsdzj3XsY8oLCoKg==
X-Received: by 2002:ac2:4465:0:b0:493:b4:c4ac with SMTP id y5-20020ac24465000000b0049300b4c4acmr1848654lfl.446.1661347636057;
        Wed, 24 Aug 2022 06:27:16 -0700 (PDT)
Received: from [10.243.4.185] (107-129-159-217.sta.estpak.ee. [217.159.129.107])
        by smtp.gmail.com with ESMTPSA id z13-20020a056512376d00b0049288e0bd61sm3028871lft.58.2022.08.24.06.27.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 24 Aug 2022 06:27:15 -0700 (PDT)
Message-ID: <a9125027-a23a-ef58-cede-0b1d019f362c@linaro.org>
Date:   Wed, 24 Aug 2022 16:27:14 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Subject: Re: [PATCH v3 2/5] dt-bindings: clk: document PolarFire SoC fabric
 clocks
Content-Language: en-US
To:     Conor Dooley <conor.dooley@microchip.com>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Palmer Dabbelt <palmer@dabbelt.com>,
        Daire McNamara <daire.mcnamara@microchip.com>,
        Hugh Breslin <hugh.breslin@microchip.com>
Cc:     Paul Walmsley <paul.walmsley@sifive.com>,
        Albert Ou <aou@eecs.berkeley.edu>, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-riscv@lists.infradead.org
References: <20220824093342.187844-1-conor.dooley@microchip.com>
 <20220824093342.187844-3-conor.dooley@microchip.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220824093342.187844-3-conor.dooley@microchip.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 24/08/2022 12:33, Conor Dooley wrote:
> On PolarFire SoC there are 4 PLL/DLL blocks, located in each of the
> ordinal corners of the chip, which our documentation refers to as
> "Clock Conditioning Circuitry". PolarFire SoC is an FPGA, these are
> highly configurable & many of the input clocks are optional.
> 
> Signed-off-by: Conor Dooley <conor.dooley@microchip.com>


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof
