Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id ECFA9667158
	for <lists+devicetree@lfdr.de>; Thu, 12 Jan 2023 12:55:35 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235802AbjALLze (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 12 Jan 2023 06:55:34 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35438 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232680AbjALLzG (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 12 Jan 2023 06:55:06 -0500
Received: from mail-ed1-x52f.google.com (mail-ed1-x52f.google.com [IPv6:2a00:1450:4864:20::52f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AA2EAF0A
        for <devicetree@vger.kernel.org>; Thu, 12 Jan 2023 03:45:30 -0800 (PST)
Received: by mail-ed1-x52f.google.com with SMTP id 18so26443155edw.7
        for <devicetree@vger.kernel.org>; Thu, 12 Jan 2023 03:45:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=x4LA4Q8/HHLhGLaT8XU0nK2e9i+YSbZwOJxVCpmHI0I=;
        b=bpOqQTYFDGDl7PIgL42MAbC50CiOdPxbgmWL2zFCPINFYf+rlyiMtYAlJ1vbk0D5hy
         vNzg2J21f1iGfNp2GsropFmdg4gCWsKtLD2nc6D32uG4DuEw5x+oncX7/xi4N2ChTsVN
         1hemOIk4Du3QqSNoVQRf/nsnbkRotAhS6doE1lBM33FukOEmiZ4/5PHrRC5ta/Wh86m5
         PIBj+hrdLZteETDPxDeOnLcw7uWE2mJIsJUQDIZkqbWTJVJspjIDcHeadBga2kP2JBCr
         nkbdt5hTvWgmtHsSwZ+SgOHURX5qKe9hFA/1fBTPmOah4rKrN2W4WdPvr9NpfohQaph1
         EFNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=x4LA4Q8/HHLhGLaT8XU0nK2e9i+YSbZwOJxVCpmHI0I=;
        b=Zf7PHUsrhbdzcQm+bQf25eaHkQVnglTr24cgbVErLIBsu4Gu/NOHPrVy9GuPyYTULK
         idzNEdGnMAOozbtrccWLR0Yi4/ini4CTEG+sKAOyOR8OW8eyY30VL0OtTx9/Fak3rsT1
         MKpGaGQoyjpF6mRe/fpRQJn06qPh/v4agPpH78vrgILWDb+lhdvchffpM6HnvMb2DtZZ
         kMLDLSaX4w1hWD9iXu7N5OBX0Y3WO10zsBc6OqBshgff11bWpS6yrRdKMXiX4R2JKjw8
         S0ochVrEUdsXkZU1R7I1VXo+wP07SWyE0zJbv1P2So6c34/AaNGrEx4DmjZcv5qZjIm4
         9BWg==
X-Gm-Message-State: AFqh2kr78ayTvwCOK6y3g2R6TXHNkzl6Xot8iKsT+no3gLT6HBWwJScu
        gg8YZJGd4O13BG6v6ldnsR9u5Q==
X-Google-Smtp-Source: AMrXdXsbrvSXd6u5bwYj0uqlv095hGGPI6g9p+Yw13whSg5c4InwHr8YvQRcNxuFFNr1cGvhnKQhAg==
X-Received: by 2002:aa7:d0c9:0:b0:498:d121:6e00 with SMTP id u9-20020aa7d0c9000000b00498d1216e00mr15824262edo.35.1673523929239;
        Thu, 12 Jan 2023 03:45:29 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id c8-20020aa7df08000000b0046c4553010fsm7057603edy.1.2023.01.12.03.45.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 12 Jan 2023 03:45:28 -0800 (PST)
Message-ID: <758cf086-541b-5c16-2d98-59c7f064378c@linaro.org>
Date:   Thu, 12 Jan 2023 12:45:26 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Subject: Re: [PATCH 1/3] dt-bindings: dt-bindings: arm: rockchip: Add Radxa
 Compute Module 3
Content-Language: en-US
To:     Jagan Teki <jagan@amarulasolutions.com>,
        Heiko Stuebner <heiko@sntech.de>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Sebastian Reichel <sebastian.reichel@collabora.com>
Cc:     linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
References: <20230112105902.192852-1-jagan@amarulasolutions.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230112105902.192852-1-jagan@amarulasolutions.com>
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

On 12/01/2023 11:59, Jagan Teki wrote:
> Radxa Compute Module 3(CM3) is one of the modules from a series
> System On Module based on the Radxa ROCK 3 series and is compatible
> with Raspberry Pi CM4 in pinout and form factor.
> 
> Specification:
> - Rockchip RK3566
> - up to 8GB LPDDR4
> - up to 128GB high performance eMMC
> - Optional wireless LAN, 2.4GHz and 5.0GHz IEEE 802.11b/g/n/ac wireless,
>   BT 5.0, BLE with onboard and external antenna.
> - Gigabit Ethernet PHY
> 
> Add dt-bindings for Radxa CM3.
> 

Subject: drop second/last, redundant "dt-bindings" (duplicate).

With above:

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

