Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B937B6A91B1
	for <lists+devicetree@lfdr.de>; Fri,  3 Mar 2023 08:27:10 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229649AbjCCH1H (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 3 Mar 2023 02:27:07 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57366 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229607AbjCCH1H (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 3 Mar 2023 02:27:07 -0500
Received: from mail-ed1-x534.google.com (mail-ed1-x534.google.com [IPv6:2a00:1450:4864:20::534])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C585B2FCC9
        for <devicetree@vger.kernel.org>; Thu,  2 Mar 2023 23:27:03 -0800 (PST)
Received: by mail-ed1-x534.google.com with SMTP id i34so6679163eda.7
        for <devicetree@vger.kernel.org>; Thu, 02 Mar 2023 23:27:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1677828422;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=0SkLxBTinkzL0rWm7m9lxrEYTMQyYpuolY/G/1QUEqk=;
        b=h0BJxvDQuu9xOxkx8e+PYnvGp5/c99B04e91D1LlybHm8qIsumHglTyi6C3Xqs1SOh
         TxGADBsuoB9Y/bbmiArukDbdzTOAYAZs1zrtrQbN8fZF/zJsuGVv5z8McFJm9ToAIG46
         toarfMMeozMTnjUbVjs68Rp/qP8vSnItY4mbPFMmCjeEFJmrUW0Ystnf4d/wNHdHWLc3
         UV6HL1CaDr+pgE+raKkzQrbmFqBITTloJGvFQNqdasPjZIkYKiVTW5wAtZk7IDqBw7Na
         LrtCK8GO8d8lXTmO9iSY1T6LlFc5UpejIu12radrx1pA1Dspq1bjsCVeVGcMT7hFWnbF
         d+hA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1677828422;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=0SkLxBTinkzL0rWm7m9lxrEYTMQyYpuolY/G/1QUEqk=;
        b=X/qpjYOtiD3pYXk4wCyWWkbSO309PA51dfAG1sOIo7iGrBZZw8YLdka8z6L0PW5h2+
         BLNYuLjiCacmSRVQeFLXrdebb9DuQ1vUim1WKq+fvRjoNpJnyReVFk7yDqKfRtKfKVTn
         nZ5D8+YjbCxk59dFBQmtH5of9sVA4zCJaY1csx3CfK2bGLbK0J4erusyT8XmU5oyV7Et
         dgMQGSidEiDYYleh5ACM5yPFY/zTsfJPa6KURgIjInPLhsEoP9DnPpAycks0gs9iYxia
         ffsbfGf5gRMl9iWeChhclzB/oohWcafqJMGuyLeO6vmIWzYa0WgPG1flBVd/Xtt/cXmF
         GBmg==
X-Gm-Message-State: AO0yUKW77B5GA4gOagXiXdwkCIGlIv13eODrWpMOI33Stc4hmiyM0Mel
        rvpo3FNcxOcIcpfZi3j853CZng==
X-Google-Smtp-Source: AK7set+JeP4ed+WY1gu0EMexgKPfoE7L+nx4s/TZMv1GONq5PM/X/NEgGBGjH1BZEdLnz2g9k3pnig==
X-Received: by 2002:a05:6402:1512:b0:4c2:6b68:c126 with SMTP id f18-20020a056402151200b004c26b68c126mr1001954edw.8.1677828422309;
        Thu, 02 Mar 2023 23:27:02 -0800 (PST)
Received: from [192.168.1.20] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id a38-20020a509ea9000000b004c041723816sm796568edf.89.2023.03.02.23.27.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 02 Mar 2023 23:27:01 -0800 (PST)
Message-ID: <1dbdc0d4-0d3e-0a63-7af4-b39dd2d9c0a5@linaro.org>
Date:   Fri, 3 Mar 2023 08:27:00 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH 1/2] dt-bindings: arm: Add DH electronics i.MX8M Plus
 DHCOM on PDK3
Content-Language: en-US
To:     Marek Vasut <marex@denx.de>, linux-arm-kernel@lists.infradead.org
Cc:     Fabio Estevam <festevam@gmail.com>,
        Frieder Schrempf <frieder.schrempf@kontron.de>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Li Yang <leoyang.li@nxp.com>,
        Marcel Ziswiler <marcel.ziswiler@toradex.com>,
        Matthias Schiffer <matthias.schiffer@tq-group.com>,
        Max Krummenacher <max.krummenacher@toradex.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Rob Herring <robh+dt@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Shawn Guo <shawnguo@kernel.org>,
        Stefan Wahren <stefan.wahren@i2se.com>,
        devicetree@vger.kernel.org
References: <20230302231626.159984-1-marex@denx.de>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230302231626.159984-1-marex@denx.de>
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

On 03/03/2023 00:16, Marek Vasut wrote:
> Add DT compatible string for DH electronics i.MX8M Plus DHCOM on PDK3
> evaluation board into YAML DT binding document. This setup is a general
> purpose SoM evaluation board.
> 
> Signed-off-by: Marek Vasut <marex@denx.de>
> ---
> Cc: Fabio Estevam <festevam@gmail.com>


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

