Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 77E5B5B1B88
	for <lists+devicetree@lfdr.de>; Thu,  8 Sep 2022 13:33:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231425AbiIHLdq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 8 Sep 2022 07:33:46 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34910 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231423AbiIHLdo (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 8 Sep 2022 07:33:44 -0400
Received: from mail-lj1-x232.google.com (mail-lj1-x232.google.com [IPv6:2a00:1450:4864:20::232])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5AFA1ED39E
        for <devicetree@vger.kernel.org>; Thu,  8 Sep 2022 04:33:42 -0700 (PDT)
Received: by mail-lj1-x232.google.com with SMTP id y18so4773211ljh.12
        for <devicetree@vger.kernel.org>; Thu, 08 Sep 2022 04:33:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=SHyR4FRu6T2HcLl5xmxY+V3df7MUMDZkcL9KsWa8P/M=;
        b=ajrcOYDhY0MqBe/iaQtMLbZEPnCvrEafzbHJbHN8ZmpWM5+jlPx+THqBtLgXc4zyUP
         XBzAEw0BSVPADegegOOELR0XtOjbnpjpvd2WTcJkY2i6WMBekK84YX8YtoTANf/qOfH/
         nnGlsRwLMAh5/4yO8vTksgjLVWi+4+3OrJK6UlsnqWtOaol/hhcJ+B1I5Aw602UbbcbU
         D74kae7ZKme3o3GkOam8vxKsKWfGjHtUqn5F6RVleihYURNJ4G6ICgBya2qykY+szOhn
         LNH+iaEgv0u5mOu5ZN8qkuz69X7IOe1sv/eRaYyXoyrohrjNX8QXkZFk1p90QEfaRVJz
         xdCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=SHyR4FRu6T2HcLl5xmxY+V3df7MUMDZkcL9KsWa8P/M=;
        b=K8DMYVTwgYNy2JwD1HldmwRDwp3Y/Sl5iaXW3ftJekHr0x0u3rBcUES9SiFeU9JmX9
         tmlQUkzF56kJtc25fNoUCOv7ncgDRSiQSNSayQ2Ydem1JB7lZCh9Zb3NIhRQnIAh2hTU
         A+2EvB6vDWID8TaQfGG0u28HeNRtZ3ekRURj4N++31q6yo5ct7uVSXG5zzvDVAI847I2
         DjV/vXdGHTujX4dzfoNafg2E/fKbM1Zr8smBjzRwwxLUZ4cvChyfshMExIArYKmx9TIW
         cFvL0WZJNyU/KZdCp7EnITlw+TLDR0xEYoh0enbUpey0CpLvzEK/WXUZSJw/z786E9Ls
         njxw==
X-Gm-Message-State: ACgBeo0bb3jZ4NO0/nB86EJqF5towmG6WLOlEmoYCkZn3dVk2wARsLr0
        OGwhJezqddy8gmQflvnbD/dPQg==
X-Google-Smtp-Source: AA6agR7YNjVF4CnQ3ndSgVJn98vT9qcDXD21WnxwPbPRgvbQ5LtOMNyq4DAjXdcJVDjXT/qdR4EpeA==
X-Received: by 2002:a05:651c:245:b0:261:caa7:5be3 with SMTP id x5-20020a05651c024500b00261caa75be3mr2195487ljn.334.1662636820680;
        Thu, 08 Sep 2022 04:33:40 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id f18-20020a056512361200b00498ebd60c35sm247928lfs.165.2022.09.08.04.33.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 08 Sep 2022 04:33:40 -0700 (PDT)
Message-ID: <8528d39e-c03a-7d83-d8e7-5191d3110015@linaro.org>
Date:   Thu, 8 Sep 2022 13:33:39 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Subject: Re: [PATCH v2 2/3] riscv: dts: starfive: Add common DT for JH7100
 based boards
Content-Language: en-US
To:     Cristian Ciocaltea <cristian.ciocaltea@collabora.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Palmer Dabbelt <palmer@dabbelt.com>,
        Albert Ou <aou@eecs.berkeley.edu>,
        Michael Zhu <michael.zhu@starfivetech.com>,
        Drew Fustini <drew@beagleboard.org>,
        Emil Renner Berthing <kernel@esmil.dk>,
        Conor Dooley <conor.dooley@microchip.com>
Cc:     devicetree@vger.kernel.org, linux-riscv@lists.infradead.org,
        linux-kernel@vger.kernel.org, kernel@collabora.com
References: <20220902100806.2378543-1-cristian.ciocaltea@collabora.com>
 <20220902100806.2378543-3-cristian.ciocaltea@collabora.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220902100806.2378543-3-cristian.ciocaltea@collabora.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-5.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 02/09/2022 12:08, Cristian Ciocaltea wrote:
> In preparation for adding initial device tree support for the StarFive
> VisionFive board, which is similar with BeagleV Starlight, move most
> of the content from jh7100-beaglev-starlight.dts to a new file, to be
> shared between the two boards.
> 
> Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
> Reviewed-by: Conor Dooley <conor.dooley@microchip.com>

Use proper arguments to git format-patch, so that the copy is properly
detected.

Best regards,
Krzysztof
