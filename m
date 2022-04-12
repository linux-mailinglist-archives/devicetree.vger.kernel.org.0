Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 250C24FDFA6
	for <lists+devicetree@lfdr.de>; Tue, 12 Apr 2022 14:29:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1354077AbiDLMVS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 12 Apr 2022 08:21:18 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59010 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1349800AbiDLMU5 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 12 Apr 2022 08:20:57 -0400
Received: from mail-ej1-x62a.google.com (mail-ej1-x62a.google.com [IPv6:2a00:1450:4864:20::62a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 512766B092
        for <devicetree@vger.kernel.org>; Tue, 12 Apr 2022 04:28:18 -0700 (PDT)
Received: by mail-ej1-x62a.google.com with SMTP id k23so36669148ejd.3
        for <devicetree@vger.kernel.org>; Tue, 12 Apr 2022 04:28:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=sAf9xkDYaYw66r1OyCrK9NbC8+Il8/TgGToANNasNak=;
        b=EO2ysb2QwjM8wVtackgagj/Odzqrb333vYmXxL++iMyK4AZZC9vtCR7sJpRj5WoMnH
         grymrdZAdcHvsrvAQlmsGbtug8OiUVwxiH9XPhjY5QHiRzpgq5dQ+Cp66WoUFBomacoQ
         4y112URkiKl6mxXyYKQHA2Q6F7ZoZafEMvyGuRYtA7sNYqpGd3i/nI362ubhX9nX/5x5
         AB+2SRTwhHB/lPZp3nvUR6o/lzR8ovz7aSEE6GroIebFJO4JDxm1w7XIHLPXwUZ1/Fh/
         bsKLFLFQ0ShDDEkapvd4XEHOPPfud3faiW2MhQKEZDf9ZJMo5cTPCAQt2WoGzvE9aiYg
         ftMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=sAf9xkDYaYw66r1OyCrK9NbC8+Il8/TgGToANNasNak=;
        b=oeBpb6IVnF9q7UX/r4idwelFHmd0YvRkvJkmljZpAxinaa6ySFXCa0Jlovk4A/21PT
         n9rQFEX03yem0iGbGiJ5hr2BlZVq9gfu8fyZD9qCv68kdTND6BDT/6WY8am8f3ukJ9u3
         bP8H5+/Rw39/HbC3qqX45HnESVICX+QyvFBWCMypTIwDNz1WPLFStmXk0FRpdr1LW9g8
         12dplZAwyuisrBYh8Y1bqFrZPDqOWVWBOJtnuU2D5Ik7HbZJigK131MI5kkhjjGrLVDx
         VZQttL2AO+CGZUk+3UX/rMoFH3Uwn1iRViOcaaRO7sQ2hTjTAf/98aVEe1w2l6Rdn5HK
         Xyjw==
X-Gm-Message-State: AOAM531Ro66MrIzP5LCxFAbywNfm1bVtRl332ZM4uSVFyhHeWYli3Qnh
        Pnzs/x0DmATvkJzk4lcGGFmtqZ/vWz7wkrYH
X-Google-Smtp-Source: ABdhPJzthGGv2niI0Lp++hOGy4qug0H/y5t3ZRHs3H9sCVQdDf3o8wKZoFcSGtj01HJJkzh1qzlPZA==
X-Received: by 2002:a17:906:c156:b0:6e8:741d:22f6 with SMTP id dp22-20020a170906c15600b006e8741d22f6mr13524864ejc.137.1649762896426;
        Tue, 12 Apr 2022 04:28:16 -0700 (PDT)
Received: from [192.168.0.194] (xdsl-188-155-201-27.adslplus.ch. [188.155.201.27])
        by smtp.gmail.com with ESMTPSA id z10-20020a170906944a00b006e8a6b20129sm1338489ejx.29.2022.04.12.04.28.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 12 Apr 2022 04:28:15 -0700 (PDT)
Message-ID: <bfa67c16-ca2f-14dd-f097-0f96ca915a92@linaro.org>
Date:   Tue, 12 Apr 2022 13:28:14 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [PATCH 1/5] dt-bindings: arm: add bcmbca device tree binding
 document
Content-Language: en-US
To:     William Zhang <william.zhang@broadcom.com>,
        Broadcom Kernel List <bcm-kernel-feedback-list@broadcom.com>
Cc:     Samyon Furman <samyon.furman@broadcom.com>,
        Joel Peshkin <joel.peshkin@broadcom.com>,
        Florian Fainelli <florian.fainelli@broadcom.com>,
        Dan Beygelman <dan.beygelman@broadcom.com>,
        Tomer Yacoby <tomer.yacoby@broadcom.com>,
        Anand Gore <anand.gore@broadcom.com>,
        Kursad Oney <kursad.oney@broadcom.com>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20220411172815.20916-1-william.zhang@broadcom.com>
 <20220411172815.20916-2-william.zhang@broadcom.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220411172815.20916-2-william.zhang@broadcom.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 11/04/2022 19:28, William Zhang wrote:
> Add arch bcmbca device tree binding document for Broadcom ARM based
> broadband SoC chipsets. In this change, only BCM47622 is added. Other
> chipsets will be added in the future.
> 
> Signed-off-by: William Zhang <william.zhang@broadcom.com>
> ---
> 


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof
