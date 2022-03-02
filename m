Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BC7A74CAE33
	for <lists+devicetree@lfdr.de>; Wed,  2 Mar 2022 20:05:03 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236136AbiCBTFo (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 2 Mar 2022 14:05:44 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45256 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S244916AbiCBTFi (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 2 Mar 2022 14:05:38 -0500
Received: from smtp-relay-internal-0.canonical.com (smtp-relay-internal-0.canonical.com [185.125.188.122])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6E0FED048D
        for <devicetree@vger.kernel.org>; Wed,  2 Mar 2022 11:04:54 -0800 (PST)
Received: from mail-ed1-f70.google.com (mail-ed1-f70.google.com [209.85.208.70])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 8B7A53F612
        for <devicetree@vger.kernel.org>; Wed,  2 Mar 2022 19:04:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1646247890;
        bh=o/gq2zH0XhC0PaitqVD/LagQpkqLCpBFDwRKMGbmd0w=;
        h=Message-ID:Date:MIME-Version:Subject:To:References:Cc:From:
         In-Reply-To:Content-Type;
        b=VX5E2GTk3XaX1klJGyfzuzvzJhPWgNbJ65jFDYpMxrC0weEhXY+s3plrO8WZWxZC9
         FPkEz5MJ18M4nQTrn+3FzU3H+fY3QFJ0cqMqUyoR7yj2bfe1TwTYQb6VLz3H4Mz/ze
         cq9QJtMQWMxBmaEk589oylobcyXTKA5vBeFa9rM1Ow4vCG0eyM5armtlt2uhjzfvNH
         hfVi8H42m7POM3iyB/ZS7nSAw0ItWvrcKwdl19nB6Xn9fW5KaF1qojzaWQx3sKuDhu
         tQ44XJvTw/MSH9+Nv6/Xr5AVOxPhOT0D8wxKi8rMpDux3NJChuVVmMQE5U4u7PB/E+
         aQB1zUkEZ+1VA==
Received: by mail-ed1-f70.google.com with SMTP id j9-20020a056402238900b004128085d906so1482673eda.19
        for <devicetree@vger.kernel.org>; Wed, 02 Mar 2022 11:04:50 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:cc:from:in-reply-to
         :content-transfer-encoding;
        bh=o/gq2zH0XhC0PaitqVD/LagQpkqLCpBFDwRKMGbmd0w=;
        b=bEbyrTyMb+GJbkv2UlQrQ1Qyn7amheGsDhaAeMooI5oVZ5PWO+hOyV3tfuc5SyTs/R
         dRSWWCt2iaeWFIef/9OPRxC/BtmJSe4IuNixQauAWn2WQ6yhZZRNvVbU5h7mYi8ZViJe
         fMX6WY49+JRVW7GSdHu8mV1+pWrJUzgl+6LR2H3UTiT62lYSLPtH0KRtX58JiqWnLW9G
         LutFFrDJRsvejHWMfJ64OF1EOPw9KbupACZMZInVMTUMLANfTJ5rejMSH4Y7RjXTWp8n
         Q/eGCP8TDABSMy7WbaFhyAK5AO0Z1yGZwlIERiRqS/cObNMpwGouxZX7X1EgI3H2jjow
         cEQw==
X-Gm-Message-State: AOAM533LIGRJ1ehb92WS/o6oYyTwFs3tsZOxbehl6eZtukZQ0J61hXyU
        QRrzIR0pYmBEdx+Y9E/9c1oZOBzRC6eb3hU5ynLY0SfK4tVnfKD7hdfapwb3btqBRKcv4QjVlGY
        aLgEyAzL/SwoLm5FRh49tJ74abTB7l4B52zydic8=
X-Received: by 2002:a05:6402:26cb:b0:3fa:3817:1f78 with SMTP id x11-20020a05640226cb00b003fa38171f78mr30654855edd.219.1646247889888;
        Wed, 02 Mar 2022 11:04:49 -0800 (PST)
X-Google-Smtp-Source: ABdhPJy5ud+uzIs5hvG4Gs8CgEyL9Hzob7WkoDzIJWUkIA9MRmpeL5TH6uATTuuggM0eZzWdPfuGEw==
X-Received: by 2002:a05:6402:26cb:b0:3fa:3817:1f78 with SMTP id x11-20020a05640226cb00b003fa38171f78mr30654817edd.219.1646247889629;
        Wed, 02 Mar 2022 11:04:49 -0800 (PST)
Received: from [192.168.0.137] (xdsl-188-155-181-108.adslplus.ch. [188.155.181.108])
        by smtp.gmail.com with ESMTPSA id t14-20020a170906608e00b006d1455acc62sm6630349ejj.74.2022.03.02.11.04.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 02 Mar 2022 11:04:46 -0800 (PST)
Message-ID: <211b3d35-1d8d-b71c-996a-b185324815f7@canonical.com>
Date:   Wed, 2 Mar 2022 20:04:45 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH v2 00/15] pwm: dt-bindings: Include generic pwm schema
Content-Language: en-US
To:     Thierry Reding <thierry.reding@gmail.com>,
        =?UTF-8?Q?Uwe_Kleine-K=c3=b6nig?= <u.kleine-koenig@pengutronix.de>,
        Lee Jones <lee.jones@linaro.org>
References: <20220214212154.8853-1-krzysztof.kozlowski@canonical.com>
Cc:     Chen-Yu Tsai <wens@csie.org>,
        Florian Fainelli <f.fainelli@gmail.com>,
        bcm-kernel-feedback-list@broadcom.com,
        Heiko Stuebner <heiko@sntech.de>,
        Palmer Dabbelt <palmer@dabbelt.com>,
        Shawn Guo <shawnguo@kernel.org>,
        Fabio Estevam <festevam@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Yash Shah <yash.shah@sifive.com>,
        Nobuhiro Iwamatsu <nobuhiro1.iwamatsu@toshiba.co.jp>,
        Vijayakannan Ayyathurai <vijayakannan.ayyathurai@intel.com>,
        Vignesh R <vigneshr@ti.com>,
        Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
        Anson Huang <anson.huang@nxp.com>,
        Rahul Tanwar <rtanwar@maxlinear.com>,
        Rob Herring <robh+dt@kernel.org>,
        Maxime Ripard <mripard@kernel.org>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Jeff LaBundy <jeff@labundy.com>,
        Sagar Kadam <sagar.kadam@sifive.com>,
        linux-pwm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-sunxi@lists.linux.dev, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-riscv@lists.infradead.org,
        Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>,
        linux-rockchip@lists.infradead.org
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
In-Reply-To: <20220214212154.8853-1-krzysztof.kozlowski@canonical.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.8 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 14/02/2022 22:21, Krzysztof Kozlowski wrote:
> Hi,
> 
> Changes since v1:
> 1. Add tags.
> 2. Adjust subject (Uwe).
> 

Hi Thierry, Uwe and Lee,

Any comments here? Rob acked all these, so these are clear to go via PWM
tree.


Best regards,
Krzysztof
