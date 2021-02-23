Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id BAA33322950
	for <lists+devicetree@lfdr.de>; Tue, 23 Feb 2021 12:13:30 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232380AbhBWLNX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 23 Feb 2021 06:13:23 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43364 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232367AbhBWLNX (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 23 Feb 2021 06:13:23 -0500
Received: from mail-qk1-x736.google.com (mail-qk1-x736.google.com [IPv6:2607:f8b0:4864:20::736])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F2BBBC061574
        for <devicetree@vger.kernel.org>; Tue, 23 Feb 2021 03:12:42 -0800 (PST)
Received: by mail-qk1-x736.google.com with SMTP id b14so15721164qkk.0
        for <devicetree@vger.kernel.org>; Tue, 23 Feb 2021 03:12:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=vDJKyrOYFbZgyIbDoSlNOmxT0wOERdFNLnLjqv9XaI4=;
        b=AKvkQC2O5sPNCelEGUg7Weo2THVB644tAmz6ADl4Ek1PAhqTvjEnah72Av2XwaTppL
         MrfUGT6mqbmRXaz87K2P077IXvJvpX2wU+xVOEe5rzjqDqIChOqC4Aj0IEjdqLiu+fn/
         S/acrId2IUz2UEgyBB2C7xXHFEuV3GLGB64mF7ZxO24bIkcQmOIUqwB9Fk6uVv6Bgn1K
         Gy2I/5o8RW2ut6f1dqOjWjgTuYlc/ga0c5r51EK0VskySqe8uNXid2s0ez4FBXmPOfFu
         81IrfjsYopalLRN2VooNbaMA2Cwib3Qilg4NOpm7xAmj3GoFoulAfUbmyLcPisJavTvr
         6KDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=vDJKyrOYFbZgyIbDoSlNOmxT0wOERdFNLnLjqv9XaI4=;
        b=Dl2jawQbzjl0qp3yVaCowB2I6f4zDDZMN2xY3CLOG3pJIcKOKVVrZ8W6XRVEs8MpDr
         NVlZ9Bd9desbwjvKM8MAnajiybn6W/5QSvF/XY+BiGr9nGJenJ6JfN3MKV+C0niCtPyQ
         aIJVDlcEcJ9jJ2laNDf1q9OChvMSNTVfnLiiKgkpEOVmH94G1ZLCWvjbNXi/rC7eivLN
         VEioLTVLp/aeUxlOBXszpyE+GXCQfoYzqzrlHxBZV6go995jDXS89+2fEZ5AvTZuRhGn
         TEn1NhRE3dzzdl++uXk+0zr+tNYcEzh3rMGSRrc5JdkE5SWHnPv03h0khyFSrRsxiUk8
         PZTg==
X-Gm-Message-State: AOAM530w+XMaxxMdoeWs9g84A6BEc0W3TgYZdQHs/9mSjhyOSjRf5D+z
        h0cw+uJ+chYtXGReAf8K41LQwayJVowXpsKAwEvXXw==
X-Google-Smtp-Source: ABdhPJwMsjW0y3O9JlfLIqwKA4BBgSM8ln4wbd7X9YqkDboeTHfbzmGCVzqb30lCKEbEeFCX/sSysWzTgCh3cDFnPVM=
X-Received: by 2002:a37:b6c4:: with SMTP id g187mr15630174qkf.162.1614078762141;
 Tue, 23 Feb 2021 03:12:42 -0800 (PST)
MIME-Version: 1.0
References: <20210219181032.1.I23e12818c4a841ba9c37c60b3ba8cfeeb048285f@changeid>
 <20210219181032.3.Ia4c1022191d09fe8c56a16486b77796b83ffcae4@changeid>
In-Reply-To: <20210219181032.3.Ia4c1022191d09fe8c56a16486b77796b83ffcae4@changeid>
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date:   Tue, 23 Feb 2021 14:12:30 +0300
Message-ID: <CAA8EJpoCBe_5khmWPGvr35zBWdcoSJ4OeY=6Nw1diTsNtv7EpA@mail.gmail.com>
Subject: Re: [PATCH 3/3] arm64: dts: qcom: sc7180: Delete charger thermal zone
 and ADC channel for lazor <= rev3
To:     Matthias Kaehlcke <mka@chromium.org>
Cc:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        "open list:DRM DRIVER FOR MSM ADRENO GPU" 
        <linux-arm-msm@vger.kernel.org>,
        open list <linux-kernel@vger.kernel.org>,
        Douglas Anderson <dianders@chromium.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Sat, 20 Feb 2021 at 05:13, Matthias Kaehlcke <mka@chromium.org> wrote:
>
> Lazor rev3 and older are stuffed with a 47k NTC as thermistor for
> the charger temperature which currently isn't supported by the
> PM6150 ADC driver. Delete the charger thermal zone and ADC channel
> to avoid the use of bogus temperature values.

Should we just expand the adc/adc-tm drivers with additional calibration tables?

-- 
With best wishes
Dmitry
