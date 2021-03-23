Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 62941345854
	for <lists+devicetree@lfdr.de>; Tue, 23 Mar 2021 08:10:46 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229494AbhCWHKM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 23 Mar 2021 03:10:12 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38524 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229994AbhCWHKH (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 23 Mar 2021 03:10:07 -0400
Received: from mail-pg1-x536.google.com (mail-pg1-x536.google.com [IPv6:2607:f8b0:4864:20::536])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EE164C061574
        for <devicetree@vger.kernel.org>; Tue, 23 Mar 2021 00:10:06 -0700 (PDT)
Received: by mail-pg1-x536.google.com with SMTP id n11so10756535pgm.12
        for <devicetree@vger.kernel.org>; Tue, 23 Mar 2021 00:10:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:content-transfer-encoding:in-reply-to:references
         :subject:from:cc:to:date:message-id:user-agent;
        bh=+K97PdVuEE+1g5sFpZ/HQJps6vR1JaS12plaQgGGVrc=;
        b=hJPsR0X8zUt01jIOr510j6YVCgU5chpqEtRn3weogf28emnKpbetTL+jaiJCKCfBeO
         1sI7ghj81uIZvzwFy3Kw9NHdOWH17EYsE6SN/FBJNDwCq8UG3f8Y/fbxraf7I4+zVX+Z
         esuBJPP66rpgSEeOoDQUjQu95RLTM06PCrCZ8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:content-transfer-encoding
         :in-reply-to:references:subject:from:cc:to:date:message-id
         :user-agent;
        bh=+K97PdVuEE+1g5sFpZ/HQJps6vR1JaS12plaQgGGVrc=;
        b=IE6f5NkjSma6C0vFRIvR9bA5vfAKG469WwXa6VuHCpwWFT+C1EfpKoEmkTsklNxfec
         +tvesYcZ433fBO70asy7EXLtjj7w5FFHRhfB1YZpoylVxLKubQcs7PhQAs/1/G+q3EZQ
         JE/bFy4acV/2K/chCtkLUSwZ4jH40fG9xcXR2AySY2Zlm0HxKj57LlWGYqm9DHmawl0V
         SZFrKtEOTZr4cSHSkQTmgMfrbQO/SeNzKebxJKR6zCwOvIAJtabtnzNKcwY/Tdec69Yw
         w2RuB15klj06SxW3wTTT1ANnm14jmVSrhEGRLkBtujEdfxCii8+mRXPIQ0zfoJjgO00F
         LWMg==
X-Gm-Message-State: AOAM5336W3qaUIHNkiObsaYFFFkyrWK1S5nPejeTjpoVIU7eGymqw3O/
        CIHDgnCLv3VGAYOzdzODYpFTww==
X-Google-Smtp-Source: ABdhPJwBA4HX/OVdGFcBVhzxavJbsPmpXxWAd100ZSbxVqWbcho629Mo06rAJsZji1oYXubYDKV3Aw==
X-Received: by 2002:a17:902:d2c5:b029:e5:c9ce:cb3c with SMTP id n5-20020a170902d2c5b02900e5c9cecb3cmr3914484plc.74.1616483406508;
        Tue, 23 Mar 2021 00:10:06 -0700 (PDT)
Received: from chromium.org ([2620:15c:202:201:e90d:d453:87ae:2e10])
        by smtp.gmail.com with ESMTPSA id x125sm6171927pfd.124.2021.03.23.00.10.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Mar 2021 00:10:06 -0700 (PDT)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20210322030128.2283-2-laurent.pinchart+renesas@ideasonboard.com>
References: <20210322030128.2283-1-laurent.pinchart+renesas@ideasonboard.com> <20210322030128.2283-2-laurent.pinchart+renesas@ideasonboard.com>
Subject: Re: [RFC PATCH 01/11] dt-bindings: drm/bridge: ti-sn65dsi8: Make enable GPIO optional
From:   Stephen Boyd <swboyd@chromium.org>
Cc:     linux-renesas-soc@vger.kernel.org,
        Andrzej Hajda <a.hajda@samsung.com>,
        Neil Armstrong <narmstrong@baylibre.com>,
        Jonas Karlman <jonas@kwiboo.se>,
        Jernej Skrabec <jernej.skrabec@siol.net>,
        Douglas Anderson <dianders@chromium.org>,
        devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>
To:     Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>,
        dri-devel@lists.freedesktop.org
Date:   Tue, 23 Mar 2021 00:10:04 -0700
Message-ID: <161648340457.3012082.17691256832017517403@swboyd.mtv.corp.google.com>
User-Agent: alot/0.9.1
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting Laurent Pinchart (2021-03-21 20:01:18)
> The SN65DSI86 EN pin can be hardwired to a high level, or connected to a
> global reset signal, not controllable by the kernel. Make it optional in
> those cases.
>=20
> Signed-off-by: Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.co=
m>
> ---

Reviewed-by: Stephen Boyd <swboyd@chromium.org>
