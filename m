Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DD02E643F1B
	for <lists+devicetree@lfdr.de>; Tue,  6 Dec 2022 09:53:44 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234416AbiLFIxm (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 6 Dec 2022 03:53:42 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47004 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234420AbiLFIxe (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 6 Dec 2022 03:53:34 -0500
Received: from mail-lf1-x12e.google.com (mail-lf1-x12e.google.com [IPv6:2a00:1450:4864:20::12e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7ABB11C123
        for <devicetree@vger.kernel.org>; Tue,  6 Dec 2022 00:53:15 -0800 (PST)
Received: by mail-lf1-x12e.google.com with SMTP id 1so8974299lfz.4
        for <devicetree@vger.kernel.org>; Tue, 06 Dec 2022 00:53:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=xaaugcKD2DWO+dKMtwtCSR92f960siJ7Bi9i7riVt0o=;
        b=lfaejrrgm3ovECiXFErsEgWM3FnLktoMohIcaghDk9k4yTtCq05wiRFeYI4PtBeOWa
         S3/CCBPSKsQpp766jttP73I/NSK+bKw10woE5M9+blvSyltDVUHbD34TQ0hS3/iNJgBF
         zN9iT0CwUJx6EADjwwXSMQhYSC3D0gvPuPqKUCCiIYydqx9vSIlGTf7dgql6c0B7W5jL
         pnPGs8KpKJj6k2o6DRgRvf229vMnWrKVdHWu29fqi3aDvlzgmrERibWH67jnhmRDwEXo
         UQp1ToWn0YsQN678rv4eeNwbx9KiZTIX25uXMWOvZF8DSycuZBoCZyaY3J2wNrDgIt5J
         SQIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=xaaugcKD2DWO+dKMtwtCSR92f960siJ7Bi9i7riVt0o=;
        b=2/B1ituyBfmS3lz+PvG13HZ8XyQH6vgc8+kWNiR1t8Tai0Deeg111qBB1BVYy2AYPH
         I2Q6+aMOCpMmt0knvUerVS9DZs2EYoE07VGFEQR1TkANWgxvvTmfIfeFfpWR9rsk/1XG
         itlsxkqqm+rHXCRcy7wi6anLyKfYC0WxVS9Ij2lOpEYuefdhlZ+Zkd/uq6rpshvM7TBp
         Kd31Qj9aobc05hIkxyqBllvuWF+VoaNA5woeGI/096CTlim2pm92kmsAyfzcomr801DZ
         1cM7ZIZFYJe3SzaY/+ygcbN5DdW0AnoRpyH41JnJbsIygflfH9Wui1FAdPqU4ao+uq7W
         +tqg==
X-Gm-Message-State: ANoB5pnLqmr/55gaUi90++g9BEc0lfcQhjqFQy3nO1mIaQeKm+ARUccZ
        HKjO9K/UBeg3mhTT7oDBbOc8Ow==
X-Google-Smtp-Source: AA0mqf5ChLoNGLdLOgDBauHU8k10w8GSMe8kuGmBVkkbQHaFfPKJbRwcfuSe1uAJY9+80U2eX20s2g==
X-Received: by 2002:a05:6512:40e:b0:4b5:850a:34b6 with SMTP id u14-20020a056512040e00b004b5850a34b6mr691777lfk.668.1670316793581;
        Tue, 06 Dec 2022 00:53:13 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id u1-20020ac248a1000000b004a05767bc07sm2419944lfg.28.2022.12.06.00.53.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 06 Dec 2022 00:53:13 -0800 (PST)
Message-ID: <cb1ccf2e-71a8-a1d3-138c-8696338ea3d2@linaro.org>
Date:   Tue, 6 Dec 2022 09:53:12 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.1
Subject: Re: [PATCH net 2/2] dt-bindings: FEC/i.MX DWMAC and INTMUX maintainer
Content-Language: en-US
To:     Florian Fainelli <f.fainelli@gmail.com>, netdev@vger.kernel.org
Cc:     Thomas Gleixner <tglx@linutronix.de>,
        Marc Zyngier <maz@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Shawn Guo <shawnguo@kernel.org>,
        NXP Linux Team <linux-imx@nxp.com>,
        "David S. Miller" <davem@davemloft.net>,
        Eric Dumazet <edumazet@google.com>,
        Jakub Kicinski <kuba@kernel.org>,
        Paolo Abeni <pabeni@redhat.com>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        "open list:IRQCHIP DRIVERS" <linux-kernel@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE" 
        <linux-arm-kernel@lists.infradead.org>
References: <20221205212340.1073283-1-f.fainelli@gmail.com>
 <20221205212340.1073283-3-f.fainelli@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221205212340.1073283-3-f.fainelli@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 05/12/2022 22:23, Florian Fainelli wrote:
> Emails to Joakim Zhang bounce, add Shawn Guo (i.MX architecture
> maintainer) and the NXP Linux Team exploder email.
> 
> Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

