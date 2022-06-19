Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D3881550A52
	for <lists+devicetree@lfdr.de>; Sun, 19 Jun 2022 13:46:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236744AbiFSLqX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 19 Jun 2022 07:46:23 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35320 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236353AbiFSLqW (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 19 Jun 2022 07:46:22 -0400
Received: from mail-ej1-x636.google.com (mail-ej1-x636.google.com [IPv6:2a00:1450:4864:20::636])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5DF1211C22
        for <devicetree@vger.kernel.org>; Sun, 19 Jun 2022 04:46:20 -0700 (PDT)
Received: by mail-ej1-x636.google.com with SMTP id hj18so15652207ejb.0
        for <devicetree@vger.kernel.org>; Sun, 19 Jun 2022 04:46:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=JIO2mY682oPXJiHyGHgrm7/Q9vi5siXInrOrzmj3AUo=;
        b=wdwMtYbnB3sGlyq5lBSmHcAWE2vsrrpF/vtNGPPHqz8dnsvflVypNxXbyL3sZClRLN
         Txh8nCv5gntNEbG067+KrIUpeT1ndJbe5pKlowuafbGQ8YLlXY5H2MXMp0XqF22hkO6p
         2GBiB0fbY7KjLdEpoa1Mi3C33+E/ognIiGcRYF7SzSz0V4fu2f2rwm8RfYA8t6C7U7PQ
         s55KRClprD+V6LjCLA9Cv7PvmEg5CE/KC/O09D5ZzAjJikI3IDrDjdH0/K8UoNCu6DEV
         BML3PCmmgnVNW1qVhFr2GmWP+64xbBEeg6lrkca0P7GtaUAXNGA79+vqaYF/I5OWv55Q
         R80Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=JIO2mY682oPXJiHyGHgrm7/Q9vi5siXInrOrzmj3AUo=;
        b=sPSHz9sS68+mgld5LHCQ4hky7Fni4waYYndHuTlPCD+Lell6Xw6RKx5Ul1JR1DG0Ci
         WJ0xrHEEK2CuOyF9M/hzOvUdSgjNQw3Rhiyk5Bqe1LFlo0kBAmi6ZUMTgFuqAcxwxOtc
         pExbPxxqrezmawL6yYzHxde/rtn1c5dTJkQF7dITbWnDfUezWCKcN0eFTmwTkENm2Gch
         zKUjbcxj9LXNk5NlPar7JYkGR7h0VgHouVfzM4Av3eSHaJskyYSMw4Hed1QjcvuKdrnM
         Cm+uhi4ViXFechyzwsX/AvBa9CLY2NqHjVViXINDIFVLKCQdPhu9n4OaXiUpK19jSk0m
         NZ6Q==
X-Gm-Message-State: AJIora8d0H0BwUa9/tocaQh0508kP8Gv23wat7rYL0MZsky2v/OYPlUN
        Up2A6pLZHXv0mL9EN0T8oH0MaQ==
X-Google-Smtp-Source: AGRyM1sePyl4/VzHcBtPb/raB3YCRxdOJNwaHxIh3b+epV2BiUpRnbkGH44ooVVXzFb9O5txZOn4/Q==
X-Received: by 2002:a17:907:9813:b0:711:d5ac:b9ef with SMTP id ji19-20020a170907981300b00711d5acb9efmr16721384ejc.95.1655639178872;
        Sun, 19 Jun 2022 04:46:18 -0700 (PDT)
Received: from [192.168.0.206] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id g1-20020a17090604c100b006fec56c57e6sm4521040eja.46.2022.06.19.04.46.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 19 Jun 2022 04:46:18 -0700 (PDT)
Message-ID: <8fbee49a-8215-32b7-3545-66df70ecc38d@linaro.org>
Date:   Sun, 19 Jun 2022 13:46:17 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Subject: Re: [PATCH] dt-bindings: phy: make phy-cells description a text
Content-Language: en-US
To:     Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc:     Chunfeng Yun <chunfeng.yun@mediatek.com>,
        Kishon Vijay Abraham I <kishon@ti.com>,
        Vinod Koul <vkoul@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Anurag Kumar Vulisha <anurag.kumar.vulisha@xilinx.com>,
        Michal Simek <michal.simek@xilinx.com>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Sean Anderson <sean.anderson@seco.com>
References: <20220619113325.21396-1-krzysztof.kozlowski@linaro.org>
 <Yq8LHN+WGVpXDwiM@pendragon.ideasonboard.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <Yq8LHN+WGVpXDwiM@pendragon.ideasonboard.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 19/06/2022 13:40, Laurent Pinchart wrote:
> Hi Krzysztof,
> 
> Thank you for the patch.
> 
> On Sun, Jun 19, 2022 at 01:33:25PM +0200, Krzysztof Kozlowski wrote:
>> The description field is a string, so using YAML inside phy-cells
>> description is not actually helpful.
> 
> Does it hurt though ? For xlnx,zynqmp-psgtr.yaml I wrote it that way to
> prepare for a future where it could be described using a YAML schema
> (but such future may never come).

No, it does not hurt. It is however confusing some folks and they think
schema goes into description. The description should be
readable/descriptive for humans, so if you think your approach is
better, I am perfectly fine with it.


Best regards,
Krzysztof
