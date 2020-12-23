Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 440652E1DF6
	for <lists+devicetree@lfdr.de>; Wed, 23 Dec 2020 16:35:15 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727981AbgLWPdT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 23 Dec 2020 10:33:19 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44720 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727919AbgLWPdT (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 23 Dec 2020 10:33:19 -0500
Received: from mail-wr1-x434.google.com (mail-wr1-x434.google.com [IPv6:2a00:1450:4864:20::434])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 977F2C0611C5
        for <devicetree@vger.kernel.org>; Wed, 23 Dec 2020 07:32:11 -0800 (PST)
Received: by mail-wr1-x434.google.com with SMTP id t16so18993951wra.3
        for <devicetree@vger.kernel.org>; Wed, 23 Dec 2020 07:32:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to;
        bh=APOQ9kG45mY5w5kh29jxRw045BvRYkfndMw6OXmAPYc=;
        b=B7l/cLmNW5nFe2LP/8tSzO4OXAcAES5ZGgOzMbHI1eF8hSt+p5U9cD5Cf05WeZbj0N
         /CBzSxj3QVBJG2RElkrc6CJzWyxLQKs8PtlFquOMuM+lJmbItcyK08CUzogQdk7NZ6v5
         LhFuQq/IDWG0UOzqrAoPgKzSGOkY1hXbN8VYiZX9OFRGaftivZfkXZlRJkwEny5k5c+s
         o5hT0r5OI7JvKRPzNNFLM5lLHZpoFbhA9DIEhqpv6TGwWmt+ULL/6cdvN77FYEt9SqdX
         q6O9wB8Tx+3lqVCwVYOEKOKL+SuBMkkMMo0DqQZWl/xVxZlidjlFY9Io+SS7N55sG8K3
         Pmlg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=APOQ9kG45mY5w5kh29jxRw045BvRYkfndMw6OXmAPYc=;
        b=cZsWPYh1201JCTF6lAGL0EHpQiID8AcfMFEdOBpuFDA5uoJbrqKMirMukxcOuRtW4q
         GPoJVUUgAoQZcUgLaWPEZGKoldPBXF01qN2azZGn0KmLMGDo1vaEXgPFUemG5QnyEXHn
         8rFFHgWtJbCk30qKzG+pbbuYR/NaNEOBG2PGdh+mSrM2sqM7+3HcxOeEKpZeNogrSI3u
         2CIr936thXU8wPT2Xoz1+8tgdoulMjyd0/+z1SsQ3UMGYFTB+6tAWWxhX048j057MRbh
         snjnXQJtnKL3siQlL6mHHNc7Otf0+UEUFO4PBa43uNRx13eQxXbpeqqR90rikwrqPfcc
         6Ujw==
X-Gm-Message-State: AOAM533IS4rf8ELmQA6UzTNG7harNotKF2KK3p2A457ZkYPTEK2VpcQ6
        fPgvww2/BRd94PHIvuc2OfsmEg==
X-Google-Smtp-Source: ABdhPJxjESmTfREO+w1uHhDdJWsQX1lnseZsrrxnSGZa25+eqeg+7LT6wpaBO3gpqmgsTPqBe2MEbQ==
X-Received: by 2002:a5d:558a:: with SMTP id i10mr30371323wrv.363.1608737530253;
        Wed, 23 Dec 2020 07:32:10 -0800 (PST)
Received: from dell ([91.110.221.175])
        by smtp.gmail.com with ESMTPSA id h16sm135166wmb.41.2020.12.23.07.32.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 23 Dec 2020 07:32:09 -0800 (PST)
Date:   Wed, 23 Dec 2020 15:32:07 +0000
From:   Lee Jones <lee.jones@linaro.org>
To:     Timon Baetz <timon.baetz@protonmail.com>
Cc:     Krzysztof Kozlowski <krzk@kernel.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        MyungJoo Ham <myungjoo.ham@samsung.com>,
        Chanwoo Choi <cw00.choi@samsung.com>,
        Sebastian Reichel <sre@kernel.org>,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-samsung-soc@vger.kernel.org, linux-pm@vger.kernel.org,
        ~postmarketos/upstreaming@lists.sr.ht
Subject: Re: [PATCH v4 3/7] mfd: max8997: Add of_compatible to extcon and
 charger mfd_cell
Message-ID: <20201223153207.GA300650@dell>
References: <20201223134221.804943-1-timon.baetz@protonmail.com>
 <20201223134221.804943-3-timon.baetz@protonmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20201223134221.804943-3-timon.baetz@protonmail.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, 23 Dec 2020, Timon Baetz wrote:

> Add of_compatible ("maxim,max8997-muic") to the mfd_cell to have a
> of_node set in the extcon driver.
> 
> Add of_compatible ("maxim,max8997-battery") to the mfd_cell to configure
> the charger driver.
> 
> Signed-off-by: Timon Baetz <timon.baetz@protonmail.com>
> ---
>  drivers/mfd/max8997.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)

Why have you resent this?  It's already applied.

-- 
Lee Jones [李琼斯]
Senior Technical Lead - Developer Services
Linaro.org │ Open source software for Arm SoCs
Follow Linaro: Facebook | Twitter | Blog
