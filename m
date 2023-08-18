Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2DF57780EC7
	for <lists+devicetree@lfdr.de>; Fri, 18 Aug 2023 17:13:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1378089AbjHRPND (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 18 Aug 2023 11:13:03 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58626 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1378190AbjHRPM1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 18 Aug 2023 11:12:27 -0400
Received: from mail-wr1-x42d.google.com (mail-wr1-x42d.google.com [IPv6:2a00:1450:4864:20::42d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D45EB4483
        for <devicetree@vger.kernel.org>; Fri, 18 Aug 2023 08:12:02 -0700 (PDT)
Received: by mail-wr1-x42d.google.com with SMTP id ffacd0b85a97d-3198d2745feso883749f8f.1
        for <devicetree@vger.kernel.org>; Fri, 18 Aug 2023 08:12:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20221208.gappssmtp.com; s=20221208; t=1692371520; x=1692976320;
        h=mime-version:message-id:in-reply-to:date:subject:cc:to:from
         :user-agent:references:from:to:cc:subject:date:message-id:reply-to;
        bh=X2s/xRCYyjUy1K7TVGsqRWzbJnVpBbeLnT8rWUMCP1Y=;
        b=RTjlX/QhEU0l78cIhdAKujxEQsa/D2b/4QpuOk2ya39dIHaBsy3EpnrHlMRBsHx8yd
         PMC951tWSNqCFTDFm8Ve/i5akuERONk/X1AXc0R2KwgM+hle8q0/n0Hy43iLWnGDESQ1
         sVrrOf/aw+IbMKp/SGtzhptwbfRdlsHVmau9wzBDHMHpRJvydIQSSOGOnNKD2xziw4VV
         fc+RnKOhzcdlX5dCD4w0Acuq9+z2NW89HNZkBfgbdn9+UYd2/HhRcG9aa/fBn2xMNE0s
         tGQgLJ9xbBKGDQbybzuMVjdkXPjLLQUBSSx4i7/TTcdCia7PgiOl2cYbkoVDk3crPbxf
         v4ZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692371520; x=1692976320;
        h=mime-version:message-id:in-reply-to:date:subject:cc:to:from
         :user-agent:references:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=X2s/xRCYyjUy1K7TVGsqRWzbJnVpBbeLnT8rWUMCP1Y=;
        b=bWpCTsXkBIt3TpiehK7Y8D4tqRQ991/lQ/EPeaLZRCwG7uEGcvLDc4OgnA6rs8oUVT
         btqcimwThtFjjIyYO4E+s5sT4c9woWtCSIfzdPkSJHUQKuDrhrWz89wY7Ikmu4iULfzD
         l5Jm/mywDxky4UxCQx3ElrpZeinwBjTg/Y9lcS6UNzoF/qZbV5aEIyMF2zdOq9qzPWQN
         AhApnduiUyKQCb/HHDv91Ar1jwDTHmwbrJ3DI5vlAIF/UAuHVQwJIoRVofHmmM0qr5p+
         s8jtYMhR9cttNS5zUy7T6fShsrHDDq31kNFQKbGNARxjGV5GV3NfQbqsBWxiYhU+8wCa
         GS3w==
X-Gm-Message-State: AOJu0YwFx1BWG3lDqT+mE6Vby5R4l0fBxthBMahX4f2gG4jNdEuqkpEh
        NOLiuvZQJb2gwcigpD6wcdyCpg==
X-Google-Smtp-Source: AGHT+IE0APhUvzBrqk5iCJTooLr3caDZHn+yhEC6vK4NRlJTFzgJq1SLmCMrvpvvegTKy06BJfIVwA==
X-Received: by 2002:a5d:68c9:0:b0:317:df4f:4b97 with SMTP id p9-20020a5d68c9000000b00317df4f4b97mr2127661wrw.7.1692371519786;
        Fri, 18 Aug 2023 08:11:59 -0700 (PDT)
Received: from localhost ([2a01:e0a:3c5:5fb1:474a:b712:99f:cca1])
        by smtp.gmail.com with ESMTPSA id e1-20020adff341000000b003177f57e79esm3052642wrp.88.2023.08.18.08.11.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 18 Aug 2023 08:11:59 -0700 (PDT)
References: <20230808161755.31594-1-alexander.stein@mailbox.org>
 <7ha5uyes3f.fsf@baylibre.com>
 <3f437e5b-2bae-384a-0a08-216a4ec55bde@linaro.org>
 <7ho7j572ue.fsf@baylibre.com>
 <1d643d2a-2aa9-6b36-7f5e-bdd01fd2979f@linaro.org>
 <1jo7j4a69j.fsf@starbuckisacylon.baylibre.com>
User-agent: mu4e 1.8.13; emacs 28.2
From:   Jerome Brunet <jbrunet@baylibre.com>
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Kevin Hilman <khilman@baylibre.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Cc:     Alexander Stein <alexander.stein@mailbox.org>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-amlogic@lists.infradead.org
Subject: Re: [PATCH 1/2] arm64: dts: meson-g12: Fix clock order for
 amlogic,axg-tdm-iface devices
Date:   Fri, 18 Aug 2023 17:01:45 +0200
In-reply-to: <1jo7j4a69j.fsf@starbuckisacylon.baylibre.com>
Message-ID: <1jjzts9ygx.fsf@starbuckisacylon.baylibre.com>
MIME-Version: 1.0
Content-Type: text/plain
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


>
>>> 
>>>> but even with the names for every regular case the order was
>>>> always strict. We always expect these to be ordered.
>>> 
>>> I'm not sure who the "we" is you're referring to, but this expectation
>>
>> DT maintainers. Previously only Rob, now "we".
>
> AFAIK, kernel maintainers enforces the rule of the linux kernel.
> These rules are part of the kernel itself, so they can be discussed and
> clarified if needed, like checkpatch.pl or the code of conduct.
>
> It does not seems to be the case here and, maybe, it is partly the problem.
>

I take that back, you have written the requirement and stated that
pattern name matching is discouraged in 2020.

https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=73f76a41c4ed7def5dc2ec7c33c7e9f94e601a20

Though the reason why this became a requirement and why name matching is
discouraged is not entirely clear, nor that it is well known in the
community considering how heavily it is still used.
