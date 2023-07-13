Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8C1B8751E0A
	for <lists+devicetree@lfdr.de>; Thu, 13 Jul 2023 12:00:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234433AbjGMJ77 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 13 Jul 2023 05:59:59 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44264 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234435AbjGMJ7g (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 13 Jul 2023 05:59:36 -0400
Received: from mail-wr1-x42c.google.com (mail-wr1-x42c.google.com [IPv6:2a00:1450:4864:20::42c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B352826B1
        for <devicetree@vger.kernel.org>; Thu, 13 Jul 2023 02:59:18 -0700 (PDT)
Received: by mail-wr1-x42c.google.com with SMTP id ffacd0b85a97d-3143b88faebso657691f8f.3
        for <devicetree@vger.kernel.org>; Thu, 13 Jul 2023 02:59:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1689242357; x=1691834357;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=EfGF94MMBcItJ6e1QKfjFxJbCT5K/y3Yw5zZ80cqzUo=;
        b=RX/2R95emqRU0/kqzZOeren1e7sASJz5H3Q+9BX1GCwE9RxNhiPGJgRRnCRXzBkEnF
         gPERfgVzy2c2BsMA8TvxffL0BRX2q6nAk8BwzqPW6uEVOSMX5InaZ0oWIqG2ti1ofIjG
         PUpftrLqcd6pswZKvH4qm6DhP3KeBc+RSy82e4xsn1ci4U5iSnAL/nRJ268WVQCjDnpn
         96qCJFJ57ykJSUcCpqVmJGXORNrxy8Ke0KPXGWcCg1g8ueM/UkDx5nsIxjSSBFFul7tJ
         SFJRw1ozRDUmp7wOYmdVTvB6cBXxOo0CltAvSdqZ0bmHwVrSKwNY+68QYqCr2Qabsk++
         cwyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689242357; x=1691834357;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=EfGF94MMBcItJ6e1QKfjFxJbCT5K/y3Yw5zZ80cqzUo=;
        b=SMxAG/UAtgxF6tVf6juNl73IjVMAD0YHIdOTvucMi6BY1+NVqeX0uWQ/NJYS5jXwuY
         3Y2AVC4fFhnuWRkXe5zyh+ET/54/Onnuzek364iFRrXyYSqeumr8Tk9uDjDbSFOgA17L
         CcWz/bEH800S46Xxlr4KONgmvDcaxOOIBz8yhJT0tbiimYk6mcntws6soYRDd+xdQk5n
         7WpCgHPtHP6wRzEjrSjSwGYlC2+CSfK+ztzUYckpyEJLz1l4YaNdQrYtkXWZmEBeJcZ3
         RS8OpqyZCjya1HnbPyuVBso4O/Ybej6KpP1tWVXkD7L4TG1XM/Ukf7lMg8F0Wuiryrcw
         bZ5Q==
X-Gm-Message-State: ABy/qLZVFEafk6+5yaLL/3zFtJ1MNpTCkGCstp9dNTeD+Ysk3qfY2N6J
        sEXS3uA3BfMWV1nP7VWKRqg/ww==
X-Google-Smtp-Source: APBJJlE1vSef8lYrRI74FNpcCNSo3OMLYJY9thlLZ6Vno1ZNvXLJk23M3Ev81CwvC3qVpAPSm/SGww==
X-Received: by 2002:a05:6000:1189:b0:314:521:ce0a with SMTP id g9-20020a056000118900b003140521ce0amr1072111wrx.40.1689242357177;
        Thu, 13 Jul 2023 02:59:17 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.223.104])
        by smtp.gmail.com with ESMTPSA id k10-20020a5d66ca000000b00313f9085119sm7482114wrw.113.2023.07.13.02.59.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 13 Jul 2023 02:59:16 -0700 (PDT)
Message-ID: <1de2a372-e167-515d-0a0d-6fcad4a1e051@linaro.org>
Date:   Thu, 13 Jul 2023 11:59:13 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Subject: Re: [PATCH v3 1/3] dt-bindings: watchdog: ti,rti-wdt: Add support for
 WDIOF_CARDRESET
Content-Language: en-US
To:     huaqian.li@siemens.com, wim@linux-watchdog.org, linux@roeck-us.net,
        robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        conor+dt@kernel.org
Cc:     huaqianlee@gmail.com, nm@ti.com, vigneshr@ti.com,
        kristo@kernel.org, linux-watchdog@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, jan.kiszka@siemens.com,
        baocheng.su@siemens.com
References: <20230713095127.1230109-1-huaqian.li@siemens.com>
 <20230713095127.1230109-2-huaqian.li@siemens.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230713095127.1230109-2-huaqian.li@siemens.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 13/07/2023 11:51, huaqian.li@siemens.com wrote:
> From: Li Hua Qian <huaqian.li@siemens.com>
> 
> TI RTI (Real Time Interrupt) Watchdog doesn't support to record the
> watchdog cause. Add a reserved memory to know the last reboot was caused
> by the watchdog card. In the reserved memory, some specific info will be
> saved to indicate whether the watchdog reset was triggered in last
> boot.
> 
> Signed-off-by: Li Hua Qian <huaqian.li@siemens.com>
> ---
>  .../devicetree/bindings/watchdog/ti,rti-wdt.yaml     | 12 ++++++++++++
>  1 file changed, 12 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/watchdog/ti,rti-wdt.yaml b/Documentation/devicetree/bindings/watchdog/ti,rti-wdt.yaml
> index fc553211e42d..8c16fd3929ec 100644
> --- a/Documentation/devicetree/bindings/watchdog/ti,rti-wdt.yaml
> +++ b/Documentation/devicetree/bindings/watchdog/ti,rti-wdt.yaml
> @@ -34,6 +34,18 @@ properties:
>    power-domains:
>      maxItems: 1
>  
> +  memory-region:
> +    maxItems: 1
> +    description:
> +      Contains the watchdog reserved memory. It is optional.
> +      In the reserved memory, the specified values, which are
> +      PON_REASON_SOF_NUM(0xBBBBCCCC), PON_REASON_MAGIC_NUM(0xDDDDDDDD),
> +      and PON_REASON_EOF_NUM(0xCCCCBBBB), are pre-stored at the first
> +      3 * 4 bytes to tell that last boot was caused by watchdog reset.
> +      Once the PON reason is captured by driver(rti_wdt.c), the driver
> +      is supposed to wipe the whole memory region.
> +
> +

If there is going to be new version, only one blank line, not two.

In any case:
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

