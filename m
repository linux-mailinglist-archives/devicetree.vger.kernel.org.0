Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 053542C6180
	for <lists+devicetree@lfdr.de>; Fri, 27 Nov 2020 10:20:22 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726562AbgK0JTI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 27 Nov 2020 04:19:08 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41718 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725854AbgK0JTH (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 27 Nov 2020 04:19:07 -0500
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com [IPv6:2a00:1450:4864:20::444])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8282BC0613D1
        for <devicetree@vger.kernel.org>; Fri, 27 Nov 2020 01:19:07 -0800 (PST)
Received: by mail-wr1-x444.google.com with SMTP id r3so4827281wrt.2
        for <devicetree@vger.kernel.org>; Fri, 27 Nov 2020 01:19:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to;
        bh=A26ZMmYnqkQXeQq0wV1chPfAYo0PqBfot7Ttx2A33j0=;
        b=PJ5t0QkEUJ6HGtDPjdNn6QEUcJKqNE1o/s0FcKd6DRVzCfLUZCaZlrwZP5UJp6No3g
         zyk/3ySomDjKyXMbfAsPykWcIm+BJweQaTAWxw33FVJvGhqcNM/3tm0qyPkv8Q9BwDtu
         Kl9LhaA1f9QeaZ0tlYpLqsRRmnDLpXEe8f8rL8lAVTrCHFSpO8U9iTeQuQc6IKgInHDE
         BgyvMySrV4qIZjxd6Z5Qt3nfR5oEzqBNjZTbqugiogNtXH3mEtntDwolgaPAAFAYHak4
         owpyQrkYv+g3vpSB+eeVrrWjWt/Gd3eARpiXtgRsQXtB4EQm7lTymi1slaedDr1fKkR0
         urEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=A26ZMmYnqkQXeQq0wV1chPfAYo0PqBfot7Ttx2A33j0=;
        b=KOKDcDCcQjg8Nm7SpAgXCU2oe/u8016y6BJmC8F9kuaULt9AOQl3iPB8GtDbzyVWca
         cmPO36x6KGwimD2XcdxfTmpPdf6BnLH1z6P6WNIcoSlc0JurNSNCLHzmHqVe8PBtQQMQ
         3UKvpR8v9BJ/GBeEg0136S6q4x+Xy8E/uYe4SNkduDC8wicuJiIzLQ+bNC++bRcfUlnz
         ccWrRZRZ3nIJ6XaJGisVjtVbS0qOqJFzg+EaUw3NvCYUEZ0oD2IQjO1j1XHhVXSWHXWR
         31Cqgq1wkoktcvPNVGtaK0M9k4uucVOE03OpBvW7T4EIgJ55AgQnS0zXIc7P5I3QUNlN
         FDTQ==
X-Gm-Message-State: AOAM531sGTdruvWt4wcEF1OD5Nzh85iV8FIfwg5MKwHhMP4ZISl72wFZ
        l9bXFhdaWSViRYoNtm9DWfX4Qw==
X-Google-Smtp-Source: ABdhPJyNkVvornnZnvqN1e7jEL7pv2co1g2LAVA5Q9nUQ5XYB9S3q5i2Ix85OBANIDvIOoAzw3mnYQ==
X-Received: by 2002:a5d:5183:: with SMTP id k3mr9544586wrv.62.1606468746292;
        Fri, 27 Nov 2020 01:19:06 -0800 (PST)
Received: from dell ([91.110.221.235])
        by smtp.gmail.com with ESMTPSA id y130sm2445113wmc.22.2020.11.27.01.19.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Nov 2020 01:19:05 -0800 (PST)
Date:   Fri, 27 Nov 2020 09:19:03 +0000
From:   Lee Jones <lee.jones@linaro.org>
To:     Hsin-Hsiung Wang <hsin-hsiung.wang@mediatek.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org,
        srv_heupstream@mediatek.com
Subject: Re: [PATCH v3 7/8] regulator: mt6359: Add support for MT6359P
 regulator
Message-ID: <20201127091903.GN2455276@dell>
References: <1606103290-15034-1-git-send-email-hsin-hsiung.wang@mediatek.com>
 <1606103290-15034-8-git-send-email-hsin-hsiung.wang@mediatek.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <1606103290-15034-8-git-send-email-hsin-hsiung.wang@mediatek.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, 23 Nov 2020, Hsin-Hsiung Wang wrote:

> The MT6359P is a eco version for MT6359 regulator.
> We add support based on MT6359 regulator driver.
> 
> Signed-off-by: Hsin-Hsiung Wang <hsin-hsiung.wang@mediatek.com>
> ---
>  drivers/regulator/mt6359-regulator.c       | 413 ++++++++++++++++++++-
>  include/linux/mfd/mt6359p/registers.h      | 249 +++++++++++++
>  include/linux/regulator/mt6359-regulator.h |   1 +
>  3 files changed, 658 insertions(+), 5 deletions(-)
>  create mode 100644 include/linux/mfd/mt6359p/registers.h

For my own reference (apply this as-is to your sign-off block):

  Acked-for-MFD-by: Lee Jones <lee.jones@linaro.org>

-- 
Lee Jones [李琼斯]
Senior Technical Lead - Developer Services
Linaro.org │ Open source software for Arm SoCs
Follow Linaro: Facebook | Twitter | Blog
