Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E6DF93484A8
	for <lists+devicetree@lfdr.de>; Wed, 24 Mar 2021 23:34:14 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235281AbhCXWdk (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 24 Mar 2021 18:33:40 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42366 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235279AbhCXWdZ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 24 Mar 2021 18:33:25 -0400
Received: from mail-pg1-x52b.google.com (mail-pg1-x52b.google.com [IPv6:2607:f8b0:4864:20::52b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8F0FBC0613DE
        for <devicetree@vger.kernel.org>; Wed, 24 Mar 2021 15:33:24 -0700 (PDT)
Received: by mail-pg1-x52b.google.com with SMTP id u19so15771686pgh.10
        for <devicetree@vger.kernel.org>; Wed, 24 Mar 2021 15:33:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=beagleboard-org.20150623.gappssmtp.com; s=20150623;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=gMuqnDgSpNCh2h8C7b5QZCwmk0iyduRMzQro9wOXU88=;
        b=xWKncwZP5sLJs7JuH2peX+2wKQH5R54M3+ruEprqyEZofEtfngksh39/G4dG8DRMfh
         EBE04QiioMqqgGuW2qTH5X8osgkk/3BlcBVABuTsytTYLrsv91X4NrKygA3WkLGF8YOU
         b4vHOrfh3pAK+DG/ObX7+aDNtaIWfFLUvuMvzkUSQOhDlSeGtyG0dmRBovD0WttCqFWB
         rFfDvTdy2W6zIuv6aoIvwtWaB98RELlWNwacCO5oxYpU3F/nJKEW6owFTWzjRRyJo2si
         /1KzQcKOaMiLhN2W2lGUbzErv749BMd9hrOM/aJcgHLKp7361EUmBvQirU8/r14mOUq8
         nWNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=gMuqnDgSpNCh2h8C7b5QZCwmk0iyduRMzQro9wOXU88=;
        b=RN7ZBYWNLol3ly4jsDA9jK1YNyYQgkUh1/LU5pT0IjKfrXpbAYNMZq8F7ALWHzzqEz
         ua+Sw52U8t8x2D9y8VuSbGsvqYEWXmvSgq5SwvkQyDsZyAxqnzFfcgUB38Qx8px8XAYI
         HqY7d+J20y5+x5oatvYWsQaDl3Uln01o0u5Kj76jQ/utq8GfXBUtw8nErwsP7pYDL1/S
         CsyqdETGoEed5Aq1p0MBEFvuXz53/kzwCCjeGOIjkZrgvsYDTEs8YcL4Bcqz0ilH2qkV
         BfZO2Ln88qy85WuyXzUKriMs/lomRx64F2bzMypdLHLEaxFsK3Fl5cqQJCuwEj2u3pn+
         WGAw==
X-Gm-Message-State: AOAM531QPWH/FGrzJtzqLC1xoh8q5WQbeLfR1Gn2TFwqtz6cMVuElhQp
        2A1M7Ukj/WPKgJ4UWtZr85hlYA==
X-Google-Smtp-Source: ABdhPJxGqI1cC2uhinIMyQb37k1dVPRqSxTOQieitXf9RFUWKhjN7wx7BtEHARrjgqBLNAqFyupn7g==
X-Received: by 2002:a17:903:31c6:b029:e5:d0a4:97cc with SMTP id v6-20020a17090331c6b02900e5d0a497ccmr5876204ple.52.1616625203829;
        Wed, 24 Mar 2021 15:33:23 -0700 (PDT)
Received: from x1 ([2601:1c0:4701:ae70:2535:883:67bb:5fbf])
        by smtp.gmail.com with ESMTPSA id j26sm3488615pfa.35.2021.03.24.15.33.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Mar 2021 15:33:22 -0700 (PDT)
Date:   Wed, 24 Mar 2021 15:33:20 -0700
From:   Drew Fustini <drew@beagleboard.org>
To:     Tony Lindgren <tony@atomide.com>
Cc:     bcousson@baylibre.com, Rob Herring <robh+dt@kernel.org>,
        linux-omap@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Jason Kridner <jkridner@beagleboard.org>,
        Robert Nelson <robertcnelson@beagleboard.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Linus Walleij <linus.walleij@linaro.org>,
        Bartosz Golaszewski <bgolaszewski@baylibre.com>,
        linux-gpio@vger.kernel.org
Subject: Re: [PATCH 1/2] ARM: dts: am335x-pocketbeagle: unique gpio-line-names
Message-ID: <20210324223320.GA672059@x1>
References: <20210127000303.436595-1-drew@beagleboard.org>
 <YFsp9B8Vo/Jr8nif@atomide.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <YFsp9B8Vo/Jr8nif@atomide.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Mar 24, 2021 at 02:00:52PM +0200, Tony Lindgren wrote:
> Hi,
> 
> * Drew Fustini <drew@beagleboard.org> [210127 02:04]:
> > Based on linux-gpio discussion [1], it is best practice to make the
> > gpio-line-names unique. Generic names like "[ethernet]" are replaced
> > with the name of the unique signal on the AM3358 SoC ball corresponding
> > to the gpio line. "[NC]" is also renamed to the standard "NC" name to
> > represent "not connected".
> 
> Applying this one into omap-for-v5.13/dt thanks. However the second patch
> does not apply against v5.12-rc2, Drew can you please repost the second
> patch?
> 
> Regards,
> 
> Tony

Hi Tony, I have posted a new patch that applies okay to mainline.

Thanks,
Drew

[1] https://lore.kernel.org/linux-gpio/20210324222201.674905-1-drew@beagleboard.org/T/#u
