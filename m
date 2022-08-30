Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 833F35A6AF7
	for <lists+devicetree@lfdr.de>; Tue, 30 Aug 2022 19:38:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231819AbiH3RiX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 30 Aug 2022 13:38:23 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47020 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232051AbiH3RiE (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 30 Aug 2022 13:38:04 -0400
Received: from mail-lf1-x131.google.com (mail-lf1-x131.google.com [IPv6:2a00:1450:4864:20::131])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1F87E136B1D
        for <devicetree@vger.kernel.org>; Tue, 30 Aug 2022 10:34:55 -0700 (PDT)
Received: by mail-lf1-x131.google.com with SMTP id v26so6264547lfd.10
        for <devicetree@vger.kernel.org>; Tue, 30 Aug 2022 10:34:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc;
        bh=e7JEKYuofd3ohVuN0wQat/Bd3pvagzYZJuquu9YnaTc=;
        b=sccqeAOnaZ63YsK2QiDUkPx1XiQueuhmVcEyY7D1/T3NLqy3NAh1+Rn5w6JOBChXhu
         ofeHiBKfVgGiNTBIcjYbaWG0bevSh3X+fk5q7sb5LCLRS+4DyYSJ+uG/vBOBiWAMmKDW
         jyvx+aaIJMt2iCgo44tfCGHh4nDVa8QMUy6otmtxcqjNbWx6q/0MDzbY2s7hU9faiC5X
         cdgbRrNnmv9X+w1NVtP+ut5y/2I9SI0LdciIfqtNo7Eop8so4Is9jCUG+1q2fBdQQcD0
         D4DjZbo9t1yznxP0R1uwKzA4EyA2VIJBZJdJZy4sYf9PIhWN6ow3ixkbKogA3GvRC2QN
         MhHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc;
        bh=e7JEKYuofd3ohVuN0wQat/Bd3pvagzYZJuquu9YnaTc=;
        b=OegHGRcPLRje/5+kTrK3AYvBii9m4ylGMApYJhkYAiPoCrTLItgVu/6usgivxAJhvU
         aW7aHA28C0tnz7a6LHJuPXF/+9nUpGrpu9x21U7N8SNX6YVU3EPEWt6ieWg6e75OJULO
         o9Czz60FTmCOa0wsofluslQwu1LkTMniaaVvYas3wZcLS4OcCCWNg5FHBQJf+9zFbpQU
         65BfxS+s6xEKoeLtD0DjO/cGuOlD76Vzodg5z6jyTyWGUJp9ek7TTBrdJuo4/iIFtDur
         KHijdIIYVpwsCKLecz0w3B7MXpHQacP//CqGPdM15q8j02fj4JKLs3kQsrbJBI1r/S+s
         Xy/A==
X-Gm-Message-State: ACgBeo2kM6HQhVPtBsSajltdYzLJU8deqQ6SkewEJqKDjAk3BtoRlnqV
        YYI08v4OcPgVSd08EMkAiUpmZg==
X-Google-Smtp-Source: AA6agR71Ri1C6ITQXhDL5pZbp01DKxvtr8nIL2S4m+SgX2lfZcjbi0Z3IVSXrgmMwJay7vslWOAXeg==
X-Received: by 2002:a05:6512:3d1e:b0:48b:3f76:eff with SMTP id d30-20020a0565123d1e00b0048b3f760effmr8545084lfv.312.1661880765623;
        Tue, 30 Aug 2022 10:32:45 -0700 (PDT)
Received: from [192.168.28.124] (balticom-73-99-134.balticom.lv. [109.73.99.134])
        by smtp.gmail.com with ESMTPSA id q7-20020a2eb4a7000000b00263d44b079bsm1166844ljm.99.2022.08.30.10.32.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 30 Aug 2022 10:32:44 -0700 (PDT)
Message-ID: <af1dd205-149b-034e-5f35-727ac1d151f2@linaro.org>
Date:   Tue, 30 Aug 2022 20:32:43 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Subject: Re: [PATCH v1 1/1] usb: phy: mxs: apply board calibration value base
 on chip trim value
Content-Language: en-US
To:     Frank Li <Frank.Li@nxp.com>, kishon@ti.com, vkoul@kernel.org,
        robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        shawnguo@kernel.org, s.hauer@pengutronix.de, kernel@pengutronix.de,
        festevam@gmail.com, linux-imx@nxp.com, balbi@kernel.org,
        gregkh@linuxfoundation.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org,
        imx@lists.linux.dev
References: <20220830162538.2845274-1-Frank.Li@nxp.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220830162538.2845274-1-Frank.Li@nxp.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 30/08/2022 19:25, Frank Li wrote:
> USBPHY_TRIM_OVERRIDE provide chip trim value. DTS provide board level
> calibration data. Board level calibration data should be base on chip
> trim value.
> 
> For example, TXCAL45DP board level hope add +2.85% register base on
> standard 45ohm. But chip trim value is -5.25% to get 45ohm output.
> Actually finial TXCAL45DP should be -5.25% + 2.85% = -2.4%.
> 
> If chip have not trim value at USBPHY_TRIM_OVERRIDE, No behavior change.
> board level calibration will be applied.
> 
> If chip have trim value at USBPHY_TRIM_OVERRIDE and no DTS board level
> data, chip trim value will be applied.
> 
> Signed-off-by: Frank Li <Frank.Li@nxp.com>
> ---
>  drivers/usb/phy/phy-mxs-usb.c | 40 ++++++++++++++++++++++++++++++++---
>  1 file changed, 37 insertions(+), 3 deletions(-)

Use scripts/get_maintainers.pl to CC all maintainers and relevant
mailing lists.... and do not Cc unrelated folks.

Best regards,
Krzysztof
