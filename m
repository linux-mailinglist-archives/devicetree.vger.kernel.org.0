Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 990342523C0
	for <lists+devicetree@lfdr.de>; Wed, 26 Aug 2020 00:44:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726580AbgHYWom (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 25 Aug 2020 18:44:42 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53926 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726542AbgHYWol (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 25 Aug 2020 18:44:41 -0400
Received: from mail-vs1-xe41.google.com (mail-vs1-xe41.google.com [IPv6:2607:f8b0:4864:20::e41])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9BDB3C061755
        for <devicetree@vger.kernel.org>; Tue, 25 Aug 2020 15:44:41 -0700 (PDT)
Received: by mail-vs1-xe41.google.com with SMTP id b16so270628vsl.6
        for <devicetree@vger.kernel.org>; Tue, 25 Aug 2020 15:44:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=wE4qfQuHmyZr4CJ8Qd1cx0KvW/fobP/YPU8fmNWlhK4=;
        b=bdetoobbnOd6TkMarYz51VCPb8xWTIqO8d53YkrowES32p+QtbiwhVD0DmdTd9ixp8
         QHEbnFC0mXxPw2rHU/EAFxpgyb9gU6tspXMLlKO4Y3gmr6Iq3yRUdpFCzlOMaj6QoOtz
         XBZX8G8lMVfJ9Sv3u9wNp+vauZothyhcduFHE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=wE4qfQuHmyZr4CJ8Qd1cx0KvW/fobP/YPU8fmNWlhK4=;
        b=meh1gCISEouhE1pnUb4trbHqfKecZ5aiTJyTqVRd9UkvDpeugM3p3nQYwWHlJuz2T/
         qTT/EUGlzmI1UmsV9faLy2XVQ6wRcSomeaBX4DMRs1xWahdDCJo+TzH/Q/eLqzScefJe
         qlMNYHUkVyCQKoGXIH3nw5Wn9n2+B8Jij6F/il4CYqBK/dsWQMskftHM6JYIKBGlnY9G
         EoXtTCImswm0anUFdsOD981Zun1RL5TmKHHvshqibkHngfecRWMOqaH/POeD9X5354B0
         bEyrqXe1r8rTyArNUO+j2v4/rZliN1t5TP1IFG0AY819okHyAi0NbjGoQ2Fc2TfCvNrj
         TItg==
X-Gm-Message-State: AOAM532hFZFIeAqrnx88CDLEH4HYj6BhPhtPlrH5DYCdsyiTcchwn7Wj
        UFLmASvWWTAI59naPcQklm2oXy+CpQcejg==
X-Google-Smtp-Source: ABdhPJxFYJBBgaJkxpOv2I0qxncQ3XB8bVhmvRmBzbcnrkLkDIRB9xF+BHtH57MYmFBXNlNdA0cPKg==
X-Received: by 2002:a67:803:: with SMTP id 3mr5622307vsi.79.1598395480363;
        Tue, 25 Aug 2020 15:44:40 -0700 (PDT)
Received: from mail-ua1-f50.google.com (mail-ua1-f50.google.com. [209.85.222.50])
        by smtp.gmail.com with ESMTPSA id w201sm59146vsw.29.2020.08.25.15.44.39
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 25 Aug 2020 15:44:39 -0700 (PDT)
Received: by mail-ua1-f50.google.com with SMTP id v24so138131uaj.7
        for <devicetree@vger.kernel.org>; Tue, 25 Aug 2020 15:44:39 -0700 (PDT)
X-Received: by 2002:ab0:37d3:: with SMTP id e19mr6815164uav.64.1598395478681;
 Tue, 25 Aug 2020 15:44:38 -0700 (PDT)
MIME-Version: 1.0
References: <20200825222748.1878927-1-robdclark@gmail.com>
In-Reply-To: <20200825222748.1878927-1-robdclark@gmail.com>
From:   Doug Anderson <dianders@chromium.org>
Date:   Tue, 25 Aug 2020 15:44:27 -0700
X-Gmail-Original-Message-ID: <CAD=FV=WVP8-vQc9T8WAa7ExC4o081oYWhEoPTfKUQNhFXHE8wg@mail.gmail.com>
Message-ID: <CAD=FV=WVP8-vQc9T8WAa7ExC4o081oYWhEoPTfKUQNhFXHE8wg@mail.gmail.com>
Subject: Re: [PATCH v2] arm64: dts: qcom: sc7180-trogdor: add initial trogdor
 and lazor dt
To:     Rob Clark <robdclark@gmail.com>
Cc:     linux-arm-msm <linux-arm-msm@vger.kernel.org>,
        Rob Clark <robdclark@chromium.org>,
        Stephen Boyd <swboyd@chromium.org>,
        Matthias Kaehlcke <mka@chromium.org>,
        Atul Dhudase <adhudase@codeaurora.org>,
        Venkata Lakshmi Narayana Gubba <gubbaven@codeaurora.org>,
        Evan Green <evgreen@chromium.org>,
        Cheng-Yi Chiang <cychiang@chromium.org>,
        Ajit Pandey <ajitp@codeaurora.org>,
        Alexandru Stan <amstan@chromium.org>,
        Sujit Kautkar <sujitka@chromium.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        open list <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Tue, Aug 25, 2020 at 3:27 PM Rob Clark <robdclark@gmail.com> wrote:
>
> +       max98357a: audio-codec-0 {
> +               compatible = "maxim,max98357a";
> +               pinctrl-names = "default";
> +               pinctrl-0 = <&amp_en>;
> +               sdmode-gpios = <&tlmm 23 GPIO_ACTIVE_HIGH>;
> +               #sound-dai-cells = <0>;
> +       };

Even though Device Tree spec says "audio-codec", I agree that
"audio-codec-0" should be fine.  Since this is at the top level that
could be important to disambiguate if there was more than one audio
codec.


> +&wifi {
> +       status = "okay";
> +       vdd-0.8-cx-mx-supply = <&vdd_cx_wlan>;
> +       vdd-1.8-xo-supply = <&pp1800_l1c>;
> +       vdd-1.3-rfa-supply = <&pp1300_l2c>;

Sorry, I should have been clearer.  Here you should add:

vdd-3.3-ch0-supply = <&pp3300_l10c>;
vdd-3.3-ch1-supply = <&pp3300_l11c>;

...the hack that was downstream was to stick the "ch1" regulator in
the "ch0" slot since Bluetooth was already holding the "ch0" regulator
open and the "ch1" wasn't part of the bindings yet.

Once the supplies are added for WiFi feel free to add my Reviewed-by tag.

-Doug
