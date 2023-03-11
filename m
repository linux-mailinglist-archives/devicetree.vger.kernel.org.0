Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5E97B6B5F83
	for <lists+devicetree@lfdr.de>; Sat, 11 Mar 2023 19:06:38 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230318AbjCKSGg (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 11 Mar 2023 13:06:36 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37540 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230085AbjCKSGf (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 11 Mar 2023 13:06:35 -0500
Received: from mail-lj1-x22e.google.com (mail-lj1-x22e.google.com [IPv6:2a00:1450:4864:20::22e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 453CA559D6
        for <devicetree@vger.kernel.org>; Sat, 11 Mar 2023 10:06:34 -0800 (PST)
Received: by mail-lj1-x22e.google.com with SMTP id t14so8624172ljd.5
        for <devicetree@vger.kernel.org>; Sat, 11 Mar 2023 10:06:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1678557992;
        h=subject:cc:to:from:user-agent:mime-version:date:in-reply-to
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=0M0jtqvAdY5YLi17aN4+4DCugAJ4kvRlpg9cOQFT1qw=;
        b=juR1FAGmf4K5GTkVnnpvZ1SVCEd2A+PibPP1NraJMjnWruMDkR49sTNp3ebHmsnML0
         AthQtGQNXeGRiFQx14CdVP963XVCkKH9x/Zbwrfi5LtnGosIrKRCGFMM4XsGPZjZKyp6
         19q3Zngb20KZTlU7LWlR5/YmNxXl+/TyUhqzum8zP6Xukt5CyXAjSRt42pCcW61yYEtH
         Djwlgy2Jdp/rDCE3j2mTgVSsYN8+Y4QqOshn9+sO+rkXXB0KiNyzxtfTB5WM5C/A6yu8
         EsaLMFKH7t1F6aqtcjny+GheOTNIW3JsVT7f8lq+DQaJjjT1odq40oeBBb6d1mE+WSkp
         M9ag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678557992;
        h=subject:cc:to:from:user-agent:mime-version:date:in-reply-to
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=0M0jtqvAdY5YLi17aN4+4DCugAJ4kvRlpg9cOQFT1qw=;
        b=vOvR0fyYbZy1LdT4OjZZfx2JIB3TZ2FMR06S9qIku47WWA+zsiSZ0NkTzbwK3dFHNk
         q/bpN0bfcplwWfhdbqxnqPzU3v6BRniwIL/8IVAtp5J4dWAr3+fIjasUeyo/NZeljEHy
         UaRYrWZid9pJZ/LIQ1XZ5TA0CqrQYqn/Pwx10V5EESOFgsIslCVNUZWdZcNR8keO8XCD
         8HQW6s+RpLZwosjugAm0dbLnsbY9+yW/uGkoV2q1cSDnw+58x7fbRio/rQEcHKhg3p5A
         FaCxCZYNcZfRRwut+ZUf/4mUeowqonh4TUDUWvLnp9EemnNxxzMX1wheDpygkg/L+g+x
         +suQ==
X-Gm-Message-State: AO0yUKUtcsOLj0iOzQeCUbe3p/S4JGufgJi8u6eUzSVvnUMvDe8Ixnwb
        mzE5dC3+5Hf/UNNHPMF49Lmsrty87Haz4eG4UCQ=
X-Google-Smtp-Source: AK7set/oQPRUURABKvwjCTSh2a66QZSiYzrB5dUEJoLrRWc5vBNsVteEqjy56DcmiPHmA8x8mIv8gQ==
X-Received: by 2002:a05:651c:205d:b0:295:a8e6:6b15 with SMTP id t29-20020a05651c205d00b00295a8e66b15mr1666992ljo.4.1678557992261;
        Sat, 11 Mar 2023 10:06:32 -0800 (PST)
Received: from letter2.txt (46-138-144-249.dynamic.spd-mgts.ru. [46.138.144.249])
        by smtp.gmail.com with ESMTPSA id n8-20020a2e7208000000b0029597ebacd0sm393529ljc.64.2023.03.11.10.06.31
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 11 Mar 2023 10:06:31 -0800 (PST)
Message-ID: <640cc327.2e0a0220.86cb1.0f38@mx.google.com>
In-Reply-To: <4de11c0b-8e09-c3ef-4180-585662386859@linaro.org>
Date:   Sat, 11 Mar 2023 18:57:18 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
From:   Sergey Lisov <sleirsgoevy@gmail.com>
To:     Ulf Hansson <ulf.hansson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Jaehoon Chung <jh80.chung@samsung.com>
Cc:     linux-mmc@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/2] devicetree: synopsys-dw-mshc-common: add "fifo-access-32bit" property
Content-Type: text/plain; charset=UTF-8
X-Spam-Status: No, score=0.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FORGED_MUA_MOZILLA,
        FREEMAIL_FROM,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=no
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

> Why did you remove the subject? Please keep the mailing process matching
> mailing lists. It messes with mailboxes, filters and reading process.

Sorry about this, I just wanted to get rid of those X-Something headers and
accidentially deleted this one.

> Yeah, Rob acked it so I will let him to judge this. To me it looks like
> unnecessary fragmentation - this looks like compatible specific, not
> board. Anyway you need to resend to fix all the mailing mess.
> 
> Best regards,
> Krzysztof

Should I resend the whole patchset from scratch, as if nothing happened?
