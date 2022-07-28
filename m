Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 93368584450
	for <lists+devicetree@lfdr.de>; Thu, 28 Jul 2022 18:43:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230092AbiG1Qnd (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 28 Jul 2022 12:43:33 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56520 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229750AbiG1Qnc (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 28 Jul 2022 12:43:32 -0400
Received: from mail-lf1-x136.google.com (mail-lf1-x136.google.com [IPv6:2a00:1450:4864:20::136])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BC3023FA1B
        for <devicetree@vger.kernel.org>; Thu, 28 Jul 2022 09:43:31 -0700 (PDT)
Received: by mail-lf1-x136.google.com with SMTP id z25so3675563lfr.2
        for <devicetree@vger.kernel.org>; Thu, 28 Jul 2022 09:43:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=ifxIHR3wtak3AIe6LDQHDjxyjywk+Xw7XLUojedre8M=;
        b=YalcY9JaDXdQcIzKQp3YdhK9ZeTXE76yICCoLbuHt8DInn6KLS0lp1iaz9FrUBZzD7
         W9DKjHXveOAhimxyHObvbSU8GWgaFP9v+7WLxSBenjVoiBHUcfMa4PYg9I7+vfn4Qf6K
         /V/sahsY2bfkmWtnQgAnwOnlmqOQnoOsYP4oZzNJUZ1gblqMnox0xa6jwzOdhk6AswNf
         5DEmeXvGjpCXItix6DyjVzZHKYAx8MBpJWEYecdP0MfcHVAQDQdppriyQoyAMm2FxeTs
         WxRSK2sxQthldnxBOhA3twuNrzN82+Z0xHqocky3N+mrdnwoTdt5AvueX0cBb9xTfFNx
         r03A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=ifxIHR3wtak3AIe6LDQHDjxyjywk+Xw7XLUojedre8M=;
        b=LDxGs00gEbYc3WsDYpz4ZCOtcfYLNlOiOtJmI1VoAEvIkfhKRp494fsFlUfmJCB0J7
         JELwcL7i8Pfljpz3DMUVkNvzfLqa9br4oewjJ+Q92GX2b0K6AwchOczA26LZSP1SsZMi
         k95ZIqdKVKq3nL5kYEYY6iL3EQbxPEInq+YeQX6Isyq+BC5tq3MDwx51Es38deGa7GQA
         Fik2BqAXQKbbypKYeq6LEoD4J6IMf/XYlmDX0nQLQgwJTEL9OuEJ1ABsKFBuUg0FXux+
         JTbbuqJUcBU0mBCcJ+FkDa0cyJmON0vAeJE/AX9m+Bu2hTbdA7m666PfrOXM9PMTHYzW
         KgPg==
X-Gm-Message-State: AJIora8nqe+jFg7C/m1ggz/BK4EorjAeliDa05gR5yrsgmzb422gtbWN
        D4ocDYRCghSl57Aq05nv9wrXxQ==
X-Google-Smtp-Source: AGRyM1vl7Q3/uugOjXvtVSvHQJheTOR4ZXmBs5by8XTGTHg5bhIlv+yJ8NGuEP7jhMejdlWPD4vKWQ==
X-Received: by 2002:a05:6512:20c7:b0:48a:a653:f50d with SMTP id u7-20020a05651220c700b0048aa653f50dmr4273359lfr.261.1659026609909;
        Thu, 28 Jul 2022 09:43:29 -0700 (PDT)
Received: from [192.168.3.197] (78-26-46-173.network.trollfjord.no. [78.26.46.173])
        by smtp.gmail.com with ESMTPSA id k9-20020ac24f09000000b0048a918717c3sm271421lfr.57.2022.07.28.09.43.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 28 Jul 2022 09:43:29 -0700 (PDT)
Message-ID: <33cd5fd3-f673-4d46-b063-e3615a648d6c@linaro.org>
Date:   Thu, 28 Jul 2022 18:43:27 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Subject: Re: [PATCH RFC v1 2/2] devicetree: bindings: bus: add Wiegand driver
 documentation
Content-Language: en-US
To:     =?UTF-8?Q?Martin_Za=c5=a5ovi=c4=8d?= <m.zatovic1@gmail.com>,
        linux-kernel@vger.kernel.org
Cc:     devicetree@vger.kernel.org, mani@kernel.org,
        hemantk@codeaurora.org, elder@linaro.org, f.fainelli@gmail.com,
        linus.walleij@linaro.org, Michael.Srba@seznam.cz,
        jeffrey.l.hugo@gmail.com, gregkh@linuxfoundation.org,
        bjorn.andersson@linaro.org, saravanak@google.com,
        krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org
References: <20220728091712.13395-1-m.zatovic1@gmail.com>
 <20220728091712.13395-2-m.zatovic1@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220728091712.13395-2-m.zatovic1@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 28/07/2022 11:17, Martin Zaťovič wrote:
> Wiegand write-only driver requires definitions of two GPIO lines
> in the devicetree. This adds the documentation of their
> definitions.
> 
> Signed-off-by: Martin Zaťovič <m.zatovic1@gmail.com>

You didn't test the bindings, did you?

Best regards,
Krzysztof
