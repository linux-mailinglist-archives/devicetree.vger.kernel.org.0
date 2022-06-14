Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DF00454BE46
	for <lists+devicetree@lfdr.de>; Wed, 15 Jun 2022 01:25:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237529AbiFNXZS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 14 Jun 2022 19:25:18 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46740 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231751AbiFNXZS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 14 Jun 2022 19:25:18 -0400
Received: from mail-pj1-x1029.google.com (mail-pj1-x1029.google.com [IPv6:2607:f8b0:4864:20::1029])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7F3E743ECA
        for <devicetree@vger.kernel.org>; Tue, 14 Jun 2022 16:25:17 -0700 (PDT)
Received: by mail-pj1-x1029.google.com with SMTP id 3-20020a17090a174300b001e426a02ac5so465745pjm.2
        for <devicetree@vger.kernel.org>; Tue, 14 Jun 2022 16:25:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=MnYR7D2vdovc6+NVQYg3gjYLjJ9NoRgOMxo6l8h+HL0=;
        b=IWLX3pfxNbdU83TkMCUCyRx1Ik9Cz/jqvY+RVqZ0MaCS4Um2NWkjpZeBXF+VBE8ALW
         qsHYyV8cL+vgetZb/XxGvgQSzkNwlfT1zrh9olzKbkz0woA2iBlNAVrPegGhIxL+OSlk
         fVfNd5SNg13zbgEZXOgZcaUK50Hqvx4WjNuPdIpZz8ZeOQAel1rwwLNs1VhRUjFlSEHK
         F9sIIX+3Umm5VoE8AvDq6lgAP5agggaDsgtEebbNhnXFQGaI+IVWBCFiDmCLYGy/Ej06
         v2oPOGEreTYpYdc1I0pbRG6JGm8kZjfVb7FRqq+FgvSwozOpgLdzV3lXeh2fv1RqRMVk
         9l+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=MnYR7D2vdovc6+NVQYg3gjYLjJ9NoRgOMxo6l8h+HL0=;
        b=KgLUIEkW6mRTxWvE1P2YDhHSHAoNYPujAA1akBtSTd23afXczGxiYx8H8cP0atupvz
         elYOatBwwFbDi0LPtYH+FoMHlPZ0NiDE5VSGxi/Rf67zVX4cgzleSTdDmI9qli6XsdOb
         evUgrUqTosaqRxvDSrPr0stwjA2u39qEcY53ezJxB0mDTHsSgam9lqRfVrxI9gtGJ0uY
         zwBww+8zhNI3yUzzpH5MeSCGlC0d61BJ9m/caP0NhVMTGsPudHsTfOguGmj3sGjAgI3K
         Ot/Hb0zDk5OrY0wA7YL/YJmVZSN/bXBmBTN9BYmCUTOHLoWRO96i21+SnrNAx2byruh9
         yfXQ==
X-Gm-Message-State: AJIora/ok5MWKe1n022H8aftcErikE8zicqxCHfaV168Nl6lZAsMgfKB
        7ONYRHRfWtrQL6vYL/Un+GBet5oEFwYxYA==
X-Google-Smtp-Source: AGRyM1tw1m3IOauEJxCAVfmvuOelTn2/boEYepm2/G9bAdEnTYyraKXuIAUW9yVyjUanxxxKyR2F3Q==
X-Received: by 2002:a17:902:e791:b0:166:3985:2f78 with SMTP id cp17-20020a170902e79100b0016639852f78mr6300133plb.158.1655249117001;
        Tue, 14 Jun 2022 16:25:17 -0700 (PDT)
Received: from [172.22.33.138] ([192.77.111.2])
        by smtp.gmail.com with ESMTPSA id w124-20020a628282000000b0051c394eea03sm8179164pfd.212.2022.06.14.16.25.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 14 Jun 2022 16:25:16 -0700 (PDT)
Message-ID: <5eec5292-ea45-fe44-75ce-968742c2ee96@linaro.org>
Date:   Tue, 14 Jun 2022 16:25:16 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Subject: Re: [PATCH] dt-bindings: altera: document Stratix 10 SWVP compatibles
Content-Language: en-US
To:     wen.ping.teh@intel.com, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Dinh Nguyen <dinguyen@kernel.org>
Cc:     devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20220609025647.400998-1-wen.ping.teh@intel.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220609025647.400998-1-wen.ping.teh@intel.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 08/06/2022 19:56, wen.ping.teh@intel.com wrote:
> From: Teh Wen Ping <wen.ping.teh@intel.com>
> 
> Add compatible strings for Stratix 10 Software Virtual Platform
> 
> Signed-off-by: Teh Wen Ping <wen.ping.teh@intel.com>

This must come together with the patch adding DTS.


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof
