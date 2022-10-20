Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7FACB606232
	for <lists+devicetree@lfdr.de>; Thu, 20 Oct 2022 15:49:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229756AbiJTNtz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 20 Oct 2022 09:49:55 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36632 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229746AbiJTNty (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 20 Oct 2022 09:49:54 -0400
Received: from mail-qt1-x832.google.com (mail-qt1-x832.google.com [IPv6:2607:f8b0:4864:20::832])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C86005D72D
        for <devicetree@vger.kernel.org>; Thu, 20 Oct 2022 06:49:53 -0700 (PDT)
Received: by mail-qt1-x832.google.com with SMTP id a24so13674841qto.10
        for <devicetree@vger.kernel.org>; Thu, 20 Oct 2022 06:49:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=K94MIBtjSpUglDlzV9OQPeBiVwrSBHgq9ZtEc4+bqS0=;
        b=n9L17whku2ryPiebJ8j3cqdnLgc9IUw8ZC3+OPh+bvNlUw40Cf109WwUh3kLA3KZzu
         G32VsrORUoM3v3HImifGSH/2iww4wTQfLvgt5bBA3thGYBpyMzgRIr9a/V9LtpPPlRWr
         lIPL3LCsHE8JKHW3SfNlajqrjpNnYpHcJKeYMoL+hI/KOqTBCT6PMYa2faQo6zJIqbbe
         zCYScIpAF+7BWsPxXfVH+kU2bZk5B+cR3DVR2nC9i4ct0Z1V02bXnGBDKSpiL1Adgv2O
         BFvch+VgAJE5Cn4jBjsqMsl9csxDsDrDzc6hlPNQ05FtSjMiZ//rR1jGDTA8SM/P69a6
         xvfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=K94MIBtjSpUglDlzV9OQPeBiVwrSBHgq9ZtEc4+bqS0=;
        b=oyR09uPuCA3+CxwHj0jQxaDwi957EHJBwuKviqrrOaDFP51xUS5QPt3vjMnLUXwI0k
         xk9tONbMMeH2xWI5nS4Ze7SMHz6rXIfiP+CAwclQHCgVZOnsgFrfX1R6i4gIBl2PLuc+
         KUTKJ/qjizGtsygk52PaWQfFqxMMyzPxxhAt1wQDqW9o6pvAmelRDlP+fReQK/ibYTRC
         d56YzmnT67Y7yO0DXNpvh1ICYGnrB/msvUCCGFf7LeVIisU74yCLNiXeGMX4mdsteAJU
         8m6nzX8J58nNDYt46rWzdxlWveENmjRUFRXj2LQwylucQB9S+XOdjDT8De4tDtV4uPQt
         ujBA==
X-Gm-Message-State: ACrzQf1k+g+ahNoae5J46UcY75Lb0UyrXpOi5UENUC3oaVjE+/M8XFHZ
        DBHaoQC1/vUl9E6/hSWMY0xFGg==
X-Google-Smtp-Source: AMsMyM4HM6HUD9Lx4YSe+7lhsrn7Fhtmij4625UYjPqdhEWkCr0sM3qmUWP6m3QBzUPIbWPO//HK3w==
X-Received: by 2002:a05:622a:1195:b0:39c:f551:7811 with SMTP id m21-20020a05622a119500b0039cf5517811mr11082985qtk.541.1666273792715;
        Thu, 20 Oct 2022 06:49:52 -0700 (PDT)
Received: from [192.168.10.124] (pool-72-83-177-149.washdc.east.verizon.net. [72.83.177.149])
        by smtp.gmail.com with ESMTPSA id bs20-20020a05620a471400b006b615cd8c13sm7175578qkb.106.2022.10.20.06.49.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 20 Oct 2022 06:49:52 -0700 (PDT)
Message-ID: <06d31789-f54d-298b-680e-97cf6f4c5965@linaro.org>
Date:   Thu, 20 Oct 2022 09:49:51 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.0
Subject: Re: [PATCH v2 2/2] arm64: dts: k3-j72*: correct compatible for syscon
 entries
Content-Language: en-US
To:     Matt Ranostay <mranostay@ti.com>, nm@ti.com, vigneshr@ti.com,
        krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org
Cc:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
References: <20221020032802.308545-1-mranostay@ti.com>
 <20221020032802.308545-3-mranostay@ti.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221020032802.308545-3-mranostay@ti.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 19/10/2022 23:28, Matt Ranostay wrote:
> Add missing ti,j7*-system-controller compatible to bus defines in mcu/wakeup
> domains to avoid the following similar warnings from dt-schema checks:
> 
> arch/arm64/boot/dts/ti/k3-j721s2-common-proc-board.dtb: syscon@40f00000: compatible: ['syscon', 'simple-mfd'] is too short'
> 
> Signed-off-by: Matt Ranostay <mranostay@ti.com>
> ---


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

