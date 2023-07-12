Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 81F0975112A
	for <lists+devicetree@lfdr.de>; Wed, 12 Jul 2023 21:25:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231791AbjGLTZj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 12 Jul 2023 15:25:39 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55740 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229668AbjGLTZi (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 12 Jul 2023 15:25:38 -0400
Received: from mail-ej1-x636.google.com (mail-ej1-x636.google.com [IPv6:2a00:1450:4864:20::636])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 506C31FC2
        for <devicetree@vger.kernel.org>; Wed, 12 Jul 2023 12:25:37 -0700 (PDT)
Received: by mail-ej1-x636.google.com with SMTP id a640c23a62f3a-9891c73e0fbso250394866b.1
        for <devicetree@vger.kernel.org>; Wed, 12 Jul 2023 12:25:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1689189936; x=1691781936;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=qlC2xd+LWkAw6VtZI/SCBHO2xi/vQf/CwDed84n3xeQ=;
        b=lTzQAFm0UwnXd24PWylRYpcU0F457aHyP9KciWJkMJEWnnNM1CDllzQ4uWcH8EfUQv
         cbZrg8V55iXV0C8nY+uTF7hJl5aPxJnjV9T0geZilx5Ca0xXAKbU8yDrCIYeYYezeCTD
         LnK9GtarHRZDKWRyLhJztJPJDs+bfLXXFymXnErXhGDmgjYgkmbbsy/yjPESTQGA3IC6
         vPSBfHKsAR+Iq642bz+6uTsci/xNYrGfUkpeK2n05ltckLJGjCXRJl8BxhYPr4qqUNuo
         TvOd0aQSG1GkKzUTsXpwujhkrVkL1VFqLHYH/P+us70BQ1E3IzzJGKKGQjUMsylhYQgF
         MJQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689189936; x=1691781936;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=qlC2xd+LWkAw6VtZI/SCBHO2xi/vQf/CwDed84n3xeQ=;
        b=gIc824lBJYHyhVXzngAM4CujesUU6qGyi8UsYsQq/7x6Z8d1I3+2EhqtDCE9c/MeQM
         Shj4rDinfKNnSgAcq9ShIBBkAZUd87MDX4pvctrweVCfdKdWsvlZx44GXEHICfSpvD+c
         3+Vi3SuJjvXJbwgZ6o9GgAAhOiknPLvZ5UjaUeqdRpX9e4fhKgqUq/9KNsNB1VEkppcn
         DdOU/ArSAM2x3k7gJK5B0WKLUI6xkmfngpnhiFUFruUXxPuj05DNpSvrn6f+XRw12bbW
         8fWM1Ry8O1tjJM/T0PGzk0q47kDgKh21KYeSfjx1TNpYudZqSjVgvi1TQWecSxVJypTC
         FQNQ==
X-Gm-Message-State: ABy/qLZIbq3nwC4eVM18v35/c5bABjHwRqwECabXoGKYaPvMARn/q9S/
        SuWz7ny8J2XDleihb0njMkWexQ==
X-Google-Smtp-Source: APBJJlGsZdGD7bEjsV+5Ybs5t0WWeawP39YFnwraXzAZG+K1Jg6V4qqvtL+9S5NUbMA6Ge3qBEZgnA==
X-Received: by 2002:a17:906:1053:b0:992:8d96:4de3 with SMTP id j19-20020a170906105300b009928d964de3mr4213382ejj.24.1689189935773;
        Wed, 12 Jul 2023 12:25:35 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.223.104])
        by smtp.gmail.com with ESMTPSA id b19-20020a170906661300b009920e9a3a73sm2929510ejp.115.2023.07.12.12.25.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 12 Jul 2023 12:25:35 -0700 (PDT)
Message-ID: <aa05bcd6-140d-d951-2c7f-c09abf7f49f7@linaro.org>
Date:   Wed, 12 Jul 2023 21:25:33 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Subject: Re: [PATCH 4/4] ARM: multi_v7_defconfig: Add SCMI regulator support
Content-Language: en-US
To:     p.paillet@foss.st.com, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        Alexandre Torgue <alexandre.torgue@foss.st.com>,
        Russell King <linux@armlinux.org.uk>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
        Claudiu Beznea <claudiu.beznea@microchip.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Fabrice Gasnier <fabrice.gasnier@foss.st.com>,
        Alexander Stein <alexander.stein@ew.tq-group.com>,
        Geert Uytterhoeven <geert+renesas@glider.be>,
        devicetree@vger.kernel.org,
        linux-stm32@st-md-mailman.stormreply.com,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Cc:     Etienne Carriere <etienne.carriere@foss.st.com>
References: <20230712142432.1885162-1-p.paillet@foss.st.com>
 <20230712142432.1885162-5-p.paillet@foss.st.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230712142432.1885162-5-p.paillet@foss.st.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 12/07/2023 16:24, p.paillet@foss.st.com wrote:
> From: Pascal Paillet <p.paillet@foss.st.com>
> 
> Enable ARM SCMI regulator support.
> 

This we see from the diff. Please explain why, e.g. which boards use it.

Best regards,
Krzysztof

