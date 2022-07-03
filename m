Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7EA925648E6
	for <lists+devicetree@lfdr.de>; Sun,  3 Jul 2022 20:11:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231774AbiGCSLl (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 3 Jul 2022 14:11:41 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41602 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231362AbiGCSLl (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 3 Jul 2022 14:11:41 -0400
Received: from mail-lj1-x234.google.com (mail-lj1-x234.google.com [IPv6:2a00:1450:4864:20::234])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 073266153
        for <devicetree@vger.kernel.org>; Sun,  3 Jul 2022 11:11:38 -0700 (PDT)
Received: by mail-lj1-x234.google.com with SMTP id v9so8502506ljk.10
        for <devicetree@vger.kernel.org>; Sun, 03 Jul 2022 11:11:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=EA2HK1w3Mx9SWECBezKw/os0mvoFNvlKu8SCzQeFYZA=;
        b=AErGtm4DckMyY6HrGDk8x/qOpOCzcTPclkWo7BzqWtHYPQWvkAKeMSoWoZGzfokF6g
         EHfNtu6hGsDEiZcMIBDXH7iOU4tuMG3dVspL+YAtfaHBzs9TePyr7DoDipP+LyFzmd/0
         v2vF8tVpNzJAWX+UC2Du1olJzxPCnYAO5Na6o/aZtEiNE2i+6yzH7cu9IK/vbOQYHe4u
         OAsXylQFD1sfvGIi/+wP4/1tgieLac/0S/qmtUJJog2pmxS1R/X6SSLnRf7ubEQajO2L
         chf9U1eH6DkFlWM2tFlVaPMLmgt4XKC5bnY7xhmAbjt9QtavB4xfIxiAPf1aZwDNYGWD
         tuAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=EA2HK1w3Mx9SWECBezKw/os0mvoFNvlKu8SCzQeFYZA=;
        b=kBzb7HTfy2Rp+AUG0M8XhcvfqhCRe+5CCG9pJ3/WgPQVgdZ8pJ9QDcliraB2QDSj7i
         mfHsjLf/o5dGK75mkjc/83skO6M8oeGIHBvA/rvyX8x6PwMuxPW+Y1wDTVb9aIH/QGkV
         ydZiu/nAjAG1nTV8TOTMWBjxHiyMJ8EO89ReQ/5UdaGteqqM1f2b/nDV6GvX8aS64O4F
         z+v9PSq0eVbBZQUiP8Y1sIN9wvHICAnz/s2uqwbTcqe+kC5RFUdTAbdGuZDxOHRx8u74
         QzIqlClwAVqs4MNELykfuDa6DAwHkCDWOGJ1kjrcuanRxaboz6effOILFBFBcixWJZmg
         Boaw==
X-Gm-Message-State: AJIora+yvVuJlgosF/VaGRh+4GvWkPpKKDtag20t1gyXnw2jBg1EQr0g
        RbYSLu0we4+LHB639aUUar9Q8A==
X-Google-Smtp-Source: AGRyM1tkKK+8SkFXgg4yB2FmoXvs0dFKzuwaGe5efFkEcCAcjGZEp5mVYgw8z+6ar4LH+dWt44D9XA==
X-Received: by 2002:a05:651c:1549:b0:25b:d2dc:2e8f with SMTP id y9-20020a05651c154900b0025bd2dc2e8fmr13780446ljp.334.1656871897227;
        Sun, 03 Jul 2022 11:11:37 -0700 (PDT)
Received: from [192.168.1.52] ([84.20.121.239])
        by smtp.gmail.com with ESMTPSA id n24-20020a05651203f800b004795311530asm4821761lfq.209.2022.07.03.11.11.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 03 Jul 2022 11:11:36 -0700 (PDT)
Message-ID: <ebe6eaef-8bf8-3a35-4048-d0b079b52ff2@linaro.org>
Date:   Sun, 3 Jul 2022 20:11:34 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Subject: Re: [PATCH] dt-bindings: soc: samsung: s5pv210-chipid: add S5PV210
 ChipID
Content-Language: en-US
To:     Rob Herring <robh@kernel.org>
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Alim Akhtar <alim.akhtar@samsung.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20220629123543.94515-1-krzysztof.kozlowski@linaro.org>
 <20220701173524.GA1185040-robh@kernel.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220701173524.GA1185040-robh@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 01/07/2022 19:35, Rob Herring wrote:
> On Wed, Jun 29, 2022 at 02:35:43PM +0200, Krzysztof Kozlowski wrote:
>> Add bindings for the S5PV210 ChipID block.
> 
> Is this new or was undocumented?

Undocumented, I'll mention in the commit msg.

> 
>> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
>> ---
>>  .../bindings/soc/samsung/s5pv210-chipid.yaml  | 30 +++++++++++++++++++
> 
> samsung,s5pv210-chipid.yaml

Hm, even for files under "samsung" directory?

> 
> Surely there's other similar blocks. Can we start collecting in a 
> common directory?

It's a soc-specific driver, type of soc_device. If you think it's worth
a place of its own, I can put it somewhere dedicated.

Best regards,
Krzysztof
