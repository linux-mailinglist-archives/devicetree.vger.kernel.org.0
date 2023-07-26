Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5EC16763A83
	for <lists+devicetree@lfdr.de>; Wed, 26 Jul 2023 17:11:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234800AbjGZPLx (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 26 Jul 2023 11:11:53 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54748 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234802AbjGZPLr (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 26 Jul 2023 11:11:47 -0400
Received: from mail-wr1-x42d.google.com (mail-wr1-x42d.google.com [IPv6:2a00:1450:4864:20::42d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0B220269E
        for <devicetree@vger.kernel.org>; Wed, 26 Jul 2023 08:11:20 -0700 (PDT)
Received: by mail-wr1-x42d.google.com with SMTP id ffacd0b85a97d-31427ddd3fbso5675597f8f.0
        for <devicetree@vger.kernel.org>; Wed, 26 Jul 2023 08:11:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1690384267; x=1690989067;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=b/ROWfJuXH2cVv0Y621ig/G+mxiEtHeeKT7it0Legy4=;
        b=ExZA5PEpJmI+34hOZQDyWeKsCbq8QfvvCid7B4Vvy1iiCB+wrmNWpvK5zz8lxdpLWN
         lL+XQir5wY97XMwPcFGc9vRVA8A4KMRomz2PLiqLbTXtayDa1XkLHmBteRoEJrkRRhwb
         aq+Nby8QP8plpwKwboWLgJyIkI18eowR5unAI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690384267; x=1690989067;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=b/ROWfJuXH2cVv0Y621ig/G+mxiEtHeeKT7it0Legy4=;
        b=HPHCU3NSdkPgkDHlNFh4o4bG6c4eQtu2odJESe1y7nJ3XjuFYMlvr1FZK6U8hhaCH4
         RFtBNhXUWNc9eM2V79zBz4d49h7nj8JWvKIXqfK7a5126CmUplKo8LhpwEnKq/xHP6pw
         oWG/91ayKA3wRVIFuJxlqajYTGcNuwmYoId6i3ObCMpCdxmeWVBrj5L1VgHOx7yOSMK/
         OJ9/05HtrZM8Ey/HJkNyEWcYleGgBsz9mVMP3h9J5vQEWWHclPo2aSU0Mrc8kmgPnQye
         wtuvtmt6ECDec9y1VLk/qI6XMpPNhNOiWW5SgOqpvD1XGt5B8z6H/vPD3d8XmCv6ysti
         aqog==
X-Gm-Message-State: ABy/qLYtobB9dp1YoC8O/b/9LTsjEtWCL9lMpLIQNKWm0PaRwql4N/vV
        dPLvR1t7rcnvQqaj08MujchOZHOraidirOniefL6KHfM
X-Google-Smtp-Source: APBJJlGRGQZK30KRWclbcpNkJtP3qKPTxSN+Fk9qpCxrjRERHzQ8XcZCoxvQopkE3Oq9ZvSCqaLxig==
X-Received: by 2002:adf:f18f:0:b0:30a:e9cb:1a2e with SMTP id h15-20020adff18f000000b0030ae9cb1a2emr1682557wro.65.1690384267073;
        Wed, 26 Jul 2023 08:11:07 -0700 (PDT)
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com. [209.85.128.52])
        by smtp.gmail.com with ESMTPSA id bk9-20020a170906b0c900b009890f2c4cf9sm9760612ejb.79.2023.07.26.08.11.06
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 26 Jul 2023 08:11:06 -0700 (PDT)
Received: by mail-wm1-f52.google.com with SMTP id 5b1f17b1804b1-3fc075d9994so93025e9.0
        for <devicetree@vger.kernel.org>; Wed, 26 Jul 2023 08:11:06 -0700 (PDT)
X-Received: by 2002:ac2:5494:0:b0:4f2:7840:e534 with SMTP id
 t20-20020ac25494000000b004f27840e534mr170963lfk.0.1690384246218; Wed, 26 Jul
 2023 08:10:46 -0700 (PDT)
MIME-Version: 1.0
References: <20230725203545.2260506-1-dianders@chromium.org>
 <20230725133443.v3.2.I59b417d4c29151cc2eff053369ec4822b606f375@changeid> <snx3fzvf3icauri2xuigydvpqxtzhp34mptdxvifi7jswm2evy@sx7jr7zwvjw5>
In-Reply-To: <snx3fzvf3icauri2xuigydvpqxtzhp34mptdxvifi7jswm2evy@sx7jr7zwvjw5>
From:   Doug Anderson <dianders@chromium.org>
Date:   Wed, 26 Jul 2023 08:10:33 -0700
X-Gmail-Original-Message-ID: <CAD=FV=VcsTik+HD11xeDM2Jq9ispcX0-j5QtK8D1qUkrGabRGg@mail.gmail.com>
Message-ID: <CAD=FV=VcsTik+HD11xeDM2Jq9ispcX0-j5QtK8D1qUkrGabRGg@mail.gmail.com>
Subject: Re: [PATCH v3 02/10] drm/panel: Check for already prepared/enabled in drm_panel
To:     Maxime Ripard <mripard@kernel.org>
Cc:     Jiri Kosina <jikos@kernel.org>,
        Benjamin Tissoires <benjamin.tissoires@redhat.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Sam Ravnborg <sam@ravnborg.org>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        cros-qcom-dts-watchers@chromium.org,
        Chris Morgan <macroalpha82@gmail.com>,
        linux-input@vger.kernel.org, hsinyi@google.com,
        linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        linux-kernel@vger.kernel.org,
        Dmitry Torokhov <dmitry.torokhov@gmail.com>,
        devicetree@vger.kernel.org, Daniel Vetter <daniel@ffwll.ch>,
        yangcong5@huaqin.corp-partner.google.com
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

On Wed, Jul 26, 2023 at 5:41=E2=80=AFAM Maxime Ripard <mripard@kernel.org> =
wrote:
>
> Hi,
>
> On Tue, Jul 25, 2023 at 01:34:37PM -0700, Douglas Anderson wrote:
> > NOTE: arguably, the right thing to do here is actually to skip this
> > patch and simply remove all the extra checks from the individual
> > drivers. Perhaps the checks were needed at some point in time in the
> > past but maybe they no longer are? Certainly as we continue
> > transitioning over to "panel_bridge" then we expect there to be much
> > less variety in how these calls are made. When we're called as part of
> > the bridge chain, things should be pretty simple. In fact, there was
> > some discussion in the past about these checks [1], including a
> > discussion about whether the checks were needed and whether the calls
> > ought to be refcounted. At the time, I decided not to mess with it
> > because it felt too risky.
>
> Yeah, I'd agree here too. I've never found evidence that it was actually
> needed and it really looks like cargo cult to me.
>
> And if it was needed, then I'm not sure we need refcounting either. We
> don't have refcounting for atomic_enable / disable, we have a sound API
> design that makes sure we don't fall into that trap :)
>
> > Looking closer at it now, I'm fairly certain that nothing in the
> > existing codebase is expecting these calls to be refcounted. The only
> > real question is whether someone is already doing something to ensure
> > prepare()/unprepare() match and enabled()/disable() match. I would say
> > that, even if there is something else ensuring that things match,
> > there's enough complexity that adding an extra bool and an extra
> > double-check here is a good idea. Let's add a drm_warn() to let people
> > know that it's considered a minor error to take advantage of
> > drm_panel's double-checking but we'll still make things work fine.
>
> I'm ok with this, if we follow-up in a couple of releases and remove it
> and all the calls.
>
> Could you add a TODO item so that we can keep a track of it? A follow-up
> is fine if you don't send a new version of that series.

By this, I think you mean to add a "TODO" comment inline in the code?

Also: I was thinking that we'd keep the check in "drm_panel.c" with
the warning message indefinitely. You think it should be eventually
removed? If we are truly thinking of removing it eventually, this
feels like it should be a more serious warning message like a WARN(1,
...) to make it really obvious to people that they're relying on
behavior that will eventually go away.


-Doug
