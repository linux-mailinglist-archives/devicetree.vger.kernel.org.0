Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A70C8258CB7
	for <lists+devicetree@lfdr.de>; Tue,  1 Sep 2020 12:25:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726654AbgIAKZn (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 1 Sep 2020 06:25:43 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35350 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726244AbgIAKZm (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 1 Sep 2020 06:25:42 -0400
Received: from mail-ej1-x643.google.com (mail-ej1-x643.google.com [IPv6:2a00:1450:4864:20::643])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 13264C061245
        for <devicetree@vger.kernel.org>; Tue,  1 Sep 2020 03:25:41 -0700 (PDT)
Received: by mail-ej1-x643.google.com with SMTP id lo4so864436ejb.8
        for <devicetree@vger.kernel.org>; Tue, 01 Sep 2020 03:25:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=DBY03aljOyI/2fhPi5fgkXmtcr1ZgjsMqOgg6fOIlH8=;
        b=ZvssPmbeG6XDh2TWAE2Wd4jboUyecQ9Z9B7+kp1ntN0VP2oEbf7XObj9ZD2vPNS9Q0
         asc6ijuQ/UyS8orgtyeO9KVXLLCLoCG8KDIeKTX94lP9x0TCB7DiBoIAwFI8W/vSD1z2
         G6Wdnk6WR9iltPjeKLoH3vq6U9J+Wr8LdXqbo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=DBY03aljOyI/2fhPi5fgkXmtcr1ZgjsMqOgg6fOIlH8=;
        b=oEAGCUXgCGjWp2nlEyhhZsBQteqexqWRqVMQlorqeKpR8F64lxEXF7pgIE6nSAQaNg
         lecFB3anOPY+4nAr8eyUDVq/KrNq22kLKlyewdOC5gfROPfAvEVMq2j8EEljrPat14na
         qghJPxejYucu9vuvabmQ8lRFJM+HJIMW8Icf+IuNShkie9XWPU6evx/OH0pgEgH9HqTS
         p03NmOWjN/PeOh6VTZMgI2YyWPagPneiV6AxqR6aVBXFCCmLJSG2qoYWB+tLYEA6Fkz5
         mo/VKF7/qzwoVliKJu5oDyKiTwkdO6i1u/maKBqNQGeYCfbKrGLwslZsZw2kmQVRePvZ
         P61w==
X-Gm-Message-State: AOAM533RMvrqisKWtVGcR89hTP5Jw57Rtm1QQXKI7c++5fDH9FO98ops
        wLkk6t7Jw02dO5AGOAodmSjaYjiOSVhoHSCEKAh87iBco+E=
X-Google-Smtp-Source: ABdhPJxoLwkmE9GI/4RYl7jfvvcWo/Kls6xYJUneBBMoNdmQ04dudp2j2v1X//3rzOVafeyuohPwjIghls3Gymh8JzU=
X-Received: by 2002:a17:906:150b:: with SMTP id b11mr840127ejd.234.1598955940451;
 Tue, 01 Sep 2020 03:25:40 -0700 (PDT)
MIME-Version: 1.0
References: <20200831082917.17117-1-jagan@amarulasolutions.com>
 <20200831082917.17117-7-jagan@amarulasolutions.com> <0e286dbd-36e7-54cf-b901-4718d5f7ee6d@gmail.com>
In-Reply-To: <0e286dbd-36e7-54cf-b901-4718d5f7ee6d@gmail.com>
From:   Jagan Teki <jagan@amarulasolutions.com>
Date:   Tue, 1 Sep 2020 15:55:29 +0530
Message-ID: <CAMty3ZCux4dz_qE4ie1r3mOeEzxTfrCkb_riiV-9694poEd+tg@mail.gmail.com>
Subject: Re: [PATCH v3 6/7] arm64: dts: rockchip: px30: Add Engicam C.TOUCH 2.0
To:     Johan Jonker <jbx6244@gmail.com>
Cc:     Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
        devicetree <devicetree@vger.kernel.org>,
        linux-kernel <linux-kernel@vger.kernel.org>,
        "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
        Suniel Mahesh <sunil@amarulasolutions.com>,
        Michael Trimarchi <michael@amarulasolutions.com>,
        linux-amarula <linux-amarula@amarulasolutions.com>,
        linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Johan,

On Mon, Aug 31, 2020 at 3:38 PM Johan Jonker <jbx6244@gmail.com> wrote:
>
> Hi Jagan,
>
> A dtsi file with only an include and no changes isn't useful.
> Are you planning to add something to it?

Yes, some WiFi/BT bits (with LVDS if OF used), but the idea of having
separate dtsi is as per the Engicam's hardware topology. C.TOUCH2.0 is
a Carrier board like EDIMM2.2 and each as its own purpose and possible
to use or update as per customer needs. Maintaining separate dtsi
files for a carrier board will easy for customers to use the same SOM
and create their own carrier hardware. This was the customers can just
add their own custom carrier and reuse existing topoply in Mainline.

Hope you understand, the structure of these dtsi files.

Jagan.
