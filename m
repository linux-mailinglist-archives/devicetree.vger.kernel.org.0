Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D60915A12CB
	for <lists+devicetree@lfdr.de>; Thu, 25 Aug 2022 15:58:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239259AbiHYN6z (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 25 Aug 2022 09:58:55 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57254 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229604AbiHYN6x (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 25 Aug 2022 09:58:53 -0400
Received: from mail-lj1-x22c.google.com (mail-lj1-x22c.google.com [IPv6:2a00:1450:4864:20::22c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 996859DFA5
        for <devicetree@vger.kernel.org>; Thu, 25 Aug 2022 06:58:49 -0700 (PDT)
Received: by mail-lj1-x22c.google.com with SMTP id l23so8497915lji.1
        for <devicetree@vger.kernel.org>; Thu, 25 Aug 2022 06:58:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc;
        bh=BTlM/cFLD+1CkNW/ZxmFzzxJ0bHJWjGuLz6k/+RSnoE=;
        b=ZT/KPG2upbkbFl3GYmUPXQ9LhQ4Wl0ciLlKUKAT+nl5Vc8TvOTF2dP0CRUAkVDNa0S
         OQ3MwzXMS6QHiKl5Ch9iMcUswkIbtyyDWNwj6JTS/pDK7YewdDk25cJNM2mm4IhB6wvF
         HBfRruXHfP6kcAY1GsVpyg7k0/oVrGiTmBd9e2gpJzIWMo9k/d+z/OXDsb7UpeC5mtUE
         huE2KTtCO9A31XR1S3pjOIu7ccwO590loDbfhqB0LbXlBjlUJaBp8VwTTnn+0HAOqKgv
         MBz0Y5HmthYIg6F5CYT1Czc3TbvPu73SoySSAyXQkNdfS13K8FFKf7LTMO5dNBQlps7l
         MAiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc;
        bh=BTlM/cFLD+1CkNW/ZxmFzzxJ0bHJWjGuLz6k/+RSnoE=;
        b=sHkgkCcoha6x+B+9iQctx6rGSov+9opfrTWQsaMoLaej7kbxICQvnHgPFCSmJP1s2W
         iRboNNPCYh/TXxSRpr4FaeYCVQw6BYcWKt5Kv+3NsLTR8monIiI2TLRioS5GixdhSU3p
         XXilrAldc0m7U4L4Yt4Epv8y703MCRQgB6D5/Z5dFqDCpurjcdzrN5V0059/rTZwa29c
         nMneqXj6YM5ApI/oCF6Dlu/4yrHtSrhb/tYf56dswjtb/UYgt/civfZyIHslavyaJEmn
         +V1+h9oIXyQDS9Mxn10GDfiZBb5Inw3jwT38HLMHQnZPueCAQGVQj6xwPloeYMYMI5eO
         x+5w==
X-Gm-Message-State: ACgBeo2DWZkaokJnXPlqIK8zj5XjhATK7Y2iT/R4fs66prFDUlpJlKw4
        jI2aU5VzJwz+wjjus+QNaCvSDg==
X-Google-Smtp-Source: AA6agR66QlOHRdbYRDfA/bk3bB2fVwl/UWRqczjm3EFBzKwgFc8k97B9US4HVGX/D76CKnFRwR1BHA==
X-Received: by 2002:a2e:98da:0:b0:261:d386:e748 with SMTP id s26-20020a2e98da000000b00261d386e748mr1089731ljj.148.1661435927943;
        Thu, 25 Aug 2022 06:58:47 -0700 (PDT)
Received: from [192.168.0.71] (82.131.98.15.cable.starman.ee. [82.131.98.15])
        by smtp.gmail.com with ESMTPSA id s9-20020ac24649000000b0048b03d1ca4asm511051lfo.161.2022.08.25.06.58.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 25 Aug 2022 06:58:47 -0700 (PDT)
Message-ID: <d908fd53-1944-6f48-8d8e-4b3f1ec41156@linaro.org>
Date:   Thu, 25 Aug 2022 16:58:46 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Subject: Re: [PATCH v13 1/5] media: dt-bindings: media: renesas,vsp1: Document
 RZ/G2L VSPD bindings
Content-Language: en-US
To:     Biju Das <biju.das.jz@bp.renesas.com>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc:     Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Kieran Bingham <kieran.bingham+renesas@ideasonboard.com>,
        linux-media@vger.kernel.org, linux-renesas-soc@vger.kernel.org,
        devicetree@vger.kernel.org,
        Geert Uytterhoeven <geert+renesas@glider.be>,
        Chris Paterson <Chris.Paterson2@renesas.com>,
        Biju Das <biju.das@bp.renesas.com>,
        Prabhakar Mahadev Lad <prabhakar.mahadev-lad.rj@bp.renesas.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
References: <20220825132144.2619239-1-biju.das.jz@bp.renesas.com>
 <20220825132144.2619239-2-biju.das.jz@bp.renesas.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220825132144.2619239-2-biju.das.jz@bp.renesas.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 25/08/2022 16:21, Biju Das wrote:
> Document VSPD found in RZ/G2L SoC. VSPD block is similar to VSP2-D
> found on R-Car SoC's, but it does not have a version register and
> it has 3 clocks compared to 1 clock on vsp1 and vsp2.
> 
> This patch introduces a new compatible 'renesas,r9a07g044-vsp2' to
> handle these differences.
> 
> Signed-off-by: Biju Das <biju.das.jz@bp.renesas.com>
> Reviewed-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>

To avoid any annoying bounces, you can replace it with:

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof
