Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 52777507916
	for <lists+devicetree@lfdr.de>; Tue, 19 Apr 2022 20:42:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1353170AbiDSSgx (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 19 Apr 2022 14:36:53 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37902 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1357200AbiDSSgq (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 19 Apr 2022 14:36:46 -0400
Received: from mail-pf1-x434.google.com (mail-pf1-x434.google.com [IPv6:2607:f8b0:4864:20::434])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C2E123EF19
        for <devicetree@vger.kernel.org>; Tue, 19 Apr 2022 11:28:02 -0700 (PDT)
Received: by mail-pf1-x434.google.com with SMTP id bo5so9130337pfb.4
        for <devicetree@vger.kernel.org>; Tue, 19 Apr 2022 11:28:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=G7sxBu8NLQ0QBymiox7EyRJYX62RWG7DDaDSIl4UHRE=;
        b=eyT4PCQx7d/GNZNdY7lDAskqNk9o488Koi5GXnMvWlBXJYIaruYAZZgLSez068yYrg
         D/0fs1F7L3nazKn3U+naM97RNHpNWhHoURXlT5tOXRU/uKnDtbJ6E6QX6gX8qmXnaZqC
         ZhiH1rodDWEUvy2dj8KPj2iEwaq+iwf18CHX3U3Sk+uqLuLGV4/vTiav+MLSOJc3tnl5
         1DXykVg+0eChyMwF1ykUuPqgHshs7tdy5hHAiQ8vm0lbaG0amoW9e9nEGEVONeuWOtHU
         C3J8UM18pR+64U5g76iUsq2noCcO4LwGQJRvc8qyTP1Wg6USrNdqL4irZ+k72N9fbSRj
         rhmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=G7sxBu8NLQ0QBymiox7EyRJYX62RWG7DDaDSIl4UHRE=;
        b=eFwvTjMF1A6gE9W9Ko8XzRj3glSU5RzoQbdJ/gUo6eGalbTKlpftMZk8QALd4lUc1F
         QhZS1MXWUFUDY5MzTyCM0rgi5sjC6Qf24vC2hkL2zKVktQryYPDgJuJGp1lSvSq6xC4V
         zxkoDqFpnXW2dG2fi4iA6sMG3+46nLwyOJHheQIg0XOfzzw8oPR1m679e6qnt7VLWXRI
         LzZ9hVT0ugKSi6RhXndeczJ4RTQ5GLEHAMk+JVwAq4mX/chlxeSVRzWWqJeRBXBXlDDo
         B4V8tTTUu0PZP3IQEtv/avxfnFrQ3XstdSKcVziUy4QxUzh89fayfphINvs1FVhCX7Yz
         IdwQ==
X-Gm-Message-State: AOAM53146y8dHo/Sy9ftqmQUvYr/BZ+dmyw60V8lp0GWlW4oL4jPANu9
        2LgMenok+NosYEQ2Q86ojYo=
X-Google-Smtp-Source: ABdhPJwazMdu97grL1uCLsakuD5lNxBXu9yHP6DAmVHC61oPPm8JHMIpK1F3UeF7tICRnCtPSIdnKQ==
X-Received: by 2002:a63:5317:0:b0:399:58e9:882b with SMTP id h23-20020a635317000000b0039958e9882bmr15788280pgb.306.1650392882040;
        Tue, 19 Apr 2022 11:28:02 -0700 (PDT)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
        by smtp.gmail.com with ESMTPSA id s13-20020aa78d4d000000b0050ab610d9fcsm1148056pfe.33.2022.04.19.11.28.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 19 Apr 2022 11:28:01 -0700 (PDT)
From:   Florian Fainelli <f.fainelli@gmail.com>
To:     bcm-kernel-feedback-list@broadcom.com,
        Stefan Wahren <stefan.wahren@i2se.com>,
        Ray Jui <rjui@broadcom.com>,
        Scott Branden <sbranden@broadcom.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc:     Nicolas Saenz Julienne <nsaenz@kernel.org>,
        Linus Walleij <linus.walleij@linaro.org>,
        devicetree@vger.kernel.org, linux-rpi-kernel@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org,
        Phil Elwell <phil@raspberrypi.com>
Subject: Re: [PATCH 1/6] ARM: dts: bcm2835-rpi-zero-w: Fix GPIO line name for Wifi/BT
Date:   Tue, 19 Apr 2022 11:27:59 -0700
Message-Id: <20220419182759.176089-1-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220411200143.4876-2-stefan.wahren@i2se.com>
References: <20220411200143.4876-1-stefan.wahren@i2se.com> <20220411200143.4876-2-stefan.wahren@i2se.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, 11 Apr 2022 22:01:38 +0200, Stefan Wahren <stefan.wahren@i2se.com> wrote:
> From: Phil Elwell <phil@raspberrypi.com>
> 
> The GPIOs 30 to 39 are connected to the Cypress CYW43438 (Wifi/BT).
> So fix the GPIO line names accordingly.
> 
> Fixes: 2c7c040c73e9 ("ARM: dts: bcm2835: Add Raspberry Pi Zero W")
> Signed-off-by: Phil Elwell <phil@raspberrypi.com>
> Signed-off-by: Stefan Wahren <stefan.wahren@i2se.com>
> ---

Applied to https://github.com/Broadcom/stblinux/commits/devicetree/next, thanks!
--
Florian
