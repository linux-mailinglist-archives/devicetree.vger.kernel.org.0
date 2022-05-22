Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8B0845301CB
	for <lists+devicetree@lfdr.de>; Sun, 22 May 2022 10:14:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240100AbiEVIOJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 22 May 2022 04:14:09 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37630 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234864AbiEVIOH (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 22 May 2022 04:14:07 -0400
Received: from mail-lf1-x132.google.com (mail-lf1-x132.google.com [IPv6:2a00:1450:4864:20::132])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E7AD527FCE
        for <devicetree@vger.kernel.org>; Sun, 22 May 2022 01:14:05 -0700 (PDT)
Received: by mail-lf1-x132.google.com with SMTP id bq30so20854950lfb.3
        for <devicetree@vger.kernel.org>; Sun, 22 May 2022 01:14:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=Et+7DOTTQH1JqVpXKSqRPgxVrV1oOzeHvnh2fubRt1A=;
        b=k7F8Fidfxb4gmUhFCDJVU0LHLtsVdZsyeamFnEqSX+/iUh9u/66KhhnLYfQkaVuM9B
         aUT5IqNMGTJ/4Ewd0Vfqc7W05jnqVT27dax0L/Fxh8ZF271LiGTSyOptKN9UK6LQKBJW
         fYp1vuJzrnTbDPpeEPeHa+2Y7apTU2k6uF/gfoAAdrPLdsWeMpG8LuGhciDFaJ3I8q7F
         kO5mbYKP3eZiE9xwPOo5ueHOk5GyBlewRHeGDqbU+U/LOfkis6wsyF4hEN66W+QTHnUa
         yaevaJ1FRUuoWRSfbL1pN5GPlq6ZPB295vwB7buySPS8wf2XTY4ucyU9kQwWTlYixKQ6
         xoHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=Et+7DOTTQH1JqVpXKSqRPgxVrV1oOzeHvnh2fubRt1A=;
        b=2xxcpsnlM8r6LTPlmwL5y+Pb8Qsy7tTqSgSsoXmUyutV1qzEwQwUoEKTB2M80ANlZ6
         ccIiSU7OWebd8GjcPfy1umcVm6KDFa9AEv7TUKzBtR1VetdzDhbFjzPYd+X63dhqjfOz
         RGhIDVAOMrymSY+mSSbSMdbT1pC2JK+FgFLZUizff4uAXc/B7jDP4UKqfNNbQSHTmx7l
         U/4RWrOmIDaELWbtfdQ2LNXuEB61Ylzg7HL+jtJR+H61QZcf7o7rDExvSa284lP8EB7O
         EKYXzoWPNIYIljKx9oHmLs0T/fJScGJzc5pJQudpr/KvOPlByhF+NctIMmyG9ZaGfLUk
         LfIg==
X-Gm-Message-State: AOAM530zZr1NwjU6z0EpOsKOn1DJfI396SXDbXi3X8OxOxxK2YlV+ula
        yECsppX2Lc6IjJNDlBz9KzUPCw==
X-Google-Smtp-Source: ABdhPJw7AMfd8auxqz+NezYyJzs8m23LxjPNettf01T47OdWMoQSUrsWnhIz5oOq++dKWhKByY0tGg==
X-Received: by 2002:a19:640d:0:b0:472:75e:7373 with SMTP id y13-20020a19640d000000b00472075e7373mr12289744lfb.46.1653207244246;
        Sun, 22 May 2022 01:14:04 -0700 (PDT)
Received: from [192.168.0.17] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id m25-20020ac24299000000b0047255d2117csm1362254lfh.171.2022.05.22.01.14.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 22 May 2022 01:14:03 -0700 (PDT)
Message-ID: <996ac5f2-3cf3-e67a-144b-4fdac9bbc20d@linaro.org>
Date:   Sun, 22 May 2022 10:14:02 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.1
Subject: Re: [PATCH v2 1/2] dt-bindings: net: broadcom-bluetooth: Add property
 for autobaud mode
Content-Language: en-US
To:     Hakan Jansson <hakan.jansson@infineon.com>
Cc:     "David S. Miller" <davem@davemloft.net>,
        Jakub Kicinski <kuba@kernel.org>,
        Paolo Abeni <pabeni@redhat.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Linus Walleij <linus.walleij@linaro.org>,
        netdev@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Marcel Holtmann <marcel@holtmann.org>,
        Johan Hedberg <johan.hedberg@gmail.com>,
        Luiz Augusto von Dentz <luiz.dentz@gmail.com>,
        linux-bluetooth@vger.kernel.org
References: <cover.1653057480.git.hakan.jansson@infineon.com>
 <cb20a6f49c91521d54c847ee4dc14451b0ee91dd.1653057480.git.hakan.jansson@infineon.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <cb20a6f49c91521d54c847ee4dc14451b0ee91dd.1653057480.git.hakan.jansson@infineon.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 20/05/2022 17:07, Hakan Jansson wrote:
> Some devices (e.g. CYW5557x) require autobaud mode to enable FW loading.

Which devices support this? You probably need allOf:if:then.

> Autobaud mode can also be required on some boards where the controller
> device is using a non-standard baud rate when first powered on.
> 
> This patch adds a property, "brcm,uses-autobaud-mode", to enable autobaud
> mode selection.

Don't use "This patch":
https://elixir.bootlin.com/linux/v5.17.1/source/Documentation/process/submitting-patches.rst#L95

> 
> Signed-off-by: Hakan Jansson <hakan.jansson@infineon.com>
> ---
> V1 -> V2: Modify property description
> 
>  .../devicetree/bindings/net/broadcom-bluetooth.yaml      | 9 +++++++++
>  1 file changed, 9 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/net/broadcom-bluetooth.yaml b/Documentation/devicetree/bindings/net/broadcom-bluetooth.yaml
> index 5aac094fd217..a29f059c21cc 100644
> --- a/Documentation/devicetree/bindings/net/broadcom-bluetooth.yaml
> +++ b/Documentation/devicetree/bindings/net/broadcom-bluetooth.yaml
> @@ -92,6 +92,15 @@ properties:
>         pcm-sync-mode: slave, master
>         pcm-clock-mode: slave, master
>  
> +  brcm,uses-autobaud-mode:

Based on description, I understand the host triggers using autobaud.
However here you word it as "uses", so it is independent of host, it
looks like property of a device. The commit msg describes it even
different - "require autobaud".

This leads to second issue - it looks like there is some hardware
property (requiring to use autobaud) which should be described by
bindings. But instead you describe desired operational feature.

> +    type: boolean
> +    description: >

No need for '>'.

> +      Setting this property will make the host (driver) assert the controller
> +      chip's BT_UART_CTS_N prior to asserting BT_REG_ON. This will make the
> +      controller start up in autobaud mode. The controller will then detect the
> +      baud rate of the first incoming (HCI Reset) command from the host and
> +      subsequently use that baud rate.
> +
>    interrupts:
>      items:
>        - description: Handle to the line HOST_WAKE used to wake


Best regards,
Krzysztof
