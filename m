Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 93BDD41D069
	for <lists+devicetree@lfdr.de>; Thu, 30 Sep 2021 02:03:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1344487AbhI3AEq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 29 Sep 2021 20:04:46 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35074 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234481AbhI3AEq (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 29 Sep 2021 20:04:46 -0400
Received: from mail-ot1-x32e.google.com (mail-ot1-x32e.google.com [IPv6:2607:f8b0:4864:20::32e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 70C06C061768
        for <devicetree@vger.kernel.org>; Wed, 29 Sep 2021 17:03:04 -0700 (PDT)
Received: by mail-ot1-x32e.google.com with SMTP id l16-20020a9d6a90000000b0053b71f7dc83so5069763otq.7
        for <devicetree@vger.kernel.org>; Wed, 29 Sep 2021 17:03:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:in-reply-to:references:from:user-agent:date:message-id
         :subject:to:cc;
        bh=4OM7fi2cMvcLgh5ivBuxZIPAp/b12WncuWucyr2GmQs=;
        b=iqP7gvo8WHZ1YKDuQeX9H2LJrvOm/jZGdTT+9AYiMcDG4cWINHWenITwqhjXlAVdy5
         HXaiW/gfMMc3DFaKRE9Hhj2G6SPuEIXwuh5h+M6tvAzDCAZ8vOW1fw9lRQ0acZNPvV95
         PqQYlWd81ixtOWRSvl96o09QE4YiyPg0DYBXM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:in-reply-to:references:from
         :user-agent:date:message-id:subject:to:cc;
        bh=4OM7fi2cMvcLgh5ivBuxZIPAp/b12WncuWucyr2GmQs=;
        b=TF3/BewQpGZLSZfc0TvL5vK3wJ5VwUDrLwIaWC3LDULfezNZc3Fb2TSConaYQa9UFO
         WfYTD4RLj+uda6e4ny2g02G2oGUBMNL6/xkSz/+LXZ/b7x71FAzvPn4C8+oe83V3p5wQ
         4XVZCJQvtlxe2WV+xn5SvTkgayHo05qdfF3ydW0bt937QnAGqa9q/jDWK5BUE4/AdJ2g
         hq1Qkzq13nJurC6hgNsqPISQHnlI0CXuBxep6sH1Q07fGvZl0pcQ4explfqZCrEpd25y
         5XAxGy5lEHp6lQME4ZGayBkQBejugFNcung1RTJ6t9CzGaaX6GplnMzvb5YpFFMvs1hn
         /g0g==
X-Gm-Message-State: AOAM5331fwG1mO9mMYVsIXq2tyhHFElcSc4JJWHGd5oFlQwJz0+Zj9Oz
        sDszF8A9i8nqmdKINXzlTp7GCO9JSPLUYqLSaCBbkQ==
X-Google-Smtp-Source: ABdhPJwW2nM0Cv5T0vMxdTX4OAbSJOrScRzv+4wemtGTpIaTfSrfyxBa3Zn2XNFa/GSyyy5QcGXX42Zfo39Tn3kP12c=
X-Received: by 2002:a05:6830:358:: with SMTP id h24mr2305672ote.159.1632960183868;
 Wed, 29 Sep 2021 17:03:03 -0700 (PDT)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Wed, 29 Sep 2021 17:03:03 -0700
MIME-Version: 1.0
In-Reply-To: <20210929153553.1.Ib44c2ac967833d7a3f51452d44d15b7b8d23c1f0@changeid>
References: <20210929153553.1.Ib44c2ac967833d7a3f51452d44d15b7b8d23c1f0@changeid>
From:   Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.9.1
Date:   Wed, 29 Sep 2021 17:03:03 -0700
Message-ID: <CAE-0n53NfTVWqAJtNY+swZjJ1b1cEYP9oMYgh=A76Q6sHknfqA@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: qcom: pmk8350: Make RTC disabled by default;
 enable on sc7280-idp
To:     Douglas Anderson <dianders@chromium.org>,
        bjorn.andersson@linaro.org
Cc:     vkoul@kernel.org, mka@chromium.org, skakit@codeaurora.org,
        Andy Gross <agross@kernel.org>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting Douglas Anderson (2021-09-29 15:38:14)
> The RTC on the pmk8350 is not useful on all boards. Some boards may
> not provide backup power to the PMIC but might have another RTC on the
> board that does have backup power. In this case it's better to not use
> the RTC on the PMIC.
>
> At the moment, the only boards that includes this PMIC are sc7280-idp
> and sc7280-idp2. On sc7280-idp I'm not aware of any other RTCs, but
> sc7280-idp2 has a Chrome OS EC on it and this is intended to provide
> the RTC for the AP.
>
> Let's do what we normally do for hardware that's not used by all
> boards and set it to a default status of "disabled" and then enable it
> on the boards that need it.
>
> NOTE: for sc7280-idp it's _possible_ we might also want to add
> `allow-set-time;`. That could be the subject of a future patch if it
> is indeed true.
>
> Signed-off-by: Douglas Anderson <dianders@chromium.org>
> ---

Reviewed-by: Stephen Boyd <swboyd@chromium.org>
