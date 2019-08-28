Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 3174AA08FE
	for <lists+devicetree@lfdr.de>; Wed, 28 Aug 2019 19:52:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726828AbfH1Rwr (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 28 Aug 2019 13:52:47 -0400
Received: from mail-pf1-f195.google.com ([209.85.210.195]:35915 "EHLO
        mail-pf1-f195.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726663AbfH1Rwq (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 28 Aug 2019 13:52:46 -0400
Received: by mail-pf1-f195.google.com with SMTP id w2so283036pfi.3
        for <devicetree@vger.kernel.org>; Wed, 28 Aug 2019 10:52:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=message-id:mime-version:content-transfer-encoding:in-reply-to
         :references:cc:subject:to:from:user-agent:date;
        bh=Px8LkhnvRWF4dwuD/m3pQWcRskg4hOcGMoEJQEofQZ8=;
        b=b8Su07oogeUnBWJ/0tg5akVGMO8eE2d43UCFFCgBPKGffQgjBkuv7y3A9eC/T4EjRA
         i7cHOOuL3iwYyhXeVmkunHv4h61+Sh5KbLMZW3NkZo6fBsNGuzL8yykC9A1ECMrI54y1
         ORagwvll1OSa52p8t4TebQyKcuNvQJi3NpzNA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:mime-version
         :content-transfer-encoding:in-reply-to:references:cc:subject:to:from
         :user-agent:date;
        bh=Px8LkhnvRWF4dwuD/m3pQWcRskg4hOcGMoEJQEofQZ8=;
        b=gd/v3HVrxveMoUcHSMrVZeDFQYK5CHfTceRR3500FfABqT7COd9uw99mNmt4rMo0n4
         34uKQuvMz0fqjF0DT4vV3+PkMvQIGRFFa2wcbY+v/iYlZyII9CqXskey4JVIRLNVrRFv
         mzo7v1YBbK3EmAnOdWyzkEq9cm+pYEfSKoh4Ynl86dd9ieZmf9UkYE86pNtSM1oS47Oz
         wSxdyZxqpk3zQSzsYzmc1KETEkWpveQ2uP9rioL002lFw6/CLeE7dT3EP+2xliE2mcrt
         Doi9BL1JAp/H2wmmYY1O01zwfg1auUB/ILzewyRWP2f+2tDTv6BRRBmzd89VmvvmAMgm
         xdrg==
X-Gm-Message-State: APjAAAVVh04qdNjedjxzybsUP56YNoHwxJI7fUT4TiJKcVIUmBhJajx5
        pUJRdTJpzjA5PV3BFSF1fa0A1Q==
X-Google-Smtp-Source: APXvYqxCTQjvm1BM9NXD/WyFjJvnpm9d045wXvVon/BZtschRXgyy8tL19nyMEwFqWDkx1/sIvisKw==
X-Received: by 2002:a65:6815:: with SMTP id l21mr4618991pgt.146.1567014766012;
        Wed, 28 Aug 2019 10:52:46 -0700 (PDT)
Received: from chromium.org ([2620:15c:202:1:fa53:7765:582b:82b9])
        by smtp.gmail.com with ESMTPSA id e21sm3512214pfi.13.2019.08.28.10.52.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Aug 2019 10:52:45 -0700 (PDT)
Message-ID: <5d66bf6d.1c69fb81.c7b73.8fdb@mx.google.com>
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20190822102723.GB8494@centauri>
References: <20190725104144.22924-7-niklas.cassel@linaro.org> <20190819100957.17095-1-niklas.cassel@linaro.org> <5d5ae389.1c69fb81.cb730.3225@mx.google.com> <20190822102723.GB8494@centauri>
Cc:     Andy Gross <agross@kernel.org>, Ilia Lin <ilia.lin@kernel.org>,
        Nishanth Menon <nm@ti.com>, Viresh Kumar <vireshk@kernel.org>,
        linux-arm-msm@vger.kernel.org, jorge.ramirez-ortiz@linaro.org,
        bjorn.andersson@linaro.org, ulf.hansson@linaro.org,
        Rob Herring <robh@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>, linux-pm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 06/14] dt-bindings: cpufreq: qcom-nvmem: Support pstates provided by a power domain
To:     Niklas Cassel <niklas.cassel@linaro.org>
From:   Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.8.1
Date:   Wed, 28 Aug 2019 10:52:44 -0700
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting Niklas Cassel (2019-08-22 03:27:23)
> On Mon, Aug 19, 2019 at 10:59:36AM -0700, Stephen Boyd wrote:
> > Quoting Niklas Cassel (2019-08-19 03:09:57)
> > > +
> > > +soc {
> > > +....
> > > +       cprpd: cpr@b018000 {
> >=20
> > Maybe node name should be 'avs' for the industry standard adaptive
> > voltage scaling acronym?
>=20
> I see where this is coming from, but "git grep avs" gives a single result.
>=20
> Also, since the label is cprpd, it doesn't make sense to simply rename the
> node name, and I don't think that avspd would be a good name, since it is
> less correct.
>=20
> So if you don't insist, I would prefer to leave it as it is.
>=20

How about 'power-controller'?=20

