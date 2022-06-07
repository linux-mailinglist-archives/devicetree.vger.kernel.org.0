Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A412E53FE6B
	for <lists+devicetree@lfdr.de>; Tue,  7 Jun 2022 14:10:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S243601AbiFGMKu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 7 Jun 2022 08:10:50 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34538 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S243599AbiFGMKs (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 7 Jun 2022 08:10:48 -0400
Received: from mail-ej1-x62e.google.com (mail-ej1-x62e.google.com [IPv6:2a00:1450:4864:20::62e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 62A12ABF61
        for <devicetree@vger.kernel.org>; Tue,  7 Jun 2022 05:10:47 -0700 (PDT)
Received: by mail-ej1-x62e.google.com with SMTP id n10so34794598ejk.5
        for <devicetree@vger.kernel.org>; Tue, 07 Jun 2022 05:10:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=zW09mgxo9rZF5JNQCX20WzyX9xeVAnc/U5ZjWECn3qU=;
        b=rl9oDqD1LCQb54yPd7X+BYIbArjSL5pL3V3uloaOc9xHHaM3BFB5WkAwZuMPFgh5Of
         /+CwSshQykYHuovwxiqV2TVeiomcNDJJJ/FVdDsKnFs7NUSyLPaAJ3YItdc3y+x3QaXV
         l3WRUX17AH1E3KTqCCVLfowcpGm/rOYVYsvjASWjqmXLLkNTLBYs4aki1AWIN3/eNuTn
         eY6pSJxagm5ZOIry4yNLtZh/nF6VJA12SrfUOigG9+LH7JGgHmdOdbYI8OZ6O6YHtF36
         OCy7YySEgdv7x7E+y7gkRzoWrzrVdiOHxcMUtOcByifXry/8PsE9gzxJwyxbFmIRCBN5
         agGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=zW09mgxo9rZF5JNQCX20WzyX9xeVAnc/U5ZjWECn3qU=;
        b=0Xq3PsjIU1uCGOXZQ6tSK8fS318UiGBlBUrhkt3Rm82WPssL94Xw4Bc2JReJrveT2B
         MCNFDAbDrI1xgnDGiHfLoodx5NjCY8tFxcumj6W3vReVeQ7c5MgWf1DGIYfn0utXGlvk
         HfA/JQE+d5C0jGTl5Qn3wUyz/J6IXGy8DabsW64GVX6bASH98IuYFOjzwgFp8S8pLw1p
         eVUAeb8RKjS6daajT+Rkz01DNo5mwa47m1uuITwW64DTNFGIOgu5MCHJb1o+wLMh6L+x
         97v6oCK/f5MQJZwUswOvjV2ZEUktrF0LpX/NKJaKv3Cdafjp6tA2uFMW6HtpHKQoT+7X
         S87Q==
X-Gm-Message-State: AOAM530DOI5SNNL8weuUwdON8K7jn6IUlEmXvlPE3ncs9HEBkKfNj5C9
        VmFIoAmegjcGC93mBvtUlLNVqg==
X-Google-Smtp-Source: ABdhPJw8pZ3YdMS2B95fwfrjxTj1hVyD/Ee7HcgKEpsqgNqld8T3GeOSXRUIwU1WEvlgZervcmKzsQ==
X-Received: by 2002:a17:907:d27:b0:6ff:d8b:9564 with SMTP id gn39-20020a1709070d2700b006ff0d8b9564mr26136443ejc.364.1654603845940;
        Tue, 07 Jun 2022 05:10:45 -0700 (PDT)
Received: from [192.168.0.183] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id cx12-20020a05640222ac00b0042bd6630a14sm10552844edb.87.2022.06.07.05.10.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 07 Jun 2022 05:10:45 -0700 (PDT)
Message-ID: <c77cc0f2-dc7a-83fb-0324-c335a52429d5@linaro.org>
Date:   Tue, 7 Jun 2022 14:10:44 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Subject: Re: [PATCH v3] ARM: dts: nuvoton: wpcm450: Add missing aliases for
 serial0/serial1
Content-Language: en-US
To:     =?UTF-8?Q?Jonathan_Neusch=c3=a4fer?= <j.neuschaefer@gmx.net>,
        openbmc@lists.ozlabs.org
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20220606213154.2055462-1-j.neuschaefer@gmx.net>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220606213154.2055462-1-j.neuschaefer@gmx.net>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-3.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 06/06/2022 23:31, Jonathan Neuschäfer wrote:
> Without these, /chosen/stdout-path = "serial0:115200n8" does not work.
> 
> Signed-off-by: Jonathan Neuschäfer <j.neuschaefer@gmx.net>
> ---


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof
