Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B1BFD596B8C
	for <lists+devicetree@lfdr.de>; Wed, 17 Aug 2022 10:47:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234332AbiHQIq5 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 17 Aug 2022 04:46:57 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42480 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234855AbiHQIq4 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 17 Aug 2022 04:46:56 -0400
Received: from mail-lj1-x22c.google.com (mail-lj1-x22c.google.com [IPv6:2a00:1450:4864:20::22c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D218774E1B
        for <devicetree@vger.kernel.org>; Wed, 17 Aug 2022 01:46:53 -0700 (PDT)
Received: by mail-lj1-x22c.google.com with SMTP id j3so12952852ljo.0
        for <devicetree@vger.kernel.org>; Wed, 17 Aug 2022 01:46:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc;
        bh=rPDIdAvwvxRbTMbTaA58adHMS2XfvHNw84IukHrkG9Q=;
        b=uQJ3nu/XQtmX3r1ZncDPRVCwNh0IKEUdGJzHjoOKAvPK4iv8SplAxioJTcT/WWaUzu
         e4M+IGydoZslqb/vJr9AatISY5tbzVxPs6jx9ZmTG3S2x7Fy57l6X9GmVS8wwxWA9b+B
         XDscRjYKw2+/pPpBNX3AZqWxpkwU/VkKNtMY9caQ07fvT1nMHGuuKWPjNAQqcIylYKuM
         xWKUOx+NL9GGjB2UEhGi1nH/ld/sEBuonskXIP4dSr9+CWSHUnLCeR+gjReQXmi14tMV
         Jr9hSEIDHfKKXXJnw1ut6z9J4wBKDF/fGPdG5ynb0mRTtrsgMHvVL6EXJ7jLC8E5EVWV
         DlSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc;
        bh=rPDIdAvwvxRbTMbTaA58adHMS2XfvHNw84IukHrkG9Q=;
        b=j11EnGnzG8lFai1bGxM+7crba47RB7o2x240RGUm5pshxsCW0fAx5achCZV/EjBttz
         kXcUNz/2guMMbUekE3i+Dd9uv/vnNKviuWI+Rj3lLePcTJgabbptFSNTeYRVbiunSvhS
         zOPlrqnjHESRGkepMzG1DsjXHBSj+PzgzxNsXEIL1JDfgXur9lNbNOaHScqQVdnk8i6p
         r5yT6uMM58+T3WyIK8CEEzKMN4ielr+gya9koVhDzC3O5Sd0a0aWYmkLTidHBQa7BPZ/
         0RHkZwERdpu6dziV6YFkcfHRQYqYht9GZ/ZIdW/8UUIOraA/mVPFnDIum5XDs7gOteAL
         ECSA==
X-Gm-Message-State: ACgBeo2Mf1I6uK4s36HADJ1YrHkRTQ5vMvl/NTo5mrTrF6dMs6TbVPU7
        N+Y/+twqxD86mUokqauA4ql+JA==
X-Google-Smtp-Source: AA6agR5qvhZz6zi8n+r+DoBxvVg7j79SxEPJJ8C/tOLxs+Nh74vBxfxePExHW7ThouZ4qAp6RICLZA==
X-Received: by 2002:a2e:9254:0:b0:25e:4f20:8d3a with SMTP id v20-20020a2e9254000000b0025e4f208d3amr8115361ljg.233.1660726012270;
        Wed, 17 Aug 2022 01:46:52 -0700 (PDT)
Received: from ?IPV6:2001:14bb:ae:539c:1b1c:14b7:109b:ed76? (d15l54h48cw7vbh-qr4-4.rev.dnainternet.fi. [2001:14bb:ae:539c:1b1c:14b7:109b:ed76])
        by smtp.gmail.com with ESMTPSA id y22-20020a197516000000b0048b08124139sm1615304lfe.177.2022.08.17.01.46.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 17 Aug 2022 01:46:51 -0700 (PDT)
Message-ID: <f97a0d91-3cef-09ad-ecee-f6bd8322c20b@linaro.org>
Date:   Wed, 17 Aug 2022 11:46:50 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Subject: Re: [PATCH v3 1/4] regulator: dt-bindings: Add Allwinner D1 LDOs
Content-Language: en-US
To:     Samuel Holland <samuel@sholland.org>, Chen-Yu Tsai <wens@csie.org>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Rob Herring <robh+dt@kernel.org>
Cc:     Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>,
        Maxime Ripard <mripard@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        linux-sunxi@lists.linux.dev
References: <20220815043436.20170-1-samuel@sholland.org>
 <20220815043436.20170-2-samuel@sholland.org>
 <c4ec080a-b8b1-e3a9-c9d7-063e138c9bb8@linaro.org>
 <03de0f7b-9251-a5c0-91a1-5f2b5d41d8a0@sholland.org>
 <29e6a293-29c4-a9ab-0767-9adfa982226b@linaro.org>
 <8f133166-dff8-e376-3ac4-a464724d5421@sholland.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <8f133166-dff8-e376-3ac4-a464724d5421@sholland.org>
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

On 17/08/2022 11:39, Samuel Holland wrote:
>>> The same question applies for the D1 SoC DTSI, where I use this same construct.
>>
>> This is not correct and should be fixed. Either you add the schema with
>> compatible or please drop the device node from the DTSI.
> 
> That's what I was afraid of.

The bindings can grow, so you can add a bindings stub documenting
compatibles (device + simple-mfd + syscon) and IO space, then later
extend it. Of course it is preferred to add bindings as complete as
possible, but incremental growing also works.

Best regards,
Krzysztof
