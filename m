Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B801269307D
	for <lists+devicetree@lfdr.de>; Sat, 11 Feb 2023 12:46:54 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229601AbjBKLqx (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 11 Feb 2023 06:46:53 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56506 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229917AbjBKLqw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 11 Feb 2023 06:46:52 -0500
Received: from mail-wr1-x430.google.com (mail-wr1-x430.google.com [IPv6:2a00:1450:4864:20::430])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 240047A87
        for <devicetree@vger.kernel.org>; Sat, 11 Feb 2023 03:46:49 -0800 (PST)
Received: by mail-wr1-x430.google.com with SMTP id j23so7706392wra.0
        for <devicetree@vger.kernel.org>; Sat, 11 Feb 2023 03:46:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=S1pHNNK8ao24f8sRy85WJGrODSV+6OsJ4JsqQIFE1oA=;
        b=rZXE8p9PotSMe0C80z8wJnW+ThcB915YGR+m0HObUV98E5yY6TmdBCyGqkUlfJsMEy
         c1r9m+NKLaK6FrgHrC69+EVTmVSrOsp4Q14lSdBurBk50Pz2ezkoIJrqoZL7WyrvscRI
         AClCwsLG0fUQqLKVzQ0oNmiEV75tHorItvojEoTkXvylFeXKMc7T/jY253dM8oWWruHj
         It6dlwiUm3q4+kEmIz2Pa73o2U98DlYOWNdONjU/iysGdrec/eFqp5uqV3hKN5ObFKF1
         Wdblkv3VePEGzOp2QEy+2xDzSrUNIvHlIoeembAArS6dtv3ZRqa+turGv6HFotiKal2s
         V8Gw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=S1pHNNK8ao24f8sRy85WJGrODSV+6OsJ4JsqQIFE1oA=;
        b=lV055UjrHGqM+pH1GADdBIpJSE+tedPRNa/ihMkCf1zrUWIbFxyZM4qwljFc0kUUjz
         EYvvRx1A0woA77EkgO9rdg838bwmnUBBlk5FTMMX/XmiIi0S/beJi8z/F3KZWScTMYb4
         dx8lRPZY/C4PjHcPiZnUyQRZJQwBOs11+M5EP1BoEi0PjVSZimRdVT82WPghlDHY9bJo
         U0U0w52yUGhW5BYKCSo6ZmQn//CJ/WROc6vuZE02Ozr6zOVI/9cUQ9P1tO28qJMRE+Vy
         54hBqVkTWzSNhrfLR6HQRiimU9VGOr0cytB/YsTiBrSetrWLx3MuqcSgXPkr4XqA2X/i
         yNeA==
X-Gm-Message-State: AO0yUKWkf3BkMkgdlNNo7PB7oP2jO2zITEr/TBK5Ju7eZ6ZrOLWp3v6x
        QmOIpVnbkmdgDs2b9gX2JyItGA==
X-Google-Smtp-Source: AK7set/2i8GtsRrkNFg43fb9RsxVKN0TTOfEzyvZhUId1shSnsAzSEfZJhVLLN4XfSbneW5ifWEiYQ==
X-Received: by 2002:a5d:5389:0:b0:2c3:f808:2d97 with SMTP id d9-20020a5d5389000000b002c3f8082d97mr15486036wrv.43.1676116007707;
        Sat, 11 Feb 2023 03:46:47 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id s10-20020adff80a000000b002c54c7b9c78sm3037071wrp.76.2023.02.11.03.46.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 11 Feb 2023 03:46:47 -0800 (PST)
Message-ID: <63e954f4-4e93-9211-9fb3-750976d8c4b6@linaro.org>
Date:   Sat, 11 Feb 2023 12:46:45 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Subject: =?UTF-8?Q?Re=3a_=5bPATCH_6/6=5d_MAINTAINERS=3a_Add_Michal_Vok=c3=a1?=
 =?UTF-8?Q?=c4=8d_as_yapp4_boards_maintainer?=
Content-Language: en-US
To:     =?UTF-8?B?TWljaGFsIFZva8OhxI0=?= <michal.vokac@ysoft.com>,
        Rob Herring <robh+dt@kernel.org>,
        Shawn Guo <shawnguo@kernel.org>
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Arnd Bergmann <arnd@arndb.de>, Olof Johansson <olof@lixom.net>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
References: <20230210154855.3086900-1-michal.vokac@ysoft.com>
 <20230210154855.3086900-7-michal.vokac@ysoft.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230210154855.3086900-7-michal.vokac@ysoft.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-3.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 10/02/2023 16:48, Michal Vokáč wrote:
> Number of the boards is continually growing and we expect more to come.
> Add myself as a maintainer of the yapp4 (ysoft appliance v4) platform to
> state that we do take care about all of these.
> 
> Signed-off-by: Michal Vokáč <michal.vokac@ysoft.com>
> ---
>  MAINTAINERS | 6 ++++++
>  1 file changed, 6 insertions(+)
> 
> diff --git a/MAINTAINERS b/MAINTAINERS
> index fb1471cb5ed3..4d4d9ffc700c 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -23005,6 +23005,12 @@ S:	Maintained
>  F:	Documentation/input/devices/yealink.rst
>  F:	drivers/input/misc/yealink.*
>  
> +YSOFT IOTA BOARD SUPPORT
> +M:	Michal Vokáč <michal.vokac@ysoft.com>
> +L:	devicetree@vger.kernel.org
> +S:	Supported
> +F:	arch/arm/boot/dts/imx6*-yapp4*

I don't think we add per-board maintainers. Otherwise, I have 50 more
entries to add...

Best regards,
Krzysztof

