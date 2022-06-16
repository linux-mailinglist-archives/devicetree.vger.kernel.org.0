Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id F31BE54EB4B
	for <lists+devicetree@lfdr.de>; Thu, 16 Jun 2022 22:37:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1378481AbiFPUhC (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 16 Jun 2022 16:37:02 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51050 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231592AbiFPUhB (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 16 Jun 2022 16:37:01 -0400
Received: from mail-pl1-x635.google.com (mail-pl1-x635.google.com [IPv6:2607:f8b0:4864:20::635])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B83DA5D5E6
        for <devicetree@vger.kernel.org>; Thu, 16 Jun 2022 13:37:00 -0700 (PDT)
Received: by mail-pl1-x635.google.com with SMTP id d13so2148307plh.13
        for <devicetree@vger.kernel.org>; Thu, 16 Jun 2022 13:37:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:cc:from:in-reply-to:content-transfer-encoding;
        bh=E51hIQZ40f3QqFw80DRIhYWi7mhUqOpvxoosSE7qNkI=;
        b=IinKuwvDnNLEWJeDOevtyk/lAqJZP57Akm4dK66P3cKbLGyAYWVlcfTjjv05ChSMXT
         THEGoWaxHQ6So2p4Gi39Mb1+B/CdqUdF/CHO+ZstUngWxRe4ezHQE1keZjmrlsnHhOE1
         d2b7a25kzArhAAR0B5xiWwB8xcXrg6yuKQ7Bg/tQwayP5wod3OI5cPwdc59N7SsHh8oj
         xIUvhh0S5WDLASHWRYMixF4FY96hB2Spma7LzykNaoKVhLeA6xfEfRwLglwKCHsN+Q3H
         b6J3fY2Q/Ex4W4akScU/N9U/XcP3L8It1v3vaoICm8ThjuFDrPflSEisVvvxktcfzXGm
         g+GA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:cc:from:in-reply-to
         :content-transfer-encoding;
        bh=E51hIQZ40f3QqFw80DRIhYWi7mhUqOpvxoosSE7qNkI=;
        b=fcuKhGspGPCf+aFaTkgKR9p7ZfBU/K5xs16+fA6mK+hGn3FbDtgHxtNd7wv3jHLwuI
         n/XCsPyb9EPazWUIXg6fUr/Ya6VXJzUkF1JJLPT8mXLtiRKOyM5/Nuuhmwjep/W6bcmV
         ZdWmklXtLJHYOeh2CgB+adqPPNAk4JgeXy7ifvfPtrGcyQf0PznqZoN23eRhGWQq0XcB
         PjJdpQityJ8/9ISpLXHmv84s7vDPFDtCICpQMz9fhwdvghqkdFhO3ML7tPot3Y0PEoHP
         KoqS1YZnrW2sHw+qSwk7zRptRTCAswUieeQ/0irKEnwm2pg/6DCqzrfx+rIUfptqPv8P
         nbOw==
X-Gm-Message-State: AJIora+63Tg60lzzyZzJDbh5GFuYmzWorz1cStxxQJ3hsTJNfhnwePYj
        o+ZPrE4MSTSIQkwBqWN3NhItUA==
X-Google-Smtp-Source: AGRyM1uopfEHYuWzZ4pnBMx1dSiZUpXEVR6mXp6GjuuUjON84+lsG4j8diSn65znvoiZn7uZt+qbyg==
X-Received: by 2002:a17:90a:384f:b0:1ea:fa0b:3132 with SMTP id l15-20020a17090a384f00b001eafa0b3132mr3265817pjf.5.1655411820137;
        Thu, 16 Jun 2022 13:37:00 -0700 (PDT)
Received: from [172.22.33.138] ([192.77.111.2])
        by smtp.gmail.com with ESMTPSA id m70-20020a633f49000000b00408b966228csm2225798pga.49.2022.06.16.13.36.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 16 Jun 2022 13:36:59 -0700 (PDT)
Message-ID: <1338cf79-d57d-d13b-896b-abc0c726a238@linaro.org>
Date:   Thu, 16 Jun 2022 13:36:58 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Subject: Re: [PATCH 1/2] arm64: dts: mediatek: adjust whitespace around '='
Content-Language: en-US
To:     Matthias Brugger <matthias.bgg@gmail.com>
References: <20220526204402.832393-1-krzysztof.kozlowski@linaro.org>
Cc:     linux-kernel@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-kernel@lists.infradead.org,
        Arnd Bergmann <arnd@arndb.de>,
        linux-mediatek@lists.infradead.org, devicetree@vger.kernel.org,
        soc@kernel.org, Rob Herring <robh+dt@kernel.org>,
        Olof Johansson <olof@lixom.net>, arm@kernel.org
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220526204402.832393-1-krzysztof.kozlowski@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 26/05/2022 13:44, Krzysztof Kozlowski wrote:
> Fix whitespace coding style: use single space instead of tabs or
> multiple spaces around '=' sign in property assignment.  No functional
> changes (same DTB).
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> 
> ---
> 
> Output compared with dtx_diff and fdtdump.

Matthias,

Are you ok with the patches? Any comments?


Best regards,
Krzysztof
