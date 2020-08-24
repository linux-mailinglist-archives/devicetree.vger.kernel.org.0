Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E59CC24F386
	for <lists+devicetree@lfdr.de>; Mon, 24 Aug 2020 10:03:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726041AbgHXIDp (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 24 Aug 2020 04:03:45 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56932 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725962AbgHXIDc (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 24 Aug 2020 04:03:32 -0400
Received: from mail-wm1-x342.google.com (mail-wm1-x342.google.com [IPv6:2a00:1450:4864:20::342])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D8CE9C061573
        for <devicetree@vger.kernel.org>; Mon, 24 Aug 2020 01:03:31 -0700 (PDT)
Received: by mail-wm1-x342.google.com with SMTP id b66so5002843wmb.1
        for <devicetree@vger.kernel.org>; Mon, 24 Aug 2020 01:03:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to;
        bh=wKJc5ULgCn42W6AwcfwI3Hdq2Fzfi0fveyMXzJJAKrY=;
        b=gbxz9yBDQHOwuGzJ5Qk5ghgQOOxR0Ouhkgfb1VS6Uy7LYzP/FmADjdWs0Uiu61H7fo
         VygFzNWJkzDiacnQLMZm22o/zImr1E+Bd2QOuFbGk3SzsE+TuFHVMFlfsPmShJ85VzRB
         s4x1E0HGraM+JW8/E7nc22zQX1anC2On4RhlpHL2+3wiUQDq2GUE9kRxPTjMPSJ3wf/b
         1O9H8OVlKt4ULaMWEjMmM9DhPXCucHeuzX0J7FyitQDaEy8FBXBzv5qtqZrdV3ZhI+L7
         KtookbD7tlILe2RYjCSNm3oPlyFK0zHfJtxy/VgE0nR3dTGM3gra0CZP9SpJ4dR8SdfA
         CapQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=wKJc5ULgCn42W6AwcfwI3Hdq2Fzfi0fveyMXzJJAKrY=;
        b=Fl2RpAccCUOWn8VWa7zPOdVbMEVTXS5vXONvfwfy7vV9z/Tf36uxbDj5gzqpstRQRd
         8wf0U7Ym29qhCMJ7dXXCQPmj5LttpDMWQI6QHvbAr/7MK6gAmQJmowD4Zio2CACPk+hW
         ZI57qbeeloH0RNOaz8G4UvRz8o1xZFQUG6xJOCHwnLP0D/X87olNnoQ+yMhdpz9rDW+u
         nsr+QYTe+bFM/OVLedmLy0uvFIwRWlvGPl/bb6eAS/nQQ/H0TeXiwT3JkKfn9HcrLy7C
         vP7Im67ksBDxuE5QkHF/X62xeEccFdSFJ+rdquTFeO+qGVqKB8VynE/KIY66K80VZpGH
         idBw==
X-Gm-Message-State: AOAM5328xb7+d4zYMY8BBo4b1mghvQGKHXRuNawEGQspDtLkejnshDaW
        nhagso0pL4krnOr0y8c+UvALDQ==
X-Google-Smtp-Source: ABdhPJxhP4O285cUjTPV8Pjdnaoq8z1UBcqsLgHoqRVsvaIjEIql35jIFj2R9mZ0+oVu8MNCrmEBYw==
X-Received: by 2002:a7b:c448:: with SMTP id l8mr2868949wmi.132.1598256210420;
        Mon, 24 Aug 2020 01:03:30 -0700 (PDT)
Received: from dell ([95.149.164.62])
        by smtp.gmail.com with ESMTPSA id s2sm21533632wrr.55.2020.08.24.01.03.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 24 Aug 2020 01:03:29 -0700 (PDT)
Date:   Mon, 24 Aug 2020 09:03:27 +0100
From:   Lee Jones <lee.jones@linaro.org>
To:     Frank Lee <tiny.windzz@gmail.com>
Cc:     Frank Lee <frank@allwinnertech.com>,
        Rob Herring <robh+dt@kernel.org>,
        Maxime Ripard <mripard@kernel.org>,
        Chen-Yu Tsai <wens@csie.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>, gregory.clement@bootlin.com,
        Thomas Gleixner <tglx@linutronix.de>, jason@lakedaemon.net,
        Marc Zyngier <maz@kernel.org>,
        Srini Kandagatla <srinivas.kandagatla@linaro.org>,
        Linus Walleij <linus.walleij@linaro.org>,
        Vasily Khoruzhick <anarsoul@gmail.com>,
        Zhang Rui <rui.zhang@intel.com>,
        Daniel Lezcano <daniel.lezcano@linaro.org>,
        Amit Kucheria <amit.kucheria@verdurent.com>,
        "p.zabel" <p.zabel@pengutronix.de>,
        Icenowy Zheng <icenowy@aosc.io>,
        =?utf-8?Q?Ond=C5=99ej?= Jirman <megous@megous.com>,
        clabbe@baylibre.com, bage@linutronix.de,
        devicetree <devicetree@vger.kernel.org>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        linux-clk <linux-clk@vger.kernel.org>, linux-i2c@vger.kernel.org,
        linux-gpio <linux-gpio@vger.kernel.org>,
        Linux PM <linux-pm@vger.kernel.org>
Subject: Re: [PATCH v5 00/16] Allwinner A100 Initial support
Message-ID: <20200824080327.GH3248864@dell>
References: <cover.1595572867.git.frank@allwinnertech.com>
 <CAEExFWsvScMgi_Dftfq06HZiF8CFAmym8Z_tgQoHHAfiGxWt0g@mail.gmail.com>
 <CAEExFWuwjmqAh0c3kMLS3Gs6UC2A8TtY-9nJeWxFPRDugtR4pA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAEExFWuwjmqAh0c3kMLS3Gs6UC2A8TtY-9nJeWxFPRDugtR4pA@mail.gmail.com>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, 24 Aug 2020, Frank Lee wrote:

> ping......

"Please don't send content free pings and please allow a reasonable
 time for review.  People get busy, go on holiday, attend conferences
 and so on so unless there is some reason for urgency (like critical
 bug fixes) please allow at least a couple of weeks for review.  If
 there have been review comments then people may be waiting for those
 to be addressed.  Sending content free pings just adds to the mail
 volume (if they are seen at all) and if something has gone wrong
 you'll have to resend the patches anyway so [RESEND]ing with any
 comments addressed is generally a much better approach."

-- 
Lee Jones [李琼斯]
Senior Technical Lead - Developer Services
Linaro.org │ Open source software for Arm SoCs
Follow Linaro: Facebook | Twitter | Blog
