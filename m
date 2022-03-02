Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DC5944CAE40
	for <lists+devicetree@lfdr.de>; Wed,  2 Mar 2022 20:06:40 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240817AbiCBTHW (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 2 Mar 2022 14:07:22 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47268 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236435AbiCBTHV (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 2 Mar 2022 14:07:21 -0500
Received: from smtp-relay-internal-1.canonical.com (smtp-relay-internal-1.canonical.com [185.125.188.123])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 347B4BF51A
        for <devicetree@vger.kernel.org>; Wed,  2 Mar 2022 11:06:38 -0800 (PST)
Received: from mail-ed1-f69.google.com (mail-ed1-f69.google.com [209.85.208.69])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 7A74E3F5F7
        for <devicetree@vger.kernel.org>; Wed,  2 Mar 2022 19:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1646247993;
        bh=m6ojeTgtogrdSSitR1acR3iefkQ9OYzxbBDb1IxSxtI=;
        h=Message-ID:Date:MIME-Version:Subject:To:References:Cc:From:
         In-Reply-To:Content-Type;
        b=X+EEE3qMq/w0NKio3LuzmquQDk3sYpRkro9Z/iEAg5GapOGFv2QL6TfbcoR0KzjaS
         vfC80vDfMo/dcISoA6CjZV4/9BWz2BNdB7zrmNlPLleb2MxOQZbjaqC82dn4Cf54RG
         dJFmz2d7RiiD1zZKHvL+iwBSHUZlGMlEW6KJhoilfZU2uvaOJTsOeARpXv97JkssUp
         4gPzeah8OOb0kfgFevBUu26fsh9ZkoAu0PL68/zO5n5ICsg2yNR1teQ8dCiDxbii3C
         ptPgFJ2Ke87f0NmJzuxWmee9uZcZ2I8aL9q6UUfDv74gqivsMhNeRdisCX7WF30Qv7
         LKjuYJSdqLhhQ==
Received: by mail-ed1-f69.google.com with SMTP id m12-20020a056402510c00b00413298c3c42so1500381edd.15
        for <devicetree@vger.kernel.org>; Wed, 02 Mar 2022 11:06:33 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:cc:from:in-reply-to
         :content-transfer-encoding;
        bh=m6ojeTgtogrdSSitR1acR3iefkQ9OYzxbBDb1IxSxtI=;
        b=fhKyFOQ3US2TN2+X/50sTWzEVQdwcNUWlie4nlOVODlS+scnTMvFr5aoAKj2fk/sZW
         weQWMIA4QRzyUeM/2G+CZFdsfYGF8uAr2+TrglUD/RqK7gMMs+rETAhDZwyrRldlHbwS
         M+vCjpCyxL0e8WMazvyhmxy1hIp5DxSK6o+lhIgvpE83D8e5/V5RLn3sFUfzTOVonyt1
         tTI9NPz6RdNi0L1dV20aoy/pSEX6GwsvNrwRFNALTJjIvN08/ujA1uYzDTnAl8UOep2h
         WK0/K2ei8JsdgrCrIzwaNX7VzLQivF0yWEnSBQMHi/zAttaMjhI2gDS9bs+R6OiQt7jN
         sXYg==
X-Gm-Message-State: AOAM530MqC7Vih0OMMgjjX8xrZAFfIGZJyOyurIYJLd0K5zRXVBem73A
        Oaih5NDHQL4jgY238Xr9Cb3wor42k3Gs1m3AEWbp9zAgVa0MOfmm2pNtJpbgOUky2JT0zJOzCpd
        xQAJoA8+/76GglqYURsmZ8j5H/LBbuKfM/O8GceQ=
X-Received: by 2002:a17:906:6a0f:b0:6d7:1021:2bd2 with SMTP id qw15-20020a1709066a0f00b006d710212bd2mr6424426ejc.395.1646247992482;
        Wed, 02 Mar 2022 11:06:32 -0800 (PST)
X-Google-Smtp-Source: ABdhPJxeQrZWG2Oxg6RE7q9wIPUX3Z/sjjW6CdMRyOa97Yz1CbhreGcjtKJUbps/xbBHdxqhb0/UQQ==
X-Received: by 2002:a17:906:6a0f:b0:6d7:1021:2bd2 with SMTP id qw15-20020a1709066a0f00b006d710212bd2mr6424403ejc.395.1646247992278;
        Wed, 02 Mar 2022 11:06:32 -0800 (PST)
Received: from [192.168.0.137] (xdsl-188-155-181-108.adslplus.ch. [188.155.181.108])
        by smtp.gmail.com with ESMTPSA id cy1-20020a0564021c8100b003e359e4f54asm8827529edb.43.2022.03.02.11.06.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 02 Mar 2022 11:06:31 -0800 (PST)
Message-ID: <77fd3853-25b2-f9f7-6081-969ec54aa6a9@canonical.com>
Date:   Wed, 2 Mar 2022 20:06:30 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH 2/4] arm64: dts: mt8183: align Google CROS EC PWM node
 name with dtschema
Content-Language: en-US
To:     Matthias Brugger <matthias.bgg@gmail.com>
References: <20220214081916.162014-1-krzysztof.kozlowski@canonical.com>
 <20220214081916.162014-3-krzysztof.kozlowski@canonical.com>
Cc:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Heiko Stuebner <heiko@sntech.de>,
        Douglas Anderson <dianders@chromium.org>,
        devicetree@vger.kernel.org, chrome-platform@lists.linux.dev,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-arm-msm@vger.kernel.org, linux-rockchip@lists.infradead.org,
        Lee Jones <lee.jones@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Guenter Roeck <groeck@chromium.org>,
        =?UTF-8?Q?Uwe_Kleine-K=c3=b6nig?= <u.kleine-koenig@pengutronix.de>,
        linux-mediatek@lists.infradead.org,
        Benson Leung <bleung@chromium.org>,
        Thierry Reding <thierry.reding@gmail.com>,
        linux-pwm@vger.kernel.org
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
In-Reply-To: <20220214081916.162014-3-krzysztof.kozlowski@canonical.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.8 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 14/02/2022 09:19, Krzysztof Kozlowski wrote:
> dtschema expects PWM node name to be a generic "pwm".  This also matches
> Devicetree specification requirements about generic node names.
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
> ---
>  arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi.dtsi | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 

Hi Matthias,

Any comments on this patch?

Best regards,
Krzysztof
