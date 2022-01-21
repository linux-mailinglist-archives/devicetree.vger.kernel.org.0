Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 08712495C10
	for <lists+devicetree@lfdr.de>; Fri, 21 Jan 2022 09:39:09 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229976AbiAUIjH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 21 Jan 2022 03:39:07 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49842 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229603AbiAUIjG (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 21 Jan 2022 03:39:06 -0500
Received: from mail-wm1-x32a.google.com (mail-wm1-x32a.google.com [IPv6:2a00:1450:4864:20::32a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5B322C06173F
        for <devicetree@vger.kernel.org>; Fri, 21 Jan 2022 00:39:06 -0800 (PST)
Received: by mail-wm1-x32a.google.com with SMTP id n8so16475158wmk.3
        for <devicetree@vger.kernel.org>; Fri, 21 Jan 2022 00:39:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to;
        bh=5WZ6mypcJ2R1wGosAmpXdFhGbAKQVNpR3ybI6dSypA0=;
        b=uQY0mIJW+qAbtFxNL+dj/Sh1kCoe8+m9G/K37p1/XZotpZTwylvIVUhbu4wuiCBPxn
         5WyRpQczzRHfhm59xVpI5/yNi0XMIOASC5sn/Z40bCp87AxAOBpdNfA8tf6R+tun5I1b
         WwVLUTw3p3IVZy3MVpZSV5nm2sGqxMdigzpMZDB3Y+t629XuN51wx8NnbVcM2Ox3Q9Qd
         Mvu5ZIw/xgeZe3oPmm8KlDYZlM/d3q1XFH/BDGKOzcilp2QDD5tcXNBtikBz5kiWAHcA
         J0dhGUB7oagXnXwjkj5k2YyFsrrF/JFZIGpE6Vz+mOJDBoSO5FmSl986Go2p0bs6CXkE
         yVEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=5WZ6mypcJ2R1wGosAmpXdFhGbAKQVNpR3ybI6dSypA0=;
        b=JqdB3nH44P0Fj2jxa/v6NwOAD/Y8vhFIgOa5CMeLEqsuKYNcXZM0B+oj8/Jlwi4IIf
         1nsw/pt4DT1D9zJWmxkB0rzxh9pVz9Y7YD7fbMLeJsuTEgW0Wa+LOxCXXhYgP6Bfa2PT
         oYkpiiRjA6LCf6YFRXfRK81nzXlUm4rfrmeXrjn92m00QTZtU8joU5pQqs1s6gZBJ9r5
         sRSlor/LOAIakKkzE0Huf1sLq5+G8sR/3n4Hr/V/jTcH7mKuUBzHFgF3WrolpvtvAJrk
         unDsynpJxXuHQIrgk+4djbp0XgEhgSVF8bGz+I658jw3T7cpUw8ERvsTbsJ0jng20o9u
         60tw==
X-Gm-Message-State: AOAM530ONY0JZg1AUUGN3uX6AtyeTPyFy8PteWRdOT6+iSVLQSyemwfG
        cualjmumGCoGJV+FcZP4OLatnw==
X-Google-Smtp-Source: ABdhPJyN3vNmCddqfvDMAzeF+N2ym9YGaiVGex/2JkuoDu+0WMpnuPQz3SxAAYWHxCKgEFIlNEGkFA==
X-Received: by 2002:adf:fd43:: with SMTP id h3mr2862159wrs.341.1642754344867;
        Fri, 21 Jan 2022 00:39:04 -0800 (PST)
Received: from google.com (cpc106310-bagu17-2-0-cust853.1-3.cable.virginm.net. [86.15.223.86])
        by smtp.gmail.com with ESMTPSA id d11sm6351991wri.65.2022.01.21.00.39.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 Jan 2022 00:39:04 -0800 (PST)
Date:   Fri, 21 Jan 2022 08:39:02 +0000
From:   Lee Jones <lee.jones@linaro.org>
To:     Rob Herring <robh@kernel.org>
Cc:     linux-kernel@vger.kernel.org, alsa-devel@alsa-project.org,
        Charles Keepax <ckeepax@opensource.cirrus.com>,
        - <patches@opensource.cirrus.com>,
        Richard Fitzgerald <rf@opensource.cirrus.com>,
        devicetree@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: mfd: cirrus,madera: Fix 'interrupts' in
 example
Message-ID: <YepxJgjQ89PmMUkD@google.com>
References: <20220119015611.2442819-1-robh@kernel.org>
 <Yem5rQ7RFG3bUUxV@robh.at.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <Yem5rQ7RFG3bUUxV@robh.at.kernel.org>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, 20 Jan 2022, Rob Herring wrote:

> On Tue, 18 Jan 2022 19:56:11 -0600, Rob Herring wrote:
> > The 'interrupts' properties takes an irq number, not a phandle, and
> > 'interrupt-parent' isn't needed in examples.
> > ---
> >  Documentation/devicetree/bindings/mfd/cirrus,madera.yaml | 3 +--
> >  1 file changed, 1 insertion(+), 2 deletions(-)
> > 
> 
> Applied (with my Sob added), thanks!

Was going to say ... :)

Please add my Ack too:

Acked-by: Lee Jones <lee.jones@linaro.org>

-- 
Lee Jones [李琼斯]
Principal Technical Lead - Developer Services
Linaro.org │ Open source software for Arm SoCs
Follow Linaro: Facebook | Twitter | Blog
