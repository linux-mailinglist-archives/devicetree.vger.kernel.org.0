Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DC85270E9E3
	for <lists+devicetree@lfdr.de>; Wed, 24 May 2023 02:00:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234317AbjEXAAC (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 23 May 2023 20:00:02 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59876 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232416AbjEXAAB (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 23 May 2023 20:00:01 -0400
Received: from mail-pg1-x52e.google.com (mail-pg1-x52e.google.com [IPv6:2607:f8b0:4864:20::52e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8C446B5
        for <devicetree@vger.kernel.org>; Tue, 23 May 2023 17:00:00 -0700 (PDT)
Received: by mail-pg1-x52e.google.com with SMTP id 41be03b00d2f7-51f1b6e8179so167520a12.3
        for <devicetree@vger.kernel.org>; Tue, 23 May 2023 17:00:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1684886399; x=1687478399;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Uy/Z1ySOUfUShGzbWIcnHxdYF4h1eJNt1bs6mI3x3dY=;
        b=j5OOvIAOmeoO6XVvFfY4KnlfMbT+7WGHEUSWUMILynIR+hw0W2Brggu20OUo9l4OEy
         5B84+4NU3PNEwuhkG78Nw0z+ksCnerIejzm5vZX1IYwJo6jdjUKmNmHEpNA7SbCLx2W0
         R6NU2KKG6COnTgTEN94Uubmus2BcLFVKahcUI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684886399; x=1687478399;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Uy/Z1ySOUfUShGzbWIcnHxdYF4h1eJNt1bs6mI3x3dY=;
        b=QTpwLkE/3MdDzmLS1dp1cnrxjSlIaL7iqSS0z5gmiBObJQmw478yBeSorW2mm6Q1J/
         jnRsryHdTcjo6BIjRogqCvJERcAm29T6HiIyIwwmwvYSHV/NHMLLIbzdgugvJMkODyw8
         sHIGIW/PjayKSG1iNyU4B5Jz0GnTscnZA31seCpbR3opE5/KjI1EqH1XfHnLlhimvdCn
         ge6Rqo9vaXAmtVseg/0dK+gYR3hPZfyxFuX6QUoWqoFVXrpzb0FT3M94i6hVyCXihOnF
         LOYQaa22OirPJszt47yOA5HQKcY4QLzSWLHShZ4C0TBWjyaWts4Bqz96eoPmWxMuDDVR
         WlCg==
X-Gm-Message-State: AC+VfDzXoj1JCfbNh038rh+3ZZEikL0J8f072X7IX1bikFpA5xtDhP6v
        ew46jtOLAHWsYQZJW0b1XGOpwdqb1aogAjsy4hc=
X-Google-Smtp-Source: ACHHUZ7Weq+txjNYZhLePwXxhsLJmEcB37H61isX2RoI98IkrQSQiwfcKbUwF29F9ohS0mm269QjKA==
X-Received: by 2002:a17:902:db07:b0:1ae:89a:9e with SMTP id m7-20020a170902db0700b001ae089a009emr19600929plx.61.1684886398813;
        Tue, 23 May 2023 16:59:58 -0700 (PDT)
Received: from mail-pl1-f182.google.com (mail-pl1-f182.google.com. [209.85.214.182])
        by smtp.gmail.com with ESMTPSA id x17-20020a1709027c1100b001a1a07d04e6sm7274902pll.77.2023.05.23.16.59.58
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 23 May 2023 16:59:58 -0700 (PDT)
Received: by mail-pl1-f182.google.com with SMTP id d9443c01a7336-1ac65ab7432so5665ad.0
        for <devicetree@vger.kernel.org>; Tue, 23 May 2023 16:59:58 -0700 (PDT)
X-Received: by 2002:a05:6e02:1949:b0:32b:7232:dac6 with SMTP id
 x9-20020a056e02194900b0032b7232dac6mr117857ilu.18.1684885989118; Tue, 23 May
 2023 16:53:09 -0700 (PDT)
MIME-Version: 1.0
References: <20230523193017.4109557-1-dianders@chromium.org> <ZG0yjuNvhnircAxA@google.com>
In-Reply-To: <ZG0yjuNvhnircAxA@google.com>
From:   Doug Anderson <dianders@chromium.org>
Date:   Tue, 23 May 2023 16:52:55 -0700
X-Gmail-Original-Message-ID: <CAD=FV=V6E_Rdrbk6SOHvaPwi=vJtRJagct71Q6TVV=ysUw5XCg@mail.gmail.com>
Message-ID: <CAD=FV=V6E_Rdrbk6SOHvaPwi=vJtRJagct71Q6TVV=ysUw5XCg@mail.gmail.com>
Subject: Re: [PATCH 0/9] drm/panel and i2c-hid: Allow panels and touchscreens
 to power sequence together
To:     Dmitry Torokhov <dmitry.torokhov@gmail.com>
Cc:     Jiri Kosina <jikos@kernel.org>,
        Benjamin Tissoires <benjamin.tissoires@redhat.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Sam Ravnborg <sam@ravnborg.org>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        dri-devel@lists.freedesktop.org, linux-input@vger.kernel.org,
        hsinyi@google.com, devicetree@vger.kernel.org,
        yangcong5@huaqin.corp-partner.google.com,
        linux-kernel@vger.kernel.org, Daniel Vetter <daniel@ffwll.ch>,
        linux-arm-msm@vger.kernel.org, cros-qcom-dts-watchers@chromium.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Tue, May 23, 2023 at 2:39=E2=80=AFPM Dmitry Torokhov
<dmitry.torokhov@gmail.com> wrote:
>
> Hi Doug,
>
> On Tue, May 23, 2023 at 12:27:54PM -0700, Douglas Anderson wrote:
> >
> > The big motivation for this patch series is mostly described in the pat=
ch
> > ("drm/panel: Add a way for other devices to follow panel state"), but t=
o
> > quickly summarize here: for touchscreens that are connected to a panel =
we
> > need the ability to power sequence the two device together. This is not=
 a
> > new need, but so far we've managed to get by through a combination of
> > inefficiency, added costs, or perhaps just a little bit of brokenness.
> > It's time to do better. This patch series allows us to do better.
>
> This seems to grow a new way of building relationship between panels and
> associated devices. Can we make device_link_*() work for us?

If you know of a way to make it work, that'd be great. ...but I don't
_think_ it would be that easy. I haven't spent much time with the
device_link APIs, though, so please correct me if I'm wrong.

I guess my main issue with device_link would be that that ordering
feels backward. Specifically, the device we're acting on (the one
we're turning off and on) is the panel. We typically turn the panel
off and on at times (during a modeset, when the lid is closed, or just
if the system is idle). When this happens we'd like to remove power
from both the panel and the touchscreen. Userspace is just not setup
to power off touchscreens in tandem with the panel and sometimes (like
in the case of a modeset) it might not even know it needs to. With
device_link I believe that the "child" device is in charge of powering
the parent. I think that would mean that to use device_link we'd need
to make the panel be the child of the touchscreen. Then, I guess we'd
tell the touchscreen not to power itself on if it had children and
just wait for a child to power it on? It feels really awkward partly
because the panel doesn't feel like it should be a child of the
touchscreen and partially because it seems weird that the touchscreen
would somehow need to know not to request power for itself when it has
a child.

...if we're willing to accept the backwardness as described above and
we can find a hack to keep the touchscreen from powering itself up,
then I think things could be made to work OK-ish. I can try to
investigate that route if it doesn't feel too ugly. ...oh, except for
another problem. The initial power up of the i2c-hid device would also
be a problem here. I guess with device_link we'd need to put all the
power up work into "runtime resume". The problem is that upon initial
power up we create "HID" sub-devices and (as far as I could tell) you
can't do that during a runtime resume. :( We could put a special case
to power the touchscreen up before the panel at probe time, but that
could have other consequences?

If we don't go with the backwardness then I think we're a bit stuck
with some of the original problems. Specifically it means that unless
userspace knows to turn off the touchscreen that the touchscreen would
force the panel to never be power cycled. There's at least one panel
(the one on sc7180-trogdor-homestar) where that's known to be a
problem. It also means that we're back to drawing extra power if the
touchscreen is left "on" but the panel power is turned off.

Let me know if I'm misunderstanding.

-Doug
