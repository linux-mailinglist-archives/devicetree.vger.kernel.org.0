Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0344962843E
	for <lists+devicetree@lfdr.de>; Mon, 14 Nov 2022 16:41:06 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237021AbiKNPlE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 14 Nov 2022 10:41:04 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33410 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236438AbiKNPlD (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 14 Nov 2022 10:41:03 -0500
Received: from mail-wm1-x335.google.com (mail-wm1-x335.google.com [IPv6:2a00:1450:4864:20::335])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 05E0C248C6
        for <devicetree@vger.kernel.org>; Mon, 14 Nov 2022 07:41:01 -0800 (PST)
Received: by mail-wm1-x335.google.com with SMTP id v124-20020a1cac82000000b003cf7a4ea2caso10966148wme.5
        for <devicetree@vger.kernel.org>; Mon, 14 Nov 2022 07:41:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=C1S/Jfq9a/+oqHK8oEdrDlOiTv1YiUCRRBFftraDcss=;
        b=k7QESSB9Y9ODkSyoUzsKzxIGlpzATcqoO8++5dUFVsNoF5oUbYBKjFXw/zY2W+0H5A
         F0o/ubIAcRfuHE9yZjFeIuLpXDQ8/nfLEPjVMWVweGtMAzfwXPwuFrRtCWVhBrVvQMw9
         krxCAQpauIET/L5RH8uC+BovvZuEx+2hnn9NlCQKOWoNFQi/D4L3KH32lqAZbEiFkU6S
         em+ztKH/K5TQIhA/vYJzEi6xHVOmL4h/RVgZG/ywrRiBGUcAB/s9MRVh+5srLR5DZf8l
         XLZZjM75v3bXK8eF5wb175u22zSrmi062pTTdWQkWwQs6C2pbSdbhP7QqfZrqjUd2hOg
         gYuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=C1S/Jfq9a/+oqHK8oEdrDlOiTv1YiUCRRBFftraDcss=;
        b=bOFpwmtU2wkIbN9hvYNgnZchSBe5pGL67d+zRpnwiZYmbtBzY9i/Gw49ZlKomjlOjz
         4Pfbw1glCfSL+ceRWCbZdwmjuSlH8IOMzWkIJDryhKH5qhx0soy+alYojPIbG9+HkVEz
         kOxYp/2c8FfwvkZjTkSTxW7d9KbmMOrKZFZ4rDMUCY6CMFCvPb25x1hVjt2YpprmFKtS
         Ieft+Fn9dZdw+RAvRp6RsJXleywPK9HOMJoe+1ryOBDxiLmLBOMSyln8hPhZQArAZAY5
         LJeM7V84LJXMHQvOdAmXgj8ZnnOsg8x3nAfKVxnm4f7+971FUh6YJKmXOPiyHlKh5jYu
         UcKg==
X-Gm-Message-State: ANoB5plPw2LAEvaKWzJBd91v8jAOrkJAYza7eSkhsZxyv0RIx52qOsh8
        b7MPD4IiLiezDKwn9iQjrjqvoA==
X-Google-Smtp-Source: AA0mqf6DME8cgmVAkcTUP9n4+wmGE4tHFsDEqgOeI9l1Uexlq1jJ/V1k5J30DSXTRuIOkLUXBzUDrQ==
X-Received: by 2002:a05:600c:b41:b0:3b3:3256:647 with SMTP id k1-20020a05600c0b4100b003b332560647mr8349557wmr.197.1668440459561;
        Mon, 14 Nov 2022 07:40:59 -0800 (PST)
Received: from Red ([2a01:cb1d:3d5:a100:4a02:2aff:fe07:1efc])
        by smtp.googlemail.com with ESMTPSA id m9-20020a05600c4f4900b003b3307fb98fsm14020978wmq.24.2022.11.14.07.40.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 14 Nov 2022 07:40:59 -0800 (PST)
Date:   Mon, 14 Nov 2022 16:40:55 +0100
From:   Corentin LABBE <clabbe@baylibre.com>
To:     pavel@ucw.cz, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, linus.walleij@linaro.org
Cc:     devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-leds@vger.kernel.org, Rob Herring <robh@kernel.org>
Subject: Re: [PATCH v3 1/2] dt-bindings: leds: common: add disk write/read
 and usb-host/usb-gadget
Message-ID: <Y3Jhh6gxTL0AGzmY@Red>
References: <20221028064141.2171405-1-clabbe@baylibre.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20221028064141.2171405-1-clabbe@baylibre.com>
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Le Fri, Oct 28, 2022 at 06:41:40AM +0000, Corentin Labbe a écrit :
> The triggers enum misses 3 cases used by gemini DT.
> usb-host was added via commit 0cfbd328d60f ("usb: Add LED triggers for USB activity")
> so we add also as valid trigger usb-gadget which was added along in this
> commit.
> 
> disk-read/disk-write were added by commit d1ed7c558612 ("leds: Extends disk trigger for reads and writes")
> Reviewed-by: Linus Walleij <linus.walleij@linaro.org>
> Acked-by: Rob Herring <robh@kernel.org>
> 
> Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
> ---

Hello

Gentle ping

Regards
