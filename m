Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2DE9F5E67E4
	for <lists+devicetree@lfdr.de>; Thu, 22 Sep 2022 18:00:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229846AbiIVQAJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 22 Sep 2022 12:00:09 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54390 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229575AbiIVQAI (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 22 Sep 2022 12:00:08 -0400
Received: from mail-lj1-x232.google.com (mail-lj1-x232.google.com [IPv6:2a00:1450:4864:20::232])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B86D65926D
        for <devicetree@vger.kernel.org>; Thu, 22 Sep 2022 09:00:06 -0700 (PDT)
Received: by mail-lj1-x232.google.com with SMTP id c7so11511281ljm.12
        for <devicetree@vger.kernel.org>; Thu, 22 Sep 2022 09:00:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=V6c4rAkBN7foufFnqvB7xWcwVdlx3krdKAsSA3LKM2E=;
        b=EYPGtsJB9cW2i8ii2puNH0fl/Zo+U86V5lGXj2D6qdBeobw33K4NOA3XttPpBcTQxj
         BmifAf8To/Ekt7txQ0CRAsoStMlTM9qzDNX21zyAM+0RsHiy+Du3fI/AJ0fvAiAkfCmw
         2+la+sBJePp/H9saQOBkOdDYQQagqXLVHlNt1DmTlcwiMzBUooRHMOftwDb4KTQPn1EP
         dL1bH1zU6/qLtMD9bx81tSrcuoxmigJIZD0GtFir1mriQVY5T+PGXaJIhR6T8KCnV6W1
         WpxA7eL5BOC1RYZQmGS0iMY+9MlypPsXM70o7KWWjekX3ilZqy9TJShlzaUrx56Rb5V/
         QIZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=V6c4rAkBN7foufFnqvB7xWcwVdlx3krdKAsSA3LKM2E=;
        b=mwyB6PJmwXrGb3O0MVLncSAiKBRva2zc69N6Og+pZ2bKbEWW7s0Xqw3TSoeVbPiq/X
         cODGAwcv4rRSO1tujv1w6ZHssjagNegUO2FaDwaNsBMu2HQ6LYTh78Y8W6PrBIDwrqh+
         jHmLlg3VUqO1Lu+/FXnoKCvN1EoZfd6DOKzuZOa2rzznKFpHMoP/ilqQuTud1iU7O2NB
         IQLasxfwjPM9N1tR0kVRASW3bNfD1xfN3t3apLyHz3sGv+CY2E64uo3m6VtvNjDbACwi
         /8VaopoNtZFckZxSbJsETQLswVKZmpWDK199/M+V8HUcedh150eLmY92z3lWaaIh83kI
         W71w==
X-Gm-Message-State: ACrzQf0U7EezmEoto1o8KnfP8Gb87k5IyWZUrE6V20y95a5qRrBFLZmj
        Mi69dPxJu4V8dT8TCDNKYe80bg==
X-Google-Smtp-Source: AMsMyM73gkh5v4gbhi++Eqv5Q8s+pslKnw3lQRjbKqjuIm9witwFzTyTHNJ1ckYpHAt0TqUTGvqYhg==
X-Received: by 2002:a2e:780b:0:b0:26c:1458:ddc3 with SMTP id t11-20020a2e780b000000b0026c1458ddc3mr1443600ljc.375.1663862404991;
        Thu, 22 Sep 2022 09:00:04 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id d9-20020a196b09000000b004999c243331sm994865lfa.141.2022.09.22.09.00.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 22 Sep 2022 09:00:04 -0700 (PDT)
Message-ID: <297f22b9-931f-669b-6539-c59fb411aa38@linaro.org>
Date:   Thu, 22 Sep 2022 18:00:03 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.2
Subject: Re: [PATCH v6 2/8] dt-bindings: phy: Add Lynx 10G phy binding
Content-Language: en-US
To:     Sean Anderson <sean.anderson@seco.com>
Cc:     linuxppc-dev@lists.ozlabs.org, Vinod Koul <vkoul@kernel.org>,
        devicetree@vger.kernel.org, Madalin Bucur <madalin.bucur@nxp.com>,
        linux-arm-kernel@lists.infradead.org, linux-clk@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Kishon Vijay Abraham I <kishon@ti.com>,
        Camelia Alexandra Groza <camelia.groza@nxp.com>,
        Rob Herring <robh@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>,
        Ioana Ciornei <ioana.ciornei@nxp.com>,
        Rob Herring <robh+dt@kernel.org>, linux-phy@lists.infradead.org
References: <20220920202356.1451033-1-sean.anderson@seco.com>
 <20220920202356.1451033-3-sean.anderson@seco.com>
 <20220921065718.lafutkkgiium5ycu@krzk-bin>
 <4e125df2-b815-c0cd-336c-97b20c2702c8@seco.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <4e125df2-b815-c0cd-336c-97b20c2702c8@seco.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 22/09/2022 17:23, Sean Anderson wrote:
>>
>> This check can fail if there are any dependencies. The base for a patch
>> series is generally the most recent rc1.
>>
>> If you already ran 'make dt_binding_check' and didn't see the above
>> error(s), then make sure 'yamllint' is installed and dt-schema is up to
>> date:
>>
>> pip3 install dtschema --upgrade
>>
>> Please check and re-submit.
>>
> 
> I believe this is due to the previous patch not being applied, same as last time.

Yes, please ignore bot's report.

Best regards,
Krzysztof

