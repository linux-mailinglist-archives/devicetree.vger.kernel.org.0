Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5D3EB4B6E27
	for <lists+devicetree@lfdr.de>; Tue, 15 Feb 2022 14:55:48 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238466AbiBONz4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 15 Feb 2022 08:55:56 -0500
Received: from mxb-00190b01.gslb.pphosted.com ([23.128.96.19]:60776 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238462AbiBONzz (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 15 Feb 2022 08:55:55 -0500
Received: from mail-41104.protonmail.ch (mail-41104.protonmail.ch [185.70.41.104])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 08209111089
        for <devicetree@vger.kernel.org>; Tue, 15 Feb 2022 05:55:44 -0800 (PST)
Received: from mail-0201.mail-europe.com (mail-0201.mail-europe.com [51.77.79.158])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (4096 bits))
        (No client certificate requested)
        by mail-41104.protonmail.ch (Postfix) with ESMTPS id 4JyjKW328qz4xPwd
        for <devicetree@vger.kernel.org>; Tue, 15 Feb 2022 13:55:43 +0000 (UTC)
Authentication-Results: mail-41104.protonmail.ch;
        dkim=pass (2048-bit key) header.d=emersion.fr header.i=@emersion.fr header.b="FV5jLIpD"
Date:   Tue, 15 Feb 2022 13:55:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=emersion.fr;
        s=protonmail2; t=1644933337;
        bh=6lNlCoTfcpMqvqhkT68B9BYySvB6qEPhyvPf8Q7RTQA=;
        h=Date:To:From:Cc:Reply-To:Subject:Message-ID:In-Reply-To:
         References:From:To:Cc:Date:Subject:Reply-To:Feedback-ID:
         Message-ID;
        b=FV5jLIpDbsQD4XNbDQkQA59s8nRJV6faVAqWXc971NcsmVKHkV3WFz9CryCy95bLx
         5fsjgglR+qDN2pAG4VVMHRwiAW7wXc36jCrXRS53wKMt7fzTzs55bc4vbCunEn3BAO
         Tmv6nP77HGsnX02nIOQ8IrjXl+VSweaREZ7QvAy0WPIyaIHZJiF+wUQhGw9MSGBfLo
         qgnWv3NMfCuRNuSAJUdB1Fg6FknYIt7YMJoCxO4gh+GCkoF+MPbXltblCW/FsJeHuv
         NvAiabP6tolfvRebFUuddQF+PsgMjroMmSaHLkMYJmetJAyvBb3HrcDh0oks/v4+3M
         J1BM1xgrLuF9A==
To:     Emil Velikov <emil.l.velikov@gmail.com>
From:   Simon Ser <contact@emersion.fr>
Cc:     Hsin-Yi Wang <hsinyi@chromium.org>,
        ML dri-devel <dri-devel@lists.freedesktop.org>,
        David Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>,
        amd-gfx mailing list <amd-gfx@lists.freedesktop.org>,
        Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
        Chun-Kuang Hu <chunkuang.hu@kernel.org>,
        devicetree <devicetree@vger.kernel.org>,
        "Linux-Kernel@Vger. Kernel. Org" <linux-kernel@vger.kernel.org>,
        Maxime Ripard <mripard@kernel.org>,
        Alex Deucher <alexander.deucher@amd.com>,
        Rob Herring <robh+dt@kernel.org>,
        linux-mediatek@lists.infradead.org,
        Thomas Zimmermann <tzimmermann@suse.de>,
        Harry Wentland <harry.wentland@amd.com>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        LAKML <linux-arm-kernel@lists.infradead.org>
Reply-To: Simon Ser <contact@emersion.fr>
Subject: Re: [Intel-gfx] [PATCH v8 1/3] gpu: drm: separate panel orientation property creating and value setting
Message-ID: <KW6DNh6IRRgVJx9DfOFBnEqc4a0x-AnDXEbMxwpfEbk8dOn_KGVzAfo-slJWq-4nWW728Uc-OVpFh2w4fDE4-bxfkDuz1hFILRVvbcuXqaw=@emersion.fr>
In-Reply-To: <CACvgo53u01BK_D0ZssV+gCepjxSz23Nr5Dy1qXeaAoJuu6VCFQ@mail.gmail.com>
References: <20220208084234.1684930-1-hsinyi@chromium.org> <CACvgo53u01BK_D0ZssV+gCepjxSz23Nr5Dy1qXeaAoJuu6VCFQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,SPF_HELO_PASS,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tuesday, February 15th, 2022 at 13:04, Emil Velikov <emil.l.velikov@gmai=
l.com> wrote:

> Greetings everyone,
>
> Padron for joining in so late o/
>
> On Tue, 8 Feb 2022 at 08:42, Hsin-Yi Wang <hsinyi@chromium.org> wrote:
> >
> > drm_dev_register() sets connector->registration_state to
> > DRM_CONNECTOR_REGISTERED and dev->registered to true. If
> > drm_connector_set_panel_orientation() is first called after
> > drm_dev_register(), it will fail several checks and results in followin=
g
> > warning.
> >
> > Add a function to create panel orientation property and set default val=
ue
> > to UNKNOWN, so drivers can call this function to init the property earl=
ier
> > , and let the panel set the real value later.
> >
>
> The warning illustrates a genuine race condition, where userspace will
> read the old/invalid property value/state. So this patch masks away
> the WARNING without addressing the actual issue.
> Instead can we fix the respective drivers, so that no properties are
> created after drm_dev_register()?
>
> Longer version:
> As we look into drm_dev_register() it's in charge of creating the
> dev/sysfs nodes (et al). Note that connectors cannot disappear at
> runtime.
> For panel orientation, we are creating an immutable connector
> properly, meaning that as soon as drm_dev_register() is called we must
> ensure that the property is available (if applicable) and set to the
> correct value.

Unfortunately we can't quite do this. To apply the panel orientation quirks=
 we
need to grab the EDID of the eDP connector, and this happened too late in m=
y
testing.

What we can do is create the prop early during module load, and update it w=
hen
we read the EDID (at the place where we create it right now). User-space wi=
ll
receive a hotplug event after the EDID is read, so will be able to pick up =
the
new value if any.
