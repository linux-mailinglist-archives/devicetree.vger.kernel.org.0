Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A1D3F67214A
	for <lists+devicetree@lfdr.de>; Wed, 18 Jan 2023 16:30:33 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229761AbjARPab (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 18 Jan 2023 10:30:31 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34228 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231494AbjARP3w (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 18 Jan 2023 10:29:52 -0500
Received: from mail-wr1-x433.google.com (mail-wr1-x433.google.com [IPv6:2a00:1450:4864:20::433])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 460DF45F69
        for <devicetree@vger.kernel.org>; Wed, 18 Jan 2023 07:29:41 -0800 (PST)
Received: by mail-wr1-x433.google.com with SMTP id q10so15006861wrs.2
        for <devicetree@vger.kernel.org>; Wed, 18 Jan 2023 07:29:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=g/aLmWYhNKv7GH4DuCtvNQcDIMNkNsTtbotrrf7zjiA=;
        b=dAUmF+XuY7jwyqIdcCmF0l7PlYH3GPW0DsYGSW9B2hk5CkXzg+v9LFbjNxv3GLjInU
         I9/DvK6WvVzBfhD5wXdgY6Q/UmKejvOUIAmMm70YygoCPvU/3KiqHeqDOqazufqmC0dl
         ViloPH6B1Wr8KbTXhXpefdHnZHw2IKSw/T+71IacGWZ3NJvTAOiENNfdlImZ3IQI3BQu
         qAcRh8aaGXiDD4+R6qRystyKbnIlLcoEHIDUdU9kj+2GOxtR8516G8PwAPDB5uNXXuW3
         TI7OJrA/0eWTom6gssGPuQemLE9Ek3NoJvS3odkBgophaWccAXWZHO3MWfXVO8PM/bgd
         Wy+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=g/aLmWYhNKv7GH4DuCtvNQcDIMNkNsTtbotrrf7zjiA=;
        b=gJbGJpcdZFOTLSpFw6qDgsVq9HRNsRxFh71ikwznUEtD4rxNHmTc1vmycnwq4By24w
         yNptdg6UwMYyK2z5PntEnsXutKDZVNn8JCiwq2FJMKSPpqY7W25UHZXPEOo33OozWBy1
         GvOtxmwxfc5gSzyC9kapSEumNrR4bsYqfOwslBWgWBUyExIl13tTQZMolNbgRm9iIXLy
         BMuNTbdflDywHf0xNlMcTrEevLdr09g7mSIMqJSoB+iSud1ABIWvmnnaAYJkHEw5dPKQ
         bZ2Dwoqyiy5HcJrYnuEb4stHqPet5BB3D427KucuIzK0kdS5l4gNVKM115rEcpkN9mX1
         i+gg==
X-Gm-Message-State: AFqh2krBmNDx6Jpm4c6YIMWivQGLqTp6lCEIUkg15aUQBfKP1/pd7WDJ
        a1BuMSY5l7J15NwvaESdV4UyQQ==
X-Google-Smtp-Source: AMrXdXsxCIHrIcEPYc3qMlgVpfKX2UUibBV126RLchHBNcq6Cfok29847L7anEX4KDvKklCjiK44pA==
X-Received: by 2002:a05:6000:388:b0:2bc:7ec3:8b2 with SMTP id u8-20020a056000038800b002bc7ec308b2mr7422667wrf.68.1674055779869;
        Wed, 18 Jan 2023 07:29:39 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id l7-20020a5d6747000000b002b57bae7174sm31996847wrw.5.2023.01.18.07.29.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 18 Jan 2023 07:29:39 -0800 (PST)
Message-ID: <10a7ebd0-f174-a806-000a-6d50bfed8155@linaro.org>
Date:   Wed, 18 Jan 2023 16:29:37 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.0
Subject: Re: [PATCH 1/3] dt-bindings: arm: fsl: Add verdin yavia carrier-board
Content-Language: en-US
To:     Philippe Schenker <dev@pschenker.ch>, devicetree@vger.kernel.org,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>
Cc:     Philippe Schenker <philippe.schenker@toradex.com>,
        Denys Drozdov <denys.drozdov@toradex.com>,
        Fabio Estevam <festevam@denx.de>,
        Frieder Schrempf <frieder.schrempf@kontron.de>,
        Li Yang <leoyang.li@nxp.com>,
        Marcel Ziswiler <marcel.ziswiler@toradex.com>,
        Marek Vasut <marex@denx.de>,
        Matthias Schiffer <matthias.schiffer@tq-group.com>,
        Max Krummenacher <max.krummenacher@toradex.com>,
        Tim Harvey <tharvey@gateworks.com>,
        linux-kernel@vger.kernel.org
References: <20230118144042.7705-1-dev@pschenker.ch>
 <20230118144042.7705-2-dev@pschenker.ch>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230118144042.7705-2-dev@pschenker.ch>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 18/01/2023 15:40, Philippe Schenker wrote:
> From: Philippe Schenker <philippe.schenker@toradex.com>
> 
> Add the Verdin Yavia Carrier-Board that exists for both Verdin iMX8M
> Plus and Verdin iMX8M Mini.
> 
> Signed-off-by: Philippe Schenker <philippe.schenker@toradex.com>
> ---


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

