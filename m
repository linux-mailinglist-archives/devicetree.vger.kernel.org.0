Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id EA8047819A0
	for <lists+devicetree@lfdr.de>; Sat, 19 Aug 2023 15:00:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232649AbjHSNAL (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 19 Aug 2023 09:00:11 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46220 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232634AbjHSNAL (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 19 Aug 2023 09:00:11 -0400
Received: from mail-ej1-x62f.google.com (mail-ej1-x62f.google.com [IPv6:2a00:1450:4864:20::62f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EE5334EC9
        for <devicetree@vger.kernel.org>; Sat, 19 Aug 2023 05:58:56 -0700 (PDT)
Received: by mail-ej1-x62f.google.com with SMTP id a640c23a62f3a-99bed101b70so228140366b.3
        for <devicetree@vger.kernel.org>; Sat, 19 Aug 2023 05:58:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1692449935; x=1693054735;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=LrzSqthg2J3I1o4QvW/bTkx+sRIHRKuWZSzbYwZTtec=;
        b=DycGDHo2rvCTJ9Ns6zaUFIqmCa2seDFzWmAmv0bkGLOlAjr73V2bP3DSNRGDH3NfzS
         jN7nx2xr6QSRHO/cCgQ+ZaaHkp2KczozY8WksNafs0Vt15Wu6c41Ur3+EPv3bTvhCSuG
         uOEUHe/XXms0iKpfQKGq0JOIos6bS+Y+dWMp4sBn9FfQEVtOGotZ9PEsPwFH8wwIMwde
         FGvbY1wXPifwePa4TjScht06vvOpLDSjFct16zt7vYS3G9dUPQAdzgGP0gaN82k/V1NE
         UcuuJ6CI0JVP1RTPs1L3uw8ER8J6bVJMTM9BAkaPm9qkr9gSG4F8YV7mGKDEBbuV1C6f
         rwHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692449935; x=1693054735;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=LrzSqthg2J3I1o4QvW/bTkx+sRIHRKuWZSzbYwZTtec=;
        b=hKWJaC7spoV9ZBtm+2gaTzIb3q40MLLu90ml72IORT7wazKCA4gxU7OIWRuAH6N1Sg
         vFOanBJnx9CF1Eu6veyHCp6eaovjyWJIgEc1bqxHNDeyACn1N+ncm2qbmc5ayTwZUHk6
         Q4ok83bHZFAYGnRjEoNv8c4lPsdrHfJe32QV+qzuDsp4M4kuQhgStAyAD0Pt0knqQk9v
         n/SOWz3LjCDVahRyLzHFRmq4SCsfj+eeGt2J+Z1gm8YwUuz1acJElW8tlmNg5/jT6ywK
         vRQK4f//NfYyHqqxRmtx4y+KSPvoUp/9KAzPaJazYj0KqTbfd09tqk+K9Pz99/cU8mMu
         jx1A==
X-Gm-Message-State: AOJu0YyFXtqK9VitFre4scUQXykLkb7rIC0SGclBaj1fSJme7G5mC1Qf
        3cngOjwFBVRCDlhgPgnhKCGkYw==
X-Google-Smtp-Source: AGHT+IEomyEpoNP5oXYj6e4qGWsF65S570GA2AgzUY1lPO01b1s5DPZVXxhXmVwuZSL/55nbCE9Q1w==
X-Received: by 2002:a17:907:2717:b0:99d:9bc5:cc70 with SMTP id w23-20020a170907271700b0099d9bc5cc70mr1532062ejk.27.1692449935560;
        Sat, 19 Aug 2023 05:58:55 -0700 (PDT)
Received: from [192.168.0.22] ([77.252.47.198])
        by smtp.gmail.com with ESMTPSA id gq6-20020a170906e24600b0099c53c44083sm2674213ejb.79.2023.08.19.05.58.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 19 Aug 2023 05:58:55 -0700 (PDT)
Message-ID: <d632a1ee-a277-8a38-db6c-a5318ed63457@linaro.org>
Date:   Sat, 19 Aug 2023 14:58:46 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.14.0
Subject: Re: [PATCH v1 1/2] dt-bindings: arm: Add compatible for SKOV i.MX8MP
 RevA board
Content-Language: en-US
To:     Oleksij Rempel <o.rempel@pengutronix.de>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        =?UTF-8?Q?S=c3=b8ren_Andersen?= <san@skov.dk>,
        Sam Ravnborg <sam@ravnborg.org>
Cc:     kernel@pengutronix.de, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        NXP Linux Team <linux-imx@nxp.com>,
        Fabio Estevam <festevam@gmail.com>
References: <20230818075106.2819520-1-o.rempel@pengutronix.de>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230818075106.2819520-1-o.rempel@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 18/08/2023 09:51, Oleksij Rempel wrote:
> Add DT compatible string for a SKOV i.MX8MP RevA climate controller board.
> 
> Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
> ---


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

