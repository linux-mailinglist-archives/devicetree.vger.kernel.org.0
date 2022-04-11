Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 32D6C4FB3EC
	for <lists+devicetree@lfdr.de>; Mon, 11 Apr 2022 08:43:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S245033AbiDKGpJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 11 Apr 2022 02:45:09 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59858 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S245035AbiDKGpI (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 11 Apr 2022 02:45:08 -0400
Received: from mail-ed1-x535.google.com (mail-ed1-x535.google.com [IPv6:2a00:1450:4864:20::535])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DA32428999
        for <devicetree@vger.kernel.org>; Sun, 10 Apr 2022 23:42:55 -0700 (PDT)
Received: by mail-ed1-x535.google.com with SMTP id z12so4482449edl.2
        for <devicetree@vger.kernel.org>; Sun, 10 Apr 2022 23:42:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=LSzv58nBkA+R90RIZ6HMgs1Sf8Kdw1DEQuIT8NvmTLQ=;
        b=d+v/gvITQ1Y2LUYM7zzqwlwy19c/S43Re/LX2hDa3CJQTImXu1JcZQAMwjBGJbniwe
         NO5O6Of0yNp7XhKr4tyFGJtlIPqzseOXRdcOEF1vEThz413KF1h3GAc/ycnO7aHDn8o6
         Svvxl0/XwftyY+mH4QS0qeZK12O8IyTxdWzE1rCO497BMsoNAwPYxJty9j6+DNgEoKQ5
         f9vyuZ3i6nFDztMNMVSZsrqn8CaabrRCtWboKRwK2Ti88QBGbkGHYnFNF8twGwC7wTlg
         v9ZUBwBXk26EQoJ5jNdI5Ms3yDE44kWOk0khHkmyWEywO8diJAm8qhcRT5snNNEcb1CO
         jMdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=LSzv58nBkA+R90RIZ6HMgs1Sf8Kdw1DEQuIT8NvmTLQ=;
        b=MJryuqCYRibOO7fVJxzHPBkHmiY2XrA4KPzPwoXUeATvGRcFLzs/T0ISKXJ5UTvczm
         W295tHuLn8kJquvlzCleAp8m8TAIEdxloLWrdKkTP8P5Xg/QzfgHkqLhoXLii3IQpf1o
         NSnLNKFW3+oj+Ez0XLAiqU4Ioqjpg+WazV/1xU7TKUKMCLBxkOexCWnGh+32AtFZfBpH
         fu/yTweVRsHakV7/JCkbWDv6mhocdQtbkaAJ/mbMY6SqWSF3gtrX92eaRN7j/pK1JYBB
         1OAPvbq8iruOG7Nv4meMucCtKb3dHzx6Joge8GcaXAKc5Dm076gdnTH1gHvk2SKQ162M
         t+lA==
X-Gm-Message-State: AOAM5333rFo9VXS2JYEJyfREH1o2gqMSjE7/4ZGglQxoAaI5zwSd2MsL
        3dwRG7Uvlcg2bt5ugNlVpBA46w==
X-Google-Smtp-Source: ABdhPJyIfNJlUqbXK2jSR+BEoY1rEx7VZMuvim0+1+SfEpiM6Dr32FXbWSqp8i3oUbEc6Qkycufchg==
X-Received: by 2002:a05:6402:696:b0:41d:7345:41e1 with SMTP id f22-20020a056402069600b0041d734541e1mr7460059edy.179.1649659374503;
        Sun, 10 Apr 2022 23:42:54 -0700 (PDT)
Received: from [192.168.0.191] (xdsl-188-155-201-27.adslplus.ch. [188.155.201.27])
        by smtp.gmail.com with ESMTPSA id p24-20020a056402045800b0041614c8f79asm14379330edw.88.2022.04.10.23.42.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 10 Apr 2022 23:42:54 -0700 (PDT)
Message-ID: <49a8a43b-471b-2b62-c7e3-4dac9fdf61ec@linaro.org>
Date:   Mon, 11 Apr 2022 08:42:52 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [PATCH V4 2/3] arm64: dts: imx8mn: Enable HS400-ES
Content-Language: en-US
To:     Adam Ford <aford173@gmail.com>, linux-mmc@vger.kernel.org
Cc:     aford@beaconembedded.com, Ulf Hansson <ulf.hansson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org
References: <20220410193544.1745684-1-aford173@gmail.com>
 <20220410193544.1745684-2-aford173@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220410193544.1745684-2-aford173@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-5.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 10/04/2022 21:35, Adam Ford wrote:
> The SDHC controller in the imx8mn has the same controller
> as the imx8mm which supports HS400-ES. Change the compatible
> fallback to imx8mm to enable it, but keep the imx7d-usdhc
> to prevent breaking backwards compatibility.
> 
> Signed-off-by: Adam Ford <aford173@gmail.com>

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof
