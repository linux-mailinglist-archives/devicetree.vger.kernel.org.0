Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 361B453B3B1
	for <lists+devicetree@lfdr.de>; Thu,  2 Jun 2022 08:39:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231177AbiFBGjc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 2 Jun 2022 02:39:32 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56464 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230437AbiFBGjc (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 2 Jun 2022 02:39:32 -0400
Received: from mail-ed1-x52b.google.com (mail-ed1-x52b.google.com [IPv6:2a00:1450:4864:20::52b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 879A12A1415
        for <devicetree@vger.kernel.org>; Wed,  1 Jun 2022 23:39:30 -0700 (PDT)
Received: by mail-ed1-x52b.google.com with SMTP id b8so4968226edf.11
        for <devicetree@vger.kernel.org>; Wed, 01 Jun 2022 23:39:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=A5b239Gi6DT4HIXTPWRt0atlMQxsvSXmCt5JQ1rzGbQ=;
        b=oyM0xcXGYLvoegSnGbvs1zBuuHOgZaqlQiGBY1/hE5CJwicefXY4kdaOirF+mnxia7
         D2Z9p02CVmFY0r5hzJ8xnVNC+pBhMj5EhWuN8Q31DeeIMpzy9Tl3kcoc/0/v+tMq1JO+
         RwVle/y5nZxHcSyQvtF9UpHhV4F/Xmdyw6XNSeaby86T/SClEz0M8U9BXZzqqeFsqvgq
         xoM8Hmj3ICxlvqwhFrMFTgiZXunGs2f5IKU3OaEFee9mAdyeSJoGxZwFo/Wgv0Cm/aUt
         6LDCEBNr8J9ATNTUf6o+R0TI69dTHButBNz3EAY2jOxX5P/eD8Tm0JEZX0SmpxmdGIvx
         H8XQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=A5b239Gi6DT4HIXTPWRt0atlMQxsvSXmCt5JQ1rzGbQ=;
        b=OBf89erf32hAZOIcIRxxTCdeFjAwfTkQYcl2Qpj/dL+7MYM3JAfcXV3TYi+j14AL+L
         0kGhfDbapySYO9ZJqHZC5nodRdqUIQFtYDtlq6AEiayH7BRy0nGxdD/F0lpNoMWcZ4TM
         OCDwj2nSppEi79Ca5M3fEsmtGbrvaAv9afrHoJ/gN4UWnmoDrSexGi507qJPJYStTBBN
         pTc6HxFMmT+LKdk1w7P0H3OIPAhK+reRiYn0jmOX8MtsDK72Ihafn+CO6BUu1HriDhYh
         /qmtGXhAzZW8ygKKgqXZgeLLmW9HT+wz0d5eS0uubR5Us/F2h47imKEUdTifdp9SWlDK
         WDIw==
X-Gm-Message-State: AOAM531ZPTN6nWVh0Plnnuqqo6TMjB5bL+XFrM05KOFt8eVHp66kemBF
        nCXus0V6fnT/iHJNTLQFl9ezUA==
X-Google-Smtp-Source: ABdhPJw0pyO7gVwGvfGW448UYMATqiAz+qiA5US5uX95lkEiOVx9xVH26FUfb7xJjUyXuNC8SsQB5g==
X-Received: by 2002:a05:6402:1113:b0:428:679e:f73f with SMTP id u19-20020a056402111300b00428679ef73fmr3730916edv.378.1654151969179;
        Wed, 01 Jun 2022 23:39:29 -0700 (PDT)
Received: from [192.168.0.181] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id y24-20020a170906071800b006feed200464sm1444495ejb.131.2022.06.01.23.39.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 01 Jun 2022 23:39:28 -0700 (PDT)
Message-ID: <a6be8605-e538-d74b-b1b1-66766cf6bec3@linaro.org>
Date:   Thu, 2 Jun 2022 08:39:27 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Subject: Re: [PATCH v2 1/5] ARM: dts: socfpga: Change Mercury+ AA1 dts to dtsi
Content-Language: en-US
To:     =?UTF-8?Q?Pawe=c5=82_Anikiel?= <pan@semihalf.com>, soc@kernel.org,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     arnd@arndb.de, olof@lixom.net, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, dinguyen@kernel.org,
        amstan@chromium.org, upstream@semihalf.com
References: <20220601154647.80071-1-pan@semihalf.com>
 <20220601154647.80071-2-pan@semihalf.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220601154647.80071-2-pan@semihalf.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-3.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 01/06/2022 17:46, Paweł Anikiel wrote:
> The Mercury+ AA1 is not a standalone board, rather it's a module
> with an Arria 10 SoC. Remove status = "okay" and i2c aliases, as they
> are routed to the base board and should be enabled from there.
> 
> Signed-off-by: Paweł Anikiel <pan@semihalf.com>


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof
