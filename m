Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 980016D1E3B
	for <lists+devicetree@lfdr.de>; Fri, 31 Mar 2023 12:40:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230160AbjCaKky (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 31 Mar 2023 06:40:54 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45164 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231417AbjCaKku (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 31 Mar 2023 06:40:50 -0400
Received: from mail-lf1-x134.google.com (mail-lf1-x134.google.com [IPv6:2a00:1450:4864:20::134])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 37A7C86B4
        for <devicetree@vger.kernel.org>; Fri, 31 Mar 2023 03:40:48 -0700 (PDT)
Received: by mail-lf1-x134.google.com with SMTP id g19so15179718lfr.9
        for <devicetree@vger.kernel.org>; Fri, 31 Mar 2023 03:40:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1680259246;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=PTk8mOSPIzlRbno9iYVmCDgeJNwZ89A6l+2S2wacpJ0=;
        b=f5FmFtlTwBRJaVcS9/mD5K2de5No7QPEv6fWl5zcMfqYkuSzJiA5XKhh9aQZhYArdT
         OCwEuf8F2xHiRJwnIVyOPJmF8gxrm+IGhwj6hJv06mxBXqD7SjRW3QraimrpqKoAd4FW
         vORc2OGA2zIQ9AGq/Et3KU3nGl5fPCf2iZeZU+Fxz/DdnxkWhanwCv4p2UcJF/Ta0RuH
         vsM+0Sjk3BHQmyE5oYPnSkmNFRDHjQSB8DmAh2C50RWeTNBHphwPmemsT5Ndj6o1Iyu2
         Ay0FYglXSXBrZRKRqXnHvxYDRLQuW6nGT1d52HtCu5C4Lm+A0AlyOnqld9KSJIA6V9lX
         pNxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680259246;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=PTk8mOSPIzlRbno9iYVmCDgeJNwZ89A6l+2S2wacpJ0=;
        b=G0i+tyEPwZmetcvFraL92QkdX0KJi/j0ttcoVkBgO9sUm/hA61o8R5cy3dgBr37lKZ
         dIf+lpmGliTRb4tJWkUrMsCS7cB+ZhH1HO0Vbavgx78eIW8AI+ea3LqO8gFCU/oKuvdH
         HcOnkBikZHOPfrFXh+px5e2WCXmxikOXJb9bp3WPbA45VqFxjd4UYHcNC0RjvzFjQyfK
         DvfN3wICPzq2H03tlEo4MTFks+sZVj7Gvs0ZBrix/eY+jibO42h5nALJR3n4c7xCEo7v
         z6G3kV6bIVHH0iQZ1o9svLsXCCWO/Ypyuq7UmEAfhOkahpIAfwtHfhisMeH0gdN5kwAF
         9TQw==
X-Gm-Message-State: AAQBX9cKth4XPaLwXg4OP6dFXa3QulzALnKUiNO83ykXrh3N7qJ6USq+
        FVryTcVRm4xrkLbg3Fqpsw8m1g==
X-Google-Smtp-Source: AKy350YjgNmKudNSIJxtNOnKZbr1gPCOLjUBUP6WCFdx2ZzwuD+amSfMa3xd3BwO4z6X//vHGXLinA==
X-Received: by 2002:a05:6512:143:b0:4e8:5627:e527 with SMTP id m3-20020a056512014300b004e85627e527mr7499506lfo.3.1680259246524;
        Fri, 31 Mar 2023 03:40:46 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id x16-20020ac24890000000b004eaf9ef5e7asm326857lfc.226.2023.03.31.03.40.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 31 Mar 2023 03:40:46 -0700 (PDT)
Message-ID: <6d6fc652-6eb7-eb95-0ddd-0295a16c1373@linaro.org>
Date:   Fri, 31 Mar 2023 12:40:44 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [PATCH] dt-bindings: gpio: fsl-imx-gpio: add i.MX8QM compatible
Content-Language: en-US
To:     "Peng Fan (OSS)" <peng.fan@oss.nxp.com>, linus.walleij@linaro.org,
        brgl@bgdev.pl, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org
Cc:     shawnguo@kernel.org, s.hauer@pengutronix.de, kernel@pengutronix.de,
        festevam@gmail.com, linux-imx@nxp.com, stefan@agner.ch,
        linux-gpio@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        Peng Fan <peng.fan@nxp.com>
References: <20230328061257.1984972-1-peng.fan@oss.nxp.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230328061257.1984972-1-peng.fan@oss.nxp.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-0.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 28/03/2023 08:12, Peng Fan (OSS) wrote:
> From: Peng Fan <peng.fan@nxp.com>
> 
> Add i.MX8QM compatible, same as i.MX8QXP.
> 
> Signed-off-by: Peng Fan <peng.fan@nxp.com>
> ---

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

