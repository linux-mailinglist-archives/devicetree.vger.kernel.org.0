Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7C431635A95
	for <lists+devicetree@lfdr.de>; Wed, 23 Nov 2022 11:54:03 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236944AbiKWKxj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 23 Nov 2022 05:53:39 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56968 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237023AbiKWKxS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 23 Nov 2022 05:53:18 -0500
Received: from mail-lj1-x22c.google.com (mail-lj1-x22c.google.com [IPv6:2a00:1450:4864:20::22c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6266F12605
        for <devicetree@vger.kernel.org>; Wed, 23 Nov 2022 02:40:53 -0800 (PST)
Received: by mail-lj1-x22c.google.com with SMTP id z24so20919994ljn.4
        for <devicetree@vger.kernel.org>; Wed, 23 Nov 2022 02:40:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Jb7YR0GFDqY1Kfa4xR3/nU9IXgoeQD15tKD48LTheeY=;
        b=HhYWafmgyiO/NnJUON7VEZ6pKju3ElgQOocUWRS5Pa1Me3s4SLm7/R6iGUr0+7hP/+
         26D8SVLeOYdIF1WKdiY4H1LDH1plneGzeMgNJDrnGgNuPXIkDhOZ8P/ibbwhlSfvb/LM
         R3bMQCrKsllrmu/MeUxHgopDgI/o3xhqI1ocQts5mTuGXxiThgt8746vPApEDFCJlWy2
         A85e52FbAaGOosOnf8RREUZR6XGErJRsopJiiu2mXrUvYhVZW420uwplUq0Uqqs9xbpQ
         s4cTAs1UdEjS5yZ3AvkwzKAnWfvEFTGY1WMlXONF1kiTQP216BQ05CBwlTFM2eG1UvZi
         lnVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Jb7YR0GFDqY1Kfa4xR3/nU9IXgoeQD15tKD48LTheeY=;
        b=LVF8rdHjyz9FZdoRonYSngLdL3Gst4OrCIt9Rd27C078YXWr+GT+DWLxvc7KD8+WrS
         FmAh0M4EyVGWdNKyRWTzHYJnVtRMa5VrqDuYBy2d57/jb86I6jSZ+otj1nyJjP2R4cOP
         MQseCCf49z/AavYDlXNSJau2qU1dg+B6e4WteLZTyD07bX7fzxaEFelzcEYOEZPQ5wu1
         Je9TOwy99v/yuv/sNIGpzQElkxC5TRDDjM18NrMrRy30l5IFFnlr6oNVtCXd3l4fs3M1
         y8YCDtQvVjZUfnorR17R/S8muds+z665tk0+2+O1kzhofaLHNVRjt9kpQX8bC6fxTWTI
         j7wQ==
X-Gm-Message-State: ANoB5plM+bYpyk6zJB1V6U0szsfr7KJZlyH89G+YMMcYQgI9xhNqweBD
        2IpKqPJckHobZrggzv4znniE6w==
X-Google-Smtp-Source: AA0mqf5GsJuni51SqYncQf/wVtBRKjQCX/guXNJ0g35bfmKx4gB2hyDvjQmSOfZMHste+3RQthANvQ==
X-Received: by 2002:a2e:bd85:0:b0:279:7ee8:d06e with SMTP id o5-20020a2ebd85000000b002797ee8d06emr66068ljq.215.1669200051778;
        Wed, 23 Nov 2022 02:40:51 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id t14-20020a056512208e00b004ae24559388sm2824097lfr.111.2022.11.23.02.40.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 23 Nov 2022 02:40:51 -0800 (PST)
Message-ID: <a803531d-41a9-f1b7-eec6-9ce142e5196a@linaro.org>
Date:   Wed, 23 Nov 2022 11:40:50 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
Subject: Re: [PATCH v4 1/2] media: dt-bindings: media: renesas,vsp1: Document
 RZ/V2L VSPD bindings
Content-Language: en-US
To:     Biju Das <biju.das.jz@bp.renesas.com>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Kieran Bingham <kieran.bingham+renesas@ideasonboard.com>,
        linux-media@vger.kernel.org, linux-renesas-soc@vger.kernel.org,
        devicetree@vger.kernel.org,
        Geert Uytterhoeven <geert+renesas@glider.be>,
        Fabrizio Castro <fabrizio.castro.jz@renesas.com>
References: <20221122193415.1873179-1-biju.das.jz@bp.renesas.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221122193415.1873179-1-biju.das.jz@bp.renesas.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 22/11/2022 20:34, Biju Das wrote:
> Document VSPD found in RZ/V2L SoC. The VSPD block is identical to RZ/G2L
> SoC and therefore use RZ/G2L fallback to avoid any driver changes.
> 
> Signed-off-by: Biju Das <biju.das.jz@bp.renesas.com>
> ---
> * New patch


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

