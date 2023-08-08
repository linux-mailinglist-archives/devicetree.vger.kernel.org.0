Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9A9BC774603
	for <lists+devicetree@lfdr.de>; Tue,  8 Aug 2023 20:51:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229538AbjHHSvE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 8 Aug 2023 14:51:04 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33342 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232865AbjHHSum (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 8 Aug 2023 14:50:42 -0400
Received: from mail-wm1-x333.google.com (mail-wm1-x333.google.com [IPv6:2a00:1450:4864:20::333])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0D4B480AB
        for <devicetree@vger.kernel.org>; Tue,  8 Aug 2023 09:59:38 -0700 (PDT)
Received: by mail-wm1-x333.google.com with SMTP id 5b1f17b1804b1-3fe2048c910so49922765e9.1
        for <devicetree@vger.kernel.org>; Tue, 08 Aug 2023 09:59:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1691513974; x=1692118774;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=+0jYWt89fmFSSrLeUWw+d1IBZy1QszvyM81Tw6WpAio=;
        b=sJzwOpBjDioJgHf01N8TmbGOEtktjOLqr+vaBxDDEya2z4THUe6mCHfehGsRgkiKK0
         e0A0Gx01zjG40Fj5ZUTfmJ7bvr+DktEwb4xlbaReAOgwRoHiVwWGdDc1XAhE95Vogqmo
         7aqt+9Q1va5sHW8bvQ0EJtRkWOglTxUS76D0octeWyvmAMfBT/SADsfq1UW92SjBK1NT
         K/C0L2JIIl8cCXngRhPCwOJHPBNWVWYTMdt71LPzZnj0rnyf4H0eiGcu28az3giCd17S
         4nmzNUaCGaW5PYUYckQneOoUBwQVlxBU8yp3+wIkCYN199K7qZEspIypBnytYiGXf5IX
         1NGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1691513974; x=1692118774;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=+0jYWt89fmFSSrLeUWw+d1IBZy1QszvyM81Tw6WpAio=;
        b=mDo/gRLXiUutSwdMyjY9VEEA14eeczYlaohdxNatyaFcEXmO2aOwgCO7g3Kv5xrQhU
         ZKfgbvA931QYGCeMRPtzwT6JLc+S+XiStlo+QqK61zyVnaxrM4e03apA4XHIPaiGnPnB
         k5JAGo+cqcAfBmlpiaaUR/CQkMNr6/ShD1sBvSrGHgOmov3ZTBNACc9NDbCpDBXvDlvP
         4vukEZMC/WrYcEQwUKC6iqS1uPs78aEWCszAHHxbM0KPl6qt8S3xhQKYLAa6yl6aQhLY
         NHwWJNoAS/i8hrm8AxtjlIO6QZyOV3fpJ9iwqEYVEkelWG6W5ndLgxkKMQF8W0BZSMSR
         +SMg==
X-Gm-Message-State: AOJu0YxUetn8U2IiyeeriyyI0SDAFNp+Das8KE28rv6f6nH/fXlrrFG+
        M5XKchpfdT37qZeTYJcXphaIlSaaf2Ot84Zwdl0=
X-Google-Smtp-Source: AGHT+IF7TwOlxokLzu+o14ONSGlkMy+6q2ZjKbBETRdVIsOWw5nJhhnwkULRQFS4WYp8/hPQ0U/VAw==
X-Received: by 2002:aa7:df0a:0:b0:51d:eb90:4928 with SMTP id c10-20020aa7df0a000000b0051deb904928mr11195752edy.30.1691480406002;
        Tue, 08 Aug 2023 00:40:06 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.222.113])
        by smtp.gmail.com with ESMTPSA id o7-20020aa7c7c7000000b005222a38c7b2sm6338725eds.48.2023.08.08.00.40.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 08 Aug 2023 00:40:05 -0700 (PDT)
Message-ID: <9aae0b76-e5bb-41b5-35f3-1bea43949c61@linaro.org>
Date:   Tue, 8 Aug 2023 09:40:03 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.14.0
Subject: Re: [PATCH v6 1/2] dt-bindings: arm: aspeed: add Facebook Yosemite 4
 board
Content-Language: en-US
To:     Delphine CC Chiu <Delphine_CC_Chiu@wiwynn.com>, patrick@stwcx.xyz,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Joel Stanley <joel@jms.id.au>, Andrew Jeffery <andrew@aj.id.au>
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-aspeed@lists.ozlabs.org, linux-kernel@vger.kernel.org
References: <20230808073000.989942-1-Delphine_CC_Chiu@wiwynn.com>
 <20230808073000.989942-2-Delphine_CC_Chiu@wiwynn.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230808073000.989942-2-Delphine_CC_Chiu@wiwynn.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 08/08/2023 09:29, Delphine CC Chiu wrote:
> Document the new compatibles used on Facebook Yosemite 4.
> 
> Changelog:
> v6 - Change project name from yosemitev4 to yosemite4

Changelog should be under ---

> 
> Signed-off-by: Delphine CC Chiu <Delphine_CC_Chiu@wiwynn.com>
> ---


Best regards,
Krzysztof

