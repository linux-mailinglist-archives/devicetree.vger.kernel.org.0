Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 796656C2F8A
	for <lists+devicetree@lfdr.de>; Tue, 21 Mar 2023 11:52:11 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229473AbjCUKwJ convert rfc822-to-8bit (ORCPT
        <rfc822;lists+devicetree@lfdr.de>); Tue, 21 Mar 2023 06:52:09 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53208 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230435AbjCUKvp (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 21 Mar 2023 06:51:45 -0400
Received: from mail-pl1-f175.google.com (mail-pl1-f175.google.com [209.85.214.175])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D9E8D6A51
        for <devicetree@vger.kernel.org>; Tue, 21 Mar 2023 03:51:43 -0700 (PDT)
Received: by mail-pl1-f175.google.com with SMTP id k2so15548797pll.8
        for <devicetree@vger.kernel.org>; Tue, 21 Mar 2023 03:51:43 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679395903;
        h=content-transfer-encoding:mime-version:message-id:date:references
         :in-reply-to:subject:to:from:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=qswG2/ZBW7aTCsKI3gXz0TlSSCCucbrgwXXHtDYCg7M=;
        b=cL676liOKcSlfgIfzeVOSW4TSf5in3cjhDZZ9RVf1wBVJrdl3pleP19/A4b3M66ayH
         7OH5qqeMz+2u5bTVXxtddLemj/+pW9jGgg4of3lKOPeAOwngK/e+3/SbCPNMyPO5MXiV
         +cXqhIqTb9kHBowN0Nh2DGFgRyZdDbcc26ay2QLn7nugzCii9DeXN3ver9W6YPPP+fXL
         fadorpxMCJuF/1Ii8zjtCoNTIz+g4Iat63vCrNIUFNvMSKfD66Nm0OJU1+bynQQzd/f1
         c+7+V8h7vEOEzzre08afvR0+/cRSmkoKu5CFb15K1Qa9wJtXlHBa4itR1ay4vCQN/0yP
         v5MA==
X-Gm-Message-State: AO0yUKUWdpqFt6APXR9ky1wZQT0Sk0LdnhLiAR6wUtR7EvCsS+EIwq0Q
        tlmsegaHvxwX4gpWK92dnfz+/A==
X-Google-Smtp-Source: AK7set/9jppZ/8fvwHpwmrSJGSCQmBWnfdRTrTdLhtDmmxg2bsp/b1grQinpEEOPKC3NJrRBf73Yag==
X-Received: by 2002:a17:903:3092:b0:1a1:a706:5df3 with SMTP id u18-20020a170903309200b001a1a7065df3mr1614761plc.15.1679395903364;
        Tue, 21 Mar 2023 03:51:43 -0700 (PDT)
Received: from localhost (63-228-113-140.tukw.qwest.net. [63.228.113.140])
        by smtp.gmail.com with ESMTPSA id g2-20020a170902c38200b001960706141fsm8408525plg.149.2023.03.21.03.51.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 21 Mar 2023 03:51:42 -0700 (PDT)
From:   Kevin Hilman <khilman@kernel.org>
To:     Bernhard =?utf-8?Q?Rosenkr=C3=A4nzer?= <bero@baylibre.com>,
        linux-mediatek@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org, linux-serial@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        angelogioacchino.delregno@collabora.com, matthias.bgg@gmail.com,
        gregkh@linuxfoundation.org, krzysztof.kozlowski+dt@linaro.org,
        robh+dt@kernel.org, maz@kernel.org, tglx@linutronix.de
Subject: Re: [PATCH v11 3/3] arm64: dts: mediatek: Initial mt8365-evk support
In-Reply-To: <20230309213501.794764-4-bero@baylibre.com>
References: <20230309213501.794764-1-bero@baylibre.com>
 <20230309213501.794764-4-bero@baylibre.com>
Date:   Tue, 21 Mar 2023 03:51:41 -0700
Message-ID: <7h8rfqwf5u.fsf@baylibre.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8BIT
X-Spam-Status: No, score=-1.7 required=5.0 tests=BAYES_00,
        HEADER_FROM_DIFFERENT_DOMAINS,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,
        SPF_HELO_NONE,SPF_PASS autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Bernhard Rosenkränzer <bero@baylibre.com> writes:

> From: Fabien Parent <fparent@baylibre.com>
>
> This adds minimal support for the Mediatek 8365 SOC and the EVK reference
> board, allowing the board to boot to initramfs with serial port I/O.
>
> Signed-off-by: Fabien Parent <fparent@baylibre.com>
> [bero@baylibre.com: Removed parts depending on drivers that aren't upstream yet, cleanups, add CPU cache layout, add systimer, fix GIC]
> Signed-off-by: Bernhard Rosenkränzer <bero@baylibre.com>
> [aouledameur@baylibre.com: Fix systimer properties]
> Signed-off-by: Amjad Ouled-Ameur <aouledameur@baylibre.com>
> Signed-off-by: Alexandre Mergnat <amergnat@baylibre.com>
> Tested-by: Kevin Hilman <khilman@baylibre.com>
> Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>

Tested (again) and things are working well.  This is the last patch
remaining to be merged.  As soon as this lands in linux-next, I'll add
this board to my KernelCI lab.

Kevin
