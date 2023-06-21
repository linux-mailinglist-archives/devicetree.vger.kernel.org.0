Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 152D7737B3D
	for <lists+devicetree@lfdr.de>; Wed, 21 Jun 2023 08:25:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230203AbjFUGPk (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 21 Jun 2023 02:15:40 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53110 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229463AbjFUGPj (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 21 Jun 2023 02:15:39 -0400
Received: from mail-ej1-x631.google.com (mail-ej1-x631.google.com [IPv6:2a00:1450:4864:20::631])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0B58A10DA
        for <devicetree@vger.kernel.org>; Tue, 20 Jun 2023 23:15:38 -0700 (PDT)
Received: by mail-ej1-x631.google.com with SMTP id a640c23a62f3a-9891c73e0fbso313367666b.1
        for <devicetree@vger.kernel.org>; Tue, 20 Jun 2023 23:15:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1687328136; x=1689920136;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=AbtGhElTvOpjXQ1PbP4ONsm4koLaAwCX99dsAxX25z0=;
        b=DmSVbuuq3lmKTBCNDZg1fw5Y1X4WBep6Slmlf9zHlCBXPVvB9TTjuJLRgHyciVhxxj
         Gn908uGfc9XjyLjJOrr69ZK7tC2exNiR9tGJ2X3ckX2qJJYHN/6QbW7jJcnxGBggH2oe
         bn4AiS4WUQobmxN07o8xzkfLZDlO8v99KAY+MlVA/+WteKh2VUImDIi43sgH8ceXo/8t
         mup54oYi8mTLZ/T0Qxp6kr3yndrJfsO9E6e0Jg5Q9BQwvJoKkB7CpWBr+H/wRvezQc0P
         jpvhfNr2H9lMroM1rTzHupXToPrNzvQh+9On5VnpdZL+SbUifiRX9cIl5+ZwGnXFMTRZ
         caQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687328136; x=1689920136;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=AbtGhElTvOpjXQ1PbP4ONsm4koLaAwCX99dsAxX25z0=;
        b=GuvctL3YcTUyseAfNPlPCybZIJ8nBqUN6ozTzt218uI+lJSTnKXTBhlPyaBosz9lq2
         aTyIWf3IQ45nr4Ct7roCf7TY9OQGukHuG02Px5rAKNa0/0YtqM6UdX8S+dbv818iPGBp
         cIxQGL0muwGrlTd9O3PT/YvKqjjUNd8/O0VxSo1IuJhzrBMTcMgyQEHg9vEFqR+o+5X9
         vfApL9gNIpEmrKlDfiKFLei2VJ7MIpLwEKGUMxEaXMPGybqA0gDjqtpkkFf8e15J3Dhr
         JojysnLs4xHIVaN0Ytn4yYOjHtI06m4dmNiHZs53IRrwWidRKwMb966nRDihI/vS/8gk
         I7ww==
X-Gm-Message-State: AC+VfDxw+ZXNmMzw4iJHzkNwDWFn9jSoLB/fCux1k+yTJaVgvgRaWMiT
        SLTRUI/o2V+w0PXOeLwTbW1Q4g==
X-Google-Smtp-Source: ACHHUZ6Ay7DaA8eK/uOIY07YXp+XeTSZSH8JR9rKtbZCCN9Bd5knXjYMts1bB/QldKNrr7DJctQ+hw==
X-Received: by 2002:a17:907:9449:b0:988:71c8:9f3a with SMTP id dl9-20020a170907944900b0098871c89f3amr6659006ejc.16.1687328136571;
        Tue, 20 Jun 2023 23:15:36 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.219.26])
        by smtp.gmail.com with ESMTPSA id i10-20020a170906698a00b00988dbbd1f7esm2517044ejr.213.2023.06.20.23.15.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 20 Jun 2023 23:15:36 -0700 (PDT)
Message-ID: <2ed7a57c-c364-4041-0410-de020e358482@linaro.org>
Date:   Wed, 21 Jun 2023 08:15:34 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
Subject: Re: [PATCH 2/3] dt-binding: arm: sunxi: add Anbernic RG-Nano
Content-Language: en-US
To:     Chris Morgan <macroalpha82@gmail.com>, linux-sunxi@lists.linux.dev
Cc:     devicetree@vger.kernel.org, mripard@kernel.org, uwu@icenowy.me,
        andre.przywara@arm.com, samuel@sholland.org,
        jernej.skrabec@gmail.com, wens@csie.org, conor+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org,
        Chris Morgan <macromorgan@hotmail.com>
References: <20230620200022.295674-1-macroalpha82@gmail.com>
 <20230620200022.295674-3-macroalpha82@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230620200022.295674-3-macroalpha82@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 20/06/2023 22:00, Chris Morgan wrote:
> From: Chris Morgan <macromorgan@hotmail.com>
> 
> The Anbernic RG-Nano is a portable handheld console from Anbernic which
> uses the Allwinner V3s SoC.

Subject: dt-bindings, not dt-binding


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof

