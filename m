Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5EE7442394D
	for <lists+devicetree@lfdr.de>; Wed,  6 Oct 2021 10:01:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237621AbhJFID0 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 6 Oct 2021 04:03:26 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59986 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237628AbhJFICe (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 6 Oct 2021 04:02:34 -0400
Received: from mail-wr1-x42d.google.com (mail-wr1-x42d.google.com [IPv6:2a00:1450:4864:20::42d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9D36BC061753
        for <devicetree@vger.kernel.org>; Wed,  6 Oct 2021 01:00:40 -0700 (PDT)
Received: by mail-wr1-x42d.google.com with SMTP id r7so5999937wrc.10
        for <devicetree@vger.kernel.org>; Wed, 06 Oct 2021 01:00:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to;
        bh=DgBhWLICPv7pMhjFtnPurEZqoS+TS0nmbrNFYc6tYO8=;
        b=opVJgEVsqMMtrebK6OYEi00O4gbEAqVqoNwUJlc3zGQ1v4VscpU2OH+YJcAO5apMmS
         dQiAJZqOGZcz1guEG9BxmS23pxhXi429RTDKy8+iQmlQtxCdQEQ2473IwmDGDaOkPDdR
         hbijKdUQrRDcYD46BK5Ks0nOaOCosDjLs8lkNkbRINjSTTC+FK5hlln9aMM+LW5l8CvF
         enwkBwCqtIXTDrHbGw49v+GebNGxzXNQdGnRd1us+TIoT3TSyPhhfdhNmiQu6KTVLw76
         OmXO0chwBq4GRbhSN23DDfoXM5LMCaVaGPGeV4Q7rWHBQiDLl3H4QhhdZGYT8vQIDpnS
         tloA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=DgBhWLICPv7pMhjFtnPurEZqoS+TS0nmbrNFYc6tYO8=;
        b=NLEyh0nPzAcupsC0+bQn/LxN6YT+YcSVfmf1qiKgQ214UNKkjQjJB9Q0DLPnhYXUYa
         PoYlmWdsxRT4iRCuoMGYzpgULn93wDsm7L7DBsWo9FtuopeBayXQ79ArfIlBkIrgeU7T
         k7q7YZA9ejIEzvI/2bHR2ize6elMXagIpXg2Fk/0fIAOymKuCPHT0sjG3HvVm7GuhnbO
         T5AUHfpc20va3g7v4BslX9cvAIVmC0FX64V6SxDbgAldniyJDj4OCoo+dcKLsF4Plyfb
         lOFsf9Y0c3xVnzkk1pCO+lGpOfj5QXvhjCMEfBGgj8ov0ljdU4GavVLhfkiL5SmzQvvH
         oOtw==
X-Gm-Message-State: AOAM533hSQqebE2F3mdtHoJE5rEYoR2Aszp3D1THoHMKZ2NVtBA8y7Km
        7LBt8NvPTmJfqZQMVo43H4MkuQ==
X-Google-Smtp-Source: ABdhPJxEuBQoPN9bsXR6MdCXoIERK92y9INjOmodZ+EhamGEhX0mQRx/MN6GHqngkDN8iA76J7ADwg==
X-Received: by 2002:a5d:500f:: with SMTP id e15mr12227550wrt.90.1633507239224;
        Wed, 06 Oct 2021 01:00:39 -0700 (PDT)
Received: from google.com ([95.148.6.175])
        by smtp.gmail.com with ESMTPSA id w11sm1125405wmc.44.2021.10.06.01.00.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 06 Oct 2021 01:00:38 -0700 (PDT)
Date:   Wed, 6 Oct 2021 09:00:36 +0100
From:   Lee Jones <lee.jones@linaro.org>
To:     Chunyan Zhang <zhang.lyra@gmail.com>
Cc:     Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh+dt@kernel.org>,
        linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
        Baolin Wang <baolin.wang7@gmail.com>,
        Orson Zhai <orsonzhai@gmail.com>,
        Chunyan Zhang <chunyan.zhang@unisoc.com>,
        LKML <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v4 2/4] dt-bindings: mfd: sprd: Add bindings for ums512
 global registers
Message-ID: <YV1XpL7ibF1y4LbV@google.com>
References: <20210923064137.60722-1-zhang.lyra@gmail.com>
 <20210923064137.60722-3-zhang.lyra@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20210923064137.60722-3-zhang.lyra@gmail.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, 23 Sep 2021, Chunyan Zhang wrote:

> From: Chunyan Zhang <chunyan.zhang@unisoc.com>
> 
> Add bindings for Unisoc system global register which provide register map
> for clocks.
> 
> Signed-off-by: Chunyan Zhang <chunyan.zhang@unisoc.com>
> Reviewed-by: Rob Herring <robh@kernel.org>
> ---
>  .../bindings/mfd/sprd,ums512-glbreg.yaml      | 68 +++++++++++++++++++
>  1 file changed, 68 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/mfd/sprd,ums512-glbreg.yaml

Unapplied v3 and applied this (v4) instead, thanks.

-- 
Lee Jones [李琼斯]
Senior Technical Lead - Developer Services
Linaro.org │ Open source software for Arm SoCs
Follow Linaro: Facebook | Twitter | Blog
