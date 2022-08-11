Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 95C8E5907D1
	for <lists+devicetree@lfdr.de>; Thu, 11 Aug 2022 23:08:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236574AbiHKVIC (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 11 Aug 2022 17:08:02 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42072 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236418AbiHKVHo (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 11 Aug 2022 17:07:44 -0400
Received: from mail-pj1-x102f.google.com (mail-pj1-x102f.google.com [IPv6:2607:f8b0:4864:20::102f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BA46398C9C
        for <devicetree@vger.kernel.org>; Thu, 11 Aug 2022 14:07:02 -0700 (PDT)
Received: by mail-pj1-x102f.google.com with SMTP id h21-20020a17090aa89500b001f31a61b91dso6519459pjq.4
        for <devicetree@vger.kernel.org>; Thu, 11 Aug 2022 14:07:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=dabbelt-com.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:to:from:cc
         :in-reply-to:subject:date:from:to:cc;
        bh=DVb1z5kbBA1ujjv+xteyYloR7hoULhfIuEQt2vBqJwI=;
        b=pNYmvDNysYVnE4y5bj1U2pPQKZhnczdw1WnTDfu9aNj1/nEdGinf042LPTih/OaFlE
         V4h26+g7TJFlK35T0cyNlZpbfK3Mv0wvUrHmErAczQbmnLnnGvLm0Hdy7G2rbWhAY99N
         7gIzo5l+Uz9j7uJ61XUPc3O1uP3nlXc4IEic3n/xnfDrqfeKp78nopWEkgHXFENdgQ10
         17Pt9pzKV1a38XwgA1ZwNNdJR+L5JYcwLBZhYaCpHBw5j+E4XTkEUtGAaiWdYIMSE6WC
         kcqJCw04jzdvuHwAd4Nr0qPOaknSJVD+aJ8gyRtaul0GqOGYqX8mP6LvqkV3aYssrBIU
         W1QQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:to:from:cc
         :in-reply-to:subject:date:x-gm-message-state:from:to:cc;
        bh=DVb1z5kbBA1ujjv+xteyYloR7hoULhfIuEQt2vBqJwI=;
        b=M0U5jsvgFJnQh2MT4wI8jYBQfB/8C9MYROGcLn3wCfVadxLP/P5NB0s2xfxT/07oem
         Oyg9/HeKXGtMi/INrtulWomP9VCnWE4nHSJoCzJTj9CtswsuD7Io2+facbf2XOCCGFMe
         t4n8Khr/bTLLs21vKi2/QW8otGiujEGKCVFi/6syE345Mf/4sgmMlv3DWtY8rTCphGl+
         ZTBBmdl6i8iru7wbOVjRJelUJ780B+U3PkPO3oBxuWCo7qSOhLBYnb0WY7f5IqwF34oq
         4E7efipQ5WSDrp4d7WcEZWgJQasGK8A9qvFNgJtkedZlSl51f457rt/6pjVJ3tOqZJhD
         ERFA==
X-Gm-Message-State: ACgBeo2CQwUyrWV54ZVAlT8bTlUlFBE6faQbZsyIxtSOhcMf7AweX3aI
        VXjUYeqmR80D9qlTVqtuYkRK+Q==
X-Google-Smtp-Source: AA6agR721/2w32bRDonI7TCGaPitO08W/FFsdL1xIehUgwWUxXReEgXRnl8nsgo7Emy01/s6+rWZSg==
X-Received: by 2002:a17:90a:2b42:b0:1f4:fc9a:be32 with SMTP id y2-20020a17090a2b4200b001f4fc9abe32mr10310074pjc.221.1660252015738;
        Thu, 11 Aug 2022 14:06:55 -0700 (PDT)
Received: from localhost ([50.221.140.186])
        by smtp.gmail.com with ESMTPSA id y22-20020a170902b49600b0016ee4b0bd60sm107352plr.166.2022.08.11.14.06.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Aug 2022 14:06:55 -0700 (PDT)
Date:   Thu, 11 Aug 2022 14:06:55 -0700 (PDT)
X-Google-Original-Date: Thu, 11 Aug 2022 11:35:28 PDT (-0700)
Subject:     Re: [PATCH v1 0/4] Add HiFive Unmatched LEDs
In-Reply-To: <20220717110249.GF14285@duo.ucw.cz>
CC:     emil.renner.berthing@canonical.com, linux-kernel@vger.kernel.org,
        robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        Paul Walmsley <paul.walmsley@sifive.com>,
        plr.vincent@gmail.com, bin.meng@windriver.com,
        aurelien@aurel32.net, w6rz@comcast.net, qiuwenbo@kylinos.com.cn,
        geert@linux-m68k.org, nerdboy@gentoo.org,
        jianlong.huang@starfivetech.com, kettenis@openbsd.org,
        sven.schwermer@disruptive-technologies.com,
        andy.shevchenko@gmail.com, davidlt@rivosinc.com,
        linux-leds@vger.kernel.org, devicetree@vger.kernel.org,
        linux-riscv@lists.infradead.org
From:   Palmer Dabbelt <palmer@dabbelt.com>
To:     pavel@ucw.cz
Message-ID: <mhng-ac0025f9-3572-432f-9e8d-64ef87730b45@palmer-ri-x1c9>
Mime-Version: 1.0 (MHng)
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sun, 17 Jul 2022 04:02:49 PDT (-0700), pavel@ucw.cz wrote:
> Hi!
>
>> This series adds support for the two LEDs on the HiFive Unmatched
>> RISC-V board.
>> 
>> Emil Renner Berthing (4):
>>   leds: pwm-multicolor: Don't show -EPROBE_DEFER as errors
>>   dt-bindings: leds: pwm-multicolor: Add active-low property
>>   leds: pwm-multicolor: Support active-low LEDs
>
> Thank you, applied. Not taking the dts change

I took the DTS change (#4) on riscv/for-next.  Thanks!
