Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2C7EC639AFE
	for <lists+devicetree@lfdr.de>; Sun, 27 Nov 2022 14:33:48 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229551AbiK0Ndq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 27 Nov 2022 08:33:46 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53798 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229550AbiK0Ndp (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 27 Nov 2022 08:33:45 -0500
Received: from mail-wr1-x432.google.com (mail-wr1-x432.google.com [IPv6:2a00:1450:4864:20::432])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B6975CE08
        for <devicetree@vger.kernel.org>; Sun, 27 Nov 2022 05:33:43 -0800 (PST)
Received: by mail-wr1-x432.google.com with SMTP id x5so13002449wrt.7
        for <devicetree@vger.kernel.org>; Sun, 27 Nov 2022 05:33:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Hg/2EU+buogzSqoelI9afCNbICE9qEW32jUEItbW9t8=;
        b=LgdbEr0YYr3yeSEJ8Y/zKSVMO2/ME2GhJZHozXfA9cjTpzHIPxD7/dpJkMefwv1Khw
         fhB9AtIzWUL7AJC+ObTaZ+CvtU/sr8BpO+OuKbj+tBFD0eDN893QqnFmM5rfyOHpw5/6
         T7GwkaUuLHDIPUVpy7cqF6IIUn7Bic4JOab9F2d9JqUai7JgeReqLS0IlgOUe8KVzJbD
         zBJev9lRenRuI1l+IFHMxApI8ab2R+3iQEugX6HvyFGjzmNCfkoybTM/TPZDbNKxCfkz
         un0/POOJ4dGDRfo+1qWbeXoTek/+j1HZehhqey4dVjDbDf/YkQbhoMArE/L/NvweGshM
         dQ0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Hg/2EU+buogzSqoelI9afCNbICE9qEW32jUEItbW9t8=;
        b=IQ1M2chiYUrA+fL1d1WY1cy9nEDpn9Cr2BGFj6cIdukdBZBDi53+IGQ3oWe3OTJah4
         WnRFFeFJ/ceDXTrJUDe6nYr44NcynL1ikD6avbZ5DCWr79ylKQtzkQ1ix77Cl0YeADi6
         lyrzsfguNtwJ3pG2YtHGSleeeDhHq8DXaG99J18HY/7rahnFAKBcC9IlzEvKSmgUxAVa
         ZtglgpBXugB5RSx0XjrMjH7Nfn0oo5mymXmYp/k6sN10m281H0xI49sI80Bwxm5Mk17A
         pMcTTPU6pvOLmdcOHf6sbKAlL0zAJ8rOiD/RI424n79KlEMnnhuoaoadUo5nHAJEBv6M
         FvVg==
X-Gm-Message-State: ANoB5pmuk2lmBvIF2Bu6HNb+SWj1X3zLfCzXixyKaQGzuVY5N4lkJxQp
        IFCCZN1WoRjvjNBv53SlbNJeFw==
X-Google-Smtp-Source: AA0mqf6B8T4sysHqbVRfj3HQ8EoZ4WpBbUsWQcUE4DXv48X1Ubfz0bcfS4kFb7AMLHzB32sMuKZr2w==
X-Received: by 2002:adf:de03:0:b0:236:c820:97e6 with SMTP id b3-20020adfde03000000b00236c82097e6mr28000618wrm.215.1669556022263;
        Sun, 27 Nov 2022 05:33:42 -0800 (PST)
Received: from ?IPV6:2a01:e0a:982:cbb0:9475:5832:6c06:e04d? ([2a01:e0a:982:cbb0:9475:5832:6c06:e04d])
        by smtp.gmail.com with ESMTPSA id x10-20020a05600c21ca00b003a6125562e1sm10961953wmj.46.2022.11.27.05.33.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 27 Nov 2022 05:33:41 -0800 (PST)
Message-ID: <a3b7e1f0-16cb-4284-c740-5b5874612ea4@linaro.org>
Date:   Sun, 27 Nov 2022 14:33:40 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:91.0)
 Gecko/20100101 Thunderbird/91.13.1
Subject: Re: [PATCH] arm64: dts: amlogic: align LED node names with dtschema
Content-Language: fr
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Kevin Hilman <khilman@baylibre.com>,
        Jerome Brunet <jbrunet@baylibre.com>,
        Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20221125144141.477253-1-krzysztof.kozlowski@linaro.org>
 <3719828c-0ac5-34c9-a04b-251cbeb5f6ef@linaro.org>
 <a135f93a-235a-27b8-f649-69d62f6ebd30@linaro.org>
 <54f500cb-d7d0-8af1-eb58-99fbe71791a5@linaro.org>
 <CAB6niQ4808JEgdQEvRvaYqq8YmFCGo_YLnxXo+rjpSgxQxu+7g@mail.gmail.com>
 <615eb86b-a00a-56bc-ae1a-9f0e4e86f77c@linaro.org>
From:   Neil Armstrong <neil.armstrong@linaro.org>
In-Reply-To: <615eb86b-a00a-56bc-ae1a-9f0e4e86f77c@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


Le 27/11/2022 à 13:25, Krzysztof Kozlowski a écrit :
> On 26/11/2022 17:03, Neil Armstrong wrote:
>>>>> Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>
>>>> Aren't you maintainer of the platform? This means I should take care of
>>>> this patch?
>>> Ah, this will be picked up by Kevin or Jerome? So this tag means only
>>> Reviewer's statement of oversight, right?
>> Of course I'll pick it.
>>
> So that's confusing to see Review which does not mean review, but
> maintainer pick...

Reviewed-by means reviewed, there's no confusion here, the significance
is clearly documented on https://docs.kernel.org/process/submitting-patches.html

>
> Reviewed-by means, I should take your tag and add to v2 or the
> maintainer will add it when picking up.

Reviewed-by means reviewed, fully reviewed patches are ready to
be picked unless a change is asked by a reviewer.

Decision to pick or not a patch does not depend on any tags, but
is the sole decision of the maintainer adding it's Signed-off-by.

While I use Acked-by to signify acceptance to other maintainers
on files I authored or files I maintain but cannot pick, here I don't
need to signify acceptance to myself.

Neil

>
> Best regards,
> Krzysztof
>
