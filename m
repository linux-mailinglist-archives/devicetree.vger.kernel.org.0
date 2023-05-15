Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3A06670326D
	for <lists+devicetree@lfdr.de>; Mon, 15 May 2023 18:13:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S242440AbjEOQNd (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 15 May 2023 12:13:33 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46744 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235569AbjEOQNc (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 15 May 2023 12:13:32 -0400
Received: from mail-ed1-x534.google.com (mail-ed1-x534.google.com [IPv6:2a00:1450:4864:20::534])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 52E91E4
        for <devicetree@vger.kernel.org>; Mon, 15 May 2023 09:13:30 -0700 (PDT)
Received: by mail-ed1-x534.google.com with SMTP id 4fb4d7f45d1cf-50bc5197d33so23746517a12.1
        for <devicetree@vger.kernel.org>; Mon, 15 May 2023 09:13:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1684167209; x=1686759209;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=3yt4YgbivgZUy6CAslsw+wadUPBQOwji2oiOofBvyIE=;
        b=tvs2Mv99cUuowVkw8JTeEyS/FlaWUvXfiycER2K09ffw24sZE99oSHdjDUylXJ69U2
         KNIiD/UHhj6g393JsIvEaj+9KgZ7Eeeny9e5wGJwJ1BELrLiU/1XbrZd2SDvj2GyGqo+
         f+JKfAYvK6mUQeV2Ylp2AbqIgisP74v15CsUqJx6inHF6uQQCbAK4K8tp+7fkwLf/kDB
         drJMnfDTsAbi5KudzxLBcM62VMdp08O4g2BYfdfoCHNfA68JKi+GTmI+0V0C8MmghyfB
         D/+Cadlj/0qPlOuhfTkCHjcnfxkSYIu0D+Z9sMrX4tlVFa/pKmphFbJI8oyGjzgH3T6C
         ThOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684167209; x=1686759209;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=3yt4YgbivgZUy6CAslsw+wadUPBQOwji2oiOofBvyIE=;
        b=GPvjq+ytC35oagGGgGQl6z1Qtv2RIlEvq0ei7G8M1I7314XgSd/RQrjg/ginndjC6r
         //KdvMqvQl+I/Msqrp4Gcdh1WJUhIraOUYdVuvhO0ODdsXw7LTI3qPaymGphrzAihZz1
         7c33F31ipYCl+agLl13YgAdIuC4N3k7CWfVDfyrYVxCj4cqsBTzKXyIaNOAlS7S43ghD
         zLuIHyLhN2pVWXaZChWoFeF4rnd8SDXWun+Jygn191qf3vwcrBKAB4aBfCvo8lsYpKU1
         NKHe2l//z/iScSePlS6tiUIKZlNWFlz6h//echTOeOXSht4SItXmvQ75ZLUk3UhFfy68
         +G+g==
X-Gm-Message-State: AC+VfDzWyBh0hXVVBCeeqKTkhGtSNgLGoA4YmIVI6N9iR6aYS9lev1AJ
        jcSA6g4Mk4omn86PmXbAvVmNpw==
X-Google-Smtp-Source: ACHHUZ6JMgRptdYRZnYUUXM44TYqSaYO8I3VL38YTcY8hYIY4ozSR1UzRxR5NBJBepvv5Q/oNsFiyw==
X-Received: by 2002:a17:906:7947:b0:94e:dd68:aba1 with SMTP id l7-20020a170906794700b0094edd68aba1mr31163585ejo.67.1684167208792;
        Mon, 15 May 2023 09:13:28 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:6470:25b8:7c2d:1992? ([2a02:810d:15c0:828:6470:25b8:7c2d:1992])
        by smtp.gmail.com with ESMTPSA id og51-20020a1709071df300b009662c57b4ffsm9775345ejc.96.2023.05.15.09.13.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 15 May 2023 09:13:27 -0700 (PDT)
Message-ID: <d5c030f9-2f4d-25cc-b922-d00f5033ac37@linaro.org>
Date:   Mon, 15 May 2023 18:13:26 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH v4 01/13] dt-bindings: clk: g12a-clkc: export VCLK2_SEL
 and add CTS_ENCL clock ids
Content-Language: en-US
To:     neil.armstrong@linaro.org, Jerome Brunet <jbrunet@baylibre.com>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>,
        Kevin Hilman <khilman@baylibre.com>,
        Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        David Airlie <airlied@gmail.com>,
        Daniel Vetter <daniel@ffwll.ch>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Sam Ravnborg <sam@ravnborg.org>
Cc:     Nicolas Belin <nbelin@baylibre.com>,
        linux-amlogic@lists.infradead.org, linux-clk@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
        linux-phy@lists.infradead.org
References: <20230512-amlogic-v6-4-upstream-dsi-ccf-vim3-v4-0-2592c29ea263@linaro.org>
 <20230512-amlogic-v6-4-upstream-dsi-ccf-vim3-v4-1-2592c29ea263@linaro.org>
 <5cb38be4-a27f-dc1a-cbb9-c195505a9e7c@linaro.org>
 <9fa0662e-8854-05f9-da7f-ec8e08d2badf@linaro.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <9fa0662e-8854-05f9-da7f-ec8e08d2badf@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-5.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 15/05/2023 18:06, Neil Armstrong wrote:
> On 13/05/2023 20:28, Krzysztof Kozlowski wrote:
>> On 12/05/2023 15:11, Neil Armstrong wrote:
>>> Expose VCLK2_SEL clock id and add new ids for the CTS_ENCL and CTS_ENCL_SEL
>>> clocks on G12A compatible SoCs.
>>>
>>> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
>>> ---
>>>   drivers/clk/meson/g12a.h              | 1 -
>>>   include/dt-bindings/clock/g12a-clkc.h | 3 +++
>>>   2 files changed, 3 insertions(+), 1 deletion(-)
>>
>> Bindings must be a separate patch from the driver changes. If this
>> causes bisectability issues, this means entire solution breaks ABI and
>> is not appropriate anyway...
> 
> This is basically how we handled CLK IDs on Amlogic clk bindings for the
> last years, the amount of changes is very low and rather exceptional
> compared to early development stage.

The commits with bindings are used in devicetree-rebasing repo, so we
want them to be separate.

Meson is the only or almost the only platform making such changes. I
don't get why, because the conflict could be easily avoided with using
different names for defines in bindings and local clock. Approach of
having bindings strictly tied with driver commit is never desired.

Best regards,
Krzysztof

