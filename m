Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 751151CF383
	for <lists+devicetree@lfdr.de>; Tue, 12 May 2020 13:40:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729446AbgELLk5 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 12 May 2020 07:40:57 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40048 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729243AbgELLk5 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 12 May 2020 07:40:57 -0400
Received: from mail-lj1-x244.google.com (mail-lj1-x244.google.com [IPv6:2a00:1450:4864:20::244])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2C19BC061A0C
        for <devicetree@vger.kernel.org>; Tue, 12 May 2020 04:40:57 -0700 (PDT)
Received: by mail-lj1-x244.google.com with SMTP id d21so5548202ljg.9
        for <devicetree@vger.kernel.org>; Tue, 12 May 2020 04:40:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=gBh2Ij2Mc6h1eHLqGqNAJkOw3+vCEXsNgr9h5z6JXHE=;
        b=DdsH+HVDDy5Lk88AKbz9Gwhh8b52rNXxINS4xMWgwDF9EzFtPlwwQAOyKpPTClcpPa
         6jdvgWcUtP5wPYp37W3M2+Mem1mqzhq++9PcWbyaqJ8gHc1zi6NgMfrL3PzO9/CafO8b
         JBeN2FUzaty9be3xf5OFXu91V2fktRRIhP47AuIa9/EUo9+OxbgktJ0rPnWpdsVOGCch
         +lF7y4MIBOUpciZuYEG1/RUNkBnkI55ce524lSvcCeQXqOsBFMc4UTG7X4yayGrrlug8
         0FD80EJ0z4UI21COSMt2BAcOGiKrHzufzzzQj2C/w82DgQNrapc9oNhDS0Dxw+lcAgqJ
         cz/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=gBh2Ij2Mc6h1eHLqGqNAJkOw3+vCEXsNgr9h5z6JXHE=;
        b=HEHehtu+LJWX/q2XXR9SMdI62gpQlG8uF/ld45Izry0Id2zWcf7q4TPtc5T87rs8he
         nS2NJVUesAOSSOjvK598RIf44McbQqGrC5E9qpqGLVqcBZMeU+rOHoujzBzxCrz3uWkz
         SdK+vyFtA+VIDZs49sM2qDvoy/Qk2GR43pHONWG2MVpC2eUk9PhbRng5wyHD059w21T8
         lxG2zuzF3EM5nHwT3OO0iT97+JJcRNhAn58VJVQMHY/Q+Q9aT8d4zhM8Vt7Rp+1pzBAO
         fRUYpq4zg0k0ziLUm6YIZpLOctVxgSj6TMCgS+NIfRPzw32qDKcv/2aBmqP2yY547fEJ
         Tl1A==
X-Gm-Message-State: AOAM530oLeD2yMEE14F9Gyqn2rzqOd4IvMZYi9uffZY584zFmzSjzYS1
        MpESD3fDP8gj2dr+7G8t0mFcgN4XfP1GWJ4K0iWEkw==
X-Google-Smtp-Source: ABdhPJyheSvf/myT4amp2PYksMYzI0WE9OfPY7CV27uprn8yiolw1+hJowASwtw1CCetz1J8xzyyI9ikYuKe4P+PnmA=
X-Received: by 2002:a2e:b609:: with SMTP id r9mr139112ljn.125.1589283655695;
 Tue, 12 May 2020 04:40:55 -0700 (PDT)
MIME-Version: 1.0
References: <20200427102812.23251-1-ckeepax@opensource.cirrus.com> <20200427102812.23251-3-ckeepax@opensource.cirrus.com>
In-Reply-To: <20200427102812.23251-3-ckeepax@opensource.cirrus.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Tue, 12 May 2020 13:40:44 +0200
Message-ID: <CACRpkdZA9vs+ppSybk=kbByyOmbsmmEcMWpytn_LX_b0Kqftqw@mail.gmail.com>
Subject: Re: [PATCH 3/6] pinctrl: lochnagar: Move binding over to dtschema
To:     Charles Keepax <ckeepax@opensource.cirrus.com>
Cc:     Rob Herring <robh+dt@kernel.org>, Lee Jones <lee.jones@linaro.org>,
        Mark Brown <broonie@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>,
        Jean Delvare <jdelvare@suse.com>,
        Guenter Roeck <linux@roeck-us.net>,
        Liam Girdwood <lgirdwood@gmail.com>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>, patches@opensource.cirrus.com
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Apr 27, 2020 at 12:28 PM Charles Keepax
<ckeepax@opensource.cirrus.com> wrote:

> Signed-off-by: Charles Keepax <ckeepax@opensource.cirrus.com>

Patch applied.

Yours,
Linus Walleij
