Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7B22070FCA7
	for <lists+devicetree@lfdr.de>; Wed, 24 May 2023 19:29:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232979AbjEXR3h (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 24 May 2023 13:29:37 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48040 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232974AbjEXR3f (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 24 May 2023 13:29:35 -0400
Received: from mail-il1-x12d.google.com (mail-il1-x12d.google.com [IPv6:2607:f8b0:4864:20::12d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 67545139
        for <devicetree@vger.kernel.org>; Wed, 24 May 2023 10:29:32 -0700 (PDT)
Received: by mail-il1-x12d.google.com with SMTP id e9e14a558f8ab-3382449dd00so7969275ab.3
        for <devicetree@vger.kernel.org>; Wed, 24 May 2023 10:29:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1684949371; x=1687541371;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=yq6BLiBB15ZpThHz2GQJH12upVOih5oQeiwfZRvJZIs=;
        b=R66wdfHGemyJhnbQ5WJcQ0WesBJVCHfuBOnmgTXddgC0BpVKNAxW/F2VmF+wjrvTq/
         /730EURT7gmJWw46PXxRPGJen+wP6t/SNl+FrV452r0ceSc0Oaxu6ffyzm22nQjCCpV7
         kVA4iEzJ1O+Jnz5WteD2IppvbAKYFfa4G3yXU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684949371; x=1687541371;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=yq6BLiBB15ZpThHz2GQJH12upVOih5oQeiwfZRvJZIs=;
        b=FjtL9jYlZgvEONVE4HHIDeNoZguS+ByQxYOOb6m45ayvothL4oQS4EAdfM305obcIA
         1bjQe3FEmOXCjELI+kCDx39YGcLMjpIEOMI/TvniZ20XsuJu7aYVwZS4prTzYxVxkD52
         xy+Ej7OI4fdh//d2zojKj3ZqOTtW/8xPkWwGeJWgLMQMegOWh6k5lDsDsY3xxWuTMVXw
         T61HaQqCxE6w/926pwUIKPw+pfi7L+JDrrl41R0vFDcsmD67RUt5b3A2RKC/QuU8MAAg
         GprMXtjiu9Fk2RWXuzH0CmRQaDvOyiHvNHOttSDio+2SEXcccr+aXoW1FGRhtvLhXOTy
         rYww==
X-Gm-Message-State: AC+VfDytBM8tCsvbRUkOqrBpfODvWw0CTVLG1GpADxkySGEOZeOojRX5
        /ILfS3pxN1vcZxPG426bF6oi6TOMS6SAouyNtfY=
X-Google-Smtp-Source: ACHHUZ4frqR7iq5uN8nCEI2cfKOTQ02r8+HQ31KZfR/qf5U8L7O9yo+R6wAPQGGlkNwfdIFHdQ20zg==
X-Received: by 2002:a92:db47:0:b0:335:70ad:4695 with SMTP id w7-20020a92db47000000b0033570ad4695mr13671963ilq.18.1684949371870;
        Wed, 24 May 2023 10:29:31 -0700 (PDT)
Received: from mail-il1-f176.google.com (mail-il1-f176.google.com. [209.85.166.176])
        by smtp.gmail.com with ESMTPSA id f33-20020a0284a4000000b0041a9cf6651asm3155314jai.138.2023.05.24.10.29.31
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 24 May 2023 10:29:31 -0700 (PDT)
Received: by mail-il1-f176.google.com with SMTP id e9e14a558f8ab-33164ec77ccso9625ab.0
        for <devicetree@vger.kernel.org>; Wed, 24 May 2023 10:29:31 -0700 (PDT)
X-Received: by 2002:a05:6e02:1b09:b0:335:a48:f668 with SMTP id
 i9-20020a056e021b0900b003350a48f668mr199716ilv.15.1684949370785; Wed, 24 May
 2023 10:29:30 -0700 (PDT)
MIME-Version: 1.0
References: <20230523193017.4109557-1-dianders@chromium.org> <20230523122802.7.Ib1a98309c455cd7e26b931c69993d4fba33bbe15@changeid>
In-Reply-To: <20230523122802.7.Ib1a98309c455cd7e26b931c69993d4fba33bbe15@changeid>
From:   Doug Anderson <dianders@chromium.org>
Date:   Wed, 24 May 2023 10:29:13 -0700
X-Gmail-Original-Message-ID: <CAD=FV=Ucn7BeWWGOOEX0ho7yH31VF-w7U60KFB8qSn4L1xn3fw@mail.gmail.com>
Message-ID: <CAD=FV=Ucn7BeWWGOOEX0ho7yH31VF-w7U60KFB8qSn4L1xn3fw@mail.gmail.com>
Subject: Re: [PATCH 7/9] HID: i2c-hid: Support being a panel follower
To:     Jiri Kosina <jikos@kernel.org>,
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
        Thomas Zimmermann <tzimmermann@suse.de>
Cc:     dri-devel@lists.freedesktop.org, linux-input@vger.kernel.org,
        Dmitry Torokhov <dmitry.torokhov@gmail.com>, hsinyi@google.com,
        devicetree@vger.kernel.org,
        yangcong5@huaqin.corp-partner.google.com,
        linux-kernel@vger.kernel.org, Daniel Vetter <daniel@ffwll.ch>,
        linux-arm-msm@vger.kernel.org, cros-qcom-dts-watchers@chromium.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Tue, May 23, 2023 at 12:31=E2=80=AFPM Douglas Anderson <dianders@chromiu=
m.org> wrote:
>
> As talked about in the patch ("drm/panel: Add a way for other devices
> to follow panel state"), we really want to keep the power states of a
> touchscreen and the panel it's attached to in sync with each other. In
> that spirit, add support to i2c-hid to be a panel follower. This will
> let the i2c-hid driver get informed when the panel is powered on and
> off. From there we can match the i2c-hid device's power state to that
> of the panel.
>
> NOTE: this patch specifically _doesn't_ use pm_runtime to keep track
> of / manage the power state of the i2c-hid device, even though my
> first instinct said that would be the way to go. Specific problems
> with using pm_runtime():
> * The initial power up couldn't happen in a runtime resume function
>   since it create sub-devices and, apparently, that's not good to do
>   in your resume function.
> * Managing our power state with pm_runtime meant fighting to make the
>   right thing happen at system suspend to prevent the system from
>   trying to resume us only to suspend us again. While this might be
>   able to be solved, it added complexity.
> Overall the code without pm_runtime() ended up being smaller and
> easier to understand.
>
> Signed-off-by: Douglas Anderson <dianders@chromium.org>
> ---
>
>  drivers/hid/i2c-hid/i2c-hid-core.c | 82 +++++++++++++++++++++++++++++-
>  1 file changed, 81 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/hid/i2c-hid/i2c-hid-core.c b/drivers/hid/i2c-hid/i2c=
-hid-core.c
> index 34c0d98b4976..f1bb89377e8d 100644
> --- a/drivers/hid/i2c-hid/i2c-hid-core.c
> +++ b/drivers/hid/i2c-hid/i2c-hid-core.c
> @@ -38,6 +38,8 @@
>  #include <linux/mutex.h>
>  #include <asm/unaligned.h>
>
> +#include <drm/drm_panel.h>
> +
>  #include "../hid-ids.h"
>  #include "i2c-hid.h"
>
> @@ -107,6 +109,8 @@ struct i2c_hid {
>         struct mutex            reset_lock;
>
>         struct i2chid_ops       *ops;
> +       struct drm_panel_follower panel_follower;
> +       bool                    is_panel_follower;
>  };
>
>  static const struct i2c_hid_quirks {
> @@ -1058,6 +1062,34 @@ int i2c_hid_core_initial_power_up(struct i2c_hid *=
ihid)
>         return ret;
>  }
>
> +int i2c_hid_core_panel_prepared(struct drm_panel_follower *follower)

As pointed out by the kernel test robot, I clearly missed making
several functions "static" in this patch series. :( I'll fix that in
v2, but for now I'll hold off sending v2 to wait for additional
feedback.

-Doug
