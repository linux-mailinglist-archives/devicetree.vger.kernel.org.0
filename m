Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A994A72AD71
	for <lists+devicetree@lfdr.de>; Sat, 10 Jun 2023 18:39:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230020AbjFJQiy (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 10 Jun 2023 12:38:54 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48992 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229521AbjFJQix (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 10 Jun 2023 12:38:53 -0400
Received: from mail-ed1-x534.google.com (mail-ed1-x534.google.com [IPv6:2a00:1450:4864:20::534])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0922C3A97
        for <devicetree@vger.kernel.org>; Sat, 10 Jun 2023 09:38:41 -0700 (PDT)
Received: by mail-ed1-x534.google.com with SMTP id 4fb4d7f45d1cf-5149bdb59daso4129566a12.2
        for <devicetree@vger.kernel.org>; Sat, 10 Jun 2023 09:38:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1686415120; x=1689007120;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=eGY+07fHtLZ1KBnWoGU3+DqFHhYsAN1rcupom6JoV8o=;
        b=lU46AegLxXOrFth50v5CpwxnCgHudkiOYF1TdXjD6C7m9WeUbN0yntoNKzXDeJrFDO
         pO6/klGWzrF2Etdkcy4rShvt5MG56euzWG3N2AlYG8J/OGv8sz0AGws5ccBBhIxEbZBg
         HZ3qkbpgnnDC7SLikBur4gvN2G4K980RsZDuM3QOWZtEvcco1WZfxprgllit1jB8CIG9
         JSTWcoa9NWFbN7enSwbnvQhknqPp5eW+Ov55KnqgBJohn+F17E8COANK/tz9KKl0msp8
         irOuTNNIXiHhjwm8OdoZ+Z5J120vkkPC2zgjUmdAKIZ7P95Ybrre40xUd6n+WoFrmpyO
         oKyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686415120; x=1689007120;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=eGY+07fHtLZ1KBnWoGU3+DqFHhYsAN1rcupom6JoV8o=;
        b=Fqs5L8V2SZr+YErvFTLgtRoiBFtTgnvx8ADGpFvrYQ1qlCfUEgHpXi9eNhXO2Y+GfF
         ORbGYz2GeZFYq/lVeLp330IAYHcfpc4HaKeTPn6L02jTo2YLYx7SpA72H/p99UdRl5k6
         QVprmkAgmSQbh/cnVRM+KHHTImhclkDneo8EoGEXr5rrcAeU/6LDuhT32ncDte2FFd+v
         h+LEvqVGqos9LDLK10vSWi6+L7YqHeHnxYSR8l0bjSgTNqu4y2h2AN1mSXLjA+/AUWMi
         HvRb5+GBABxgc6nBnLRcWUTn+Lo+EDTI+By56BR3iHG5dvgOPYAZ5LnIB9xw6He2u0wI
         p61Q==
X-Gm-Message-State: AC+VfDzc0lsBjGch/i53U7xBrDdcjMJfmKPuZppYY13J+eyfmAf+fGqp
        JmEQUS2hbUmRZzHvAfXG6I4rBWIXD8ytsLe9Aoo=
X-Google-Smtp-Source: ACHHUZ7vum1iNdxQLpebiV3c/Lp2Lb4W2rvQGgXBK7h1zcpBZK8iZshqTm+rVbCvvlDsv0NZ/GXJfQ==
X-Received: by 2002:a17:907:7249:b0:978:6e73:e841 with SMTP id ds9-20020a170907724900b009786e73e841mr3704404ejc.35.1686415120467;
        Sat, 10 Jun 2023 09:38:40 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.219.26])
        by smtp.gmail.com with ESMTPSA id x22-20020aa7cd96000000b0050bca43ff55sm3047459edv.68.2023.06.10.09.38.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 10 Jun 2023 09:38:40 -0700 (PDT)
Message-ID: <4c91a18d-c1ab-f79f-b80b-d18b6e966e10@linaro.org>
Date:   Sat, 10 Jun 2023 18:38:38 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.2
Subject: Re: [PATCH 10/18] dt-bindings: clk: meson8b-clkc: expose all clock
 ids
Content-Language: en-US
To:     Neil Armstrong <neil.armstrong@linaro.org>,
        Jerome Brunet <jbrunet@baylibre.com>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>,
        Kevin Hilman <khilman@baylibre.com>,
        Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc:     linux-amlogic@lists.infradead.org, linux-clk@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org
References: <20230607-topic-amlogic-upstream-clkid-public-migration-v1-0-9676afa6b22c@linaro.org>
 <20230607-topic-amlogic-upstream-clkid-public-migration-v1-10-9676afa6b22c@linaro.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230607-topic-amlogic-upstream-clkid-public-migration-v1-10-9676afa6b22c@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 07/06/2023 12:56, Neil Armstrong wrote:
> Due to a policy change in clock ID bindings handling, expose
> all the "private" clock IDs to the public clock dt-bindings
> to move out of the previous maintenance scheme.
> 
> This refers to a discussion at [1] & [2] with Krzysztof about
> the issue with the current maintenance.
> 

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

