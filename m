Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 443D756F96E
	for <lists+devicetree@lfdr.de>; Mon, 11 Jul 2022 10:59:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231135AbiGKI7P (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 11 Jul 2022 04:59:15 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39882 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230309AbiGKI7A (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 11 Jul 2022 04:59:00 -0400
Received: from mail-yb1-xb29.google.com (mail-yb1-xb29.google.com [IPv6:2607:f8b0:4864:20::b29])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2EE6F2AD
        for <devicetree@vger.kernel.org>; Mon, 11 Jul 2022 01:58:59 -0700 (PDT)
Received: by mail-yb1-xb29.google.com with SMTP id 136so7672365ybl.5
        for <devicetree@vger.kernel.org>; Mon, 11 Jul 2022 01:58:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=3YbR695TAkYYv9ibYrseADeKNiAp29rpTVuxO2dXGuQ=;
        b=jWghaS/DFgsiSnUJHftdqdnrg2WIrICSKOBwr4Fg3a+wWb3TpflG1i2PZAiMlU/4E6
         D74gSkN/HeXD6YCpd6mWX+fZtMleIcZLyxQ40Y+L2baaDX13Ukt0/3+1buEnW0M5qfQn
         TMyb1hibKJOaSwl8eKQX/bn7yFsHcz87p/M6WMHdIjptcrEfJ9fOc9BkRFxQhOF7TDW/
         dAqTBn28uc/ogvDdtvHmyGk9rLz54ZUeIrmHS0btk5UKzVpZXGKhqxwiFslxuHjAVQjj
         oIw8mcKkXz5RyC5yHSMNetMLT85DRirHzIHz86+OySeuRJ/PO9Bgvqk1QcTF1VZmci7U
         3TGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=3YbR695TAkYYv9ibYrseADeKNiAp29rpTVuxO2dXGuQ=;
        b=QOZcupCthkbK+RvbG6hHag5RtGBIB074MHYQ3QGiWpqz0dJzfd+NEYGmtZquOeZlTh
         68Nl/bsviP3ggDroIs9dJZM7kIJf4m1YWF9wVCfrn9UM0SwE67we0mkfiHtQl13cIKC2
         KhgLYwxZfme6BrVkdGKleiYhe8/WU8dF7E4z9+uzmMVwNPp5VrsV3GENB+nbpN/VcYes
         cBF2Mqcd6BpVPneMq6JkJNlFmGGpW4NunSbZMbaQ+5h8xBomD/VLKVs2VNHyKFu1Ejdz
         j7sJdKIhow3l+OyLqDv+MH07y98aoZoBMqx5U1kPT5fQCunFKcbMKzMM8xAWjRvoRtgo
         ku1Q==
X-Gm-Message-State: AJIora9mYSMvn9pc0MxIi+Z/g1ec0ViIVywPk913Z20agRuU+7naedGM
        AJbGwcnHhpebxIQkvSC81ijSFQVmfDSYM1X+Y6WFRA==
X-Google-Smtp-Source: AGRyM1vOozNp4mqN9zKhfAC9fc+51TZ/hNdBOP7sE0QplBqhONxtHw1MITMLtXnUVjs+zSTcRrksncX3k/+I0ztVTOo=
X-Received: by 2002:a25:fe04:0:b0:66e:1f8a:8e89 with SMTP id
 k4-20020a25fe04000000b0066e1f8a8e89mr16564699ybe.514.1657529938451; Mon, 11
 Jul 2022 01:58:58 -0700 (PDT)
MIME-Version: 1.0
References: <20220626021148.56740-1-samuel@sholland.org> <20220626021148.56740-2-samuel@sholland.org>
In-Reply-To: <20220626021148.56740-2-samuel@sholland.org>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Mon, 11 Jul 2022 10:58:47 +0200
Message-ID: <CACRpkdY65q12sjDwH0UOOAa8GkBO--EDTsKrnEwn8NoTYTgtPQ@mail.gmail.com>
Subject: Re: [PATCH 1/6] dt-bindings: pinctrl: Add compatibles for Allwinner D1/D1s
To:     Samuel Holland <samuel@sholland.org>
Cc:     Chen-Yu Tsai <wens@csie.org>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Maxime Ripard <mripard@kernel.org>, Ondrej Jirman <x@xff.cz>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-gpio@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-sunxi@lists.linux.dev
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sun, Jun 26, 2022 at 4:11 AM Samuel Holland <samuel@sholland.org> wrote:

> D1 contains a pin controller similar to previous SoCs, but with some
> register layout changes. It includes 6 interrupt-capable pin banks.
>
> D1s is a low pin count version of the D1 SoC, with some pins omitted.
> The remaining pins have the same function assignments as D1.
>
> Signed-off-by: Samuel Holland <samuel@sholland.org>

All 6 patches applied to the pinctrl tree, the last patch 6/6
required some fuzzing so please check the result!

Yours,
Linus Walleij
