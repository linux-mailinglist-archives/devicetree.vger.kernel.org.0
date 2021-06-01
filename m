Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 70B99397802
	for <lists+devicetree@lfdr.de>; Tue,  1 Jun 2021 18:26:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233064AbhFAQ2Y (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 1 Jun 2021 12:28:24 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53310 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232490AbhFAQ2Y (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 1 Jun 2021 12:28:24 -0400
Received: from mail-wr1-x42a.google.com (mail-wr1-x42a.google.com [IPv6:2a00:1450:4864:20::42a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AC7BDC061574
        for <devicetree@vger.kernel.org>; Tue,  1 Jun 2021 09:26:42 -0700 (PDT)
Received: by mail-wr1-x42a.google.com with SMTP id c3so14971421wrp.8
        for <devicetree@vger.kernel.org>; Tue, 01 Jun 2021 09:26:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to;
        bh=3qOQncXWcmTagrRnUN7xPwpRuDjJHMU3NDeiXjxsC04=;
        b=Q4UQpith9NJSzA3Ospei0Bw1mvGVa0w89R29XVu0wKwJvBGcEVnUtMRn8e9xMKE0AK
         2Ap4Q8kWdiQ6iBjPAwFPvOk4vIpQVkbGQpHo0yF34mcg+gbyZxY4Q4TmiTFxKGhdjliu
         gpHMHprjHINFQeXihuzRgGaHRwwJab9S7xk0l9HRhEKybgx20hxnks8hG4P0MjMMgonv
         /Fo607iUYWugl6neBdvC0KuG2IPQDnttRH/iGRaLS3/7cNkkrpwickMj0WLfejmbQOLX
         l/G6ODram+H62iUiXJ25jEtgl1LZnmc0136U8jBZdaxOGtNVRZmeKJiN3Woh1onCPEKF
         HztA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=3qOQncXWcmTagrRnUN7xPwpRuDjJHMU3NDeiXjxsC04=;
        b=mIdH6VmIAv4bq+8R9mrBE4NxqWbYhKokbnxMlpzH5C/CBWbkVqGWj2ebl09/1i6KyW
         WiI76y0J+U+ouQ6OtGb38eFmOetDbKfpdl0ZhxJfDP7+Xw7vmjOMsr3cqK4tkJe4la14
         Y2fWkXk5luY3fCiU7Yp/c4vm1r6G0h1jKEo1JoZT/9WRQB+u9Iq64AX4hBIJHy50CjGC
         1dntVJ3waD7NUr6qjz1obkuTE1wJzyJOhDe/39PXPn3nURrDlPcAYPeczfpnliAb45E2
         royUwG0QlsQ7macNg+6nsQ9hqFZHY4RX6lCmE0zesxBWqPG5uabaMTQ8lvRQDgSfobUg
         fKgg==
X-Gm-Message-State: AOAM532tEMVVWSHwpMXNHC1umD7gWsrPzz/bXpmcC6Fn92/5wKpGnpDd
        29yaUMPEXOt9apumGxD2MXfzPw==
X-Google-Smtp-Source: ABdhPJzz/8Ro1pa/8xroirV4pUUj3sHXXH1wBBHnxdukJhb7RDxwxT+OyE6j+YMnWmfO587jWBJfqw==
X-Received: by 2002:a05:6000:50d:: with SMTP id a13mr27799191wrf.130.1622564801308;
        Tue, 01 Jun 2021 09:26:41 -0700 (PDT)
Received: from dell ([91.110.221.249])
        by smtp.gmail.com with ESMTPSA id h15sm10735wmq.1.2021.06.01.09.26.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 01 Jun 2021 09:26:40 -0700 (PDT)
Date:   Tue, 1 Jun 2021 17:26:38 +0100
From:   Lee Jones <lee.jones@linaro.org>
To:     Alexandre Torgue <alexandre.torgue@foss.st.com>
Cc:     arnd@arndb.de, robh+dt@kernel.org, Marek Vasut <marex@denx.de>,
        jagan@amarulasolutions.com,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
        Marcin Sloniewski <marcin.sloniewski@gmail.com>,
        Ahmad Fatoum <a.fatoum@pengutronix.de>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-stm32@st-md-mailman.stormreply.com,
        linux-kernel@vger.kernel.org, kuba@kernel.org
Subject: Re: [PATCH 04/13] dt-bindings: mfd: stm32-timers: remove
 #address/size cells from required properties
Message-ID: <20210601162638.GF2165650@dell>
References: <20210415101037.1465-1-alexandre.torgue@foss.st.com>
 <20210415101037.1465-5-alexandre.torgue@foss.st.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20210415101037.1465-5-alexandre.torgue@foss.st.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, 15 Apr 2021, Alexandre Torgue wrote:

> address-cells and size-cells can't be declared as "required" properties
> as they are not needed if subnodes don't have a "reg" entry.
> 
> Signed-off-by: Alexandre Torgue <alexandre.torgue@foss.st.com>

Applied, thanks.

-- 
Lee Jones [李琼斯]
Senior Technical Lead - Developer Services
Linaro.org │ Open source software for Arm SoCs
Follow Linaro: Facebook | Twitter | Blog
