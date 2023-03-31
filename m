Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DDD156D1CD0
	for <lists+devicetree@lfdr.de>; Fri, 31 Mar 2023 11:44:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232305AbjCaJoN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 31 Mar 2023 05:44:13 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37576 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232397AbjCaJoF (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 31 Mar 2023 05:44:05 -0400
Received: from mail-lf1-x136.google.com (mail-lf1-x136.google.com [IPv6:2a00:1450:4864:20::136])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 55CC21EFE7
        for <devicetree@vger.kernel.org>; Fri, 31 Mar 2023 02:43:45 -0700 (PDT)
Received: by mail-lf1-x136.google.com with SMTP id h11so21162032lfu.8
        for <devicetree@vger.kernel.org>; Fri, 31 Mar 2023 02:43:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1680255822;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=MewfqY1Uw160aE+WBNHAurtu7KcAOUmtVy/HcwrA08s=;
        b=Nc+tcYt+5KaI6DRQ/Q56PQvHRpkIP5O7YYP4yeZQUDM05wQUm3f4gat6j6AmJdIlvA
         kZ06z3nUiISpsaIQ7IhmhlceP5m1dPt7pmN7s2RX4IL8VMAORu4onHEAFH2m1aAtmysq
         XWdzbuVx4j1/JNUL7X6dVF6ZMQWgFCEph3KeorIXambxMSmKWu5tqgNacrywzFgEeb2D
         jIv1xOnXzBrqDt4JzBp3NFmdFhp4wjiGWTVxtg88Tmqr9SL2psdKOju1wkDDPZ/8f9LN
         6YU/7gyE6LmphGG/uSPRB1q29iR4Oi9Kq8XMO11xZghUZGZZxVCwkuN3J65W5SkmxB0E
         P80A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680255822;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=MewfqY1Uw160aE+WBNHAurtu7KcAOUmtVy/HcwrA08s=;
        b=q1OOOziK0NhJN51oOGpcf4WkR4VxA9B/DJVrNfWIfszxd9paRQuzSWYRa1TqbCyaLE
         aMGlffoLpwr6OEzXv5dN48z2sK81NG7/g4mDi2Vilf4T0svzl189qs/BoSCMgAhjkS6/
         Nx4LbrsHNb50PtEcLdhC2XS9G5D5kWWhOTxMEfNiEZXR4sw0l7U2GnmjLMXoOaTZMg7Z
         m9rTQCy4joWmunkXDWXJDBucDOQP9VdR0QH8BG8TrFNNeI1UEnsynNR8PUAJoQfK5ihU
         9O7NHv5QarDrCzJxfma/FlOo8jrLhBv9YiJv4raf59WL9HNchxSZ9Md+Pcm55DUWaAPP
         1y5Q==
X-Gm-Message-State: AAQBX9eMiZ7uGiEeGSl1uo+4HnKWyCW6JOKDB/BotMYfAhYgzr2Ysyek
        1JnKBBEK5U3Dbv/f7aQifmZcvQ==
X-Google-Smtp-Source: AKy350Yde+moEUY6g8KyHVOAEYiHzn6uOzf8oC252+VEJaOs5qY3uhjfi2SJUNdSmYvsTxSv5BEbNw==
X-Received: by 2002:ac2:5fc8:0:b0:4eb:1294:983d with SMTP id q8-20020ac25fc8000000b004eb1294983dmr4423538lfg.7.1680255822676;
        Fri, 31 Mar 2023 02:43:42 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id g15-20020a19ee0f000000b004dd6c325311sm305019lfb.248.2023.03.31.02.43.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 31 Mar 2023 02:43:42 -0700 (PDT)
Message-ID: <191c96d2-e51a-550e-16d9-0403e4528885@linaro.org>
Date:   Fri, 31 Mar 2023 11:43:41 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [PATCH v2] dt-bindings: omap: Convert omap.txt to yaml
Content-Language: en-US
To:     Andreas Kemnade <andreas@kemnade.info>,
        Tony Lindgren <tony@atomide.com>
Cc:     robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-omap@vger.kernel.org, Andrew Davis <afd@ti.com>
References: <20230329222246.3292766-1-andreas@kemnade.info>
 <20230330113918.GS7501@atomide.com> <20230330181506.4d5fcf51@aktux>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230330181506.4d5fcf51@aktux>
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

On 30/03/2023 18:15, Andreas Kemnade wrote:
> On Thu, 30 Mar 2023 14:39:18 +0300
> Tony Lindgren <tony@atomide.com> wrote:
> 
>> * Andreas Kemnade <andreas@kemnade.info> [230329 22:22]:
>>> From: Andrew Davis <afd@ti.com>
>>>
>>> Convert omap.txt to yaml.
>>>  Documentation/devicetree/bindings/arm/ti.yaml | 157 ++++++++++++++++++
>>>  1 file changed, 157 insertions(+)
>>>  create mode 100644 Documentation/devicetree/bindings/arm/ti.yaml  
>>
>> Great, can we also drop the old txt file or is more changes needed before
>> we can do that?
>>
> we have still 
> - ti,hwmods: list of hwmod names (ascii strings), that comes from the OMAP
>   HW documentation, attached to a device. Must contain at least
>   one hwmod.
> 
> Optional properties:
> - ti,no_idle_on_suspend: When present, it prevents the PM to idle the module
>   during suspend.
> - ti,no-reset-on-init: When present, the module should not be reset at init
> - ti,no-idle-on-init: When present, the module should not be idled at init
> - ti,no-idle: When present, the module is never allowed to idle.
> 
> These optional properties are not in the root node but in subnodes.
> From my guts feeling this belongs in a separate file and should
> be somehow dealed with in a second step.
> 
> So how to proceed?

Any compatible converted to DT Schema should be removed from TXT. It
does not mean entire TXT has to be removed if it contains other pieces.

Best regards,
Krzysztof

