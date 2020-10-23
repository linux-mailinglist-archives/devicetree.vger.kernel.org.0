Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5DE4E2979AD
	for <lists+devicetree@lfdr.de>; Sat, 24 Oct 2020 01:30:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1758748AbgJWXaY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 23 Oct 2020 19:30:24 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57686 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1758747AbgJWXaY (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 23 Oct 2020 19:30:24 -0400
Received: from mail-vs1-xe43.google.com (mail-vs1-xe43.google.com [IPv6:2607:f8b0:4864:20::e43])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F1CBAC0613D2
        for <devicetree@vger.kernel.org>; Fri, 23 Oct 2020 16:30:23 -0700 (PDT)
Received: by mail-vs1-xe43.google.com with SMTP id b3so1782685vsc.5
        for <devicetree@vger.kernel.org>; Fri, 23 Oct 2020 16:30:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=f7t13KJFtLK85C1FR2S26/HGUVh7XtE1EASNOKN5/Sw=;
        b=eTA546ceA0tx2anudpIlj8hWS6Zr4dDiqNUsxg0ECeHE9b4FVXomMA3NzZBODGaiS3
         LcRcY0rThWckcVc3pVsVSSYkP+0iSM38PoEX4WaGWdU22yIadhkdDtKqzpxjq747+NC+
         Jgu+VwsckF9NJTyrsyMYJ/N/2U7CQU1RHfh/8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=f7t13KJFtLK85C1FR2S26/HGUVh7XtE1EASNOKN5/Sw=;
        b=BkJJ1MimVymCGQVMD4uGwjI1uQoW3SzKkdOUrAkWkWbDczxyn2MEB7aB6cd/KG4LvK
         TGkqdNu5vBDXqwBrI2NVhcOJcvlj1MCgEi8E6N/TPtoCturUycAsOoxq57Tl677T0SZf
         D/lgOUi8YJJcC7P/eW59Ev4ipfpNJFB4xt27ZGGSlT5ac0dveI9m1IjBrMIEa5uOY5zs
         gSnIvxDgnHlujZs9xZplEKOcO6TOh68Pg6bxpcTPEsBEkaYnC1TlYUGV0WEVGaoZdA9X
         rAJoLj+BEZAiG6GydqSgfMIkreMz+V9biGcwnvk17eiq2XF2684Vw8RtBy0RJjLm48r5
         UtGw==
X-Gm-Message-State: AOAM5319PMfhHgf6ToJLxKCKPsir+m2+1JSYLT2OHzuatVMxtw5luQQQ
        gfZV+ssjQq/CNvzeNRmIBgkJCkFzTbCOqg==
X-Google-Smtp-Source: ABdhPJwnSgNhZxLmmjNwHmZYCoBeYFZZVqQjwU/E2FErEeYKon2WtdPWHCZbOSF6E8f/q+Xi4XSmAQ==
X-Received: by 2002:a67:68ce:: with SMTP id d197mr2224817vsc.25.1603495822462;
        Fri, 23 Oct 2020 16:30:22 -0700 (PDT)
Received: from mail-ua1-f49.google.com (mail-ua1-f49.google.com. [209.85.222.49])
        by smtp.gmail.com with ESMTPSA id l123sm390849vsl.4.2020.10.23.16.30.21
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 23 Oct 2020 16:30:21 -0700 (PDT)
Received: by mail-ua1-f49.google.com with SMTP id k12so961320uad.11
        for <devicetree@vger.kernel.org>; Fri, 23 Oct 2020 16:30:21 -0700 (PDT)
X-Received: by 2002:ab0:4923:: with SMTP id z32mr4192469uac.121.1603495820984;
 Fri, 23 Oct 2020 16:30:20 -0700 (PDT)
MIME-Version: 1.0
References: <20201023162220.v2.1.I45b53fe84e2215946f900f5b28bab1aa9d029ac7@changeid>
 <20201023162220.v2.2.Ibb28033c81d87fcc13a6ba28c6ea7ac154d65f93@changeid>
In-Reply-To: <20201023162220.v2.2.Ibb28033c81d87fcc13a6ba28c6ea7ac154d65f93@changeid>
From:   Doug Anderson <dianders@chromium.org>
Date:   Fri, 23 Oct 2020 16:30:09 -0700
X-Gmail-Original-Message-ID: <CAD=FV=XnXCL0xrDoxpdaeQv5rut7Vpryor20KR4sHR_344_LcA@mail.gmail.com>
Message-ID: <CAD=FV=XnXCL0xrDoxpdaeQv5rut7Vpryor20KR4sHR_344_LcA@mail.gmail.com>
Subject: Re: [PATCH v2 2/3] dt-bindings: HID: i2c-hid: Introduce bindings for
 the Goodix GT7375P
To:     Jiri Kosina <jkosina@suse.cz>,
        Benjamin Tissoires <benjamin.tissoires@redhat.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc:     Andrea Borgia <andrea@borgia.bo.it>,
        Kai-Heng Feng <kai.heng.feng@canonical.com>,
        linux-input@vger.kernel.org, Stephen Boyd <swboyd@chromium.org>,
        Hans de Goede <hdegoede@redhat.com>,
        Dmitry Torokhov <dmitry.torokhov@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Fri, Oct 23, 2020 at 4:23 PM Douglas Anderson <dianders@chromium.org> wrote:
>
> +examples:
> +  - |
> +    #include <dt-bindings/clock/qcom,rpmh.h>
> +    #include <dt-bindings/gpio/gpio.h>
> +    #include <dt-bindings/interrupt-controller/irq.h>
> +
> +    i2c {
> +      #address-cells = <1>;
> +      #size-cells = <0>;
> +
> +      ap_ts: touchscreen@5d {
> +        compatible = "hid-over-i2c";

You always find one more problem right after you hit send, don't you?
Or is that just me?

Obviously the above should say

compatible = "goodix,gt7375p";

Luckily when I change that "dt_binding_check" still passes.  Whew!

I won't send a v3 yet and I'll wait for feedback.  On the off chance
that there are no other problems with this binding and the maintainer
wants to land this, I don't have any objections to the maintainer
fixing this when the patch lands.

-Doug
