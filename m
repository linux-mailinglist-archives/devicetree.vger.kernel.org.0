Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 861E43FB946
	for <lists+devicetree@lfdr.de>; Mon, 30 Aug 2021 17:51:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237583AbhH3Pwv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 30 Aug 2021 11:52:51 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40012 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237542AbhH3Pwv (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 30 Aug 2021 11:52:51 -0400
Received: from mail-pf1-x431.google.com (mail-pf1-x431.google.com [IPv6:2607:f8b0:4864:20::431])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EAB06C061760
        for <devicetree@vger.kernel.org>; Mon, 30 Aug 2021 08:51:57 -0700 (PDT)
Received: by mail-pf1-x431.google.com with SMTP id m6so4833609pfh.13
        for <devicetree@vger.kernel.org>; Mon, 30 Aug 2021 08:51:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=uXT7A/l6L3b7KWJXeBUvP34+lDTxoCEzcItWSXZkL8g=;
        b=FCgOaTZ/pO1kggtnC0wWNTAVX4lrtWHKauBQPlgOt2qFBMgvhh/YBoKx0LI76pFUAT
         na9Le64L/5IcziN2Z8y0dBHwwRTxf6kee/9gv/UX5sHx314IlBfU/ZpanSdHV9EVskyP
         Hj78y2m1UWC+2UJLg3ddk9zWDXliasQWq9GAo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=uXT7A/l6L3b7KWJXeBUvP34+lDTxoCEzcItWSXZkL8g=;
        b=FtcSo/5tKgLHDyODShn+tWWPt99+POyPFxXFIUldI22KydPC99+Mgr7VYyRTWlUfQK
         FTmN90MGYgZ5oq6wZ7/SByUerST5lFWvPBpNmxzuufw7uvZ+k4uBV8Wl3SHIYzF6r+dG
         RXZUMDGnibA6Yjq20OM8x6jCnVRivZg7Lz1dcXK7dmgfkMt8Exk/adNumuxsTT0GxIr9
         rRLVtYPeHslkXBku7oNVmEu/OUdLELpJ9ryF3dMw4tv04TTEpLfMgdb+ATHmk2IPvINl
         g8XxxKOmNCp0ebFs9atfYi6xJ/g4hfWD47U2Siq4nDPP+a9PvO+NCHqpQWWC9uVhOzg5
         v6bQ==
X-Gm-Message-State: AOAM532tDLfA87Yq4pYCQL9mG33dSJFjPoK5no6SWEbS9gZVyK2wrWG0
        kjDT0OK6lX9tK6eGgWSNb7ZqBA==
X-Google-Smtp-Source: ABdhPJwg4nU87p1CD63IyGPktFv+S5MI16lzovEjLVwZh64w9yph7OuEAWpqk9vtAGhODlhsu0F3Eg==
X-Received: by 2002:aa7:8b07:0:b029:2f7:d38e:ff1 with SMTP id f7-20020aa78b070000b02902f7d38e0ff1mr23964901pfd.72.1630338717477;
        Mon, 30 Aug 2021 08:51:57 -0700 (PDT)
Received: from localhost ([2620:15c:202:201:8f95:c27f:f5d8:9315])
        by smtp.gmail.com with UTF8SMTPSA id i20sm15537076pfq.35.2021.08.30.08.51.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 30 Aug 2021 08:51:57 -0700 (PDT)
Date:   Mon, 30 Aug 2021 08:51:54 -0700
From:   Matthias Kaehlcke <mka@chromium.org>
To:     Douglas Anderson <dianders@chromium.org>
Cc:     bjorn.andersson@linaro.org, sbhanu@codeaurora.org,
        swboyd@chromium.org, Andy Gross <agross@kernel.org>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: qcom: sc7280: Move the SD CD GPIO pin out of
 the dtsi file
Message-ID: <YSz+mlfJuWeFhSum@google.com>
References: <20210830080621.1.Ia15d97bc4a81f2916290e23a8fde9cbc66186159@changeid>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20210830080621.1.Ia15d97bc4a81f2916290e23a8fde9cbc66186159@changeid>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Aug 30, 2021 at 08:06:37AM -0700, Douglas Anderson wrote:
> There's nothing magical about GPIO91 and boards could use different
> GPIOs for card detect. Move the pin out of the dtsi file and to the
> only existing board file.
> 
> Signed-off-by: Douglas Anderson <dianders@chromium.org>

Reviewed-by: Matthias Kaehlcke <mka@chromium.org>
