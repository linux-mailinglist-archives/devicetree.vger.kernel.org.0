Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2CAF652A430
	for <lists+devicetree@lfdr.de>; Tue, 17 May 2022 16:04:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229693AbiEQOEH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 17 May 2022 10:04:07 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39126 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1347707AbiEQOEG (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 17 May 2022 10:04:06 -0400
Received: from mail-lf1-x12e.google.com (mail-lf1-x12e.google.com [IPv6:2a00:1450:4864:20::12e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 344EC41628
        for <devicetree@vger.kernel.org>; Tue, 17 May 2022 07:04:05 -0700 (PDT)
Received: by mail-lf1-x12e.google.com with SMTP id bu29so31612650lfb.0
        for <devicetree@vger.kernel.org>; Tue, 17 May 2022 07:04:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=82nn5njmNFS06nAyeGbhe4/PKMO1d9feXCrIA8HyNjc=;
        b=GTxGHiVMrZumPRt2uTlizP4Tsv9d4TAS2zKEsgMz9oZTZ3U0+BwXZvY/8fGGwcJpU/
         vVuP1wy6xOr4XPIzQb7HaYdo8TN8xjqwdzoKudqpK1Q09tx1Oy1gFfTWEVixD31Sc45q
         z9QeiFF2MXNBOyba07fDPuiX4hvU30TSHRgVwDNOzuwctb/EK6LZlQg0YyoOmArM5B9E
         DiY/VhrzZqlZ9cIor7Qamto7oJrvCOmoR2wHetRfc4ChF9cqNOqLkhxG9xxEBZuCPt3O
         XtGwxBWjtTmSqnPh1fDnz/xdTTuHTdV7Dy/bAcYtCmx7jOyupgkGGwJqeh2gcWu9/0Qh
         k/XA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=82nn5njmNFS06nAyeGbhe4/PKMO1d9feXCrIA8HyNjc=;
        b=b01yWVTiWA+aBFjBVsys2ugBvIyjw+ZZe1FSgbfDuWpl+HRKDSzowW7fJ/fYONiyJc
         J14WpP4JP1VHOPxbNoqlZ/d1cnjaF0fAGqROIec1s2cCJFeAmVVZxYLz8M0E2LbdmurF
         OKa8VpAIwdjT0JD1jb0sPZr0O3UwV63Tv4LVVzb3RZkiLsDQBk2f7TcV49330Dqkz+xY
         FF4HTbQ2CqbrOapvfqArZDyK7hIlLTchxfxclD/rIHghHvJo6vogNbAFKOjcLRbzaSwY
         LfhW5ZZV60LJmsLYATgXMxgV3jcfjp3B+vlf11pCK7D2bFwaqueU31+6QgZmecLVMyBf
         38zw==
X-Gm-Message-State: AOAM533CuBbADnaYfcLfzFXb5PaZVqqunvhMUX/L1/ACTVNVRzcvVd+0
        HlORDWACMe3DCHCgrSjarkklHg==
X-Google-Smtp-Source: ABdhPJw7Ao2jJpJZDHuKc/blm7UkO+dmm9TC3lGw+GS++5c5qbDv/k/C2KTT4jXpWDmBuyPgTGFFGw==
X-Received: by 2002:a19:fc1b:0:b0:474:4bf7:e135 with SMTP id a27-20020a19fc1b000000b004744bf7e135mr17368382lfi.362.1652796243553;
        Tue, 17 May 2022 07:04:03 -0700 (PDT)
Received: from [192.168.0.17] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id d11-20020a056512368b00b0047255d211cfsm1600354lfs.254.2022.05.17.07.04.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 May 2022 07:04:03 -0700 (PDT)
Message-ID: <a5b6a8e8-929b-91ef-c07c-69ed31174121@linaro.org>
Date:   Tue, 17 May 2022 16:04:01 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.1
Subject: Re: [PATCH 18/20] media: s5p-mfc: Correction in register read and
 write for H264
Content-Language: en-US
To:     Smitha T Murthy <smitha.t@samsung.com>,
        linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Cc:     m.szyprowski@samsung.com, andrzej.hajda@intel.com,
        mchehab@kernel.org, hverkuil-cisco@xs4all.nl,
        ezequiel@vanguardiasur.com.ar, jernej.skrabec@gmail.com,
        benjamin.gaignard@collabora.com, stanimir.varbanov@linaro.org,
        dillon.minfei@gmail.com, david.plowman@raspberrypi.com,
        mark.rutland@arm.com, robh+dt@kernel.org, krzk+dt@kernel.org,
        andi@etezian.org, alim.akhtar@samsung.com,
        aswani.reddy@samsung.com, pankaj.dubey@samsung.com,
        linux-fsd@tesla.com
References: <20220517125548.14746-1-smitha.t@samsung.com>
 <CGME20220517125652epcas5p31abe2138fbff6218c9031da714bfb448@epcas5p3.samsung.com>
 <20220517125548.14746-19-smitha.t@samsung.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220517125548.14746-19-smitha.t@samsung.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 17/05/2022 14:55, Smitha T Murthy wrote:
> Few of the H264 encoder registers written were not
> getting reflected since the read values was not
> stored and getting overwritten.

This looks like a bugfix so:
1. Send it separately please.
2. Add Fixes tag.
3. Add Cc stable tag.


Best regards,
Krzysztof
