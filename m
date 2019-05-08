Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id E9C55178AC
	for <lists+devicetree@lfdr.de>; Wed,  8 May 2019 13:46:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728209AbfEHLqh (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 8 May 2019 07:46:37 -0400
Received: from mail-wr1-f65.google.com ([209.85.221.65]:44036 "EHLO
        mail-wr1-f65.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727750AbfEHLqg (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 8 May 2019 07:46:36 -0400
Received: by mail-wr1-f65.google.com with SMTP id c5so1554920wrs.11
        for <devicetree@vger.kernel.org>; Wed, 08 May 2019 04:46:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :user-agent;
        bh=lK+3d8MZJN2On8NKOvom0NUSbRl8X6Lpwh3/QgozcSY=;
        b=y0v+w5FIAHTdurnw1cu21WfiHPivffquh0+KrSW6le6nkERrm9NKmrnahP31aohamW
         neHYaTTGIIkmExwmWa+gD3umpWWkchdDSiQy6jOovdx05tUeolkyyQeTVkoR0FNkZ0hH
         PmsZenZyFUPQmT+DXEK/Flf9HkeSOUOKEoGkbmzVU0dlDgCUJ8w8dO9ZzwOeAHJV3lXM
         g8siYiM9erVdB3N0YSEWiyQRV2g0kCgOyLkCkVY12E9Eh+1YfGJQuKUDI7J+isUY7rwW
         PXapOmShKa6kW6agO8zYODBXVUpVAz+pOjy6T5HNDQ7oY9UitqRg6lVidYZULsged7R3
         YQbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to:user-agent;
        bh=lK+3d8MZJN2On8NKOvom0NUSbRl8X6Lpwh3/QgozcSY=;
        b=nB740ppnPl6plOE4qmr5qpPijf3h3mwk95vqub8lQjk921B47LQldBDO1NwpgjQKUW
         SH11fLs3EEc3lu+K35lB2GUIiRl2Plm4gSX4Pdi8CkQV9QljU3RlBJK4yAgPzkefmxzq
         W455Y+yc1hu61nayuYIcHeh/bINcZIH8fwk/jPNMralhwOepYmKrD3rItbF7PoJZTuWb
         bOiKpfZS28db90K3EVmy1rtU291j5llkoIMgF+grAxcSWNpuzEvDR/f5YivWfm/OtKWE
         rxMSavDuZ9FI212hrfFyETEHuSPymIfPjqCl33JfftauQKeI1r4rXTxZZJIiozIkDlYb
         4oLQ==
X-Gm-Message-State: APjAAAXcP1ZWdR2rm9W0K/f3TcbU7LbnrFoezWSArHlqSHaBq5UXuDHn
        AQCKTe9gNBSeGjC57tKhYky8lg==
X-Google-Smtp-Source: APXvYqxKVFGte1Ew/V9TgW7FVFiVCw5/xNDNFvhTQ0pVkzuMo+L/aM3TAKIf67yeB5PnQmk8Wjjc0w==
X-Received: by 2002:adf:fa03:: with SMTP id m3mr4846442wrr.323.1557315995272;
        Wed, 08 May 2019 04:46:35 -0700 (PDT)
Received: from dell ([2.27.167.43])
        by smtp.gmail.com with ESMTPSA id a125sm3450734wmc.47.2019.05.08.04.46.34
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 08 May 2019 04:46:34 -0700 (PDT)
Date:   Wed, 8 May 2019 12:46:33 +0100
From:   Lee Jones <lee.jones@linaro.org>
To:     Dmitry Osipenko <digetx@gmail.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>,
        Laxman Dewangan <ldewangan@nvidia.com>,
        Mallikarjun Kasoju <mkasoju@nvidia.com>,
        Thierry Reding <thierry.reding@gmail.com>,
        Jonathan Hunter <jonathanh@nvidia.com>,
        devicetree@vger.kernel.org, linux-tegra@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH v4 2/6] dt-bindings: mfd: max77620: Add
 system-power-controller property
Message-ID: <20190508114633.GI31645@dell>
References: <20190505154325.30026-1-digetx@gmail.com>
 <20190505154325.30026-3-digetx@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20190505154325.30026-3-digetx@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sun, 05 May 2019, Dmitry Osipenko wrote:

> Document new generic property that designates the PMIC as the system's
> power controller.
> 
> Signed-off-by: Dmitry Osipenko <digetx@gmail.com>

For my own reference:
  Acked-for-MFD-by: Lee Jones <lee.jones@linaro.org>

-- 
Lee Jones [李琼斯]
Linaro Services Technical Lead
Linaro.org │ Open source software for ARM SoCs
Follow Linaro: Facebook | Twitter | Blog
