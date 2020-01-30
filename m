Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 48A1514D7E6
	for <lists+devicetree@lfdr.de>; Thu, 30 Jan 2020 09:45:36 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726882AbgA3Ipf (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 30 Jan 2020 03:45:35 -0500
Received: from mail-qk1-f195.google.com ([209.85.222.195]:32981 "EHLO
        mail-qk1-f195.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726757AbgA3Ipf (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 30 Jan 2020 03:45:35 -0500
Received: by mail-qk1-f195.google.com with SMTP id h23so2243339qkh.0
        for <devicetree@vger.kernel.org>; Thu, 30 Jan 2020 00:45:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=8Dv9Iey8XDP+W4Jvx0tu6D9dtoFliuQckA02jxVrkiI=;
        b=FfU4r18rqt3nIyU8oCyHh2DrVi4sSHVRw0uZnAvTGCnOYwID6LfoXkBH1ovdCemtE4
         5j+5VpNsz2l0m2k1tvgzSMu05bivwILwiI0dl+Kt6nHIuVU/FplE2CFCcRgb7vZ50K/2
         pNwqP/TT7aU1e1ed42pWXnEArEsipG+p1XwdOJI/iL64EavlOkK3DlDNYotizw2DARPx
         wLKv0AtTCjYiiU1tAY53ofxazQqJzEfLlh+XrwxL12voGqyU6lOMBpq6ip81x81JRZrB
         XqWKpM+DhQOG1m4M7P0XGGDwDoKI35Otr0gWlXJf2yS/yNNarbLwToZfqr/QFsW0sIjP
         3gjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=8Dv9Iey8XDP+W4Jvx0tu6D9dtoFliuQckA02jxVrkiI=;
        b=h/kbXcIdexzghfAwgOg2uhu0yGHpAkLJuEK7W6QPqXYP7lA4ox3ivt3iIEYWojipjP
         WJWtwy1d7nxzTBTShnqiuntJsRgBr1N1On9EBtvQhYf/qFkbX1t7q32seK/zNR+mafph
         bR8TGz/Ig2elIp4zbuohIH7F3FQErRld4yTJ6gMA3kk2u1ojwJbVSPCR6uavoYRQa109
         fdU166oUFtFpZ7NAqvw0tePhMU+eKWQ0DNwwv/CdS7GY5aJYjE/rKF15wj/pyrGy/tKc
         uLEywPNb62i2ic3Zv0puBDONORDKn4v480W2ioBr+RhGFissw74kJyD3wGN+Z6xjMKMV
         iiGQ==
X-Gm-Message-State: APjAAAWCxJcJ+a7XxAVf6u8/qi8SJtd/pqxzw0QPwTLuGoOTYqoGNfzK
        OWtetD807EtgTb/u+DFkgt9cOOhmIj5afCeb9i4fyA==
X-Google-Smtp-Source: APXvYqxA2ryubrn9SVP4bGswHzifIIvTYoaMvdHt0F734B4foisqyFh6kSbmzK7DBUf2KnwKeuVbecmn8CEvgq3f5uQ=
X-Received: by 2002:a37:c244:: with SMTP id j4mr3986838qkm.433.1580373934153;
 Thu, 30 Jan 2020 00:45:34 -0800 (PST)
MIME-Version: 1.0
References: <20200102101712.5085-1-sam@ravnborg.org> <20200102101712.5085-3-sam@ravnborg.org>
 <CA+M3ks5Zs5j0FMD4SQiva2soW62tSnu14qiq3kErhLvCMxrxAA@mail.gmail.com>
 <CAL_Jsq+g8mVdC=aOZDpMGMt3j1Y=Lgku-OcfoBP_V7PGabq5Lg@mail.gmail.com>
 <CA+M3ks4sD971mCUQRJO+9gXaAWcwgzy2iNtMNVBRov5JSJk=HQ@mail.gmail.com>
 <CA+M3ks7GkVSi2WcwpK+tkoBx=EpJLfFVAp=qs2ygZyW114hWfw@mail.gmail.com> <20200129194711.GA29646@ravnborg.org>
In-Reply-To: <20200129194711.GA29646@ravnborg.org>
From:   Benjamin Gaignard <benjamin.gaignard@linaro.org>
Date:   Thu, 30 Jan 2020 09:45:22 +0100
Message-ID: <CA+M3ks4i9gso1jJT-+18R+ggSFTMHQy9_GC+LkOxZ41eSH3Dmg@mail.gmail.com>
Subject: Re: [PATCH v2 2/2] dt-bindings: one file of all simple DSI panels
To:     Sam Ravnborg <sam@ravnborg.org>
Cc:     Rob Herring <robh@kernel.org>,
        Thierry Reding <thierry.reding@gmail.com>,
        Mark Rutland <mark.rutland@arm.com>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        ML dri-devel <dri-devel@lists.freedesktop.org>,
        Yannick Fertre <yannick.fertre@st.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Le mer. 29 janv. 2020 =C3=A0 20:47, Sam Ravnborg <sam@ravnborg.org> a =C3=
=A9crit :
>
> Hi Benjamin.
> > > >
> > > > Here's the problem. If it is not required, then panels with multipl=
e
> > > > supplies will get added here because they didn't care to begin with=
.
> > > > Then when someone decides to think about the supplies it will have =
to
> > > > be moved. Bindings need to be complete from the start.
> > >
> > > Fair enough, I will add fixed supply in dts files.
> > > If reset-gpios could be added in this schema then we could include
> > > oristech panel here.
> >
> > Does this patch has been merged ?
>
> I was sidetracked by other things.
> Maybe you can move it forward?

Yes I will send a v3.
Benjamin

>
>         Sam
