Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5927A3A717B
	for <lists+devicetree@lfdr.de>; Mon, 14 Jun 2021 23:41:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232666AbhFNVnM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 14 Jun 2021 17:43:12 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38462 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232630AbhFNVnL (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 14 Jun 2021 17:43:11 -0400
Received: from mail-wm1-x32d.google.com (mail-wm1-x32d.google.com [IPv6:2a00:1450:4864:20::32d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 39088C061574
        for <devicetree@vger.kernel.org>; Mon, 14 Jun 2021 14:40:52 -0700 (PDT)
Received: by mail-wm1-x32d.google.com with SMTP id s70-20020a1ca9490000b02901a589651424so606974wme.0
        for <devicetree@vger.kernel.org>; Mon, 14 Jun 2021 14:40:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to;
        bh=Z21EI5hlHO2FdftCAK4e0yVv2XOKsZo600PaVBZ/a00=;
        b=ObiocvvAMZNg7yKn8rkioKfb/QDvHvd8PuNp8WVDyZIk/9wyvKvY4jh7QMQN/xMIiE
         j9l+My26LPg1qpgPMwU9ylX5FFwu7eYgJJ9RgDKcwan49rea/aiHfAFRHsrQxSyRn1P0
         cc3bWjNVy9xdCDDE5Zk66A1oonFWpwsfxc4/WtdH5ArLWta3srhBxsZFQ9ZmRxRgQJ/s
         4XZoPNz0iAfqDHmsUY+tHs7RXpIGl30G+052NfOqMDaQdH8ZYjqQsJ4kE0Q5dAr2Oz2A
         UJtGzgyUH5gYokaFRKqf3ldUZp0WHwZIdFiLiUcKf9SscyyHni8PSDuscK/kKR1+Nnu6
         tPKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=Z21EI5hlHO2FdftCAK4e0yVv2XOKsZo600PaVBZ/a00=;
        b=hNr46rtDy7G7W+CQdlAh15f2frOyObS8edt/lYJFFCRMMBRozMOSK4XLXpCCmYTlFS
         18sptM9s4cHUwxg5eov+GUfGcRvCSVHdDo2/aIGYVynPI6ZlE9HFSZGWacOplBOHGBgl
         Fz/bfnaPvGKWQbvDFmg6CvoliGlCF02r5qwA6agLIUmUTbUsVmptk0jcJ4TU3+RCOV9a
         bjPNi7KlWtSmsL0o0RPddd43T1gOFfAV5dtCzkZchhmHR6Z0NDTztl9h/78WAhxDEyA7
         VEt2RlnfUrFRKQjO/jg9XVh9V3vuJe/bnPMtSvUl7zQsgMsmUily/htCAND0kVVXwM67
         o3vg==
X-Gm-Message-State: AOAM532UgGfjSbU35zlSECqjMckgo/+ZAGhGac14DGPunSkDOxBdHEdt
        4j+xBT9oIBg23nYplHvbr601xPRpLwvEsA==
X-Google-Smtp-Source: ABdhPJyS+xO6yBb4PipX9VNgYqe4QwsaPTyUlieGHj2oegyAI79aepEXvbOTh9nArgn6YGl+hJiU6A==
X-Received: by 2002:a05:600c:2256:: with SMTP id a22mr1222729wmm.113.1623706850778;
        Mon, 14 Jun 2021 14:40:50 -0700 (PDT)
Received: from dell ([91.110.221.200])
        by smtp.gmail.com with ESMTPSA id r6sm16878726wrt.21.2021.06.14.14.40.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 14 Jun 2021 14:40:50 -0700 (PDT)
Date:   Mon, 14 Jun 2021 22:40:48 +0100
From:   Lee Jones <lee.jones@linaro.org>
To:     Min Li <min.li.xe@renesas.com>
Cc:     "sameo@linux.intel.com" <sameo@linux.intel.com>,
        "grant.likely@linaro.org" <grant.likely@linaro.org>,
        "robh+dt@kernel.org" <robh+dt@kernel.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>
Subject: Re: [PATCH mfd v2] mfd: Add Renesas Synchronization Management Unit
 (SMU) support
Message-ID: <20210614214048.GA5782@dell>
References: <1622652224-19103-1-git-send-email-min.li.xe@renesas.com>
 <OS3PR01MB65933BCAA4614F104DC8CAEDBA319@OS3PR01MB6593.jpnprd01.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <OS3PR01MB65933BCAA4614F104DC8CAEDBA319@OS3PR01MB6593.jpnprd01.prod.outlook.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, 14 Jun 2021, Min Li wrote:

> Hi Lee
> 
> Any chance that you can review this change this week?

I returned back from vacation today.

Hopefully I'll be able to clear the back-log by the end of the week.

Unfortunately, since I go through my mail in chronological order
(oldest to newest) pinging threads like this just puts reviews to the
bottom of the pile.

-- 
Lee Jones [李琼斯]
Senior Technical Lead - Developer Services
Linaro.org │ Open source software for Arm SoCs
Follow Linaro: Facebook | Twitter | Blog
