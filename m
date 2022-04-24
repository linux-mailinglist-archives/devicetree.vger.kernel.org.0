Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D40EF50D244
	for <lists+devicetree@lfdr.de>; Sun, 24 Apr 2022 16:31:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239354AbiDXOeV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 24 Apr 2022 10:34:21 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54574 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239347AbiDXOeU (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 24 Apr 2022 10:34:20 -0400
Received: from mail-ed1-x530.google.com (mail-ed1-x530.google.com [IPv6:2a00:1450:4864:20::530])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9A7FB2F382
        for <devicetree@vger.kernel.org>; Sun, 24 Apr 2022 07:31:19 -0700 (PDT)
Received: by mail-ed1-x530.google.com with SMTP id k27so495942edk.4
        for <devicetree@vger.kernel.org>; Sun, 24 Apr 2022 07:31:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=u3QVJwfNjgJmoiAOLcoG8RwtXh56A34hlU88O2ii/8k=;
        b=MFZ4GG9GYjdNpPSj5vXgIzZDpeYh3jdZWMFdCcsUNDizK4crz4ma2bFtUNasWv4xJh
         KDF+YL9TiHRYzZdvwnOPikOyas5VuRGgktTIsemnDJjKrsnqIlRgwISK4ch/6Hp5T7L3
         WpWhuMQAP38r0cOD7giVTLw/SEDreGNesfVDdYLWITw7PmHBR1eNf/kjlUg2PcXyBRUy
         FZcddRslgsMKzZCQ/K6oDzjOd0MpXHSwxbU2NGpGVDEIbfl6TaMZUEibbVbVi9R1T0ij
         dU5G5di7WVE/LngHBdYoXfh/iuOELFDiIYljFs/DP+LfUW3EkmWQIs/U6AzTByKbyv8o
         w7Bg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=u3QVJwfNjgJmoiAOLcoG8RwtXh56A34hlU88O2ii/8k=;
        b=IktFC/XbDxGGud9RNFJ5GKtOuy4jrZL7EYjHthzv9AHEcehQwiYTh0PisLEpFUPPZF
         ulEdyUQ5CKXgbPcBjy5HC9JstD9PUAvqPyjdT4MREHORm1GlBKmgiwGA5vlr8q0dMe9F
         KMguaDt2BbPRJhQBY573RK7TbJEZgv0SganU8j/9d9AJG1fvf6OaR6fwEPHZtk0ep6qo
         LQzxRcYAN+ayvStNlNjpACIkSjSyfVChQFhTbUAcO0wot73lhm5ywD9gJFiMo35tpSLM
         4Q//bHVmAxfZFWAr2KahFPRKr01WL0ZJOGKFEY431QxXWMS35bct16uRmZimY7MB9/8I
         PODA==
X-Gm-Message-State: AOAM5320NHNiK4IS54PVrTU1eBsteApvjO0hKDsoelkNacSG9PXG6DSj
        E5xVd8e2kg8PDYdc6+plt10Qdg==
X-Google-Smtp-Source: ABdhPJyr3a/X7xebWBhj+iwrw6o6THmHab/G81bT41Wf1gG5ohsXHdOdBIRm/TGI4QqtcKtzXUbqkw==
X-Received: by 2002:a05:6402:34cd:b0:424:793:9f65 with SMTP id w13-20020a05640234cd00b0042407939f65mr14453088edc.88.1650810678196;
        Sun, 24 Apr 2022 07:31:18 -0700 (PDT)
Received: from [192.168.0.235] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id p24-20020a056402045800b0041614c8f79asm3317174edw.88.2022.04.24.07.31.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 24 Apr 2022 07:31:17 -0700 (PDT)
Message-ID: <f7c7ff89-a6db-dc54-ef29-cd3431bbe8c9@linaro.org>
Date:   Sun, 24 Apr 2022 16:31:16 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [PATCH] dt-bindings: timer: renesas: ostm: Document Renesas
 RZ/G2UL OSTM
Content-Language: en-US
To:     Biju Das <biju.das.jz@bp.renesas.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        Alexandre Torgue <alexandre.torgue@foss.st.com>
Cc:     Daniel Lezcano <daniel.lezcano@linaro.org>,
        Thomas Gleixner <tglx@linutronix.de>,
        Chris Brandt <chris.brandt@renesas.com>,
        Geert Uytterhoeven <geert+renesas@glider.be>,
        devicetree@vger.kernel.org,
        linux-stm32@st-md-mailman.stormreply.com,
        linux-arm-kernel@lists.infradead.org,
        Chris Paterson <Chris.Paterson2@renesas.com>,
        Biju Das <biju.das@bp.renesas.com>,
        Prabhakar Mahadev Lad <prabhakar.mahadev-lad.rj@bp.renesas.com>,
        linux-renesas-soc@vger.kernel.org
References: <20220423202452.148092-1-biju.das.jz@bp.renesas.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220423202452.148092-1-biju.das.jz@bp.renesas.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 23/04/2022 22:24, Biju Das wrote:
> Document the General Timer Module(a.k.a OSTM) found on the RZ/G2UL SoC.
> OSTM module is identical to one found RZ/G2L SoC. No driver changes are
> required as generic compatible string "renesas,ostm" will be used as a
> fallback.

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof
