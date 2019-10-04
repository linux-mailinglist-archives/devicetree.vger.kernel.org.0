Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id ABD8FCC6B2
	for <lists+devicetree@lfdr.de>; Sat,  5 Oct 2019 01:50:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729035AbfJDXui (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 4 Oct 2019 19:50:38 -0400
Received: from mail-pg1-f193.google.com ([209.85.215.193]:41597 "EHLO
        mail-pg1-f193.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726669AbfJDXui (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 4 Oct 2019 19:50:38 -0400
Received: by mail-pg1-f193.google.com with SMTP id s1so4608329pgv.8
        for <devicetree@vger.kernel.org>; Fri, 04 Oct 2019 16:50:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=message-id:mime-version:content-transfer-encoding:in-reply-to
         :references:from:to:cc:subject:user-agent:date;
        bh=+cA64aGiQh2XvxdgS1/kXznRBIkrC4uuJUojLH5zI/w=;
        b=m07RfMZJ+dNKXdfwGwWBU4If2vcyX5tlS66q9QyzbnOIokoZkKtHkLkmTnyKSOBZgs
         HmPb7i0B9g4zkNxuV3kkTFH0eqfDFs0hw0hKezeCZvz7tn82q9oi91RWo2FzfYpDw/v/
         V2l+YI6HghzKZpquVUOmlIezE8tqSepIJmMb4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:mime-version
         :content-transfer-encoding:in-reply-to:references:from:to:cc:subject
         :user-agent:date;
        bh=+cA64aGiQh2XvxdgS1/kXznRBIkrC4uuJUojLH5zI/w=;
        b=LFRIFL16wjPVb8+pSWY/jhBtBgHieT6X/MnUoSe2xgv8raKzLT7fBeCyo77aeNIvNx
         6UKqKcdRTPXFVt+xewdcShc8WWGwms+XiUiSJxWyyz681UGDdDOhQQb06foBIVFQqAxF
         A09ytkq8r2aSH3YfHWi9GwIkRb+e/3aj4cX3B3Y0M2VQwLb/0g9sa5hu+6KGhu6wEbHY
         r/Cl5WFJv4v3IGEe9BNxaLu/MjAGE6BobvajbM49stLfT9y8LVVSyqTwRwimwWJT9xWI
         MFCNE7NG8OvuolGG2MCbDbqQHgYkz/gkNtJFDxjxuvalkzk+QChREnVaSXSCkYk/iTnz
         tMpQ==
X-Gm-Message-State: APjAAAWb/yPGPIO6mPvlRO6TVpax3sCzMoSnHVlCZNTdyzxiOpUCDYyz
        Hkrn+VTXPMQgCY03ccCzZuaRIg==
X-Google-Smtp-Source: APXvYqz5LX4mNmtaQuwX3deyaws5m9/nh/cVjz6uBXRxD6/mxr9VDemqwXdjO2IZwNNgZJi9EPuCqQ==
X-Received: by 2002:a63:2903:: with SMTP id p3mr18130458pgp.306.1570233037240;
        Fri, 04 Oct 2019 16:50:37 -0700 (PDT)
Received: from chromium.org ([2620:15c:202:1:fa53:7765:582b:82b9])
        by smtp.gmail.com with ESMTPSA id m9sm6546309pjf.11.2019.10.04.16.50.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 04 Oct 2019 16:50:36 -0700 (PDT)
Message-ID: <5d97dacc.1c69fb81.b5612.3794@mx.google.com>
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <256a1ad3-6a0c-b4bd-e12c-9ab35db2939a@infradead.org>
References: <20191004212311.141538-1-swboyd@chromium.org> <256a1ad3-6a0c-b4bd-e12c-9ab35db2939a@infradead.org>
From:   Stephen Boyd <swboyd@chromium.org>
To:     Andrew Morton <akpm@linux-foundation.org>,
        Randy Dunlap <rdunlap@infradead.org>
Cc:     linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        devicetree@vger.kernel.org
Subject: Re: [PATCH] .gitattributes: Use 'dts' diff driver for dts files
User-Agent: alot/0.8.1
Date:   Fri, 04 Oct 2019 16:50:35 -0700
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting Randy Dunlap (2019-10-04 15:08:08)
> On 10/4/19 2:23 PM, Stephen Boyd wrote:
> >=20
> > diff --git a/.gitattributes b/.gitattributes
> > index 89c411b5ce6b..4b32eaa9571e 100644
> > --- a/.gitattributes
> > +++ b/.gitattributes
> > @@ -1,2 +1,4 @@
> >  *.c   diff=3Dcpp
> >  *.h   diff=3Dcpp
> > +*.dtsi diff=3Ddts
> > +*.dts  diff=3Ddts
> >=20
>=20
> Hm, I have a "cpp" installed but not a "dts".
> Where would I find this "dts" so that I can install it?
>=20

It's not released yet but it is staged to be in the next release[1]. You
can probably build git from source and try it out if you're interested.

[1] https://git.kernel.org/pub/scm/git/git.git/commit/?id=3Dd49c2c3466d2c8c=
b0b3d0a43e6b406b07078fdb1

