Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7AAB75A767D
	for <lists+devicetree@lfdr.de>; Wed, 31 Aug 2022 08:23:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229843AbiHaGX0 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 31 Aug 2022 02:23:26 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38282 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229646AbiHaGXZ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 31 Aug 2022 02:23:25 -0400
Received: from mail-lf1-x12c.google.com (mail-lf1-x12c.google.com [IPv6:2a00:1450:4864:20::12c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4CAECBD108
        for <devicetree@vger.kernel.org>; Tue, 30 Aug 2022 23:23:24 -0700 (PDT)
Received: by mail-lf1-x12c.google.com with SMTP id p16so522172lfd.6
        for <devicetree@vger.kernel.org>; Tue, 30 Aug 2022 23:23:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc;
        bh=sG8qQX99gFK4yoHoKn1Te6zMXWrXBOfDL+SjtxXraow=;
        b=VLeRXkSI9xzluqbrtoexL6/woaBxAqAt86KOLzWX2tiaEbNAu7jebpt79pR+gAyIXH
         rMrki1qaEQxEQVFIUqx2laUPLlU+yiqsrj3/9YIctsuKMt+oWIV3ruqkYazPSmqr3YFN
         gfCjS/3wSyIOu2gTKsqF684/JK1PEu4XNmM7QiyQt1qqgEBHdRQu8hgqAI6MgXcGaToq
         STmaE2cO2BVkejVzfGqJIc9NVfIdyKCtJnoBcTNwbo7ZhqvzB36T3rCS+CFQndf82Iz7
         4I9BnepR+SKDA1MaUkQiqzNfDIw+IzX+AitTllmE32OWBWEr0VoUfH2SrB7Xs0G7S5Qv
         W4KQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc;
        bh=sG8qQX99gFK4yoHoKn1Te6zMXWrXBOfDL+SjtxXraow=;
        b=Ktu1JKqHDTZToAnTVacjNP8A6G55wL5jA09Wwofeu4QgqaCwbmBuuhKMyIbkK39O/p
         YDU0rbkPTeA6m4wTDBjgAJS3sVY4DeR896ItEvb2M6DGuvVeHSt+diWCc4Wx4Q+NKQvL
         uemHVuReI99v7sUYn1NZWxhUCFWLyve+zGT4kUR09dstujvEZGIoULdspOYMDs+Ve3LU
         kiuGYiTadIiLvVzMEWC/5gnvBgcz4E2i5Bzg1hW534o9pQ4DwdWs124X+4GX9AB+USoR
         +p8KennVZLONUGhsd/NTP/hjkNv4I0UOoL2NCIHSMorMpedDLzOtCNkxgXbnUttO1V7g
         zsnA==
X-Gm-Message-State: ACgBeo2lIPvUSQDqYPheEslkvwnhEp2YidQztXujLLh2KKiGKn4kpc0+
        VKOJyl5TIodzQrabvUWh7Af4tQ==
X-Google-Smtp-Source: AA6agR5BmtOnQlEfLdxdo+dKqIZi/cCEsfH7kp1nabWPpiU2DtSDu1l5/8vzYaNFyjpJVl4vA8Nx+g==
X-Received: by 2002:a19:e00d:0:b0:492:e5a5:588b with SMTP id x13-20020a19e00d000000b00492e5a5588bmr8309119lfg.243.1661927002695;
        Tue, 30 Aug 2022 23:23:22 -0700 (PDT)
Received: from [192.168.28.124] (balticom-73-99-134.balticom.lv. [109.73.99.134])
        by smtp.gmail.com with ESMTPSA id f13-20020a056512092d00b00492ed031aacsm1868997lft.173.2022.08.30.23.23.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 30 Aug 2022 23:23:21 -0700 (PDT)
Message-ID: <ad8da366-0eec-fb23-b30f-0fe20d709104@linaro.org>
Date:   Wed, 31 Aug 2022 09:23:21 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Subject: Re: [PATCH 2/4] dt-bindings: memory: Add numeric LPDDR compatible
 string variant
Content-Language: en-US
To:     Julius Werner <jwerner@chromium.org>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Dmitry Osipenko <digetx@gmail.com>,
        Doug Anderson <dianders@chromium.org>,
        Jian-Jia Su <jjsu@google.com>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20220831013359.1807905-1-jwerner@chromium.org>
 <20220831013359.1807905-3-jwerner@chromium.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220831013359.1807905-3-jwerner@chromium.org>
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

On 31/08/2022 04:33, Julius Werner wrote:
> This patch allows a new kind of compatible string for LPDDR parts in the
> device tree bindings, in addition to the existing hardcoded
> <vendor>,<part-number> strings. The new format contains manufacturer and
> part (revision) information in numerical form, such as lpddr3-ff,0201
> for an LPDDR3 part with manufacturer ID ff and revision ID 0201. This
> helps cases where LPDDR parts are probed at runtime by boot firmware and
> cannot be matched to hardcoded part numbers.

Please describe your case here as example.

Best regards,
Krzysztof
